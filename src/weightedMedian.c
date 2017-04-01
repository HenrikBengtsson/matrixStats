/***************************************************************************
 Public methods:
 SEXP weightedMedian(SEXP x, SEXP w, SEXP idxs, SEXP naRm, SEXP interpolate, SEXP ties)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include <R_ext/Error.h>
#include "weightedMedian_lowlevel.h"

SEXP weightedMedian(SEXP x, SEXP w, SEXP idxs, SEXP naRm, SEXP interpolate, SEXP ties) {
  SEXP ans;
  int narm, interpolate2, ties2;
  double mu = NA_REAL;
  R_xlen_t nx, nw;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'x': */
  assertArgVector(w, (R_TYPE_REAL), "w");
  nw = xlength(w);
  if (nx != nw) {
    error("Argument 'x' and 'w' are of different lengths: %d != %d", nx, nw);
  }

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'interpolate': */
  interpolate2 = asLogicalNoNA(interpolate, "interpolate");

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, nx, 1, &nidxs, &idxsType);

  /* Argument 'ties': */
  ties2 = asInteger(ties);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    mu = weightedMedian_dbl[idxsType](REAL(x), nx, REAL(w), cidxs, nidxs, narm, interpolate2, ties2);
  } else if (isInteger(x)) {
    mu = weightedMedian_int[idxsType](INTEGER(x), nx, REAL(w), cidxs, nidxs, narm, interpolate2, ties2);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = mu;
  UNPROTECT(1);

  return(ans);
} // weightedMedian()


/***************************************************************************
 HISTORY:
 2015-07-09 [DJ]
  o Supported subsetted computation.
 2015-01-01 [HB]
  o Created.
 **************************************************************************/
