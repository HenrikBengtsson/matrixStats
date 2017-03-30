/***************************************************************************
 Public methods:
 SEXP rowVars(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colVars(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

/*
Native API (dynamically generated via macros):

void rowVars_Integer_noRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_noRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_noRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_intRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_intRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_intRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_realRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_realRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Integer_realRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_noRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_noRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_noRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_intRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_intRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_intRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_realRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_realRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_Real_realRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
*/

#define METHOD rowVars
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int narm, int hasna, int byrow, double *ans

#define X_TYPE 'i'
#include "templates-gen-matrix.h"

#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#undef METHOD


SEXP rowVars(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow) {
  int narm, hasna, byrow;
  SEXP ans;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
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
    rowVars_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x)) {
    rowVars_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  }

  UNPROTECT(1);

  return(ans);
} /* rowVars() */


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-18 [HB]
 o Created from rowMads.c.
 **************************************************************************/
