/***********************************************************************
 TEMPLATE:
  double mean2_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA int narm, int refine

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014-2017
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"
#include <R_ext/Error.h>


double CONCAT_MACROS(mean2, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nx,
                     R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA,
                     int narm, int refine) {
  X_C_TYPE value;
  R_xlen_t ii;
  LDOUBLE sum = 0, avg = R_NaN;
  int noidxs;
  if (idxs == NULL) { noidxs = 1; } else { noidxs = 0;}
  
#if X_TYPE == 'r'
  LDOUBLE rsum = 0;
#endif
  R_xlen_t count = 0;

  for (ii=0; ii < nidxs; ++ii) {
    if (noidxs) {
        value = x[ii];
    } else {
        R_xlen_t idx = idxs[ii];
        if (!idxsHasNA) {
            value = x[idx];
        } else {
            value = R_INDEX_GET(x, idx, X_NA, 1);
        }
    }
    
#if X_TYPE == 'i'
    if (!X_ISNAN(value)) {
      sum += (LDOUBLE)value;
      ++count;
    } else if (!narm) {
        sum = R_NaReal;
        break;
    }
#elif X_TYPE == 'r'
    if (!narm) {
      sum += (LDOUBLE)value;
      ++count;
      /* Early stopping if sum is NA_real_ (but not NaN, -Inf, or +Inf) */
      if (ii % 1048576 == 0 && ISNA(sum)) break;
    } else if (!ISNAN(value)) {
      sum += (LDOUBLE)value;
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
      for (ii=0; ii < nidxs; ++ii) {
        value = R_INDEX_GET(x, ((idxs == NULL) ? (ii) : idxs[ii]), X_NA, idxsHasNA);
        if (!narm || !ISNAN(value)) {
          rsum += (LDOUBLE)(value - avg);
        }
      }
      avg += (rsum / count);
    }
#endif
  }

  return (double)avg;
}


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
 o CLEANUP: Now mean2_<int|dbl>() uses only basic C types.
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
