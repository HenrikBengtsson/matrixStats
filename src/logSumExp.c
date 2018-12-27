/***************************************************************************
 Public methods:
 SEXP logSumExp(SEXP lx, SEXP idxs, SEXP naRm, SEXP hasNA)

 Arguments:
   lx   : numeric vector
   idxs : subsetting indices
   naRm : a logical scalar
   hasNA: a logical scalar


 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013
 **************************************************************************/
#include <Rdefines.h>
#include <Rmath.h>
#include "logSumExp_lowlevel.h"

SEXP logSumExp(SEXP lx, SEXP idxs, SEXP naRm, SEXP hasNA) {
  int narm, hasna;

  /* Argument 'lx': */
  assertArgVector(lx, (R_TYPE_REAL), "lx");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, xlength(lx), 1, &nidxs, &idxsType);

  return(Rf_ScalarReal(logSumExp_double[idxsType](REAL(lx), cidxs, nidxs, narm, hasna, 0, NULL)));
} /* logSumExp() */


/***************************************************************************
 HISTORY:
 2015-06-11 [DJ]
  o Supported subsetted computation.
 2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
