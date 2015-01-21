/***************************************************************************
 Public methods:
 SEXP diff2(SEXP x, SEXP lag, SEXP differences)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "types.h"
#include "utils.h"

#define METHOD diff2

#define X_TYPE 'i'
#include "diff2_TYPE-template.h"

#define X_TYPE 'r'
#include "diff2_TYPE-template.h"

#undef METHOD


SEXP diff2(SEXP x, SEXP lag, SEXP differences) {
  SEXP ans = NILSXP;
  R_xlen_t nx, nans, lagg, diff;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'lag': */
  lagg = asInteger(lag);
  if (lagg < 1) {
    error("Argument 'lag' must be a positive integer.");
  }

  /* Argument 'differences': */
  diff = asInteger(differences);
  if (diff < 1) {
    error("Argument 'differences' must be a positive integer.");
  }

  /* Length of result vector */
  nans = (R_xlen_t)((double)nx - ((double)diff*(double)lagg));
  if (nans < 0) nans = 0;

  /* Dispatch to low-level C function */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nans));
    diff2_Real(REAL(x), nx, lagg, diff, REAL(ans), nans);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nans));
    diff2_Integer(INTEGER(x), nx, lagg, diff, INTEGER(ans), nans);
    UNPROTECT(1);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return ans;
} // diff2()


/***************************************************************************
 HISTORY:
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
