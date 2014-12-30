/***************************************************************************
 Public methods:
 SEXP rowDiffs(SEXP x, ...)
 SEXP colDiffs(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowDiffs

#define X_TYPE 'i'
#include "rowDiffs_TYPE-template.h"

#define X_TYPE 'r'
#include "rowDiffs_TYPE-template.h"

#undef METHOD


SEXP rowDiffs(SEXP x, SEXP dim, SEXP lag, SEXP differences, SEXP byRow) {
  int byrow;
  SEXP ans = NILSXP;
  R_xlen_t lagg, diff;
  R_xlen_t nrow, ncol;
  R_xlen_t nrow_ans, ncol_ans;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'lag': */
  lagg = asInteger(lag);
  if (lagg < 1) {
    error("Argument 'lag' must be a positive integer.");
  }

  /* Argument 'differences': */
  diff = asInteger(differences);
  if (diff < 1) {
    error("Argument 'differences' must be a positive integer.");
  }

  /* Argument 'byRow': */
  byrow = asLogical(byRow);


  /* Dimension of result matrix */
  if (byrow) {
    nrow_ans = nrow;
    ncol_ans = (R_xlen_t)((double)ncol - ((double)diff*(double)lagg));
    if (ncol_ans < 0) ncol_ans = 0; 
  } else {
    nrow_ans = (R_xlen_t)((double)nrow - ((double)diff*(double)lagg));
    if (nrow_ans < 0) nrow_ans = 0; 
    ncol_ans = ncol;
  }

  if (isReal(x)) {
    PROTECT(ans = allocMatrix(REALSXP, nrow_ans, ncol_ans));
    rowDiffs_Real(REAL(x), nrow, ncol, byrow, lagg, diff, REAL(ans), nrow_ans, ncol_ans);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrow_ans, ncol_ans));
    rowDiffs_Integer(INTEGER(x), nrow, ncol, byrow, lagg, diff, INTEGER(ans), nrow_ans, ncol_ans);
    UNPROTECT(1);
  }

  return(ans);
} /* rowDiffs() */


/***************************************************************************
 HISTORY:
 2014-12-29 [HB]
 o Created.
 **************************************************************************/
