/***************************************************************************
 Public methods:
 SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP cores)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"


#define METHOD rowLogSumExp
#define METHOD_NAME rowLogSumExps_double
#define RETURN_TYPE void
#define ARGUMENTS_LIST double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, int rowsType, void *cols, R_xlen_t ncols, int colsType, int narm, int hasna, int byrow, double *ans, int cores

#include "templates-gen-vector.h"


SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP cores) {
  SEXP ans;
  int narm, hasna, byrow, cores2;
  R_xlen_t nrow, ncol;

  /* Argument 'lx' and 'dim': */
  assertArgMatrix(lx, dim, (R_TYPE_REAL), "lx");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

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

#ifdef _USE_PTHREAD_
  cores2 = 1;
#else
  /* Argument 'cores': */
  cores2 = asInteger(cores);
  if (cores2 <= 0)
    error("Argument 'cores' must be a positive value.")
#endif

  if (byrow) {
    ans = PROTECT(allocVector(REALSXP, nrows));
    rowLogSumExps_double[rowsType](REAL(lx), nrow, ncol, crows, nrows, rowsType, ccols, ncols, colsType, narm, hasna, 1, REAL(ans), cores2);
  } else {
    ans = PROTECT(allocVector(REALSXP, ncols));
    rowLogSumExps_double[colsType](REAL(lx), nrow, ncol, crows, nrows, rowsType, ccols, ncols, colsType, narm, hasna, 0, REAL(ans), cores2);
  }

  UNPROTECT(1); /* ans = PROTECT(...) */

  return(ans);
} /* rowLogSumExps() */


/***************************************************************************
 HISTORY:
 2015-08-01 [DJ]
  o Pthread processing.
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
