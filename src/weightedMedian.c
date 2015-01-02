/***************************************************************************
 Public methods:
 SEXP weightedMedian(SEXP x, SEXP w, SEXP naRm, SEXP interpolate, SEXP ties)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"
#include <R_ext/Error.h>

#define METHOD weightedMedian

#define X_TYPE 'i'
#include "weightedMedian_TYPE-template.h"

#define X_TYPE 'r'
#include "weightedMedian_TYPE-template.h"

#undef METHOD 


SEXP weightedMedian(SEXP x, SEXP w, SEXP naRm, SEXP interpolate, SEXP ties) {
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

  /* Argument 'ties': */
  ties2 = asInteger(ties);


  /* Double matrices are more common to use. */
  if (isReal(x)) {
    mu = weightedMedian_Real(REAL(x), nx, REAL(w), nw, narm, interpolate2, ties2);
  } else if (isInteger(x)) {
    mu = weightedMedian_Integer(INTEGER(x), nx, REAL(w), nw, narm, interpolate2, ties2);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = mu;
  UNPROTECT(1);

  return(ans);
} // weightedMedian()


/***************************************************************************
 HISTORY:
 2015-01-01 [HB]
  o Created.
 **************************************************************************/
