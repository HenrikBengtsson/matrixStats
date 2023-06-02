/***************************************************************************
 Public methods:
 SEXP productExpSumLog(SEXP x, SEXP idxs, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "productExpSumLog_lowlevel.h"

SEXP productExpSumLog(SEXP x, SEXP idxs, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP;
  R_xlen_t nx;
  double res = NA_REAL;
  int narm, hasna;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsHasNA;
  R_xlen_t *cidxs = validateIndicesCheckNA(idxs, nx, 1, &nidxs, &idxsHasNA);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    res = productExpSumLog_dbl(REAL(x), nx, cidxs, nidxs, idxsHasNA, narm, hasna);
  } else if (isInteger(x)) {
    res = productExpSumLog_int(INTEGER(x), nx, cidxs, nidxs, idxsHasNA, narm, hasna);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = res;
  UNPROTECT(1);

  return(ans);
} // productExpSumLog()


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
