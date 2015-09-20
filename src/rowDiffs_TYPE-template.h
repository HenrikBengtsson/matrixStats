/***********************************************************************
 TEMPLATE:
  void rowDiffs_<Integer|Real>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans, int cores

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>


#undef X_DIFF
#undef DIFF_X_MATRIX
#if X_TYPE == 'i'
  #ifndef diff_int
    static R_INLINE int diff_int(int a, int b) {
      if (X_ISNA(a) || X_ISNA(b)) return(NA_INTEGER);
      return a-b;
    }
    #define diff_int diff_int
  #endif
  #define X_DIFF diff_int
  #define DIFF_X_MATRIX diff_matrix_int
#elif X_TYPE == 'r'
  #define X_DIFF(a,b) a-b
  #define DIFF_X_MATRIX diff_matrix_double
#endif


#if (X_TYPE == 'i' && !defined(diff_matrix_int)) || (X_TYPE == 'r' && !defined(diff_matrix_double))
  static R_INLINE void DIFF_X_MATRIX(X_C_TYPE *x, R_xlen_t nrow_x, R_xlen_t ncol_x, int byrow, R_xlen_t lag, X_C_TYPE *y, R_xlen_t nrow_y, R_xlen_t ncol_y) {
    R_xlen_t ii, jj, ss, tt, uu;
    if (byrow) {
      uu = lag * nrow_x;
      tt = 0;
      ss = 0;
      for (jj=0; jj < ncol_y; jj++) {
        for (ii=0; ii < nrow_x; ii++) {
          y[ss++] = X_DIFF(x[uu++], x[tt++]);
        }
        ss += nrow_y - nrow_x;
      }
    } else {
      uu = lag;
      tt = 0;
      ss = 0;
      for (jj=0; jj < ncol_x; jj++) {
        for (ii=0; ii < nrow_y; ii++) {
          /*	Rprintf("y[%d] = x[%d] - x[%d] = %g - %g = %g\n", ss, uu, tt, (double)x[uu], (double)x[tt], (double)X_DIFF(x[uu], x[tt]));  */
          y[ss++] = X_DIFF(x[uu++], x[tt++]);
        }
        tt += lag;
        uu += lag;
      }
    }
  }
  #if X_TYPE == 'i'
    #define diff_matrix_int diff_matrix_int
  #elif X_TYPE == 'r'
    #define diff_matrix_double diff_matrix_double
  #endif
#endif


#undef DIFF_X_MATRIX_ROWS
#ifdef ROWS_TYPE
  #if ROWS_TYPE == 'i'
    #define DIFF_X_MATRIX_ROWS CONCAT_MACROS(DIFF_X_MATRIX, intRows)
  #elif ROWS_TYPE == 'r'
    #define DIFF_X_MATRIX_ROWS CONCAT_MACROS(DIFF_X_MATRIX, realRows)
  #endif
#else
  #define DIFF_X_MATRIX_ROWS CONCAT_MACROS(DIFF_X_MATRIX, noRows)
#endif


#undef DIFF_X_MATRIX_ROWS_COLS
#ifdef COLS_TYPE
  #if COLS_TYPE == 'i'
    #define DIFF_X_MATRIX_ROWS_COLS CONCAT_MACROS(DIFF_X_MATRIX_ROWS, intCols)
  #elif COLS_TYPE == 'r'
    #define DIFF_X_MATRIX_ROWS_COLS CONCAT_MACROS(DIFF_X_MATRIX_ROWS, realCols)
  #endif
#else
  #define DIFF_X_MATRIX_ROWS_COLS CONCAT_MACROS(DIFF_X_MATRIX_ROWS, noCols)
#endif


static R_INLINE void DIFF_X_MATRIX_ROWS_COLS(X_C_TYPE *x, R_xlen_t nrow, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, R_xlen_t lag, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans) {
  R_xlen_t ii, jj, ss;
  R_xlen_t idx, colBegin1, colBegin2;
  X_C_TYPE xvalue1, xvalue2;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  ss = 0;
  if (byrow) {
    for (jj=0; jj < ncol_ans; jj++) {
      colBegin1 = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      colBegin2 = R_INDEX_OP(COL_INDEX(ccols,(jj+lag)), *, nrow);

      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin1, +, ROW_INDEX(crows,ii));
        xvalue1 = R_INDEX_GET(x, idx, X_NA);
        idx = R_INDEX_OP(colBegin2, +, ROW_INDEX(crows,ii));
        xvalue2 = R_INDEX_GET(x, idx, X_NA);

        ans[ss++] = X_DIFF(xvalue2, xvalue1);
      }
      ss += nrow_ans - nrows;
    }
  } else {
    for (jj=0; jj < ncols; jj++) {
      colBegin1 = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);

      for (ii=0; ii < nrow_ans; ii++) {
        idx = R_INDEX_OP(colBegin1, +, ROW_INDEX(crows,ii));
        xvalue1 = R_INDEX_GET(x, idx, X_NA);
        idx = R_INDEX_OP(colBegin1, +, ROW_INDEX(crows,ii+lag));
        xvalue2 = R_INDEX_GET(x, idx, X_NA);

        ans[ss++] = X_DIFF(xvalue2, xvalue1);
      }
    }
  }
}


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
  POP_ARGUMENT(buffer0, ii, int, byrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, lag);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, differences);
  POP_ARGUMENT(buffer0, ii, X_C_TYPE*, ans);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow_ans);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol_ans);

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  int rowsType = ROWS_TYPE_CODE, colsType = COLS_TYPE_CODE;
  if (byrow) {
    ans += begin;
    nrows = end - begin;
#ifdef ROWS_TYPE
    rows = (ROWS_C_TYPE*) rows + begin;
#else
    rows = indicesFromRange(begin, end, &rowsType);
#endif

    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, byrow, lag, differences, ans, nrow_ans, ncol_ans, 0);

#ifndef ROWS_TYPE
    Free(rows);
#endif

  } else {
    ans += begin * nrow_ans;
    ncols = end - begin;
#ifdef COLS_TYPE
    cols = (COLS_C_TYPE*) cols + begin;
#else
    cols = indicesFromRange(begin, end, &colsType);
#endif

    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, byrow, lag, differences, ans, nrow_ans, ncol_ans, 0);

#ifndef COLS_TYPE
    Free(cols);
#endif
  }
  return NULL;
}


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  // Apply pthread
  R_xlen_t nv = byrow ? nrows : ncols;
  if (cores > 1 && nv > 1) {
    const static int memSize0 = sizeof(x) + sizeof(nrow) + sizeof(ncol)
      + sizeof(rows) + sizeof(nrows) + sizeof(cols) + sizeof(ncols)
      + sizeof(byrow) + sizeof(lag) + sizeof(differences) + sizeof(ans) + sizeof(nrow_ans) + sizeof(ncol_ans);
    R_xlen_t begin, end;
    uint8_t *buffer0;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nv);
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
    PUSH_ARGUMENT(buffer, ii, byrow);
    PUSH_ARGUMENT(buffer, ii, lag);
    PUSH_ARGUMENT(buffer, ii, differences);
    PUSH_ARGUMENT(buffer, ii, ans);
    PUSH_ARGUMENT(buffer, ii, nrow_ans);
    PUSH_ARGUMENT(buffer, ii, ncol_ans);

    pthread_t threads[cores];

    R_xlen_t gap = (nv + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nv) {
      uint8_t *args = buffer + ii;
      end = MIN(begin + gap, nv);

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


  R_xlen_t nrow_tmp, ncol_tmp;
  X_C_TYPE *tmp = NULL;

  /* Nothing to do? */
  if (ncol_ans <= 0 || nrow_ans <= 0) return;

  /* Special case (difference == 1) */
  if (differences == 1) {
    DIFF_X_MATRIX_ROWS_COLS(x, nrow, rows, nrows, cols, ncols, byrow, lag, ans, nrow_ans, ncol_ans);
  } else {
    /* Allocate temporary work matrix (to hold intermediate differences) */
    if (byrow) {
      nrow_tmp = nrows;
      ncol_tmp = ncols - lag;
    } else {
      nrow_tmp = nrows - lag;
      ncol_tmp = ncols;
    }
    tmp = Calloc(nrow_tmp*ncol_tmp, X_C_TYPE);

    /* (a) First order of differences */
    DIFF_X_MATRIX_ROWS_COLS(x, nrow, rows, nrows, cols, ncols, byrow, lag, tmp, nrow_tmp, ncol_tmp);
    if (byrow) {
      ncol_tmp = ncol_tmp - lag;
    } else {
      nrow_tmp = nrow_tmp - lag;
    }

    /* (a) Intermediate orders of differences */
    while (--differences > 1) {
      DIFF_X_MATRIX(tmp, nrow_tmp, ncol_tmp, byrow, lag, tmp, nrow_tmp, ncol_tmp);
      if (byrow) {
        ncol_tmp = ncol_tmp - lag;
      } else {
        nrow_tmp = nrow_tmp - lag;
      }
    }

    /* (c) Last order of differences */
    DIFF_X_MATRIX(tmp, nrow_tmp, ncol_tmp, byrow, lag, ans, nrow_ans, ncol_ans);

    /* Deallocate temporary work matrix */
    Free(tmp);
  } /* if (differences ...) */
}


/***************************************************************************
 HISTORY:
 2015-08-02 [DJ]
  o Pthread processing.
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
