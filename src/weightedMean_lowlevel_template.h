/***********************************************************************
 TEMPLATE:
  double weightedMean_<int|dbl>[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, double *w, void *idxs, R_xlen_t nidxs, int narm, int refine

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "000.templates-types.h"
#include <R_ext/Error.h>


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  X_C_TYPE value;
  double weight;
  R_xlen_t i;
  LDOUBLE sum = 0, wtotal = 0;
  LDOUBLE avg = R_NaN;

#ifdef IDXS_TYPE
  IDXS_C_TYPE *cidxs = (IDXS_C_TYPE*) idxs;
#endif

  for (i=0; i < nidxs; i++) {
    weight = R_INDEX_GET(w, IDX_INDEX(cidxs,i), NA_REAL);

    /* Skip or early stopping? */
    if (weight == 0) {
      continue;
    }

    value = R_INDEX_GET(x, IDX_INDEX(cidxs,i), X_NA);
#if X_TYPE == 'i'
    if (X_ISNAN(value)) {
      /* Skip or early stopping? */
      if (narm) {
        continue;
      } else {
        sum = R_NaReal;
        break;
      }
    } else {
      sum += (LDOUBLE)weight * (LDOUBLE)value;
      wtotal += weight;
    }
#elif X_TYPE == 'r'
    if (!narm) {
      sum += (LDOUBLE)weight * (LDOUBLE)value;
      wtotal += weight;
      /* Early stopping? Special for long LDOUBLE vectors */
      if (i % 1048576 == 0 && ISNAN(sum)) break;
    } else if (!X_ISNAN(value)) {
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
      for (i=0; i < nidxs; i++) {
        weight = R_INDEX_GET(w, IDX_INDEX(cidxs,i), NA_REAL);
        /* Skip? */
        if (weight == 0) {
          continue;
        }

        value = R_INDEX_GET(x, IDX_INDEX(cidxs,i), X_NA);
        if (!narm) {
          sum += (LDOUBLE)weight * (value - avg);
          /* Early stopping? Special for long LDOUBLE vectors */
          if (i % 1048576 == 0 && ISNAN(sum)) break;
        } else if (!ISNAN(value)) {
          sum += (LDOUBLE)weight * (value - avg);
        }
      }
      avg += (sum / wtotal);
    }
#endif
  }

  return (double)avg;
}


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-12-08 [HB]
 o Created.
 **************************************************************************/
