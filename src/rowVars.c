/***************************************************************************
 Public methods:
 SEXP rowVars(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colVars(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowVars

#define X_TYPE 'i'
#include "rowVars_TYPE-template.h"

#define X_TYPE 'r'
#include "rowVars_TYPE-template.h"

#undef METHOD 


SEXP rowVars(SEXP x, SEXP dim, SEXP naRm, SEXP hasNA, SEXP byRow) {
  int narm, hasna, byrow;
  SEXP ans;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* Get dimensions of 'x'. */
  if (byrow) {
    nrow = INTEGER(dim)[0];
    ncol = INTEGER(dim)[1];
  } else {
    nrow = INTEGER(dim)[1];
    ncol = INTEGER(dim)[0];
  }

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */
  PROTECT(ans = allocVector(REALSXP, nrow));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowVars_Real(REAL(x), nrow, ncol, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x)) {
    rowVars_Integer(INTEGER(x), nrow, ncol, narm, hasna, byrow, REAL(ans));
  }

  UNPROTECT(1);

  return(ans);
} /* rowVars() */


/***************************************************************************
 HISTORY:
 2014-11-18 [HB]
 o Created from rowMads.c.
 **************************************************************************/
