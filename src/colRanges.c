/***************************************************************************
 Public methods:
 SEXP colRanges(SEXP x, SEXP what)

 Authors: Henrik Bengtsson.

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD colRanges

#define X_TYPE 'i'
#include "colRanges_TYPE-template.h"

#define X_TYPE 'r'
#include "colRanges_TYPE-template.h"

#undef METHOD


SEXP colRanges(SEXP x, SEXP dim, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP, ans2 = NILSXP;
  int *mins, *maxs;
  double *mins2, *maxs2;
  int *is_counted, all_counted = 0;
  int what2, narm, hasna;
  R_xlen_t nrow, ncol, jj;

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

  is_counted = (int *) R_alloc(ncol, sizeof(int));

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, ncol, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, ncol));
    }
    colRanges_Real(REAL(x), nrow, ncol, what2, narm, hasna, REAL(ans), is_counted);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, ncol, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, ncol));
    }
    colRanges_Integer(INTEGER(x), nrow, ncol, what2, narm, hasna, INTEGER(ans), is_counted);

    /* Any entries with zero non-missing values? */
    all_counted = 1;
    for (jj=0; jj < ncol; jj++) {
      if (!is_counted[jj]) {
        all_counted = 0;
        break;
      }
    }

    if (!all_counted) {
      /* Handle zero non-missing values */
      /* Instead of return INTSXP, we must return REALSXP (to hold -Inf, and Inf) */
      if (what2 == 0) {
        PROTECT(ans2 = allocVector(REALSXP, ncol));
        mins = INTEGER(ans);
        mins2 = REAL(ans2);
        for (jj=0; jj < ncol; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
	  } else {
            mins2[jj] = R_PosInf;
	  }
  	}
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 1) {
        PROTECT(ans2 = allocVector(REALSXP, ncol));
        maxs = INTEGER(ans);
        maxs2 = REAL(ans2);
        for (jj=0; jj < ncol; jj++) {
          if (is_counted[jj]) {
            maxs2[jj] = (double)maxs[jj];
	  } else {
            maxs2[jj] = R_NegInf;
	  }
  	}
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 2) {
        PROTECT(ans2 = allocMatrix(REALSXP, ncol, 2));
        mins = INTEGER(ans);
        maxs = &INTEGER(ans)[ncol];
        mins2 = REAL(ans2);
        maxs2 = &REAL(ans2)[ncol];
        for (jj=0; jj < ncol; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
            maxs2[jj] = (double)maxs[jj];
	  } else {
            mins2[jj] = R_PosInf;
            maxs2[jj] = R_NegInf;
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
