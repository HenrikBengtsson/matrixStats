/***************************************************************************
 Public methods:
 SEXP productExpSumLog(SEXP x, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h" 
#include "utils.h"

#define METHOD productExpSumLog

#define X_TYPE 'i'
#include "productExpSumLog_TYPE-template.h"

#define X_TYPE 'r'
#include "productExpSumLog_TYPE-template.h"

#undef METHOD



SEXP productExpSumLog(SEXP x, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP;
  double res = NA_REAL;
  int narm, hasna;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    res = productExpSumLog_Real(REAL(x), xlength(x), narm, hasna);
  } else if (isInteger(x)) {
    res = productExpSumLog_Integer(INTEGER(x), xlength(x), narm, hasna);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = res;
  UNPROTECT(1);

  return(ans);
} // productExpSumLog()


/***************************************************************************
 HISTORY:
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
