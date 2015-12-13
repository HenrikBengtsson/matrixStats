/***************************************************************************
 Public methods:
 SEXP rowOrderStats(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP which)

 Authors: Henrik Bengtsson. Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowOrderStats
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, R_xlen_t qq, X_C_TYPE *ans

#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#define X_TYPE 'r'
#include "templates-gen-matrix.h"


SEXP rowOrderStats(SEXP x, SEXP dim,SEXP rows, SEXP cols, SEXP which) {
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
  if (qq < 0 || qq >= ncols) {
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nrows));
    rowOrderStats_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, qq, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nrows));
    rowOrderStats_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, qq, INTEGER(ans));
    UNPROTECT(1);
  }

  return(ans);
} // rowOrderStats()


/***************************************************************************
 HISTORY:
 2015-07-11 [DJ]
  o Supported subsetted computation.
 2009-02-04 [HB]
  o BUG FIX: For some errors in rowOrderStats(), the stack would not become
    UNPROTECTED before calling error.
 2008-03-25 [HB]
  o Renamed from 'rowQuantiles' to 'rowOrderStats'.
 2007-08-10 [HB]
  o Removed arguments for NAs since rowOrderStats() still don't support it.
 2005-11-24 [HB]
  o Cool, it works and compiles nicely.
  o Preallocate colOffset to speed up things even more.
  o Added more comments and error checking.
  o Adopted from rowQ() in Biobase of Bioconductor.
 **************************************************************************/
