/***********************************************************************
 TEMPLATE:
  void rowRanges_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int what, X_C_TYPE *ans)

 GENERATES:
  void rowRanges_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, int what, double *ans)
  void rowRanges_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int what, int *ans)

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
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h" 


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int what, X_C_TYPE *ans) {
  R_xlen_t ii, jj;
  R_xlen_t offset;
  X_C_TYPE value, *mins, *maxs;

  /*  Rprintf("(nrow,ncol)=(%d,%d), what=%d\n", nrow, ncol, what); */
  if (what == 0) {
    /* rowMins() */
    mins = ans;

    /* Initiate reults */
    for (ii=0; ii < nrow; ii++) {
      mins[ii] =  x[ii];
    }

    for (jj=1; jj < ncol; jj++) {
      offset = (R_xlen_t)jj*nrow;
      for (ii=0; ii < nrow; ii++) {
        value = x[ii+offset];
        if (value < mins[ii]) mins[ii] = value;
      }
    }
  } else if (what == 1) {
    /* rowMax() */
    maxs = ans;

    /* Initiate reults */
    for (ii=0; ii < nrow; ii++) {
      maxs[ii] =  x[ii];
    }

    for (jj=1; jj < ncol; jj++) {
      offset = (R_xlen_t)jj*nrow;
      for (ii=0; ii < nrow; ii++) {
        value = x[ii+offset];
        if (value > maxs[ii]) maxs[ii] = value;
      }
    }
  } else if (what == 2) {
    /* rowRanges()*/
    mins = ans;
    maxs = &ans[nrow];

    /* Initiate reults */
    for (ii=0; ii < nrow; ii++) {
      mins[ii] =  x[ii];
      maxs[ii] =  x[ii];
    }

    for (jj=1; jj < ncol; jj++) {
      offset = (R_xlen_t)jj*nrow;
      for (ii=0; ii < nrow; ii++) {
        value = x[ii+offset];
        if (value < mins[ii]) mins[ii] = value;
        if (value > maxs[ii]) maxs[ii] = value;
      }
    }
  } /* if (what ...) */
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
