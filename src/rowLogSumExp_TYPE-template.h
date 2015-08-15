/***********************************************************************
 TEMPLATE:
  double rowLogSumExp_double[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, int rowsType, void *cols, R_xlen_t ncols, int colsType, int narm, int hasna, int byrow, double *ans, int cores
 ***********************************************************************/
#include <pthread.h>
#include <stdint.h>
#include "types.h"

#include "templates-types.h"


/** Wrapper is used to call `METHOD_NAME`, as pthread worker. **/
static void *WRAPPER_METHOD_NAME_IDXS(void *args) {
  uint8_t *buffer = (uint8_t*) args;
  int ii = 0;
  POP_ARGUMENT(buffer, ii, uint8_t*, buffer0);
  POP_ARGUMENT(buffer, ii, R_xlen_t, begin);
  POP_ARGUMENT(buffer, ii, R_xlen_t, end);

  ii = 0;
  POP_ARGUMENT(buffer0, ii, double*, x);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol);
  POP_ARGUMENT(buffer0, ii, void*, rows);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrows);
  POP_ARGUMENT(buffer0, ii, int, rowsType);
  POP_ARGUMENT(buffer0, ii, void*, cols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncols);
  POP_ARGUMENT(buffer0, ii, int, colsType);
  POP_ARGUMENT(buffer0, ii, int, narm);
  POP_ARGUMENT(buffer0, ii, int, hasna);
  POP_ARGUMENT(buffer0, ii, int, byrow);
  POP_ARGUMENT(buffer0, ii, double*, ans);

  ans += begin;
  extern RETURN_TYPE (*METHOD_NAME[3])(ARGUMENTS_LIST);
  if (byrow) {
    nrows = end - begin;
#ifdef IDXS_TYPE
    rows = (IDXS_C_TYPE*) rows + begin;
#else
    rows = indicesFromRange(begin, end, &rowsType);
#endif

    METHOD_NAME[rowsType](x, nrow, ncol, rows, nrows, rowsType, cols, ncols, colsType, narm, hasna, byrow, ans, 1);

#ifndef IDXS_TYPE
    Free(rows);
#endif

  } else {
    ncols = end - begin;
#ifdef IDXS_TYPE
    cols = (IDXS_C_TYPE*) cols + begin;
#else
    cols = indicesFromRange(begin, end, &colsType);
#endif

    METHOD_NAME[colsType](x, nrow, ncol, rows, nrows, rowsType, cols, ncols, colsType, narm, hasna, byrow, ans, 1);

#ifndef IDXS_TYPE
    Free(cols);
#endif
  }
  return NULL;
}


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  // Apply pthread
  R_xlen_t nv = byrow ? nrows : ncols;
  if (cores > 1 && nv > 1) {
    const static int memSize0 = sizeof(x) + sizeof(nrow) + sizeof(ncol)
      + sizeof(rows) + sizeof(nrows) + sizeof(rowsType) + sizeof(cols) + sizeof(ncols) + sizeof(colsType)
      + sizeof(narm) + sizeof(hasna) + sizeof(byrow) + sizeof(ans);
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
    PUSH_ARGUMENT(buffer, ii, rowsType);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, colsType);
    PUSH_ARGUMENT(buffer, ii, narm);
    PUSH_ARGUMENT(buffer, ii, hasna);
    PUSH_ARGUMENT(buffer, ii, byrow);
    PUSH_ARGUMENT(buffer, ii, ans);

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

      pthread_create(threads+(jj++), NULL, &WRAPPER_METHOD_NAME_IDXS, args);

      begin = end;
    }

    for (jj = 0; jj < cores; ++jj) {
      pthread_join(threads[jj], NULL);
    }
    return;
  }


  R_xlen_t ii, idx;
  double navalue;
  /* extern 1-D function 'logSumExp' */
  extern double (*logSumExp_double[3])(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, int by, double *xx);

#ifdef IDXS_TYPE
  IDXS_C_TYPE *crows = (IDXS_C_TYPE*) rows;
  IDXS_C_TYPE *ccols = (IDXS_C_TYPE*) cols;
#endif

  if (byrow) {
    /* C allocate memory for row-vector 'xx' of length 'ncol'.
       Should be freed manually. */
    double *xx = Calloc(ncols, double);
    navalue = (narm || ncols == 0) ? R_NegInf : NA_REAL;

    for (ii=0; ii < nrows; ++ii) {
      idx = IDX_INDEX(crows,ii);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logSumExp_double[colsType](x+idx, cols, ncols, narm, hasna, nrow, xx);
      }
    }
    Free(xx);

  } else {
    navalue = (narm || nrows == 0) ? R_NegInf : NA_REAL;

    for (ii=0; ii < ncols; ++ii) {
      idx = R_INDEX_OP(IDX_INDEX(ccols,ii), *, nrow);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logSumExp_double[rowsType](x+idx, rows, nrows, narm, hasna, 0, NULL);
      }
    }
  } /* if (byrow) */
}


/***************************************************************************
 HISTORY:
 2015-08-01 [DJ]
  o Pthread processing.
 2013-06-12 [DH]
 o Created.
 **************************************************************************/
