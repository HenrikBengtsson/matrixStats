/***************************************************************************
 Public methods:
 SEXP rowMeans2(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colMeans2(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2017
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowMeans2_lowlevel.h"
#include "naming.h"

SEXP rowMeans2(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP useNames) {
  int narm, hasna, byrow, usenames;
  SEXP ans;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL | R_TYPE_LGL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  R_xlen_t *crows = validateIndices(rows, nrow, 0, &nrows);
  R_xlen_t *ccols = validateIndices(cols, ncol, 0, &ncols);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  if (!byrow) {
    SWAP(R_xlen_t, nrow, ncol);
    SWAP(R_xlen_t*, crows, ccols);
    SWAP(R_xlen_t, nrows, ncols);
  }

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */
  PROTECT(ans = allocVector(REALSXP, nrows));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowMeans2_dbl(REAL(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x) || isLogical(x)) {
    rowMeans2_int(INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  }
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);
  
  if (usenames != NA_LOGICAL && usenames){
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
}
