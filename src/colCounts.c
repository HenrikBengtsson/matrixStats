/***************************************************************************
 Public methods:
 SEXP colCounts(SEXP x, SEXP value, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"

#define METHOD colCounts

#define X_TYPE 'i'
#include "colCounts_TYPE-template.h"

#define X_TYPE 'r'
#include "colCounts_TYPE-template.h"

#define X_TYPE 'l'
#include "colCounts_TYPE-template.h"

#undef METHOD



SEXP colCounts(SEXP x, SEXP dim, SEXP value, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna;
  R_xlen_t nrow, ncol;

  /* Argument 'x': */
  if (isMatrix(x)) {
  } else if (isVector(x)) {
  } else {
    error("Argument 'x' must be a matrix or a vector.");
  }

  /* Argument 'dim': */
  if (!isVector(dim) || !isInteger(dim) || xlength(dim) != 2) {
    error("Argument 'dim' must be an integer vector of length two.");
  }
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];
  if (nrow * ncol != xlength(x)) {
    error("Argument 'dim' does not match length of argument 'x': %d * %d != %d", nrow, ncol, xlength(x));
  }

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

  narm = asLogical(naRm);
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  /* Argument 'hasNA': */
  hasna = asLogical(hasNA);

  /* Get dimensions of 'x'. */

  /* R allocate a double vector of length 'ncol' */
  PROTECT(ans = allocVector(INTSXP, ncol));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    colCounts_Real(REAL(x), nrow, ncol, asReal(value), narm, hasna, INTEGER(ans));
  } else if (isInteger(x)) {
    colCounts_Integer(INTEGER(x), nrow, ncol, asInteger(value), narm, hasna, INTEGER(ans));
  } else if (isLogical(x)) {
    colCounts_Logical(LOGICAL(x), nrow, ncol, asLogical(value), narm, hasna, INTEGER(ans));
  } else {
    error("Argument 'x' must be numeric.");
  }

  UNPROTECT(1);

  return(ans);
} // colCounts()


/***************************************************************************
 HISTORY:
 2014-11-14 [HB]
  o Created from rowCounts.c.
 **************************************************************************/
