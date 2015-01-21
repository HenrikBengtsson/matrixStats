/***************************************************************************
 Public methods:
 SEXP rowCounts(SEXP x, SEXP value, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowCounts

#define X_TYPE 'i'
#include "rowCounts_TYPE-template.h"

#define X_TYPE 'r'
#include "rowCounts_TYPE-template.h"

#define X_TYPE 'l'
#include "rowCounts_TYPE-template.h"

#undef METHOD



SEXP rowCounts(SEXP x, SEXP dim, SEXP value, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna, what2;
  R_xlen_t nrow, ncol;

  /* Argument 'x' & 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'value': */
  if (length(value) != 1)
    error("Argument 'value' must be a single value.");

  if (!isNumeric(value))
    error("Argument 'value' must be a numeric value.");

  /* Argument 'what': */
  what2 = asInteger(what);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(INTSXP, nrow));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowCounts_Real(REAL(x), nrow, ncol, asReal(value), what2, narm, hasna, INTEGER(ans));
  } else if (isInteger(x)) {
    rowCounts_Integer(INTEGER(x), nrow, ncol, asInteger(value), what2, narm, hasna, INTEGER(ans));
  } else if (isLogical(x)) {
    rowCounts_Logical(LOGICAL(x), nrow, ncol, asLogical(value), what2, narm, hasna, INTEGER(ans));
  }

  UNPROTECT(1);

  return(ans);
} // rowCounts()


/***************************************************************************
 HISTORY:
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
