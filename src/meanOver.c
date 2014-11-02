/***************************************************************************
 Public methods:
 SEXP meanOver(SEXP x, SEXP idxs, SEXP naRm)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>

/* 
TEMPLATE meanOver_<Integer|Real>(...):
  SEXP meanOver_Real(SEXP x, SEXP idxs, SEXP naRm)
  SEXP meanOver_Integer(SEXP x, SEXP idxs, SEXP naRm)
 */
#define METHOD meanOver

#define X_TYPE 'i'
#include "meanOver_TYPE-template.h"

#define X_TYPE 'r'
#include "meanOver_TYPE-template.h"

#undef METHOD 


SEXP meanOver(SEXP x, SEXP idxs, SEXP naRm) {
  SEXP ans = NILSXP;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = meanOver_Real(x, idxs, naRm);
  } else if (isInteger(x)) {
    ans = meanOver_Integer(x, idxs, naRm);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // meanOver()


/***************************************************************************
 HISTORY:
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
