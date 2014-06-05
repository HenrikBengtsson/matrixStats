/***************************************************************************
 Public methods:
 SEXP signTabulate(SEXP x)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE signTabulate_<Integer|Real>(...):
  SEXP signTabulate_Real(SEXP x)
  SEXP signTabulate_Integer(SEXP x)
 */
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
    ans = signTabulate_Real(x);
  } else if (isInteger(x)) {
    ans = signTabulate_Integer(x);
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
