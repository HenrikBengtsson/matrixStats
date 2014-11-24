/***************************************************************************
 Public methods:
 SEXP rowRanges(SEXP x, SEXP what)

 Authors: Henrik Bengtsson.

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowRanges

#define X_TYPE 'i'
#include "rowRanges_TYPE-template.h"

#define X_TYPE 'r'
#include "rowRanges_TYPE-template.h"

#undef METHOD


SEXP rowRanges(SEXP x, SEXP dim, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP, ans2 = NILSXP;
  int *mins, *maxs;
  double *mins2, *maxs2;
  int *is_counted, all_counted = 0;
  int what2, narm, hasna;
  R_xlen_t nrow, ncol, ii;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'what': */
  if (length(what) != 1)
    error("Argument 'what' must be a single number.");
  if (!isNumeric(what))
    error("Argument 'what' must be a numeric number.");
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("Invalid value of 'what': %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  is_counted = (int *) R_alloc(nrow, sizeof(int));

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, nrow, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, nrow));
    }
    rowRanges_Real(REAL(x), nrow, ncol, what2, narm, hasna, REAL(ans), is_counted);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, nrow, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, nrow));
    }
    rowRanges_Integer(INTEGER(x), nrow, ncol, what2, narm, hasna, INTEGER(ans), is_counted);

    /* Any entries with zero non-missing values? */
    all_counted = 1;
    for (ii=0; ii < nrow; ii++) {
      if (!is_counted[ii]) {
        all_counted = 0;
        break;
      }
    }

    if (!all_counted) {
      /* Handle zero non-missing values */
      /* Instead of return INTSXP, we must return REALSXP (to hold -Inf, and Inf) */
      if (what2 == 0) {
        PROTECT(ans2 = allocVector(REALSXP, nrow));
        mins = INTEGER(ans);
        mins2 = REAL(ans2);
        for (ii=0; ii < nrow; ii++) {
          if (is_counted[ii]) {
            mins2[ii] = (double)mins[ii];
	  } else {
            mins2[ii] = R_PosInf;
	  }
  	}
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 1) {
        PROTECT(ans2 = allocVector(REALSXP, nrow));
        maxs = INTEGER(ans);
        maxs2 = REAL(ans2);
        for (ii=0; ii < nrow; ii++) {
          if (is_counted[ii]) {
            maxs2[ii] = (double)maxs[ii];
	  } else {
            maxs2[ii] = R_NegInf;
	  }
  	}
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 2) {
        PROTECT(ans2 = allocMatrix(REALSXP, nrow, 2));
        mins = INTEGER(ans);
        maxs = &INTEGER(ans)[nrow];
        mins2 = REAL(ans2);
        maxs2 = &REAL(ans2)[nrow];
        for (ii=0; ii < nrow; ii++) {
          if (is_counted[ii]) {
            mins2[ii] = (double)mins[ii];
            maxs2[ii] = (double)maxs[ii];
	  } else {
            mins2[ii] = R_PosInf;
            maxs2[ii] = R_NegInf;
	  }
  	}
        UNPROTECT(1); /* ans2 */
      }

      ans = ans2;
    }

    UNPROTECT(1); /* ans */
  }

  return(ans);
} // rowRanges()


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
