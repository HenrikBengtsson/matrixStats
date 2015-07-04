/***************************************************************************
 Public methods:
 SEXP diff2(SEXP x, SEXP idxs, SEXP lag, SEXP differences)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "types.h"
#include "utils.h"


#define METHOD diff2
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans

#define X_TYPE 'i'
#include "templates-gen-vector.h"
#define X_TYPE 'r'
#include "templates-gen-vector.h"


SEXP diff2(SEXP x, SEXP idxs, SEXP lag, SEXP differences) {
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

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, nx, 1, &nidxs, &idxsType);

  /* Length of result vector */
  nans = (R_xlen_t)((double)nidxs - ((double)diff*(double)lagg));
  if (nans < 0) nans = 0;

  /* Dispatch to low-level C function */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nans));
    diff2_Real[idxsType](REAL(x), nx, cidxs, nidxs, lagg, diff, REAL(ans), nans);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nans));
    diff2_Integer[idxsType](INTEGER(x), nx, cidxs, nidxs, lagg, diff, INTEGER(ans), nans);
    UNPROTECT(1);
  } else {
    error("Argument 'x' must be numeric.");
  }

  return ans;
} // diff2()


/***************************************************************************
 HISTORY:
 2015-06-14 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
