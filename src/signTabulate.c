/***************************************************************************
 Public methods:
 SEXP signTabulate(SEXP x)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD signTabulate

#define X_TYPE 'i'
#include "signTabulate_TYPE-template.h"

#define X_TYPE 'r'
#include "signTabulate_TYPE-template.h"

#undef METHOD 


SEXP signTabulate(SEXP x) {
  SEXP ans;
  R_xlen_t nx;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, 6));
    signTabulate_Real(REAL(x), nx, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(REALSXP, 4));
    signTabulate_Integer(INTEGER(x), nx, REAL(ans));
    UNPROTECT(1);
  }

  return(ans);
} // signTabulate()


/***************************************************************************
 HISTORY:
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
