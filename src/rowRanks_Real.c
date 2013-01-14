/***************************************************************************
 Public methods:
 SEXP rowRanks(SEXP x, SEXP tiesMethod)
 SEXP colRanks(SEXP x, SEXP tiesMethod)

 Private methods:
 SEXP rowRanks_Real(SEXP x, int nrow, int ncol, int byrow)
 SEXP rowRanks_Integer(SEXP x, int nrow, int ncol, int byrow)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson (minor)
 **************************************************************************/
#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>

SEXP rowRanks_Real(SEXP x, int nrow, int ncol, int byrow) {
  SEXP ans;
  int ii, jj;
  int *colOffset;
  int *aa, *I;
  int JJ, AA, nna;
  double *rowData, *xx;
  double current_max, current_min, tmp;

  PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));
  rowData = (double *) R_alloc(ncol, sizeof(double));
  I = (int *) R_alloc(ncol, sizeof(int));

  colOffset = (int *) R_alloc(ncol, sizeof(int));
  for (jj=0; jj < ncol; jj++) 
    colOffset[jj] = (int) jj*nrow;

  xx = REAL(x);
  aa = INTEGER(ans);

  for (ii=0; ii<nrow; ii++) {
    nna = 0;	// number of NA/NaN in this row

    // Set a minimum finite value for this row
    current_min = R_PosInf;
    for (jj=0; jj < ncol; jj++) {
      tmp = xx[ii+colOffset[jj]];
      if (R_FINITE(tmp) && tmp < current_min)
	current_min = tmp;
    }
    current_min = R_FINITE(current_min) ? current_min - 1 : 0;

    // Map -Inf to 'current_min' and Na/NaN to -Inf
    for (jj=0; jj<ncol; jj++) {
      tmp = xx[ii+colOffset[jj]];
      if (tmp == R_NegInf)
	rowData[jj] = current_min;
      else if (ISNAN(tmp)) {
	nna++;
	rowData[jj] = R_NegInf;
      }
      else
	rowData[jj] = tmp;

      I[jj] = jj;
      // Rprintf("%d %d: %.2f ", ii, jj, xx[ii+colOffset[jj]]);
    }
    // Rprintf("\n");

    // We have rid 'rowData' of any NA/NaN, so this will sort it
    // increasing with any -Inf's first.
    R_qsort_I(rowData, I, 1, ncol);

    // The following does: rank(ties.method="max", na.last="keep")

    JJ = ncol-1;
    current_max = rowData[JJ];
    AA = ii + colOffset[I[JJ]];
    aa[AA] = (current_max == R_NegInf) ? NA_INTEGER : JJ+1-nna;
    for (jj=ncol-2; jj>=nna; jj--) {
      AA = ii + colOffset[I[jj]];
      // Rprintf("%d %d %d: %d %.2f %.2f ", ii, jj, AA, I[jj], rowData[jj], current_max);
      if (rowData[jj] != current_max) {
	JJ = jj;
	current_max = rowData[JJ];
      }
      aa[AA] = JJ+1-nna;
    }
    for (jj=nna-1; jj>=0; jj--) {
      AA = ii + colOffset[I[jj]];
      aa[AA] = NA_INTEGER;
    }

    // Rprintf("\n");
  }

  UNPROTECT(1);
  return(ans);
}

/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
