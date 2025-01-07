/***************************************************************************
 Public methods:
 SEXP rowVars(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colVars(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowVars_lowlevel.h"
#include "naming.h"

SEXP rowVars(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP refine2, SEXP hasNA, SEXP byRow, SEXP useNames) {
  int narm, hasna, refine, byrow, usenames;
  SEXP ans;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'refine': */
  refine = asLogicalNoNA(refine2, "refine");
  
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
    rowVars_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, narm, refine, hasna, byrow, REAL(ans));
  } else if (isInteger(x)) {
    rowVars_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, narm, FALSE, hasna, byrow, REAL(ans));
  }
  
  /* Argument 'useNames': */ 
  usenames = asLogicalNoNA(useNames, "useNames");
  
  if (usenames) {
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
} /* rowVars() */


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-18 [HB]
 o Created from rowMads.c.
 **************************************************************************/
