/***************************************************************************
 Public methods:
 SEXP rowSums2(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colSums2(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2017
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowSums2_lowlevel.h"
#include "naming.h"
SEXP rowSums2(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow) {
  int narm, hasna, byrow;
  SEXP ans;
  R_xlen_t nrow, ncol;

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
  SEXP matrixDimnames = getAttrib(x,R_DimNamesSymbol);
  /* We check whether the result has a natural naming by the dimnames of the
   * input and set the names of the result to these names if it is
   */
  if(matrixDimnames != R_NilValue){
    int indexDim = 0;
    if(byrow){
      indexDim = 0;
    }
    else{
      indexDim = 1;
    }
    SEXP possibleNameVector = VECTOR_ELT(matrixDimnames,indexDim);
    /* We may risk that even though the dimnames attribute is defined,
     * the names for our requested dimension is not available
     */
    if (possibleNameVector != R_NilValue){
      // The naming vector is available, so we can set the names of the result
      setNames(ans,possibleNameVector,nrows,crows,rowsType);
      }
  }
  

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowSums2_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x) || isLogical(x)) {
    rowSums2_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, byrow, REAL(ans));
  }
  UNPROTECT(1);
  return(ans);
}
