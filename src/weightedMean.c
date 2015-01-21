/***************************************************************************
 Public methods:
 SEXP weightedMean(SEXP x, SEXP w, SEXP naRm, SEXP refine)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"
#include <R_ext/Error.h>

#define METHOD weightedMean

#define X_TYPE 'i'
#include "weightedMean_TYPE-template.h"

#define X_TYPE 'r'
#include "weightedMean_TYPE-template.h"

#undef METHOD 


SEXP weightedMean(SEXP x, SEXP w, SEXP naRm, SEXP refine) {
  SEXP ans;
  int narm, refine2;
  double avg = NA_REAL;
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

  /* Argument 'refine': */
  refine2 = asLogicalNoNA(refine, "refine");


  /* Double matrices are more common to use. */
  if (isReal(x)) {
    avg = weightedMean_Real(REAL(x), nx, REAL(w), nw, narm, refine2);
  } else if (isInteger(x)) {
    avg = weightedMean_Integer(INTEGER(x), nx, REAL(w), nw, narm, refine2);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = avg;
  UNPROTECT(1);

  return(ans);
} // weightedMean()


/***************************************************************************
 HISTORY:
 2014-12-08 [HB]
  o Created.
 **************************************************************************/
