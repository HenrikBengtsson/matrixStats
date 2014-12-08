/***********************************************************************
 TEMPLATE:
  double sumOver_<Integer|Real>(X_C_TYPE *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int mode)

 GENERATES:
  double sumOver_Integer(int *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int mode)
  double sumOver_Real(double *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int mode)

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

double METHOD_NAME(X_C_TYPE *x, R_xlen_t nx, int *idxs, R_xlen_t nidxs, int narm, int mode) {
  X_C_TYPE value;
  R_xlen_t i, idx;
  LDOUBLE sum = 0;

  /* Sum over all element? */
  if (!idxs) {
    for (i=0; i < nx; i++) {
      value = x[i];
#if X_TYPE == 'i'
      if (!X_ISNAN(value)) {
        sum += (LDOUBLE)value;
      } else if (!narm) {
          sum = R_NaReal;
          break;
      }
#elif X_TYPE == 'r'
      if (!narm || !X_ISNAN(value)) {
        sum += (LDOUBLE)value;
      }
#endif
    } /* for (i ...) */
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
        sum += (LDOUBLE)value;
      } else if (!narm) {
          sum = R_NaReal;
          break;
      }
#elif X_TYPE == 'r'
      if (!narm || !X_ISNAN(value)) {
        sum += (LDOUBLE)value;
      }
#endif
    } /* for (i ...) */
  }

  return (double)sum;
}

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
 o CLEANUP: Now sumOver_<Integer|Real>() uses only basic C types.
 2014-11-02 [HB]
 o Created.
 **************************************************************************/
