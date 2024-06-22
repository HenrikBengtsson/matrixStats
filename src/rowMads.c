/***************************************************************************
 Public methods:
 SEXP rowMads(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowMads_lowlevel.h"
#include "naming.h"

SEXP rowMads(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP constant, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP useNames) {
  int narm, hasna, byrow, usenames;
  SEXP ans;
  R_xlen_t nrow, ncol;
  double scale;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'constant': */
  if (!isNumeric(constant))
    error("Argument 'constant' must be a numeric scale");
  scale = asReal(constant);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsHasNA;
  int colsHasNA;
  R_xlen_t *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsHasNA);
  R_xlen_t *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsHasNA);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  if (!byrow) {
    SWAP(R_xlen_t, nrow, ncol);
    SWAP(R_xlen_t*, crows, ccols);
    SWAP(R_xlen_t, nrows, ncols);
    SWAP(int, rowsHasNA, colsHasNA);
  }

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */
  PROTECT(ans = allocVector(REALSXP, nrows));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowMads_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, scale, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x)) {
    rowMads_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, scale, narm, hasna, byrow, REAL(ans));
  }
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);
  
  if (usenames != NA_LOGICAL && usenames) {
    SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
    if (dimnames != R_NilValue) {
      if (byrow) {
        SEXP namesVec = VECTOR_ELT(dimnames, 0);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, nrows, crows);
        }
      } else {
        SEXP namesVec = VECTOR_ELT(dimnames, 1);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, nrows, crows);
        }
      }
    }
  }

  UNPROTECT(2);

  return(ans);
} /* rowMads() */


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-17 [HB]
 o Created from rowMedians.c.
 **************************************************************************/
