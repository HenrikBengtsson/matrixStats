/***************************************************************************
 Public methods:
 SEXP psortKM(SEXP x, SEXP k, SEXP nk)

 Arguments:
   x: numeric vector
   k: integer scalar in [1,length(x)]
   m: integer scalar in [1,k] and not too large if k is large.

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2012
 **************************************************************************/

/* Include R packages */
#include <R.h>
#include <Rdefines.h>
#include <Rmath.h>


SEXP psortKM(SEXP x, SEXP k, SEXP m) {
  SEXP ans;
  int ii, nx, kk, mm, ll;
  double *xx, *xxx;

  /* Argument 'x': */
  if (!isReal(x)) {
    error("Argument 'x' must be a numeric vector."); 
  }
  nx = length(x);
  if (nx == 0) {
    error("Argument 'x' must not be empty."); 
  }

  /* Argument 'k': */
  if (!isInteger(k)) {
    error("Argument 'k' must be an integer."); 
  }
  if (length(k) != 1) {
    error("Argument 'k' must be a single integer."); 
  }
  kk = INTEGER(k)[0];
  if (kk <= 0) {
    error("Argument 'k' must be a positive integer."); 
  }
  if (kk > nx) {
    error("Argument 'k' must not be greater than number of elements in 'x'.");
  }

  /* Argument 'm': */
  if (!isInteger(m)) {
    error("Argument 'm' must be an integer."); 
  }
  if (length(m) != 1) {
    error("Argument 'm' must be a single integer.");  
  }
  mm = INTEGER(m)[0];
  if (mm <= 0) {
    error("Argument 'm' must be a positive integer."); 
  }
  if (mm > kk) {
    error("Argument 'm' must not be greater than argument 'k'.");
  }


  /* Get the arguments */
  xx = REAL(x);


  /* R allocate a double vector of length 'partial' */
  PROTECT(ans = allocVector(REALSXP, mm));

  /* R allocate memory for the 'xxx'.  This will be 
     taken care of by the R garbage collector later on. */
  xxx = (double *) R_alloc(nx, sizeof(double));

  /* Create a local copy 'xxx' of 'x'. */
  for (ii=0; ii < nx; ii++) {
    if(ii % 1000 == 0)
      R_CheckUserInterrupt(); 
    xxx[ii] = xx[ii];
  }

  /* Permute xxx[0:partial] so that xxx[partial+1] is in the correct 
     place with smaller values to the left, ... 
     Example: psortKM(x, k=50, m=2) with length(x) = 1000
     rPsort(xxx, 1000, 50);  We know x[50] and that x[1:49] <= x[50]
     rPsort(xxx, 50, 49);    x[49] and that x[1:48] <= x[49]
     rPsort(xxx, 49, 48);    x[48] and that x[1:47] <= x[48]
   */
  ll = nx;
  for (ii=0; ii < mm; ii++) {
    rPsort(xxx, ll, kk-1-ii);
    ll = (kk-1)-ii;
  }

  for (ii=0; ii < mm; ii++) {
    REAL(ans)[ii] = xxx[(kk-mm)+ii];
  }

  UNPROTECT(1);

  return(ans);
} /* psortKM() */

/***************************************************************************
 HISTORY:
 2012-09-10 [HB]
 o Added psortKM().
 o Created.
 **************************************************************************/
