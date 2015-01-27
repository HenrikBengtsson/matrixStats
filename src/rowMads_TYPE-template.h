/***********************************************************************
 TEMPLATE:
  void rowMads_<Integer|Real>(...)

 GENERATES:
  void rowMads_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, double scale, int narm, int hasna, int byrow, double *ans)
  void rowMads_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, double scale, int narm, int hasna, int byrow, double *ans)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQuantiles.c by R. Gentleman.
  Template by Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2007-2013
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "types.h"
#include <stdlib.h> /* abs() and fabs() */

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, double scale, int narm, int hasna, int byrow, double *ans) {
  int isOdd;
  R_xlen_t ii, jj, kk, qq;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value, mu;
  double *values_d, value_d, mu_d;

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values   = (X_C_TYPE *) R_alloc(ncol, sizeof(X_C_TYPE));
  values_d = (double *) R_alloc(ncol, sizeof(double));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* When narm == FALSE, isOdd and qq are the same for all rows */
  if (narm == FALSE) {
    isOdd = (ncol % 2 == 1);
    qq = (R_xlen_t)(ncol/2) - 1;
  } else {
    isOdd = FALSE;
    qq = 0;
  }

  value = 0;

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncol, sizeof(R_xlen_t));

  // HJ begin
  if (byrow) {
    for (jj=0; jj < ncol; jj++)
      colOffset[jj] = (R_xlen_t)jj*nrow;
  } else {
    for (jj=0; jj < ncol; jj++)
      colOffset[jj] = (R_xlen_t)jj;
  }
  // HJ end

  hasna = TRUE;
  if (hasna == TRUE) {
    for (ii=0; ii < nrow; ii++) {
      R_xlen_t rowIdx = byrow ? ii : ncol*ii; //HJ

      kk = 0;  /* The index of the last non-NA value detected */
      for (jj=0; jj < ncol; jj++) {
        value = x[rowIdx+colOffset[jj]]; //HJ

        if (X_ISNAN(value)) {
          if (narm == FALSE) {
            kk = -1;
            break;
          }
        } else {
          values[kk] = value;
          kk = kk + 1;
        }
      } /* for (jj ...) */

      /* Note that 'values' will never contain NA/NaNs */

      if (kk == 0) {
        ans[ii] = NA_REAL;
      } else if (kk == 1) {
        ans[ii] = 0;
      } else if (kk == -1) {
        ans[ii] = R_NaReal;
      } else {
        /* When narm == TRUE, isOdd and qq may change with row */
        if (narm == TRUE) {
          isOdd = (kk % 2 == 1);
          qq = (R_xlen_t)(kk/2) - 1;
        }

        /* Permute x[0:kk-1] so that x[qq] is in the correct
           place with smaller values to the left, ... */
        X_PSORT(values, kk, qq+1);
        value = values[qq+1];


        /* Calculate mu and sigma */
        if (isOdd == TRUE) {
          /* Since there are an odd number of values, then we
             also know that 'mu' is one of the values in 'x',
             which in turn mean we don't have to coerce integers
             to doubles, if 'x' is an integer. Simple benchmarking
             shows that it significantly faster to avoid coercion. */
          mu = value;

          /* (a) Subtract mu and absolute value, i.e. x <- |x-mu| */
          for (jj=0; jj < kk; jj++) {
            value = (values[jj] - mu);
            values[jj] =  X_ABS(value);
          }

          /* (b) Calculate median of |x-mu| */
          /* Permute x[0:kk-1] so that x[qq] is in the correct
             place with smaller values to the left, ... */
          X_PSORT(values, kk, qq+1);
          value = values[qq+1];

          ans[ii] = scale * (double)value;
        } else {
          /* Here we have to coerce to doubles since 'mu' is an average. */
          /* Permute x[0:qq-2] so that x[qq-1] is in the correct
             place with smaller values to the left, ... */
          X_PSORT(values, qq+1, qq);
#if X_TYPE == 'i'
          /* If the difference between two integers is an even number, then
             their means is also an integer, and then we can avoid coercion
             to double also here.  This should happen roughly half the
             time we end up here which is worth optimizing for.  Simple
             benchmarking show a significant difference in speed, particular
             for the column-based version. */
          if ((values[qq] - value) % 2 == 0) {
            /* No need to coerce */
            mu = (values[qq] + value)/2;

            /* (a) Subtract mu and absolute value, i.e. x <- |x-mu| */
            for (jj=0; jj < kk; jj++) {
              value = (values[jj] - mu);
              values[jj] =  X_ABS(value);
            }

            /* (b) Calculate median of |x-mu| */
            /* Permute x[0:kk-1] so that x[qq] is in the correct
               place with smaller values to the left, ... */
            X_PSORT(values, kk, qq+1);
            X_PSORT(values, qq+1, qq);

            ans[ii] = scale * ((double)values[qq] + (double)values[qq+1])/2;

            /* Done, continue to next vector */
            continue;
	  }
#endif

          mu_d = ((double)values[qq] + (double)value)/2;

          /* (a) Subtract mu and square, i.e. x <- (x-mu)^2 */
          for (jj=0; jj < kk; jj++) {
            value_d = ((double)values[jj] - mu_d);
            values_d[jj] =  fabs(value_d);
          }

          /* (b) Calculate median */
          /* Permute x[0:kk-1] so that x[qq-1] and x[qq] are in the
             correct places with smaller values to the left, ... */
          rPsort(values_d, kk, qq+1);
          rPsort(values_d, qq+1, qq);

          ans[ii] = scale * (values_d[qq] + values_d[qq+1])/2;
	}
      } /* if (kk == 0) */

      R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } else {
    for (ii=0; ii < nrow; ii++) {
      R_xlen_t rowIdx = byrow ? ii : ncol*ii; //HJ

      for (jj=0; jj < ncol; jj++)
        values[jj] = x[rowIdx+colOffset[jj]]; //HJ

      /* Permute x[0:ncol-1] so that x[qq] is in the correct
         place with smaller values to the left, ... */
      X_PSORT(values, ncol, qq+1);
      value = values[qq+1];

      if (isOdd == TRUE) {
        ans[ii] = (double)value;
      } else {
        /* Permute x[0:qq-2] so that x[qq-1] is in the correct
           place with smaller values to the left, ... */
        X_PSORT(values, qq+1, qq);
        ans[ii] = ((double)values[qq] + value)/2;
      }

      R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } /* if (hasna ...) */
}

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-17 [HB]
  o Created from rowMedians_TYPE-template.h.
 **************************************************************************/
