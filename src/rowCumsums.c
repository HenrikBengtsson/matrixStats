/***************************************************************************
 Public methods:
 SEXP rowCumsums(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowCumsums
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, ANS_C_TYPE *ans, R_xlen_t nrow_ans, int *oks, int cores

#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#define X_TYPE 'r'
#include "templates-gen-matrix.h"


SEXP rowCumsums(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP byRow, SEXP cores) {
  int byrow, cores2;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* Argument 'cores': */
  cores2 = asInteger(cores);

  int *oks = NULL;
  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
    rowCumsums_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, byrow, REAL(ans), nrows, oks, cores2);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
    if (byrow) oks = (int*)R_alloc(nrows, sizeof(int));
    rowCumsums_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, byrow, INTEGER(ans), nrows, oks, cores2);
    UNPROTECT(1);
  }

  return(ans);
} /* rowCumsums() */


/***************************************************************************
 HISTORY:
 2015-08-01 [DJ]
  o Pthread processing.
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-26 [HB]
 o Created from rowVars.c.
 **************************************************************************/
