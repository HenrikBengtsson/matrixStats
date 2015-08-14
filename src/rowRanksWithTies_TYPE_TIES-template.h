/***********************************************************************
 TEMPLATE:
  <col|row>Ranks_Real_ties<Min|Max|Average>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, ANS_C_TYPE *ans, R_xlen_t nrow_ans, int cores

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - MARGIN: 'r' (rows) or 'c' (columns).
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'
  - TIESMETHOD: '0' (min), '1' (max), 'a' (average)

 Authors:
  Hector Corrada Bravo [HCB]
  Peter Langfelder [PL]
  Henrik Bengtsson [HB]
 ***********************************************************************/
#include <Rinternals.h>
#include <pthread.h>
#include <stdint.h>

#undef RANK
#if TIESMETHOD == '0'   /* min */
  #define ANS_TYPE 'i'
  #define RANK(firstTie, aboveTie) firstTie + 1
#elif TIESMETHOD == '1' /* max */
  #define ANS_TYPE 'i'
  #define RANK(firstTie, aboveTie) aboveTie
#elif TIESMETHOD == 'a' /* average */
  #define ANS_TYPE 'r'
  #define RANK(firstTie, aboveTie) ((double) (firstTie + aboveTie + 1))/2
#endif

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h"


/* Indexing formula to compute the vector index of element j of vector i.
   Should take arguments element, vector, nElements, nVectors. */
#undef ANS_INDEX_OF
#if MARGIN == 'r'   /* rows */
  #define ANS_INDEX_OF(element, vector, nRows) \
            vector + element*nRows
#elif MARGIN == 'c'   /* columns */
  #define ANS_INDEX_OF(element, vector, nRows) \
            element + vector*nRows
#else
  #error "MARGIN can only be 'r' or 'c'"
#endif


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
  POP_ARGUMENT(buffer0, ii, ANS_C_TYPE*, ans);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow_ans);

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  int rowsType = ROWS_TYPE_CODE, colsType = COLS_TYPE_CODE;
  #if MARGIN == 'r'
    ans += begin;
    nrows = end - begin;
    #ifdef ROWS_TYPE
      rows = (ROWS_C_TYPE*) rows + begin;
    #else
      rows = indicesFromRange(begin, end, &rowsType);
    #endif

    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, ans, nrow_ans, 1);

    #ifndef ROWS_TYPE
      Free(rows);
    #endif

  #elif MARGIN == 'c'
    ans += begin * nrow_ans;
    ncols = end - begin;
    #ifdef COLS_TYPE
      cols = (COLS_C_TYPE*) cols + begin;
    #else
      cols = indicesFromRange(begin, end, &colsType);
    #endif

    METHOD_NAME[rowsType][colsType](x, nrow, ncol, rows, nrows, cols, ncols, ans, nrow_ans, 1);

    #ifndef COLS_TYPE
      Free(cols);
    #endif
  #endif  // MARGIN

  return NULL;
}


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  // Apply pthread
#if MARGIN == 'r'
  R_xlen_t nv = nrows;
#elif MARGIN == 'c'
  R_xlen_t nv = ncols;
#endif
  if (cores > 1 && nv > 1) {
    const static int memSize0 = sizeof(x) + sizeof(nrow) + sizeof(ncol)
      + sizeof(rows) + sizeof(nrows) + sizeof(cols) + sizeof(ncols)
      + sizeof(ans) + sizeof(nrow_ans);
    uint8_t *buffer0;
    R_xlen_t begin, end;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nv);
    uint8_t buffer[memSize0 + memSize1 * cores];

    int ii = 0;
    PUSH_ARGUMENT(buffer, ii, x);
    PUSH_ARGUMENT(buffer, ii, nrow);
    PUSH_ARGUMENT(buffer, ii, ncol);
    PUSH_ARGUMENT(buffer, ii, rows);
    PUSH_ARGUMENT(buffer, ii, nrows);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, ans);
    PUSH_ARGUMENT(buffer, ii, nrow_ans);

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


  ANS_C_TYPE rank;
  X_C_TYPE *values, current, tmp;
  R_xlen_t *colOffset;
  R_xlen_t ii, jj, kk, rowIdx;
  int *I;
  int lastFinite, firstTie, aboveTie;
  int nvalues, nVec;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

#if MARGIN == 'r'
  nvalues = ncols;
  nVec = nrows;

  /* Pre-calculate the column offsets */
  colOffset = Calloc(ncols, R_xlen_t);
  for (jj=0; jj < ncols; jj++)
    colOffset[jj] = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);

#elif MARGIN == 'c'
  nvalues = nrows;
  nVec = ncols;

  /* Pre-calculate the column offsets */
  colOffset = Calloc(nrows, R_xlen_t);
  for (jj=0; jj < nrows; jj++)
    colOffset[jj] = ROW_INDEX(crows,jj);
#endif

  values = Calloc(nvalues, X_C_TYPE);
  I = Calloc(nvalues, int);

  for (ii=0; ii < nVec; ii++) {
#if MARGIN == 'r'
    rowIdx = ROW_INDEX(crows,ii);
#elif MARGIN == 'c'
    rowIdx = R_INDEX_OP(COL_INDEX(ccols,ii), *, nrow);
#endif
    lastFinite = nvalues-1;

    /* Put the NA/NaN elements at the end of the vector and update
       the index vector appropriately.
       This may be a bit faster since it only uses one loop over
       the length of the vector, plus it shortens the sort in case
       there are missing values. /PL (2012-12-14)
    */
    for (jj = 0; jj <= lastFinite; jj++) {
      tmp = R_INDEX_GET(x, R_INDEX_OP(rowIdx,+,colOffset[jj]), X_NA);
      if (X_ISNAN(tmp)) {
        while (lastFinite > jj && X_ISNAN(R_INDEX_GET(x, R_INDEX_OP(rowIdx,+,colOffset[lastFinite]), X_NA))) {
          I[lastFinite] = lastFinite;
          lastFinite--;
        }

        I[lastFinite] = jj;
        I[jj] = lastFinite;
        values[ jj ] = R_INDEX_GET(x, R_INDEX_OP(rowIdx,+,colOffset[lastFinite]), X_NA);
        values[ lastFinite ] = tmp;
        lastFinite--;
      } else {
        I[jj] = jj;
        values[ jj ] = tmp;
      }
    } /* for (jj ...) */

   // Diagnostic print-outs
   /*

    Rprintf("Swapped vector:\n");
    for (jj=0; jj < nvalues; jj++)
    {
      Rprintf(" %8.4f,", values[jj]);
      if (((jj+1) % 5==0) || (jj==nvalues-1)) Rprintf("\n");
    }
    Rprintf("Index vector:\n");
    for (jj=0; jj<nvalues; jj++)
    {
      Rprintf(" %d,", I[jj]);
      if (((jj+1) % 5==0) || (jj==nvalues-1)) Rprintf("\n");
    }
    */


    // This will sort the data in increasing order and use the I vector to keep track of the original
    // indices. it only makes sense to do sort if there are at least 2 finite values.
    //
    if (lastFinite > 0) X_QSORT_I(values, I, 1, lastFinite + 1);

    // Calculate the ranks.
    for (jj=0; jj <= lastFinite;) {
      firstTie = jj;
      current = values[jj];
      while ((jj <= lastFinite) && (values[jj] == current)) jj++;
      aboveTie = jj;
      // Depending on rank method, get maximum, average, or minimum rank
      rank = RANK(firstTie, aboveTie);
      for (kk=firstTie; kk < aboveTie; kk++) {
        ans[ ANS_INDEX_OF(I[kk], ii, nrow_ans) ] = rank;
      }
    }

    // At this point jj = lastFinite + 1, no need to re-initialize again.
    for (; jj < nvalues; jj++) {
      ans[ ANS_INDEX_OF(I[jj], ii, nrow_ans) ] = ANS_NA;
    }

    // Rprintf("\n");
  }

  Free(colOffset);
  Free(values);
  Free(I);
}


/***************************************************************************
 HISTORY:
 2015-08-03 [DJ]
  o Pthread processing.
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
 o CLEANUP: Moving away from R data types in low-level C functions.
 2013-04-23 [HB]
 o BUG FIX: Ranks did not work for integers with NAs; now using X_ISNAN().
 2013-01-13 [HB]
 o Template cleanup.  Extened tempate to integer matrices.
 o Added argument 'tiesMethod' to rowRanks().
 2012-12-14 [PL]
 o Added internal support for "min", "max" and "average" ties.  Using
   template to generate the various versions of the functions.
 2013-01-13 [HCB]
 o Created.  Using "max" ties.
 **************************************************************************/
