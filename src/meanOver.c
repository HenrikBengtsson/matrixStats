/***************************************************************************
 Public methods:
 SEXP meanOver(SEXP x, SEXP idxs, SEXP naRm, SEXP refine)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>
#include "types.h"

#define METHOD meanOver

#define X_TYPE 'i'
#include "meanOver_TYPE-template.h"

#define X_TYPE 'r'
#include "meanOver_TYPE-template.h"

#undef METHOD 


SEXP meanOver(SEXP x, SEXP idxs, SEXP naRm, SEXP refine) {
  SEXP ans;
  int *idxs_ptr;
  R_xlen_t nx, nidxs;
  int narm, refine2;
  double avg;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");
  nx = xlength(x);

  /* Argument 'idxs': */
  if (isNull(idxs)) {
    idxs_ptr = NULL;
    nidxs = 0;
  } else if (isVector(idxs)) {
    idxs_ptr = INTEGER(idxs);
    nidxs = xlength(idxs);
  } else {
    /* To please compiler */
    idxs_ptr = NULL;
    nidxs = 0;
    error("Argument 'idxs' must be NULL or a vector.");
  }

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");
  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");
  narm = asLogical(naRm);
  if (narm != TRUE && narm != FALSE) {
    error("Argument 'naRm' must be either TRUE or FALSE.");
  }

  /* Argument 'refine': */
  if (!isLogical(refine))
    error("Argument 'refine' must be a single logical.");

  if (length(refine) != 1)
    error("Argument 'refine' must be a single logical.");

  refine2 = asLogical(refine);
  if (refine2 != TRUE && refine2 != FALSE) {
    error("Argument 'refine' must be either TRUE or FALSE.");
  }


  /* Double matrices are more common to use. */
  if (isReal(x)) {
    avg = meanOver_Real(REAL(x), nx, idxs_ptr, nidxs, narm, refine2);
  } else if (isInteger(x)) {
    avg = meanOver_Integer(INTEGER(x), nx, idxs_ptr, nidxs, narm, refine2);
  } else {
    /* To please compiler */
    ans = NILSXP;
    avg = 0;
    error("Argument 'x' must be numeric.");
  }


  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = avg;
  UNPROTECT(1);

  return(ans);
} // meanOver()


/***************************************************************************
 HISTORY:
 2014-11-02 [HB]
  o Created.
 **************************************************************************/
