/***************************************************************************
 Public methods:
 SEXP rowRanks(SEXP x, SEXP tiesMethod)
 SEXP colRanks(SEXP x, SEXP tiesMethod)

 Private methods:
 void rowRanks_Real(double *x, int nrow, int ncol, int byrow, int *ans)
 void rowRanks_Integer(int *x, int nrow, int ncol, int byrow, int *ans)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson (minor)
 **************************************************************************/
#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>

void rowRanks_Integer(int *x, int nrow, int ncol, int byrow, int *ans) {
  int ii, jj;
  int *colOffset;
  int *I;
  int JJ, AA, nna;
  int *rowData;
  int current_max;

  rowData = (int *) R_alloc(ncol, sizeof(int));
  I = (int *) R_alloc(ncol, sizeof(int));

  colOffset = (int *) R_alloc(ncol, sizeof(int));
  for (jj=0; jj < ncol; jj++) {
    colOffset[jj] = (int) jj*nrow;
  }

  for (ii=0; ii < nrow; ii++) {
    nna = 0;	// number of NA's in this row
    for (jj=0; jj < ncol; jj++) {
      rowData[jj] = x[ii+colOffset[jj]];
      if (rowData[jj] == NA_INTEGER)
	nna++;
      I[jj] = jj;
      // Rprintf("%d %d: %d ", ii, jj, x[ii+colOffset[jj]]);
    }
    // Rprintf("\n");

    // Sort 'rowData' increasing with any NA_integer_'s first:
    R_qsort_int_I(rowData, I, 1, ncol);

    // The following does: rank(ties.method="max", na.last="keep")

    JJ = ncol-1;
    current_max = rowData[JJ];
    AA = ii + colOffset[I[JJ]];
    ans[AA] = (current_max == NA_INTEGER) ? NA_INTEGER : JJ+1-nna;
    for (jj=ncol-2; jj>=nna; jj--) {
      AA = ii + colOffset[I[jj]];
      // Rprintf("%d %d %d: %d %d %d ", ii, jj, AA, I[jj], rowData[jj], current_max);
      if (rowData[jj] != current_max) {
	JJ = jj;
	current_max = rowData[JJ];
      }
      ans[AA] = JJ+1-nna;
    }
    for (jj=nna-1; jj>=0; jj--) {
      AA = ii + colOffset[I[jj]];
      ans[AA] = NA_INTEGER;
    }

    // Rprintf("\n");
  }
}


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions. 
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
