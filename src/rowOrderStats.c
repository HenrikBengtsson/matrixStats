/***************************************************************************
 Public methods:
 SEXP rowOrderStats(SEXP x, SEXP which)

 Authors: Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2008
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE rowOrderStats_<Integer|Real>(...):
- SEXP rowOrderStats_Real(SEXP x, int nrow, int ncol, int qq);
- SEXP rowOrderStats_Integer(SEXP x, int nrow, int ncol, int qq);
 */
#define METHOD rowOrderStats

#define X_TYPE 'i'
#include "rowOrderStats_TYPE-template.h"

#define X_TYPE 'r'
#include "rowOrderStats_TYPE-template.h"

#undef METHOD



SEXP rowOrderStats(SEXP x, SEXP which) {
  SEXP ans;
  int nrow, ncol, qq;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number.");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number.");


  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];

  /* Subtract one here, since rPsort does zero based addressing */
  qq = asInteger(which) - 1;

  /* Assert that 'qq' is a valid index */
  if (qq < 0 || qq >= ncol) {
    UNPROTECT(1);
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowOrderStats_Real(x, nrow, ncol, qq);
  } else if (isInteger(x)) {
    ans = rowOrderStats_Integer(x, nrow, ncol, qq);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be numeric.");
  }

  UNPROTECT(1);

  return(ans);
} // rowOrderStats()


/***************************************************************************
 HISTORY:
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
