/***************************************************************************
 Public methods:
 SEXP colCounts(SEXP x, SEXP value, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

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

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'value': */
  if (length(value) != 1)
    error("Argument 'value' must be a single value.");

  if (!isNumeric(value))
    error("Argument 'value' must be a numeric value.");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* R allocate a double vector of length 'ncol' */
  PROTECT(ans = allocVector(INTSXP, ncol));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    colCounts_Real(REAL(x), nrow, ncol, asReal(value), narm, hasna, INTEGER(ans));
  } else if (isInteger(x)) {
    colCounts_Integer(INTEGER(x), nrow, ncol, asInteger(value), narm, hasna, INTEGER(ans));
  } else if (isLogical(x)) {
    colCounts_Logical(LOGICAL(x), nrow, ncol, asLogical(value), narm, hasna, INTEGER(ans));
  }

  UNPROTECT(1);

  return(ans);
} // colCounts()


/***************************************************************************
 HISTORY:
 2014-11-14 [HB]
  o Created from rowCounts.c.
 **************************************************************************/
