/***************************************************************************
 Public methods:
 SEXP weightedVar(SEXP x, SEXP w, SEXP naRm, SEXP center)
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"
#include <R_ext/Error.h>

#define METHOD weightedVar

#define X_TYPE 'i'
#include "weightedVar_TYPE-template.h"

#define X_TYPE 'r'
#include "weightedVar_TYPE-template.h"

#undef METHOD

double weightedMean_Real(double *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine);
double weightedMean_Integer(int *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine);

SEXP weightedVar(SEXP x, SEXP w, SEXP naRm, SEXP center) {
  SEXP ans;
  int narm;
  double var = NA_REAL, dCenter;
  R_xlen_t nx, nw, i;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  int protect_n = 0;
  if (isNull(w)) {
    PROTECT(w = allocVector(REALSXP, nx));
    protect_n ++;
    for (R_xlen_t i = 0; i < nx; ++ i) REAL(w)[i] = 1;
  }

  /* Argument 'w': */
  assertArgVector(w, (R_TYPE_REAL), "w");
  nw = xlength(w);
  if (nx != nw) {
    error("Argument 'x' and 'w' are of different lengths: %d != %d", nx, nw);
  }

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    var = weightedVar_Real(REAL(x), nx, REAL(w), nw, narm, center);

  } else if (isInteger(x)) {
    var = weightedVar_Integer(INTEGER(x), nx, REAL(w), nw, narm, center);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = var;
  protect_n ++;
  UNPROTECT(protect_n);

  return(ans);
} // weightedVar()


/***************************************************************************
 HISTORY:
 2015-03-15 [HB]
  o Created.
 **************************************************************************/
