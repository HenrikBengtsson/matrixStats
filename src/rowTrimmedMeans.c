/***************************************************************************
 Public methods:
 SEXP rowTrimmedMeans(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colTrimmedMeans(SEXP x, SEXP naRm, SEXP hasNA)

 Author: Brian Montgomery
 
 Using modified algorithm from "Fast Computation of Trimmed Means" 
 by Gleb Beliakov, Deakin University
 Journal of Statistical Software
 March 2011, Volume 39, Code Snippet 2
 https://jstatsoft.org/
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowTrimmedMeans_lowlevel.h"

double Weighted(double x, double t1, double t2, double w1, double w2) {
  if(x < t2 && x > t1) return x;
  if(x < t1) return 0;
  if(x > t2) return 0;
  if(x == t1) return w1 * x;
  return w2 * x; // if(x == t2)
}

double TrimmedMean(double *x, int n, int K) {
  double w1, w2, OS1, OS2;
  double t = 0, avg;
  rPsort(x, n, K);
  OS1 = x[K];
  rPsort(x, n, n - K - 1);
  OS2 = x[n - K - 1];
  // compute weights
  double a, b=0, c, d=0, dm=0, bm=0, r;
  for(int ii = 0; ii < n; ii++){
    r = x[ii];
    if(r < OS1) bm += 1;
    else if(r == OS1) b += 1;
    if(r < OS2) dm += 1;
    else if(r == OS2) d += 1;
  }
  a = b + bm - K;
  if(a > n - 2 * K) a = n - 2 * K; // not in the paper, but needed
  c = n - K - dm;
  if(c > n - 2 * K) c = n - 2 * K; // not in the paper, but needed
  w1 = a/b;
  w2 = c/d;
  for(int ii = 0; ii < n; ii++)
    t += Weighted(x[ii], OS1, OS2, w1, w2);

  if (t > DOUBLE_XMAX) {
    avg = R_PosInf;
  } else if (t < -DOUBLE_XMAX) {
    avg = R_NegInf;
  } else {
    avg = t / (n - 2 * K);
  }
  return avg;
}

SEXP rowTrimmedMeans(SEXP x, SEXP dim, SEXP rows, SEXP cols, 
                     SEXP trimFrac, SEXP naRm, SEXP hasNA, SEXP byRow) {
  int narm, hasna, byrow;
  double trim;
  SEXP ans;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL | R_TYPE_LGL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'trimFrac': */
  trim = asReal(trimFrac);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  if (!byrow) {
    SWAP(R_xlen_t, nrow, ncol);
    SWAP(void*, crows, ccols);
    SWAP(R_xlen_t, nrows, ncols);
    SWAP(int, rowsType, colsType);
  }

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */
  PROTECT(ans = allocVector(REALSXP, nrows));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowTrimmedMeans_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, trim, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x) || isLogical(x)) {
    rowTrimmedMeans_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, trim, narm, hasna, byrow, REAL(ans));
  }

  UNPROTECT(1);

  return(ans);
}
