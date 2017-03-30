/***************************************************************************
 Public methods:
 SEXP colOrderStats(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP which)

 Authors: Henrik Bengtsson

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

/*
Native API (dynamically generated via macros):

void colOrderStats_Integer_noRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_noRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_noRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_intRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_intRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_intRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_realRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_realRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Integer_realRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_Real_noRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_noRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_noRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_intRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_intRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_intRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_realRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_realRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
void colOrderStats_Real_realRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, R_xlen_t qq, double *ans)
*/

#define METHOD colOrderStats
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, R_xlen_t qq, X_C_TYPE *ans

#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#define X_TYPE 'r'
#include "templates-gen-matrix.h"


SEXP colOrderStats(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP which) {
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol, qq;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number.");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number.");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  int rowsHasna, colsHasna;
  void *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsType, &rowsHasna);
  void *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsType, &colsHasna);

  // Check missing rows
  if (rowsHasna && ncols > 0) {
    error("Argument 'rows' must not contain missing value");
  }
  // Check missing cols
  if (colsHasna && nrows > 0) {
    error("Argument 'cols' must not contain missing value");
  }

  /* Subtract one here, since rPsort does zero based addressing */
  qq = asInteger(which) - 1;

  /* Assert that 'qq' is a valid index */
  if (qq < 0 || qq >= nrows) {
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, ncols));
    colOrderStats_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, qq, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, ncols));
    colOrderStats_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, qq, INTEGER(ans));
    UNPROTECT(1);
  }

  return(ans);
} // colOrderStats()


/***************************************************************************
 HISTORY:
 2015-07-08 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created from rowOrderStats.c.
 **************************************************************************/
