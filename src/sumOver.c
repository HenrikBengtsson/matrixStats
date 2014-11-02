/***************************************************************************
 Public methods:
 SEXP sumOver(SEXP x, SEXP idxs, SEXP naRm, SEXP mode)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE sumOver_<Integer|Real>(...):
  SEXP sumOver_Real(SEXP x, SEXP idxs, SEXP naRm, SEXP mode)
  SEXP sumOver_Integer(SEXP x, SEXP idxs, SEXP naRm, SEXP mode)
 */
#define METHOD sumOver

#define X_TYPE 'i'
#include "sumOver_TYPE-template.h"

#define X_TYPE 'r'
#include "sumOver_TYPE-template.h"

#undef METHOD 


SEXP sumOver(SEXP x, SEXP idxs, SEXP naRm, SEXP mode) {
  SEXP ans = NILSXP;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = sumOver_Real(x, idxs, naRm, mode);
  } else if (isInteger(x)) {
    ans = sumOver_Integer(x, idxs, naRm, mode);
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
