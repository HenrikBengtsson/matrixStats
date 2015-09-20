/***********************************************************************
 TEMPLATE:
  void rowMads_<Integer|Real>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, double scale, int narm, int hasna, int byrow, double *ans, int cores

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
#include <stdlib.h> /* abs() and fabs() */

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
  POP_ARGUMENT(buffer0, ii, double, scale);
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

  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, scale, narm, hasna, byrow, ans, 0);

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
      + sizeof(scale) + sizeof(narm) + sizeof(hasna) + sizeof(byrow) + sizeof(ans);
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
    PUSH_ARGUMENT(buffer, ii, scale);
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
  X_C_TYPE *values, value, mu;
  double *values_d, value_d, mu_d;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* C allocate memory for the 'values'. Should be freed manually. */
  values = Calloc(ncols, X_C_TYPE);
  values_d = Calloc(ncols, double);

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

  hasna = TRUE;
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
      // TODO: interrupt under pthread
      // R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } else {
    for (ii=0; ii < nrows; ii++) {
      R_xlen_t rowIdx = byrow ? ROW_INDEX_NONA(crows,ii) : ROW_INDEX_NONA(crows,ii)*ncol; //HJ

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
        ans[ii] = ((double)values[qq] + value)/2;
      }
      // TODO: interrupt under pthread
      // R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
  } /* if (hasna ...) */

  Free(values);
  Free(values_d);
  Free(colOffset);
}


/***************************************************************************
 HISTORY:
 2015-08-13 [DJ]
  o Pthread processing.
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-17 [HB]
  o Created from rowMedians_TYPE-template.h.
 **************************************************************************/
