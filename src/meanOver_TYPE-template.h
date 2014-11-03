/***********************************************************************
 TEMPLATE:
  SEXP meanOver_<Integer|Real>(SEXP x, SEXP idxs, SEXP naRm, SEXP refine)

 GENERATES:
  SEXP meanOver_Integer(SEXP x, SEXP idxs, SEXP naRm, SEXP refine)
  SEXP meanOver_Real(SEXP x, SEXP idxs, SEXP naRm, SEXP refine)

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

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>

#define R_INT_MAX  INT_MAX
#define R_INT_MIN -INT_MAX

SEXP METHOD_NAME(SEXP x, SEXP idxs, SEXP naRm, SEXP refine) {
  /* Arguments */
  X_C_TYPE *xp, value;
  int *idxsp;
  int narm, refine2;
  /* Value */
  SEXP ans;

  int n, nx;
  /*
  R_XLEN_T n;
  R_XLEN_T nx;
  */

  int i, idx;
  double sum = 0, avg = R_NaN;
#if X_TYPE == 'r'
  double rsum = 0;
#endif
  int count = 0;

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE) {
    error("Argument 'naRm' must be either TRUE or FALSE.");
  }

  /* Argument 'refine': */
  if (!isLogical(refine))
    error("Argument 'refine' must be a single logical.");

  if (length(refine) != 1)
    error("Argument 'refine' must be a single logical.");

  refine2 = LOGICAL(refine)[0];
  if (refine2 != TRUE && refine2 != FALSE) {
    error("Argument 'refine' must be either TRUE or FALSE.");
  }

  xp = X_IN_C(x);
  nx = XLENGTH(x);

  /* Sum over all element? */
  if (isNull(idxs)) {
    for (i=0; i < nx; i++) {
      value = xp[i];
#if X_TYPE == 'i'
      if (!X_ISNAN(value)) {
        sum += (double)value;
        ++count;
      } else if (!narm) {
          sum = R_NaReal;
          break;
      }
#elif X_TYPE == 'r'
      if (!narm || !ISNAN(value)) {
        sum += value;
        ++count;
      }
#endif
    } /* for (i ...) */

    if (sum > DBL_MAX) {
      avg = R_PosInf;
    } else if (sum < -DBL_MAX) {
      avg = R_NegInf;
    } else {
      avg = sum / count;

      /* Extra precision by summing over residuals? */
#if X_TYPE == 'r'
      if (refine2 && R_FINITE(avg)) {
        for (i=0; i < nx; i++) {
          value = xp[i];
          if (!narm || !ISNAN(value)) {
            rsum += (value - avg);
          }
        }
        avg += (rsum / count);
      }
#endif
    }
  } else {
    idxsp = INTEGER(idxs);
    n = XLENGTH(idxs);

    for (i=0; i < n; i++) {
      idx = idxsp[i];
      if (idx <= 0) {
        Rf_error("Argument \'idxs\' contains a non-positive index: %d", idx);
      } else if (idx > nx) {
        Rf_error("Argument \'idxs\' contains an index out of range [1,%d]: %d", n, idx);
      }
      value = xp[idx-1];
#if X_TYPE == 'i'
      if (!X_ISNAN(value)) {
        sum += (double)value;
        ++count;
      } else if (!narm) {
          sum = R_NaReal;
          break;
      }
#elif X_TYPE == 'r'
      if (!narm || !ISNAN(value)) {
        sum += value;
        ++count;
      }
#endif
    } /* for (i ...) */

    if (sum > DBL_MAX) {
      avg = R_PosInf;
    } else if (sum < -DBL_MAX) {
      avg = R_NegInf;
    } else {
      avg = sum / count;

      /* Extra precision by summing over residuals? */
#if X_TYPE == 'r'
      if (refine2 && R_FINITE(avg)) {
        for (i=0; i < n; i++) {
          idx = idxsp[i];
          value = xp[idx-1];
          if (!narm || !ISNAN(value)) {
            rsum += (value - avg);
          }
        }
        avg += (rsum / count);
      }
#endif
    }
  }

  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = avg;
  UNPROTECT(1);

  return(ans);
}

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
