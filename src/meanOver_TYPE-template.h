/***********************************************************************
 TEMPLATE:
  double meanOver_<Integer|Real>[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int refine

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  X_C_TYPE value;
  R_xlen_t ii;
  LDOUBLE sum = 0, avg = R_NaN;
#if X_TYPE == 'r'
  LDOUBLE rsum = 0;
#endif
  R_xlen_t count = 0;

#ifdef IDXS_TYPE
  IDXS_C_TYPE *cidxs = (IDXS_C_TYPE*) idxs;
#endif

  for (ii=0; ii < nidxs; ++ii) {
    value = R_INDEX_GET(x, IDX_INDEX(cidxs,ii), X_NA);
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
      if (ii % 1048576 == 0 && !R_FINITE(sum)) break;
    } else if (!ISNAN(value)) {
      sum += (LDOUBLE)value;
      ++count;
    }
#endif
  } /* for (i ...) */

  if (sum > DOUBLE_XMAX) {
    avg = R_PosInf;
  } else if (sum < -DOUBLE_XMAX) {
    avg = R_NegInf;
  } else {
    avg = sum / count;

    /* Extra precision by summing over residuals? */
#if X_TYPE == 'r'
    if (refine && R_FINITE(avg)) {
      for (ii=0; ii < nidxs; ++ii) {
        value = R_INDEX_GET(x, IDX_INDEX(cidxs,ii), X_NA);
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
 o CLEANUP: Now meanOver_<Integer|Real>() uses only basic C types.
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
