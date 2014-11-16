/***********************************************************************
 TEMPLATE:
  void rowOrderStats_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int qq, X_C_TYPE *ans)

 GENERATES:
  void rowOrderStats_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, int qq, double *ans)
  void rowOrderStats_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int qq, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQ() by R. Gentleman.
  Template by Henrik Bengtsson.

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
  R_xlen_t *colOffset;
  X_C_TYPE *values;

  /* R allocate memory for the 'values'.  This will be 
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(ncol, sizeof(X_C_TYPE));

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncol, sizeof(R_xlen_t));
  for (jj=0; jj < ncol; jj++) 
    colOffset[jj] = (R_xlen_t)jj*nrow;

  for (ii=0; ii < nrow; ii++) {
    for (jj=0; jj < ncol; jj++) 
      values[jj] = x[ii+colOffset[jj]];

    /* Sort vector of length 'ncol' up to position 'qq'. 
       "...partial sorting: they permute x so that x[qq] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    X_PSORT(values, ncol, qq);

    ans[ii] = values[qq];
  }
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions. 
 2013-01-13 [HB]
  o Merged rowOrderStatsReal() and rowOrderStatsInteger() into 
    one rowOrderStats_<Integer|Real>() templated function.
 2009-02-04 [HB]
  o BUG FIX: For some errors in rowOrderStats(), the stack would not become
    UNPROTECTED before calling error.
 2008-03-25 [HB]
  o Renamed from 'rowQuantiles' to 'rowOrderStats'.
 2007-08-10 [HB]
  o Removed arguments for NAs since rowOrderStats() still don't support it.
 2005-11-24 [HB]
  o Cool, it works and compiles nicely.
  o Preallocate colOffset to speed up things even more.
  o Added more comments and error checking.
  o Adopted from rowQ() in Biobase of Bioconductor.
 **************************************************************************/
