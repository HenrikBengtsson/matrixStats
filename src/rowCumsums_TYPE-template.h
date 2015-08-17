/***********************************************************************
 TEMPLATE:
  void rowCumsums_<Integer|Real>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, ANS_C_TYPE *ans, R_xlen_t nrow_ans, int *oks, int cores

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2014
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
  POP_ARGUMENT(buffer0, ii, ANS_C_TYPE*, ans);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow_ans);
  POP_ARGUMENT(buffer0, ii, int*, oks);

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

#if ANS_TYPE == 'i'
    oks += begin;
#endif
    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, byrow, ans, nrow_ans, oks, 0);

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

    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, byrow, ans, nrow_ans, oks, 0);

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
      + sizeof(byrow) + sizeof(ans) + sizeof(nrow_ans) + sizeof(oks);
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
    PUSH_ARGUMENT(buffer, ii, ans);
    PUSH_ARGUMENT(buffer, ii, nrow_ans);
    PUSH_ARGUMENT(buffer, ii, oks);

    pthread_t threads[cores];

    R_xlen_t gap = (nv + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nv) {
      uint8_t *args = buffer + ii;
      buffer0 = buffer;
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


  R_xlen_t ii, jj, kk, kk_prev, idx;
  R_xlen_t colBegin;
  X_C_TYPE xvalue;
  LDOUBLE value;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

#if ANS_TYPE == 'i'
  double R_INT_MIN_d = (double)R_INT_MIN,
         R_INT_MAX_d = (double)R_INT_MAX;
  /* OK, i.e. no integer overflow yet? */
  int warn = 0, ok;
#endif

  if (ncols == 0 || nrows == 0) return;

  if (byrow) {
    colBegin = R_INDEX_OP(COL_INDEX(ccols,0), *, nrow);
    for (kk=0; kk < nrows; kk++) {
      idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,kk));
      xvalue = R_INDEX_GET(x, idx, X_NA);
      ans[kk] = (ANS_C_TYPE) xvalue;
#if ANS_TYPE == 'i'
      oks[kk] = !X_ISNA(xvalue);
#endif
    }

    for (jj=1; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      kk_prev = kk - nrows;
      kk = kk_prev + nrow_ans;
      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        xvalue = R_INDEX_GET(x, idx, X_NA);
#if ANS_TYPE == 'i'
        if (oks[ii]) {
          /* Missing value? */
          if (X_ISNA(xvalue)) {
            oks[ii] = 0;
            ans[kk] = ANS_NA;
          } else {
            value = (LDOUBLE) ans[kk_prev] + (LDOUBLE) xvalue;
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              oks[ii] = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
            }
          }
        } else {
          ans[kk] = ANS_NA;
        }
#else
        ans[kk] = (ANS_C_TYPE) ((LDOUBLE) ans[kk_prev] + (LDOUBLE) xvalue);
#endif

        kk++;
        kk_prev++;

        // TODO: interrupt subthreads
        if (cores) R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      value = 0;
#if ANS_TYPE == 'i'
      ok = 1;
#endif
      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        xvalue = R_INDEX_GET(x, idx, X_NA);
#if ANS_TYPE == 'i'
        if (ok) {
          /* Missing value? */
          if (X_ISNA(xvalue)) {
            ok = 0;
            ans[kk] = ANS_NA;
          } else {
            value += (LDOUBLE) xvalue;
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              ok = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
            }
          }
        } else {
          ans[kk] = ANS_NA;
        }
#else
        value += xvalue;
        ans[kk] = (ANS_C_TYPE) value;
#endif

        kk++;

        // TODO: interrupt subthreads
        if (cores) R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */

#if ANS_TYPE == 'i'
  /* Warn on integer overflow? */
  if (warn) {
    // TODO: warning in subthreads
    if (cores) warning("Integer overflow. Detected one or more elements whose absolute values were out of the range [%d,%d] that can be used to for integers. Such values are set to NA_integer_.", R_INT_MIN, R_INT_MAX);
  }
#endif
}


/***************************************************************************
 HISTORY:
 2015-08-01 [DJ]
  o Pthread processing.
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-26 [HB]
  o Created from rowVars_TYPE-template.h.
 **************************************************************************/
