/***********************************************************************
 TEMPLATE:
  double logSumExp_double(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  double *x, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int hasna, int by, double *xx
 ***********************************************************************/
#include <Rdefines.h>
#include <Rmath.h>
#include "000.types.h"

#include "000.templates-types.h"


/*
 logSumExp_double(x, by=0, xx=NULL):

  1. Scans for the maximum value of x=(x[0], x[1], ..., x[n-1])
  2. Computes result from 'x'.

  NOTE: The above sweeps the "contiguous" 'x' vector twice.

 ---

 logSumExp_double(x, by=by, xx=xx):

  1. Scans for the maximum value of x=(x[0], x[by], ..., x[(n-1)*by])
     and copies the values to xx = (xx[0], xx[1], xx[2], ..., xx[n-1]),
     which *must* be preallocated.
  2. Computes result from 'xx'.

  NOTE: The above sweeps the "scattered" 'x' vector only once, and then
  the "contiguous" 'xx' vector once.  This is more likely to create
  cache hits.
*/
double logSumExp_double(double *x, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA, int narm, int hasna, R_xlen_t by, double *xx) {
  R_xlen_t ii, iMax, idx;
  double xii, xMax;
  LDOUBLE sum;
  int hasna2 = FALSE; /* Indicates whether NAs where detected or not */
  int xMaxIsNA;
  int noidxs;
  if (idxs == NULL) { noidxs = 1; } else { noidxs = 0; }

  /* Quick return? */
  if (nidxs == 0) {
    return(R_NegInf);
  }

  /* Find the maximum value */
  iMax = 0;
  if (by) {
    if (noidxs){
        idx = 0;
        xMax = x[idx];
    }
    else if (!idxsHasNA) {
        idx = idxs[0] * by;
        xMax = x[idx];
    }
    else {
        idx = R_INDEX_OP(idxs[0], *, by, 1, 1);
        xMax = R_INDEX_GET(x, idx, NA_REAL, 1);
    }
  } else {
      if (noidxs){
          idx = 0;
          xMax = x[idx];
      }
      else if (!idxsHasNA) {
          idx = idxs[0];
          xMax = x[idx];
      }
      else {
          idx = idxs[0];
          xMax = R_INDEX_GET(x, idx, NA_REAL, 1);
      }
  }
  xMaxIsNA = ISNAN(xMax);

  if (nidxs == 1) {
    if (narm && xMaxIsNA) {
      return(R_NegInf);
    } else {
      return(xMax);
    }
  }
  

  if (xMaxIsNA) hasna2 = TRUE;

  if (by) {
    /* To increase the chances for cache hits below, which
       sweeps through the data twice, we copy data into a
       temporary contiguous vector while scanning for the
       maximum value. */
    xx[0] = xMax;
    for (ii=1; ii < nidxs; ii++) {
      /* Get the ii:th value */
      if (noidxs){
          idx = ii * by;
          xii = x[idx];
      }
      else if (!idxsHasNA) {
          idx = idxs[ii] * by;
          xii = x[idx];
      }
      else {
          idx = R_INDEX_OP(idxs[ii], *, by, 1, 1);
          xii = R_INDEX_GET(x, idx, NA_REAL, 1);
      }

      /* Copy */
      xx[ii] = xii;

      if (hasna && ISNAN(xii)) {
        if (narm) {
          hasna2 = TRUE;
          continue;
        } else {
          return(R_NaReal);
        }
      }

      if (xii > xMax || (narm && xMaxIsNA)) {
        iMax = ii;
        xMax = xii;
        xMaxIsNA = ISNAN(xMax);
      }

      R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } else {
    for (ii=1; ii < nidxs; ii++) {
      /* Get the ii:th value */
      if (noidxs){
          idx = ii;
          xii = x[idx];
      }
      else if (!idxsHasNA) {
          idx = idxs[ii];
          xii = x[idx];
      }
      else {
          idx = idxs[ii];
          xii = R_INDEX_GET(x, idx, NA_REAL, 1);
      }

      if (hasna && ISNAN(xii)) {
        if (narm) {
          hasna2 = TRUE;
          continue;
        } else {
          return(R_NaReal);
        }
      }

      if (xii > xMax || (narm && xMaxIsNA)) {
        iMax = ii;
        xMax = xii;
        xMaxIsNA = ISNAN(xMax);
      }

      R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } /* by */

  /* Early stopping? */
  if (xMaxIsNA) {
    /* Found only missing values? */
    return narm ? R_NegInf : R_NaReal;
  } else if (xMax == R_PosInf) {
    /* Found +Inf? */
    return(R_PosInf);
  } else if (xMax == R_NegInf) {
    /* all values are -Inf */
    return(R_NegInf);
  }


  /* Sum differences */
  sum = 0.0;
  if (by) {
    for (ii=0; ii < nidxs; ii++) {
      if (ii == iMax) {
        continue;
      }

      /* Get the ii:th value */
      xii = xx[ii];

      if (!hasna2 || !ISNAN(xii)) {
        sum += exp(xii - xMax);
      }

      /* Early LDOUBLE stopping on -Inf/+Inf and user interrupt? */
      if (ii % 1048576 == 0) {
        if (!R_FINITE(sum)) break;
        R_CheckUserInterrupt();
      }
    } /* for (ii ...) */
  } else {
    for (ii=0; ii < nidxs; ii++) {
      if (ii == iMax) {
        continue;
      }

      /* Get the ii:th value */
      if (noidxs){
          idx = ii;
          xii = x[idx];
      }
      else if (!idxsHasNA) {
          idx = idxs[ii];
          xii = x[idx];
      }
      else {
          idx = idxs[ii];
          xii = R_INDEX_GET(x, idx, NA_REAL, 1);
      }

      if (!hasna2 || !ISNAN(xii)) {
        sum += exp(xii - xMax);
      }

      /* Early LDOUBLE stopping on -Inf/+Inf and user interrupt? */
      if (ii % 1048576 == 0) {
        if (!R_FINITE(sum)) break;
        R_CheckUserInterrupt();
      }
    } /* for (ii ...) */
  } /* if (by) */

  sum = xMax + log1p(sum);

  return(sum);
}


/***************************************************************************
 HISTORY:
 2015-06-11 [DJ]
  o Supported subsetted computation.
 2015-06-10 [DJ]
  o Merge 'logSumExp_double_by' to 'logSumExp_double'
 2015-01-26 [HB]
 o SPEEDUP: Now step 2 ("summing") only checks where NAs if NAs were
   detected in step 1 ("max value"), which should be noticeably faster
   since testing for NA is expensive for double values.
 o SPEEDUP: Now function returns early after step 1 ("max value") if
   the maximum value found is +Inf, or if all values where NAs.
 o BUG FIX: Now logSumExp(<all NAs>, na.rm=TRUE) also returns -Inf.
2013-05-02 [HB]
 o BUG FIX: Incorrectly used ISNAN() on an int variable as caught by the
   'cc' compiler on Solaris.  Reported by Brian Ripley upon CRAN submission.
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
