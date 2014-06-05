/***********************************************************************
 TEMPLATE:
  SEXP productExpSumLog_<Integer|Real>(SEXP x, int narm, int hasna)

 GENERATES:
  SEXP productExpSumLog_Real(SEXP x, int narm, int hasna)
  SEXP productExpSumLog_Integer(SEXP x, int narm, int hasna)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/ 
#include <Rdefines.h>
#include <Rmath.h>
#include <float.h>
#include <stdlib.h> /* abs() */

#ifdef HAVE_LONG_DOUBLE
#define LDOUBLE long double
#else
#define LDOUBLE double
#endif

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h" 


SEXP METHOD_NAME(SEXP x, int narm, int hasna) {
  SEXP ans;
  X_C_TYPE *xx;
  LDOUBLE y = 0.0, t;
  R_xlen_t ii, nneg = 0, n = XLENGTH(x);

  xx = X_IN_C(x);

  /* Calculate sum(log(abs(x))) */
  for (ii = 0 ; ii < n; ii++) {
    t = xx[ii];
    /* Skip missing values? */
    if (narm) {
      if (X_ISNAN(t)) continue;
    }

#if X_TYPE == 'i'
    /* Early stopping? */
    if (t < 0) {
      nneg++;
    } else if (t == 0) {
      y = R_NegInf;
      break;
    }
#elif X_TYPE == 'r'
    if (t < 0) nneg++;
#endif
    t = X_ABS(t);
    t = log(t);
    y += t;
    /*
      Rprintf("#%d: x=%g, is.nan(x)=%d, abs(x)=%g, is.nan(abs(x))=%d, log(abs(x))=%g, is.nan(log(abs(x)))=%d, sum=%g, is.nan(sum)=%d\n", ii, xx[ii], R_IsNaN(xx[ii]), abs(xx[ii]), R_IsNaN(abs(xx[ii])), t, R_IsNaN(y), y, R_IsNaN(y));  */
  }

  if (X_ISNAN(y)) {
    /* If there where NA and/or NaN elements, then 'y' will at this
       point be NaN. The information on an NA value is lost when 
       calculating fabs(NA), which returns NaN. For consistency with
       integers, we return NA in all cases. */
    y = NA_REAL;
  } else {
    y = exp(y);
  
    /* Update sign */
    if (nneg % 2 == 1) {
      y = -y;
    }
  
    /* Overflow or underflow? */
    if (y > DBL_MAX) {
      y = R_PosInf;
    } else if (y < -DBL_MAX) {
      y = R_NegInf; 
    }
  }

  /* R allocate a double vector of length 1 */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = y;
  UNPROTECT(1);

  return(ans);
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
