/***************************************************************************
 Public methods:
 SEXP mean2(SEXP x, SEXP idxs, SEXP naRm, SEXP refine)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "mean2_lowlevel.h"

SEXP mean2(SEXP x, SEXP idxs, SEXP naRm, SEXP refine) {
  SEXP ans;
  R_xlen_t nx;
  int narm, refine2;
  double avg = NA_REAL;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL | R_TYPE_LGL), "x");
  nx = xlength(x);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'refine': */
  refine2 = asLogicalNoNA(refine, "refine");

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  R_xlen_t *cidxs = validateIndices(idxs, nx, 1, &nidxs);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    avg = mean2_dbl(REAL(x), nx, cidxs, nidxs, narm, refine2);
  } else if (isInteger(x) || isLogical(x)) {
    avg = mean2_int(INTEGER(x), nx, cidxs, nidxs, narm, refine2);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = avg;
  UNPROTECT(1);

  return(ans);
} // mean2()


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
