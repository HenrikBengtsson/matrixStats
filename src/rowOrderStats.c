/***************************************************************************
 Public methods:
 SEXP rowOrderStats(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP which, SEXP useNames)

 Authors: Henrik Bengtsson. Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowOrderStats_lowlevel.h"
#include "naming.h"

SEXP rowOrderStats(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP which, SEXP useNames) {
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol, qq;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsHasna, colsHasna;
  R_xlen_t *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsHasna);
  R_xlen_t *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsHasna);
  
  /* Argument 'useNames': */ 
  int usenames = asLogical(useNames);

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
    error("Argument 'which' is out of range: %lld", (long long int)(qq + 1));
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nrows));
    rowOrderStats_dbl(REAL(x), nrow, ncol, crows, nrows, ccols, ncols, qq, REAL(ans));
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        SEXP namesVec = VECTOR_ELT(dimnames, 0);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, nrows, crows);
        }
      }
    }
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nrows));
    rowOrderStats_int(INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, qq, INTEGER(ans));
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        SEXP namesVec = VECTOR_ELT(dimnames, 0);
        if (namesVec != R_NilValue) {
          setNames(ans, namesVec, nrows, crows);
        }
      }
    }
    UNPROTECT(1);
  }
  
  UNPROTECT(1); /* PROTECT(dim = ...) */

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
