/***************************************************************************
 Public methods:
 SEXP rowCumsums(SEXP x, ...)
 SEXP colCumsums(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowCumsums

#define X_TYPE 'i'
#include "rowCumsums_TYPE-template.h"

#define X_TYPE 'r'
#include "rowCumsums_TYPE-template.h"

#undef METHOD


SEXP rowCumsums(SEXP x, SEXP dim, SEXP byRow) {
  int byrow;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocMatrix(REALSXP, nrow, ncol));
    rowCumsums_Real(REAL(x), nrow, ncol, byrow, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));
    rowCumsums_Integer(INTEGER(x), nrow, ncol, byrow, INTEGER(ans));
    UNPROTECT(1);
  }

  return(ans);
} /* rowCumsums() */


/***************************************************************************
 HISTORY:
 2014-11-26 [HB]
 o Created from rowVars.c.
 **************************************************************************/
