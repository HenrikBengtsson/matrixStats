#include <Rdefines.h>
#include <Rmath.h>
#include "types.h"
#include "utils.h"

/* 
 logSumExp_double(x):

  1. Scans for the maximum value of x=(x[0], x[1], ..., x[n-1])
  2. Computes result from 'x'.

  NOTE: The above sweeps the "contiguous" 'x' vector twice.
*/
double logSumExp_double(double *x, R_xlen_t nx, int narm, int hasna) {
  R_xlen_t ii, iMax;
  double xii, xMax;
  LDOUBLE sum;
  int hasna2 = FALSE;  /* Indicates whether NAs where detected or not */

  /* Quick return? */
  if (nx == 0) {
    return(R_NegInf);
  } else if (nx == 1) {
    if (narm && ISNAN(x[0])) {
      return(R_NegInf);
    } else {
      return(x[0]);
    }
  }

  /* Find the maximum value */
  iMax = 0;
  xMax = x[0];
  if (ISNAN(xMax)) hasna2 = TRUE;

  for (ii=1; ii < nx; ii++) {
    /* Get the ii:th value */
    xii = x[ii];

    if (hasna && ISNAN(xii)) {
      if (narm) {
        hasna2 = TRUE;
        continue;
      } else {
        return(R_NaReal);
      }
    }

    if (xii > xMax || (narm && ISNAN(xMax))) {
      iMax = ii;
      xMax = xii;
    }

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */


  /* Early stopping? */
  if (ISNAN(xMax)) {
    /* Found only missing values? */
    return narm ? R_NegInf : R_NaReal;
  } else if (xMax == R_PosInf) {
    /* Found +Inf? */
    return(R_PosInf);
  }


  /* Sum differences */
  sum = 0.0;
  for (ii=0; ii < nx; ii++) {
    if (ii == iMax) {
      continue;
    }

    /* Get the ii:th value */
    xii = x[ii];

    if (!hasna2 || !ISNAN(xii)) {
      sum += exp(xii - xMax);
    }

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */

  sum = xMax + log1p(sum);

  return(sum);
} /* logSumExp_double() */



/* 
 logSumExp_double_by(x):

  1. Scans for the maximum value of x=(x[0], x[by], ..., x[(n-1)*by])
     and copies the values to xx = (xx[0], xx[1], xx[2], ..., xx[n-1]),
     which *must* be preallocated.
  2. Computes result from 'xx'.

  NOTE: The above sweeps the "scattered" 'x' vector only once, and then 
  the "contigous" 'xx' vector once.  This is more likely to create 
  cache hits.
*/
double logSumExp_double_by(double *x, R_xlen_t nx, int narm, int hasna, int by, double *xx) {
  R_xlen_t ii, iMax, idx;
  double xii, xMax;
  LDOUBLE sum;
  int hasna2 = FALSE;  /* Indicates whether NAs where detected or not */

  /* Quick return? */
  if (nx == 0) {
    return(R_NegInf);
  } else if (nx == 1) {
    if (narm && ISNAN(x[0])) {
      return(R_NegInf);
    } else {
      return(x[0]);
    }
  }


  /* To increase the chances for cache hits below, which 
     sweeps through the data twice, we copy data into a
     temporary contigous vector while scanning for the
     maximum value. */

  /* Find the maximum value (and copy) */
  iMax = 0;
  xMax = x[0];
  if (ISNAN(xMax)) hasna2 = TRUE;

  xx[0] = xMax;
  idx = 0;
  for (ii=1; ii < nx; ii++) {
    /* Get the ii:th value */
    idx = idx + by;
    xii = x[idx];

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

    if (xii > xMax || (narm && ISNAN(xMax))) {
      iMax = ii;
      xMax = xii;
    }

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */


  /* Early stopping? */
  if (ISNAN(xMax)) {
    /* Found only missing values? */
    return narm ? R_NegInf : R_NaReal;
  } else if (xMax == R_PosInf) {
    /* Found +Inf? */
    return(R_PosInf);
  }


  /* Sum differences */
  sum = 0.0;
  for (ii=0; ii < nx; ii++) {
    if (ii == iMax) {
      continue;
    }

    /* Get the ii:th value */
    xii = xx[ii];

    if (!hasna2 || !ISNAN(xii)) {
      sum += exp(xii - xMax);
    }

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */

  sum = xMax + log1p(sum);

  return(sum);
} /* logSumExp_double_by() */


/***************************************************************************
 HISTORY:
 2015-01-26 [HB]
 o SPEEDUP: Now step 2 ("summing") only checks where NAs if NAs were
   detected in step 1 ("max value"), which should be noticibly faster
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
