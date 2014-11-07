/***************************************************************************
 Private methods:
 void rowRanks_Real(double *x, int nrow, int ncol, int byrow, int *ans)
 void rowRanks_Integer(int *x, int nrow, int ncol, int byrow, int *ans)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson
 **************************************************************************/
#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>
#include "types.h"

#define METHOD rowRanks
#define X_TYPE 'i'
#include "templates-types.h"

void METHOD_NAME(X_C_TYPE *x, int nrow, int ncol, int byrow, int *ans) {
  int ii, jj;
  R_xlen_t *colOffset;
  int *I;
  int JJ, nna;
  R_xlen_t AA;
  X_C_TYPE *rowData;
  X_C_TYPE current_max;

  rowData = (X_C_TYPE *) R_alloc(ncol, sizeof(X_C_TYPE));
  I = (int *) R_alloc(ncol, sizeof(int));

  colOffset = (R_xlen_t *) R_alloc(ncol, sizeof(R_xlen_t));
  for (jj=0; jj < ncol; jj++) {
    colOffset[jj] = (R_xlen_t) jj*nrow;
  }

  for (ii=0; ii < nrow; ii++) {
    nna = 0;	// number of NA's in this row
    for (jj=0; jj < ncol; jj++) {
      rowData[jj] = x[ii+colOffset[jj]];
      if (X_ISNAN(rowData[jj]))
	nna++;
      I[jj] = jj;
      // Rprintf("%d %d: %d ", ii, jj, x[ii+colOffset[jj]]);
    }
    // Rprintf("\n");

    // Sort 'rowData' increasing with any NA_integer_'s first:
    X_QSORT_I(rowData, I, 1, ncol);

    // The following does: rank(ties.method="max", na.last="keep")

    JJ = ncol-1;
    current_max = rowData[JJ];
    AA = ii + colOffset[I[JJ]];
    ans[AA] = X_ISNAN(current_max) ? NA_INTEGER : JJ+1-nna;
    for (jj=ncol-2; jj >= nna; jj--) {
      AA = ii + colOffset[I[jj]];
      // Rprintf("%d %d %d: %d %d %d ", ii, jj, AA, I[jj], rowData[jj], current_max);
      if (rowData[jj] != current_max) {
	JJ = jj;
	current_max = rowData[JJ];
      }
      ans[AA] = JJ+1-nna;
    }
    for (jj=nna-1; jj >= 0; jj--) {
      AA = ii + colOffset[I[jj]];
      ans[AA] = NA_INTEGER;
    }

    // Rprintf("\n");
  }
}

/* Undo template macros */
#undef METHOD
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions. 
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
