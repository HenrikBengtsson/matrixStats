/***********************************************************************
 TEMPLATE:
  double weightedMean_<Integer|Real>(X_C_TYPE *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine)

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>

double METHOD_NAME(X_C_TYPE *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine) {
  X_C_TYPE value;
  double weight;
  R_xlen_t i;
  LDOUBLE sum = 0, wtotal = 0;
  LDOUBLE avg = R_NaN;

  for (i=0; i < nx; i++) {
    weight = w[i];

    /* Skip or early stopping? */
    if (weight == 0) {
      continue;
    } else if (ISNAN(weight)) {
      sum = R_NaReal;
      break;
    }

    value = x[i];
#if X_TYPE == 'i'
    /* Skip or early stopping? */
    if (X_ISNAN(value)) {
      if (narm) {
        continue;
      } else {
        sum = R_NaReal;
        break;
	}
    } else if (!narm) {
      sum += (LDOUBLE)weight * (LDOUBLE)value;
      wtotal += weight;
    }
#elif X_TYPE == 'r'
    if (!narm || !X_ISNAN(value)) {
      sum += (LDOUBLE)weight * (LDOUBLE)value;
      wtotal += weight;
    }
#endif
  } /* for (i ...) */

  if (wtotal > DOUBLE_XMAX || wtotal < -DOUBLE_XMAX) {
    avg = R_NaN;
  } else if (sum > DOUBLE_XMAX) {
    avg = R_PosInf;
  } else if (sum < -DOUBLE_XMAX) {
    avg = R_NegInf;
  } else {
    avg = sum / wtotal;

#if X_TYPE == 'r'
    /* Extra precision by summing over residuals? */
    if (refine && R_FINITE(avg)) {
      sum = 0;
      for (i=0; i < nx; i++) {
        weight = w[i];
        /* Skip? */
        if (weight == 0) {
          continue;
	}

        value = (LDOUBLE)x[i];
        if (!narm || !ISNAN(value)) {
          sum += (LDOUBLE)weight * (value - avg);
        }
      }
      avg += (sum / wtotal);
    }
#endif
  }

  return (double)avg;
}

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-12-08 [HB]
 o Created.
 **************************************************************************/
