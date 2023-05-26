/***************************************************************************
 Public methods:
 SEXP signTabulate(SEXP x, SEXP idxs)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "signTabulate_lowlevel.h"

SEXP signTabulate(SEXP x, SEXP idxs) {
  SEXP ans = NILSXP;
  R_xlen_t nx;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsHasNA;
  R_xlen_t *cidxs = validateIndicesCheckNA(idxs, nx, 1, &nidxs, &idxsHasNA);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, 6));
    signTabulate_dbl(REAL(x), nx, cidxs, nidxs, idxsHasNA, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(REALSXP, 4));
    signTabulate_int(INTEGER(x), nx, cidxs, nidxs, idxsHasNA, REAL(ans));
    UNPROTECT(1);
  }

  return(ans);
} // signTabulate()


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
