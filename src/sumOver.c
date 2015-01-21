/***************************************************************************
 Public methods:
 SEXP sumOver(SEXP x, SEXP idxs, SEXP naRm, SEXP mode)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "types.h"
#include "utils.h"

#define METHOD sumOver

#define X_TYPE 'i'
#include "sumOver_TYPE-template.h"

#define X_TYPE 'r'
#include "sumOver_TYPE-template.h"

#undef METHOD 


SEXP sumOver(SEXP x, SEXP idxs, SEXP naRm, SEXP mode) {
  SEXP ans = NILSXP;
  int *idxsp;
  R_xlen_t nidxs;
  int narm, mode2;
  double sum;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");

  /* Argument 'idxs': */
  if (isNull(idxs)) {
    idxsp = NULL;
    nidxs = 0;
  } else if (isVectorAtomic(idxs)) {
    idxsp = INTEGER(idxs);
    nidxs = xlength(idxs);
  } else {
    /* To please compiler */
    idxsp = NULL;
    nidxs = 0;
    error("Argument 'idxs' must be NULL or a vector.");
  }

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'mode': */
  if (!isInteger(mode)) {
    error("Argument 'mode' must be a single integer.");
  }
  mode2 = asInteger(mode);


  /* Dispatch to low-level C function */
  if (isReal(x)) {
    sum = sumOver_Real(REAL(x), xlength(x), idxsp, nidxs, narm, mode2);
  } else if (isInteger(x)) {
    sum = sumOver_Integer(INTEGER(x), xlength(x), idxsp, nidxs, narm, mode2);
  } else {
    error("Argument 'x' must be numeric.");
  }


  /* Return results */
  switch (mode2) {
  case 1: /* integer */
    PROTECT(ans = allocVector(INTSXP, 1));
    if (ISNAN(sum)) {
      INTEGER(ans)[0] = NA_INTEGER;
    } else if (sum > R_INT_MAX || sum < R_INT_MIN) {
      Rf_warning("Integer overflow. Use sumOver(..., mode=\"numeric\") to avoid this.");
      INTEGER(ans)[0] = NA_INTEGER;
    } else {
      INTEGER(ans)[0] = (int)sum;
    }
    UNPROTECT(1);
    break;

  case 2: /* numeric */
    PROTECT(ans = allocVector(REALSXP, 1));
    if (sum > DOUBLE_XMAX) {
      REAL(ans)[0] = R_PosInf;
    } else if (sum < -DOUBLE_XMAX) {
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
} // sumOver()


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o Moved validation of arguments and construction of return object
    to this function.
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
