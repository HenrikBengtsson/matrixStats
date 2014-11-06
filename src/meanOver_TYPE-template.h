/***********************************************************************
 TEMPLATE:
  double meanOver_<Integer|Real>(X_C_TYPE *x, int nx, int *idxs, int nidxs, int narm, int refine)

 GENERATES:
  double meanOver_Integer(int *x, int nx, int *idxs, int nidxs, int narm, int refine)
  double meanOver_Real(double *x, int nx, int *idxs, int nidxs, int narm, int refine)

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
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>

double METHOD_NAME(X_C_TYPE *x, int nx, int *idxs, int nidxs, int narm, int refine) {
  X_C_TYPE value;
  int i, idx;
  double sum = 0, avg = R_NaN;
#if X_TYPE == 'r'
  double rsum = 0;
#endif
  int count = 0;

  /* Sum over all element? */
  if (!idxs) {
    for (i=0; i < nx; i++) {
      value = x[i];
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
      if (refine && R_FINITE(avg)) {
        for (i=0; i < nx; i++) {
          value = x[i];
          if (!narm || !ISNAN(value)) {
            rsum += (value - avg);
          }
        }
        avg += (rsum / count);
      }
#endif
    }
  } else {
    for (i=0; i < nidxs; i++) {
      idx = idxs[i];
      if (idx <= 0) {
        Rf_error("Argument \'idxs\' contains a non-positive index: %d", idx);
      } else if (idx > nx) {
        Rf_error("Argument \'idxs\' contains an index out of range [1,%d]: %d", nx, idx);
      }
      value = x[idx-1];
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
      if (refine && R_FINITE(avg)) {
        for (i=0; i < nidxs; i++) {
          idx = idxs[i];
          value = x[idx-1];
          if (!narm || !ISNAN(value)) {
            rsum += (value - avg);
          }
        }
        avg += (rsum / count);
      }
#endif
    }
  }

  return(avg);
}

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
 o CLEANUP: Now meanOver_<Integer|Real>() uses only basic C types.
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
