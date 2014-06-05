/***************************************************************************
 Public methods:
 SEXP rowCounts(SEXP x, SEXP value, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE rowCounts_<Integer|Real>(...):
- SEXP rowCounts_Real(SEXP x, int nrow, int ncol, int qq);
- SEXP rowCounts_Integer(SEXP x, int nrow, int ncol, int qq);
 */
#define METHOD rowCounts

#define X_TYPE 'i'
#include "rowCounts_TYPE-template.h"

#define X_TYPE 'r'
#include "rowCounts_TYPE-template.h"

#undef METHOD



SEXP rowCounts(SEXP x, SEXP value, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna;
  int nrow, ncol;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'value': */
  if (length(value) != 1)
    error("Argument 'value' must be a single value.");

  if (!isNumeric(value))
    error("Argument 'value' must be a numeric value.");

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  /* Argument 'hasNA': */
  hasna = LOGICAL(hasNA)[0];

  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowCounts_Real(x, nrow, ncol, value, narm, hasna);
  } else if (isInteger(x)) {
    ans = rowCounts_Integer(x, nrow, ncol, value, narm, hasna);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be numeric.");
  }

  UNPROTECT(1);

  return(ans);
} // rowCounts()


/***************************************************************************
 HISTORY:
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
