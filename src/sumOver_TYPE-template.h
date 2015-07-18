/***********************************************************************
 TEMPLATE:
  double sumOver_<Integer|Real>[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int mode

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  X_C_TYPE value;
  R_xlen_t ii;
  LDOUBLE sum = 0;

#ifdef IDXS_TYPE
  IDXS_C_TYPE *cidxs = (IDXS_C_TYPE*) idxs;
#endif

  for (ii=0; ii < nidxs; ++ii) {
    value = R_INDEX_GET(x, IDX_INDEX(cidxs,ii), X_NA);
#if X_TYPE == 'i'
    if (!X_ISNAN(value)) {
      sum += (LDOUBLE)value;
    } else if (!narm) {
        sum = R_NaReal;
        break;
    }
#elif X_TYPE == 'r'
    if (!narm) {
      sum += (LDOUBLE)value;
      if (ii % 1048576 == 0 && !R_FINITE(sum)) break;
    } else if (!ISNAN(value)) {
      sum += (LDOUBLE)value;
    }
#endif
  } /* for (ii ...) */

  return (double)sum;
}


/***************************************************************************
 HISTORY:
 2015-07-11 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
 o CLEANUP: Now sumOver_<Integer|Real>() uses only basic C types.
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
