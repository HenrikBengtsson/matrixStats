/***********************************************************************
 TEMPLATE:
  <col|row>Ranks_Real_ties<Min|Max|Average>(...)

 GENERATES:
  void colRanks_Real_tiesMin(double *x, int nrow, int ncol, int byrow, double *ans)
  void rowRanks_Real_tiesMin(double *x, int nrow, int ncol, int byrow, double *ans)
  void colRanks_Real_tiesMax(double *x, int nrow, int ncol, int byrow, double *ans)
  void rowRanks_Real_tiesMax(double *x, int nrow, int ncol, int byrow, double *ans)
  void colRanks_Real_tiesAverage(double *x, int nrow, int ncol, int byrow, double *ans)
  void rowRanks_Real_tiesAverage(double *x, int nrow, int ncol, int byrow, double *ans)
  void colRanks_Integer_tiesMin(int *x, int nrow, int ncol, int byrow, int *ans)
  void rowRanks_Integer_tiesMin(int *x, int nrow, int ncol, int byrow, int *ans)
  void colRanks_Integer_tiesMax(int *x, int nrow, int ncol, int byrow, int *ans)
  void rowRanks_Integer_tiesMax(int *x, int nrow, int ncol, int byrow, int *ans)
  void colRanks_Integer_tiesAverage(int *x, int nrow, int ncol, int byrow, int *ans)
  void rowRanks_Integer_tiesAverage(int *x, int nrow, int ncol, int byrow, int *ans)

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
#include <Rdefines.h>
#include <Rmath.h>

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
#if MARGIN == 'r'   /* rows */
  #define INDEX_OF(element, vector, nElements, nVectors) \
            vector + element*nVectors
#elif MARGIN == 'c'   /* columns */
  #define INDEX_OF(element, vector, nElements, nVectors) \
            element + vector*nElements
#endif


void METHOD_NAME(X_C_TYPE *x, int nrow, int ncol, int byrow, ANS_C_TYPE *ans) {
  ANS_C_TYPE rank;
  X_C_TYPE *rowData, current, tmp;
  int ii, jj, kk;
  int *I;
  int lastFinite, firstTie, aboveTie;
  int vecLen, nVec;

  if (byrow) {
    vecLen = ncol;
    nVec = nrow;
  } else {
    vecLen = nrow;
    nVec = ncol;
  }

  rowData = (X_C_TYPE *) R_alloc(vecLen, sizeof(X_C_TYPE));
  I = (int *) R_alloc(vecLen, sizeof(int));

  for (ii=0; ii < nVec; ii++) {
    lastFinite = vecLen-1;

    /* Put the NA/NaN elements at the end of the vector and update
       the index vector appropriately.
       This may be a bit faster since it only uses one loop over
       the length of the vector, plus it shortens the sort in case
       there are missing values. /PL (2012-12-14)
    */
    for (jj = 0; jj <= lastFinite; jj++) {
      tmp = x[ INDEX_OF(jj, ii, vecLen, nVec) ];
      if (X_ISNAN(tmp)) {
        while (lastFinite > jj && X_ISNAN(x[ INDEX_OF(lastFinite, ii, vecLen, nVec) ])) {
          I[lastFinite] = lastFinite;
          lastFinite--;
        }

        I[lastFinite] = jj;
        I[jj] = lastFinite;
        rowData[ jj ] = x[ INDEX_OF(lastFinite, ii, vecLen, nVec) ];
        rowData[ lastFinite ] = tmp;
        lastFinite--;
      } else {
        I[jj] = jj;
        rowData[ jj ] = tmp;
      }
    } /* for (jj ...) */

   // Diagnostic print-outs
   /*

    Rprintf("Swapped vector:\n");
    for (jj=0; jj < vecLen; jj++) 
    { 
      Rprintf(" %8.4f,", rowData[jj]);
      if (((jj+1) % 5==0) || (jj==vecLen-1)) Rprintf("\n");
    }
    Rprintf("Index vector:\n");
    for (jj=0; jj<vecLen; jj++) 
    { 
      Rprintf(" %d,", I[jj]);
      if (((jj+1) % 5==0) || (jj==vecLen-1)) Rprintf("\n");
    }
    */
    

    // This will sort the data in increasing order and use the I vector to keep track of the original
    // indices. it only makes sense to do sort if there are at least 2 finite values.
    //
    if (lastFinite > 0) X_QSORT_I(rowData, I, 1, lastFinite + 1);

    // Calculate the ranks. 
    for (jj=0; jj <= lastFinite;) {
      firstTie = jj;
      current = rowData[jj];
      while ((jj <= lastFinite) && (rowData[jj] == current)) jj++;
      aboveTie = jj;
      // Depending on rank method, get maximum, average, or minimum rank
      rank = RANK(firstTie, aboveTie);
      for (kk=firstTie; kk < aboveTie; kk++) {
        ans[ INDEX_OF(I[kk], ii, vecLen, nVec) ] = rank;
      }
    }

    // At this point jj = lastFinite + 1, no need to re-initialize again.
    for (; jj < vecLen; jj++) {
      ans[ INDEX_OF(I[jj], ii, vecLen, nVec) ] = ANS_NA;
    }

    // Rprintf("\n");
  }
}

/* Undo template macros */
#undef RANK
#undef INDEX_OF
#undef TIESMETHOD
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
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
