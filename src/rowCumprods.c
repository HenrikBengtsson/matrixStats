/***************************************************************************
 Public methods:
 SEXP rowCumprods(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colCumprods(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowCumprods

#define X_TYPE 'i'
#include "rowCumprods_TYPE-template.h"

#define X_TYPE 'r'
#include "rowCumprods_TYPE-template.h"

#undef METHOD


SEXP rowCumprods(SEXP x, SEXP dim, SEXP byRow) {
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
    rowCumprods_Real(REAL(x), nrow, ncol, byrow, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));
    rowCumprods_Integer(INTEGER(x), nrow, ncol, byrow, INTEGER(ans));
    UNPROTECT(1);
  }

  return(ans);
} /* rowCumprods() */


/***************************************************************************
 HISTORY:
 2014-11-26 [HB]
 o Created from rowVars.c.
 **************************************************************************/
