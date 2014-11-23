/***************************************************************************
 Public methods:
 SEXP colOrderStats(SEXP x, SEXP which)

 Authors: Henrik Bengtsson

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"

#define METHOD colOrderStats

#define X_TYPE 'i'
#include "colOrderStats_TYPE-template.h"

#define X_TYPE 'r'
#include "colOrderStats_TYPE-template.h"

#undef METHOD



SEXP colOrderStats(SEXP x, SEXP dim, SEXP which) {
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol, qq;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number.");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number.");


  /* Get dimensions of 'x'. */
  dim = getAttrib(x, R_DimSymbol);
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Subtract one here, since rPsort does zero based addressing */
  qq = asInteger(which) - 1;

  /* Assert that 'qq' is a valid index */
  if (qq < 0 || qq >= nrow) {
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, ncol));
    colOrderStats_Real(REAL(x), nrow, ncol, qq, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, ncol));
    colOrderStats_Integer(INTEGER(x), nrow, ncol, qq, INTEGER(ans));
    UNPROTECT(1);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // colOrderStats()


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created from rowOrderStats.c.
 **************************************************************************/
