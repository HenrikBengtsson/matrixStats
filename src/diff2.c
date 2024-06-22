/***************************************************************************
 Public methods:
 SEXP diff2(SEXP x, SEXP idxs, SEXP lag, SEXP differences)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "000.types.h"
#include "diff2_lowlevel.h"
#include "naming.h"

SEXP diff2(SEXP x, SEXP idxs, SEXP lag, SEXP differences, SEXP useNames) {
  SEXP ans = NILSXP;
  R_xlen_t nx, nans, lagg, diff;
  int usenames;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'lag': */
  lagg = asInteger(lag);
  if (lagg < 1) {
    error("Argument 'lag' must be a positive integer");
  }

  /* Argument 'differences': */
  diff = asInteger(differences);
  if (diff < 1) {
    error("Argument 'differences' must be a positive integer");
  }

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);
  
  int idxsHasNA;
  R_xlen_t *cidxs = validateIndicesCheckNA(idxs, nx, 1, &nidxs, &idxsHasNA);

  /* Length of result vector */
  nans = (R_xlen_t)((double)nidxs - ((double)diff*(double)lagg));
  if (nans < 0) nans = 0;


  /* Dispatch to low-level C function */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nans));
    diff2_dbl(REAL(x), nx, cidxs, nidxs, idxsHasNA, lagg, diff, REAL(ans), nans);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nans));
    diff2_int(INTEGER(x), nx, cidxs, nidxs, idxsHasNA, lagg, diff, INTEGER(ans), nans);
  } else {
    error("Argument 'x' must be numeric");
  }
  
  if (usenames != NA_LOGICAL && usenames) {
    SEXP namesVec;
    PROTECT(namesVec = getAttrib(x, R_NamesSymbol));
    if (namesVec != R_NilValue) {
      setNamesDiff(ans, namesVec, nidxs, nans, cidxs);
    }
    UNPROTECT(1);
  }
  
  UNPROTECT(1);

  return ans;
} // diff2()


/***************************************************************************
 HISTORY:
 2015-06-14 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
