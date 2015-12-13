/***************************************************************************
 Public methods:
 SEXP rowCounts(SEXP x, ...)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"


#define METHOD rowCounts
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, X_C_TYPE value, int what, int narm, int hasna, int *ans

#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#define X_TYPE 'r'
#include "templates-gen-matrix.h"
#define X_TYPE 'l'
#include "templates-gen-matrix.h"


SEXP rowCounts(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP value, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna, what2;
  R_xlen_t nrow, ncol;

  /* Argument 'x' & 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'value': */
  if (length(value) != 1)
    error("Argument 'value' must be a single value.");

  if (!isNumeric(value))
    error("Argument 'value' must be a numeric value.");

  /* Argument 'what': */
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("INTERNAL ERROR: Unknown value of 'what' for rowCounts: %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(INTSXP, nrows));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowCounts_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, asReal(value), what2, narm, hasna, INTEGER(ans));
  } else if (isInteger(x)) {
    rowCounts_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, asInteger(value), what2, narm, hasna, INTEGER(ans));
  } else if (isLogical(x)) {
    rowCounts_Logical[rowsType][colsType](LOGICAL(x), nrow, ncol, crows, nrows, ccols, ncols, asLogical(value), what2, narm, hasna, INTEGER(ans));
  }

  UNPROTECT(1);

  return(ans);
} // rowCounts()


/***************************************************************************
 HISTORY:
 2015-04-13 [DJ]
  o Supported subsetted computation.
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
