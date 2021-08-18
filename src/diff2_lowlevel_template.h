/***********************************************************************
 TEMPLATE:
  void diff2_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"
#include <R_ext/Error.h>


#undef X_DIFF
#if X_TYPE == 'i'
  #ifndef diff_int
    static R_INLINE int diff_int(int a, int b) {
      if (X_ISNA(a) || X_ISNA(b)) return(NA_INTEGER);
      return a-b;
    }
    #define diff_int diff_int
  #endif
  #define X_DIFF diff_int
#elif X_TYPE == 'r'
  #define X_DIFF(a,b) a-b
#endif


void CONCAT_MACROS(diff2, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs,
                        R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans) {
  R_xlen_t ii, tt, uu;
  X_C_TYPE xvalue1, xvalue2;
  X_C_TYPE *tmp = NULL;

  /* Nothing to do? */
  if (nans <= 0) return;

  /* Special case (difference == 1) */
  if (differences == 1) {
    for (ii=0; ii < nans; ii++) {
      xvalue1 = R_INDEX_GET(x, ((idxs == NULL) ? (ii) : idxs[ii]), X_NA);
      xvalue2 = R_INDEX_GET(x, ((idxs == NULL) ? (ii+lag) : idxs[ii+lag]), X_NA);
      ans[ii] = X_DIFF(xvalue2, xvalue1);
    }
  } else {
    /* Allocate temporary work vector (to hold intermediate differences) */
    tmp = Calloc(nidxs - lag, X_C_TYPE);

    /* (a) First order of differences */
    for (ii=0; ii < nidxs-lag; ii++) {
      xvalue1 = R_INDEX_GET(x, ((idxs == NULL) ? (ii) : idxs[ii]), X_NA);
      xvalue2 = R_INDEX_GET(x, ((idxs == NULL) ? (ii+lag) : idxs[ii+lag]), X_NA);
      tmp[ii] = X_DIFF(xvalue2, xvalue1);
    }
    nidxs -= lag;

    /* (b) All other orders of differences but the last */
    while (--differences > 1) {
      uu = lag;
      tt = 0;
      for (ii=0; ii < nidxs-lag; ii++) {
        tmp[ii] = X_DIFF(tmp[uu++], tmp[tt++]);
      }
      nidxs -= lag;
    }

    /* Sanity check */
    /* if (nidxs-lag != nans) error("nidxs != nans: %d != %d\n", nidxs, nans); */

    /* (c) Last order of differences */
    uu = lag;
    tt = 0;
    for (ii=0; ii < nans; ii++) {
      ans[ii] = X_DIFF(tmp[uu++], tmp[tt++]);
    }

    /* Deallocate temorary work vector */
    Free(tmp);
  } /* if (differences ...) */
}


/***************************************************************************
 HISTORY:
 2015-06-14 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
 o Created.
 **************************************************************************/
