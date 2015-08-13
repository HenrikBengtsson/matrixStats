/***********************************************************************
 TEMPLATE:
  void rowOrderStats_<Integer|Real>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, R_xlen_t qq, X_C_TYPE *ans, int cores

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
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h"


/** Wrapper is used to call `METHOD_NAME`, as pthread worker. **/
static void *WRAPPER_METHOD_NAME_ROWS_COLS(void *args) {
  uint8_t *buffer = (uint8_t*) args;
  int ii = 0;
  POP_ARGUMENT(buffer, ii, uint8_t*, buffer0);
  POP_ARGUMENT(buffer, ii, R_xlen_t, begin);
  POP_ARGUMENT(buffer, ii, R_xlen_t, end);

  ii = 0;
  POP_ARGUMENT(buffer0, ii, X_C_TYPE*, x);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol);
  POP_ARGUMENT(buffer0, ii, void*, rows);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrows);
  POP_ARGUMENT(buffer0, ii, void*, cols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, qq);
  POP_ARGUMENT(buffer0, ii, X_C_TYPE*, ans);

  ans += begin;

  nrows = end - begin;
  int rowsType;
#ifdef ROWS_TYPE
  rows = (ROWS_C_TYPE*) rows + begin;
  rowsType = ROWS_TYPE_CODE;
#else
  rows = indicesFromRange(begin, end, &rowsType);
#endif

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, qq, ans, 1);

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
      + sizeof(qq) + sizeof(ans);
    uint8_t *buffer0;
    R_xlen_t begin, end;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nrows);
    uint8_t buffer[memSize0 + memSize1 * cores];

    int ii = 0;
    PUSH_ARGUMENT(buffer, ii, x);
    PUSH_ARGUMENT(buffer, ii, nrow);
    PUSH_ARGUMENT(buffer, ii, ncol);
    PUSH_ARGUMENT(buffer, ii, rows);
    PUSH_ARGUMENT(buffer, ii, nrows);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, qq);
    PUSH_ARGUMENT(buffer, ii, ans);

    pthread_t threads[cores];

    R_xlen_t gap = (nrows + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nrows) {
      uint8_t *args = buffer + ii;
      buffer0 = buffer;
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


  R_xlen_t ii, jj;
  R_xlen_t *colOffset, rowIdx;
  X_C_TYPE *values;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* C allocate memory for the 'values'. Should be freed manually. */
  values = Calloc(ncols, X_C_TYPE);

  /* Pre-calculate the column offsets */
  colOffset = Calloc(ncols, R_xlen_t);
  for (jj=0; jj < ncols; jj++)
    colOffset[jj] = COL_INDEX_NONA(ccols,jj) * nrow;

  for (ii=0; ii < nrows; ii++) {
    rowIdx = ROW_INDEX_NONA(crows,ii);
    for (jj=0; jj < ncols; jj++)
      values[jj] = x[rowIdx + colOffset[jj]];

    /* Sort vector of length 'ncol' up to position 'qq'.
       "...partial sorting: they permute x so that x[qq] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    X_PSORT(values, ncols, qq);

    ans[ii] = values[qq];
  }

  Free(values);
  Free(colOffset);
}


/***************************************************************************
 HISTORY:
 2015-08-09 [DJ]
  o Pthread processing.
 2015-07-08 [DJ]
  o Supported subsetted computation.
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
