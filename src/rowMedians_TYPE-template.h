/***********************************************************************
 TEMPLATE:
  void rowMedians_<Integer|Real>(...)

 GENERATES:
  void rowMedians_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)
  void rowMedians_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)

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

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans) {
  int isOdd;
  R_xlen_t ii, jj, kk, qq;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(ncol, sizeof(X_C_TYPE));

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

  if (hasna == TRUE) {
    for (ii=0; ii < nrow; ii++) {
      if (ii % 1000 == 0)
        R_CheckUserInterrupt();

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
      }

      /* Note that 'values' will never contain NA/NaNs */

      if (kk == 0) {
        ans[ii] = R_NaN;
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

        if (isOdd == TRUE) {
          ans[ii] = (double)value;
        } else {
          /* Permute x[0:qq-2] so that x[qq-1] is in the correct
             place with smaller values to the left, ... */
          X_PSORT(values, qq+1, qq);
          ans[ii] = ((double)values[qq] + (double)value)/2;
        }
      }
    }
  } else {
    for (ii=0; ii < nrow; ii++) {
      if (ii % 1000 == 0)
        R_CheckUserInterrupt();

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
        ans[ii] = ((double)values[qq] + (double)value)/2;
      }

    }
  } /* if (hasna ...) */
}

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2014-11-01 [HB]
  o SPEEDUP: Now using 'ansp = REAL(ans)' once and then assigning to
    'ansp' instead of to 'REAL(ans)'.
 2013-04-23 [HB]
  o BUG FIX: The integer template of rowMedians_<Integer|Real>() would
    not handle ties properly.  This was because ties were calculated as
    '(double)((rowData[qq] + value)/2)' instead of
    '((double)(rowData[qq] + value))/2'.
 2013-01-13 [HB]
  o Merged rowMedians_Integer() and rowMedians_Read() into template
    rowMedians_<Integer|Real>().
 2013-01-13 [HB]
 o Using internal arguments 'by_row' instead of 'by_column'.
 2011-12-11 [HB]
 o BUG FIX: rowMediansReal(..., na.rm=TRUE) did not handle NaN:s, only NA:s.
   Note that NaN:s does not exist for integers.
 2011-10-12 [HJ]
 o Added colMedians().
 o Now rowMediansInteger/Real() can operate also by columns, cf. argument
   'by_column'.
 2007-08-14 [HB]
 o Added checks for user interrupts every 1000 line.
 o Added argument 'hasNA' to rowMedians().
 2005-12-07 [HB]
 o BUG FIX: When calculating the median of an even number (non-NA) values,
    the length of the second sort was one element too short, which made the
    method to freeze, i.e. rPsort(rowData, qq, qq) is now (...qq+1, qq).
 2005-11-24 [HB]
  o By implementing a special version for integers, there is no need to
    coerce to double in R, which would take up twice the amount of memory.
  o rowMedians() now handles NAs too.
  o Adopted from rowQuantiles.c in Biobase of Bioconductor.
 **************************************************************************/
