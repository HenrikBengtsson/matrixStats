/***************************************************************************
 Public methods:
 SEXP rowCounts(SEXP x, ...)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowCounts_lowlevel.h"

SEXP rowCounts(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP value, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna, what2;
  R_xlen_t ii, nrow, ncol, nval;

  /* Argument 'x' & 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'value': */
  assertArgVector(value, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "value");
  nval = LENGTH(value);
  
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

  if (nval == 1) {
    
    /* R allocate an integer vector of length 'nrow' */
    PROTECT(ans = allocVector(INTSXP, nrows));
  
    /* Double matrices are more common to use. */
    if (isReal(x)) {
      rowCounts_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, asReal(value), what2, narm, hasna, INTEGER(ans));
    } else if (isInteger(x)) {
      rowCounts_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, asInteger(value), what2, narm, hasna, INTEGER(ans));
    } else if (isLogical(x)) {
      rowCounts_lgl[rowsType][colsType](LOGICAL(x), nrow, ncol, crows, nrows, ccols, ncols, asLogical(value), what2, narm, hasna, INTEGER(ans));
    }
  } else {

     /* R allocate an integer matrix of length 'nrow' width nval */
    PROTECT(ans = allocMatrix(INTSXP, nrows, nval));
    int *ans_col_ptrs[nval];
    for (ii = 0; ii < nval; ii++) {
      ans_col_ptrs[ii] = INTEGER(ans) + nrows * ii;
    /* Double matrices are more common to use. */
      if (isReal(x)) {
        rowCounts_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(value)[ii], what2, narm, hasna, ans_col_ptrs[ii]);
      } else if (isInteger(x)) {
        rowCounts_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(value)[ii], what2, narm, hasna, ans_col_ptrs[ii]);
      } else if (isLogical(x)) {
        rowCounts_lgl[rowsType][colsType](LOGICAL(x), nrow, ncol, crows, nrows, ccols, ncols, LOGICAL(value)[ii], what2, narm, hasna, ans_col_ptrs[ii]);
      }
    } // for (ii ...)
  } // if (nval == 1)
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
