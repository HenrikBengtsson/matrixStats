/***************************************************************************
 Public methods:
 SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP useNames)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013-2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowLogSumExp_lowlevel.h"
#include "naming.h"

SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP rows, SEXP cols, SEXP naRm, SEXP hasNA, SEXP byRow, SEXP useNames) {
  SEXP ans;
  int narm, hasna, byrow, usenames;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(lx = coerceVector(lx, REALSXP));
  PROTECT(dim = coerceVector(dim, INTSXP));
  
  /* Argument 'lx' and 'dim': */
  assertArgMatrix(lx, dim, (R_TYPE_REAL), "lx");
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

  if (byrow) {
    ans = PROTECT(allocVector(REALSXP, nrows));
    rowLogSumExps_double(REAL(lx), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, 1, REAL(ans));
  } else {
    ans = PROTECT(allocVector(REALSXP, ncols));
    rowLogSumExps_double(REAL(lx), nrow, ncol, crows, nrows, ccols, ncols, narm, hasna, 0, REAL(ans)); 
  }
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);
  
  if (usenames == NA_LOGICAL || usenames){
    SEXP dimnames = getAttrib(lx, R_DimNamesSymbol);
    if (dimnames != R_NilValue) {
      if (byrow) {
        SEXP namesVec = VECTOR_ELT(dimnames, 0);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, nrows, crows);
        }
      } else {
        SEXP namesVec = VECTOR_ELT(dimnames, 1);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, ncols, ccols);
        }
      }
    }
  }

  UNPROTECT(3); /* ans = PROTECT(...), PROTECT(lx = ...), PROTECT(dim = ...) */

  return(ans);
} /* rowLogSumExps() */


/***************************************************************************
 HISTORY:
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
