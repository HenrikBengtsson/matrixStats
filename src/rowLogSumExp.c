/***************************************************************************
 Public methods:
 SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP naRm, SEXP hasNA, SEXP byRow)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"
#include "logSumExp_internal.h"


SEXP rowLogSumExps(SEXP lx, SEXP dim, SEXP naRm, SEXP hasNA, SEXP byRow) {
  SEXP ans;
  int narm, hasna, byrow;
  R_xlen_t nrow, ncol, len, ii;
  double *x, *xx, *ans_ptr;

  /* Argument 'lx' and 'dim': */
  assertArgMatrix(lx, dim, (R_TYPE_REAL), "lx");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */ 
  if (byrow) { len = nrow; } else { len = ncol; }
  PROTECT(ans = allocVector(REALSXP, len));
  ans_ptr = REAL(ans);

  /* Get the values */
  x = REAL(lx);

  if (byrow) {
    /* R allocate memory for row-vector 'xx' of length 'ncol'. 
       This will be taken care of by the R garbage collector later on. */
    xx = (double *) R_alloc(ncol, sizeof(double));

    for (ii=0; ii < nrow; ii++) {
      ans_ptr[ii] = logSumExp_double_by(x, ncol, narm, hasna, nrow, xx);
      /* Move to the beginning next row */
      x++;
    }
  } else {
    for (ii=0; ii < ncol; ii++) {
      ans_ptr[ii] = logSumExp_double(x, nrow, narm, hasna);
      /* Move to the beginning next column */
      x += nrow;
    }
  }

  UNPROTECT(1); /* PROTECT(ans = ...) */

  return(ans);
} /* rowLogSumExps() */



/***************************************************************************
 HISTORY:
 2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
