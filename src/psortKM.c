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
#include <Rdefines.h>
#include <R_ext/Utils.h>
#include "000.types.h"
#include "000.utils.h"


void psortKM_C(double *x, R_xlen_t nx, R_xlen_t k, R_xlen_t m, double *ans) {
  R_xlen_t ii, ll;
  double *xx;

  /* R allocate memory for the 'xx'.  This will be
     taken care of by the R garbage collector later on. */
  xx = (double *) R_alloc(nx, sizeof(double));

  /* Create a local copy 'xx' of 'x'. */
  for (ii=0; ii < nx; ii++) {
    xx[ii] = x[ii];
  }

  /* Permute xx[0:partial] so that xx[partial+1] is in the correct
     place with smaller values to the left, ...
     Example: psortKM(x, k=50, m=2) with length(x) = 1000
     rPsort(xx, 1000, 50);  We know x[50] and that x[1:49] <= x[50]
     rPsort(xx, 50, 49);    x[49] and that x[1:48] <= x[49]
     rPsort(xx, 49, 48);    x[48] and that x[1:47] <= x[48]
   */
  ll = nx;
  for (ii=0; ii < m; ii++) {
    rPsort(xx, ll, k-1-ii);
    ll = (k-1)-ii;
  }

  for (ii=0; ii < m; ii++) {
    ans[ii] = xx[(k-m)+ii];
  }
} /* psortKM_C() */



SEXP psortKM(SEXP x, SEXP k, SEXP m) {
  SEXP ans;
  R_xlen_t nx, kk, mm;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_REAL), "x");
  nx = xlength(x);
  if (nx == 0) {
    error("Argument 'x' must not be empty");
  }

  /* Argument 'k': */
  if (!isInteger(k)) {
    error("Argument 'k' must be an integer");
  }
  if (length(k) != 1) {
    error("Argument 'k' must be a single integer");
  }
  kk = asInteger(k);
  if (kk <= 0) {
    error("Argument 'k' must be a positive integer");
  } if (kk > nx) {
    error("Argument 'k' must not be greater than number of elements in 'x'");
  }

  /* Argument 'm': */
  if (!isInteger(m)) {
    error("Argument 'm' must be an integer");
  }
  if (length(m) != 1) {
    error("Argument 'm' must be a single integer");
  }
  mm = asInteger(m);
  if (mm <= 0) {
    error("Argument 'm' must be a positive integer");
  } else if (mm > kk) {
    error("Argument 'm' must not be greater than argument 'k'");
  }


  /* R allocate a double vector of length 'partial' */
  PROTECT(ans = allocVector(REALSXP, mm));
  psortKM_C(REAL(x), nx, kk, mm, REAL(ans));
  UNPROTECT(1);

  return(ans);
} /* psortKM() */



/***************************************************************************
 HISTORY:
 2012-09-10 [HB]
 o Added psortKM().
 o Created.
 **************************************************************************/
