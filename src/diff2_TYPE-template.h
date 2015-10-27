/***********************************************************************
 TEMPLATE:
  void diff2_<Integer|Real>(X_C_TYPE *x, R_xlen_t nx, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans)

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


#if X_TYPE == 'i'
  static R_INLINE int diff_int(int a, int b) {
    if (X_ISNA(a) || X_ISNA(b)) return NA_INTEGER;
    return a-b;
  }
  #define X_DIFF diff_int
#elif X_TYPE == 'r'
  #define X_DIFF(a,b) a-b
#endif


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nx, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans) {
  int ii, tt, uu;
  X_C_TYPE *tmp = NULL;

  /* Nothing to do? */
  if (nans <= 0) return;

  /* Special case (difference == 1) */
  if (differences == 1) {
    uu = lag;
    tt = 0;
    for (ii=0; ii < nans; ii++) {
      ans[ii] = X_DIFF(x[uu++], x[tt++]);
    }
  } else {
    /* Allocate temporary work vector (to hold intermediate differences) */
    tmp = Calloc(nx - lag, X_C_TYPE);

    /* (a) First order of differences */
    uu = lag;
    tt = 0;
    for (ii=0; ii < nx-lag; ii++) {
      tmp[ii] = X_DIFF(x[uu++], x[tt++]);
    }
    nx -= lag;

    /* (b) All other orders of differences but the last */
    while (--differences > 1) {
      uu = lag;
      tt = 0;
      for (ii=0; ii < nx-lag; ii++) {
        tmp[ii] = X_DIFF(tmp[uu++], tmp[tt++]);
      }
      nx -= lag;
    }

    /* Sanity check */
    /* if (nx-lag != nans) error("nx != nans: %d != %d\n", nx, nans); */

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


#undef X_DIFF

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-12-29 [HB]
 o Created.
 **************************************************************************/
