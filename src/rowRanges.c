/***************************************************************************
 Public methods:
 SEXP rowRanges(SEXP x, SEXP what)

 Authors: Henrik Bengtsson. Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"

#define METHOD rowRanges

#define X_TYPE 'i'
#include "rowRanges_TYPE-template.h"

#define X_TYPE 'r'
#include "rowRanges_TYPE-template.h"

#undef METHOD



SEXP rowRanges(SEXP x, SEXP what) {
  SEXP dim, ans = NILSXP;
  int what2;
  R_xlen_t nrow, ncol;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'what': */
  if (length(what) != 1)
    error("Argument 'what' must be a single number.");
  if (!isNumeric(what))
    error("Argument 'what' must be a numeric number.");
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("Invalid value of 'what': %d", what2);


  /* Get dimensions of 'x'. */
  dim = getAttrib(x, R_DimSymbol);
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, nrow, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, nrow));
    }
    rowRanges_Real(REAL(x), nrow, ncol, what2, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, nrow, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, nrow));
    }
    rowRanges_Integer(INTEGER(x), nrow, ncol, what2, INTEGER(ans));
    UNPROTECT(1);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // rowRanges()


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
