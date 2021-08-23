/***********************************************************************
 TEMPLATE:
  <col|row>Ranks_dbl_ties<Min|Max|Average>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, ANS_C_TYPE *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - MARGIN: 'r' (rows) or 'c' (columns).
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'
  - TIESMETHOD: 'a' (average), 'f' (first), 'l' (last), 'r' (random), '0' (min), '1' (max), 'd' (dense)

 Authors:
  Hector Corrada Bravo [HCB]
  Peter Langfelder [PL]
  Henrik Bengtsson [HB]
  Brian Montgomery [BKM]
 ***********************************************************************/
#include <Rinternals.h>

#undef RANK
#if TIESMETHOD == 'a' /* average */
  #define ANS_TYPE 'r'
  #define RANK(firstTie, aboveTie) ((double) (firstTie + aboveTie + 1))/2
#elif TIESMETHOD == '0' /* min */
  #define ANS_TYPE 'i'
  #define RANK(firstTie, aboveTie) firstTie + 1
#elif TIESMETHOD == '1' /* max */
  #define ANS_TYPE 'i'
  #define RANK(firstTie, aboveTie) aboveTie
#else
  #define ANS_TYPE 'i' /* dense and other(RANK not used) */
  #define RANK(firstTie, aboveTie) firstTie + 1
#endif

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN)
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "000.templates-types.h"

void SHUFFLE_INT(int *array, size_t i, size_t j); /* prototype for use with "random" */

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


void CONCAT_MACROS(METHOD, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                 R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, ANS_C_TYPE *ans) {
  ANS_C_TYPE rank;
  X_C_TYPE *values, current, tmp;
  R_xlen_t *colOffset;
  R_xlen_t ii, jj, kk, rowIdx;
  int *I;
  int lastFinite, firstTie, aboveTie, dense_rank_adj;
  int nvalues, nVec;

#if MARGIN == 'r'
  nvalues = ncols;
  nVec = nrows;

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncols, sizeof(R_xlen_t));
  if (cols == NULL) {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = R_INDEX_OP(jj, *, nrow);
  } else {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = R_INDEX_OP(cols[jj], *, nrow);
  }

#elif MARGIN == 'c'
  nvalues = nrows;
  nVec = ncols;

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(nrows, sizeof(R_xlen_t));
  if (rows == NULL) {
    for (jj=0; jj < nrows; jj++)
      colOffset[jj] = jj;
  } else {
    for (jj=0; jj < nrows; jj++)
      colOffset[jj] = rows[jj];
  }
#endif

  values = (X_C_TYPE *) R_alloc(nvalues, sizeof(X_C_TYPE));
  I = (int *) R_alloc(nvalues, sizeof(int));

  for (ii=0; ii < nVec; ii++) {
#if MARGIN == 'r'
    rowIdx = ((rows == NULL) ? (ii) : rows[ii]);
#elif MARGIN == 'c'
    rowIdx = R_INDEX_OP(((cols == NULL) ? (ii) : cols[ii]), *, nrow);
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
    firstTie = 0;
    aboveTie = 1;
    dense_rank_adj = 0;
    for (jj=0; jj <= lastFinite;) {
      if (TIESMETHOD == 'd') {
        dense_rank_adj += (aboveTie - firstTie - 1);
        firstTie = jj - dense_rank_adj;
      } else {
        firstTie = jj;
      }
      current = values[jj];
      while ((jj <= lastFinite) && (values[jj] == current)) jj++;
      if (TIESMETHOD == 'd') {
        aboveTie = jj - dense_rank_adj;
      } else {
        aboveTie = jj;
      }
      // X_QSORT_I is not stable - ties can be permuted.
      // This restores the original order.
      // It might be more efficient to use a stable sort to begin with.
      if (TIESMETHOD == 'f' || TIESMETHOD == 'l') {
        R_qsort_int(I, firstTie + 1, aboveTie); /* Function is 1-based */
      // SHUFFLE_INT randomizes the order.
      } else if (TIESMETHOD == 'r') {
        SHUFFLE_INT(I, firstTie, aboveTie - 1);
      } else {
        // Get appropriate rank for average, min, max, or dense
        rank = RANK(firstTie, aboveTie);
      }
      for (kk=firstTie; kk < aboveTie; kk++) {
        if (TIESMETHOD == 'f' || TIESMETHOD == 'r') {
          ans[ ANS_INDEX_OF(I[kk], ii, nrows) ] = kk + 1;
        } else if (TIESMETHOD == 'l') {
          ans[ ANS_INDEX_OF(I[kk], ii, nrows) ] = aboveTie - (kk - firstTie);
        } else if (TIESMETHOD == 'd') {
          ans[ ANS_INDEX_OF(I[kk + dense_rank_adj], ii, nrows) ] = rank;
        } else {
          ans[ ANS_INDEX_OF(I[kk], ii, nrows) ] = rank;
        }
      }
    }

    // At this point jj = lastFinite + 1, no need to re-initialize again.
    for (; jj < nvalues; jj++) {
      ans[ ANS_INDEX_OF(I[jj], ii, nrows) ] = ANS_NA;
    }

    // Rprintf("\n");
  }
}



/***************************************************************************
 HISTORY:
 2019-4-23 [BKM]
  o Added new tiesMethods: first, last, random, and dense.
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
