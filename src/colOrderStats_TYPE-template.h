/***********************************************************************
 TEMPLATE:
  void colOrderStats_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int qq, X_C_TYPE *ans)

 GENERATES:
  void colOrderStats_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, int qq, double *ans)
  void colOrderStats_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int qq, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Adopted from ditto for rows.

 Copyright: Henrik Bengtsson, 2007-2014
 ***********************************************************************/ 
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h" 


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t qq, X_C_TYPE *ans) {
  R_xlen_t ii, jj;
  R_xlen_t offset;
  X_C_TYPE *values;

  /* R allocate memory for the 'values'.  This will be 
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(nrow, sizeof(X_C_TYPE));

  for (jj=0; jj < ncol; jj++) {
    offset = (R_xlen_t)jj*nrow;
    for (ii=0; ii < nrow; ii++)
      values[ii] = x[ii+offset];

    /* Sort vector of length 'nrow' up to position 'qq'. 
       "...partial sorting: they permute x so that x[qq] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    X_PSORT(values, nrow, qq);

    ans[jj] = values[qq];
  }
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created from rowOrderStats() ditto.
 **************************************************************************/
