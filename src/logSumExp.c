/***************************************************************************
 Public methods:
 SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA)

 Arguments:
   lx   : numeric vector
   naRm : a logical scalar
   hasNA: a logical scalar


 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013
 **************************************************************************/
#include <Rdefines.h>
#include <Rmath.h>
#include "types.h"
#include "utils.h"
#include "logSumExp_internal.h"


SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA) {
  int narm, hasna;

  /* Argument 'lx': */
  assertArgVector(lx, (R_TYPE_REAL), "lx");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  return(Rf_ScalarReal(logSumExp_double(REAL(lx), xlength(lx), narm, hasna)));
} /* logSumExp() */



/***************************************************************************
 HISTORY:
 2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
