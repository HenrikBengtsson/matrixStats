/***********************************************************************
 TEMPLATE:
  void rowMedians_<Integer|Real>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int narm, int hasna, int byrow, double *ans, int cores

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
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


static void *WRAPPER_METHOD_NAME_ROWS_COLS(void *args) {
  uint8_t *buffer = (uint8_t*) args;
  int ii = 0;
  POP_ARGUMENT(buffer, ii, uint8_t*, buffer0);
  POP_ARGUMENT(buffer, ii, R_xlen_t, begin);
  POP_ARGUMENT(buffer, ii, R_xlen_t, end);

  ii = 0;
  POP_ARGUMENT(buffer0, ii, X_C_TYPE *, x);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol);
  POP_ARGUMENT(buffer0, ii, void*, rows);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrows);
  POP_ARGUMENT(buffer0, ii, void*, cols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncols);
  POP_ARGUMENT(buffer0, ii, int, narm);
  POP_ARGUMENT(buffer0, ii, int, hasna);
  POP_ARGUMENT(buffer0, ii, int, byrow);
  POP_ARGUMENT(buffer0, ii, double*, ans);

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  int rowsType = ROWS_TYPE_CODE;

  ans += begin;
  nrows = end - begin;
#ifdef ROWS_TYPE
  rows = (ROWS_C_TYPE*) rows + begin;
#else
  rows = indicesFromRange(begin, end, &rowsType);
#endif

  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, narm, hasna, byrow, ans, 0);

#ifndef ROWS_TYPE
  Free(rows);
#endif
  return NULL;
}

RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  // Apply pthread
  if (cores > 1 && nrows > 1) {
    const static int memSize0 = sizeof(x) + sizeof(nrow) + sizeof(ncol)
      + sizeof(rows) + sizeof(nrows) + sizeof(cols) + sizeof(ncols)
      + sizeof(narm) + sizeof(hasna) + sizeof(byrow) + sizeof(ans);
    R_xlen_t begin, end;
    uint8_t *buffer0;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nrows);
    uint8_t buffer[memSize0 + memSize1 * cores];
    buffer0 = buffer;

    int ii = 0;
    PUSH_ARGUMENT(buffer, ii, x);
    PUSH_ARGUMENT(buffer, ii, nrow);
    PUSH_ARGUMENT(buffer, ii, ncol);
    PUSH_ARGUMENT(buffer, ii, rows);
    PUSH_ARGUMENT(buffer, ii, nrows);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, narm);
    PUSH_ARGUMENT(buffer, ii, hasna);
    PUSH_ARGUMENT(buffer, ii, byrow);
    PUSH_ARGUMENT(buffer, ii, ans);

    pthread_t threads[cores];

    R_xlen_t gap = (nrows + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nrows) {
      uint8_t *args = buffer + ii;
      end = MIN(begin + gap, nrows);

      PUSH_ARGUMENT(buffer, ii, buffer0);
      PUSH_ARGUMENT(buffer, ii, begin);
      PUSH_ARGUMENT(buffer, ii, end);

      pthread_create(threads+(jj++), NULL, &WRAPPER_METHOD_NAME_ROWS_COLS, args);

      begin = end;
    }

    for (jj = 0; jj < cores; ++jj) {
      pthread_join(threads[jj], NULL);
    }
    return;
  }


  int isOdd;
  R_xlen_t ii, jj, kk, qq, idx;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* C allocate memory for the 'values'. Should be freed manually. */
  values = Calloc(ncols, X_C_TYPE);

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* When narm == FALSE, isOdd and qq are the same for all rows */
  if (narm == FALSE) {
    isOdd = (ncols % 2 == 1);
    qq = (R_xlen_t)(ncols/2) - 1;
  } else {
    isOdd = FALSE;
    qq = 0;
  }

  value = 0;

  /* Pre-calculate the column offsets */
  colOffset = Calloc(ncols, R_xlen_t);

  // HJ begin
  if (byrow) {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
  } else {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = COL_INDEX(ccols,jj);
  }
  // HJ end

  if (hasna == TRUE) {
    for (ii=0; ii < nrows; ii++) {
      R_xlen_t rowIdx = byrow ? ROW_INDEX(crows,ii) : R_INDEX_OP(ROW_INDEX(crows,ii), *, ncol); //HJ

      kk = 0;  /* The index of the last non-NA value detected */
      for (jj=0; jj < ncols; jj++) {
        idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
        value = R_INDEX_GET(x, idx, X_NA); //HJ

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
      // TODO: interrupt under pthread
      // R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } else {
    for (ii=0; ii < nrows; ii++) {
      R_xlen_t rowIdx = byrow ? ROW_INDEX_NONA(crows,ii) : ROW_INDEX_NONA(crows,ii) * ncol; //HJ

      for (jj=0; jj < ncols; jj++)
        values[jj] = x[rowIdx+colOffset[jj]]; //HJ

      /* Permute x[0:ncols-1] so that x[qq] is in the correct
         place with smaller values to the left, ... */
      X_PSORT(values, ncols, qq+1);
      value = values[qq+1];

      if (isOdd == TRUE) {
        ans[ii] = (double)value;
      } else {
        /* Permute x[0:qq-2] so that x[qq-1] is in the correct
           place with smaller values to the left, ... */
        X_PSORT(values, qq+1, qq);
        ans[ii] = ((double)values[qq] + (double)value)/2;
      }
      // TODO: interrupt under pthread
      // R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } /* if (hasna ...) */

  Free(values);
  Free(colOffset);
}


/***************************************************************************
 HISTORY:
 2015-08-13 [DJ]
  o Pthread processing.
 2015-06-07 [DJ]
  o Supported subsetted computation.
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
