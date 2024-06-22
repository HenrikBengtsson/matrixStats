/***************************************************************************
 Public methods:
 SEXP sum2(SEXP x, SEXP idxs, SEXP naRm, SEXP mode)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "000.types.h"
#include "sum2_lowlevel.h"

SEXP sum2(SEXP x, SEXP idxs, SEXP naRm, SEXP mode) {
  SEXP ans = NILSXP;
  R_xlen_t nx;
  int narm, mode2;
  double sum = NA_REAL;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL | R_TYPE_LGL), "x");
  nx = xlength(x);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'mode': */
  if (!isInteger(mode)) {
    error("Argument 'mode' must be a single integer");
  }
  mode2 = asInteger(mode);

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsHasNA;
  R_xlen_t *cidxs = validateIndicesCheckNA(idxs, nx, 1, &nidxs, &idxsHasNA);

  /* Dispatch to low-level C function */
  if (isReal(x)) {
    sum = sum2_dbl(REAL(x), nx, cidxs, nidxs, idxsHasNA, narm);
  } else if (isInteger(x) || isLogical(x)) {
    sum = sum2_int(INTEGER(x), nx, cidxs, nidxs, idxsHasNA, narm);
  }


  /* Return results */
  switch (mode2) {
  case 1: /* integer */
    PROTECT(ans = allocVector(INTSXP, 1));
    if (ISNAN(sum)) {
      INTEGER(ans)[0] = NA_INTEGER;
    } else if (sum > R_INT_MAX || sum < R_INT_MIN) {
      Rf_warning("Integer overflow. Use sum2(..., mode = \"double\") to avoid this.");
      INTEGER(ans)[0] = NA_INTEGER;
    } else {
      INTEGER(ans)[0] = (int)sum;
    }
    UNPROTECT(1);
    break;

  case 2: /* numeric */
    PROTECT(ans = allocVector(REALSXP, 1));
    if (sum > DBL_MAX) {
      REAL(ans)[0] = R_PosInf;
    } else if (sum < -DBL_MAX) {
      REAL(ans)[0] = R_NegInf;
    } else {
      REAL(ans)[0] = sum;
    }
    UNPROTECT(1);
    break;

  default:
    /* To please compiler */
    ans = NILSXP;
    break;
  }

  return(ans);
} // sum2()


/***************************************************************************
 HISTORY:
 2015-07-11 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
  o Moved validation of arguments and construction of return object
    to this function.
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
