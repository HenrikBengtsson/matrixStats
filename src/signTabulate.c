/***************************************************************************
 Public methods:
 SEXP signTabulate(SEXP x)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

#define METHOD signTabulate

#define X_TYPE 'i'
#include "signTabulate_TYPE-template.h"

#define X_TYPE 'r'
#include "signTabulate_TYPE-template.h"

#undef METHOD 


SEXP signTabulate(SEXP x) {
  SEXP ans = NILSXP;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");
 
  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, 6));
    signTabulate_Real(REAL(x), XLENGTH(x), REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(REALSXP, 4));
    signTabulate_Integer(INTEGER(x), XLENGTH(x), REAL(ans));
    UNPROTECT(1);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // signTabulate()


/***************************************************************************
 HISTORY:
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
