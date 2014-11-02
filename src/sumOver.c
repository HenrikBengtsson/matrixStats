/***************************************************************************
 Public methods:
 SEXP sumOver(SEXP x, SEXP naRm, SEXP idxs)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE sumOver_<Integer|Real>(...):
  SEXP sumOver_Real(SEXP x, SEXP naRm, SEXP idxs)
  SEXP sumOver_Integer(SEXP x, SEXP naRm, SEXP idxs)
 */
#define METHOD sumOver

#define X_TYPE 'i'
#include "sumOver_TYPE-template.h"

#define X_TYPE 'r'
#include "sumOver_TYPE-template.h"

#undef METHOD 


SEXP sumOver(SEXP x, SEXP naRm, SEXP idxs) {
  SEXP ans = NILSXP;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = sumOver_Real(x, naRm, idxs);
  } else if (isInteger(x)) {
    ans = sumOver_Integer(x, naRm, idxs);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // sumOver()


/***************************************************************************
 HISTORY:
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
