/***************************************************************************
 Public methods:
 SEXP rowRanks(SEXP x, SEXP tiesMethod)
 SEXP colRanks(SEXP x, SEXP tiesMethod)

 Private methods:
 SEXP rowRanksReal(SEXP x, int nrow, int ncol, int by_column)
 SEXP rowRanksInteger(SEXP x, int nrow, int ncol, int by_column)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson (minor)
 **************************************************************************/
#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>

SEXP rowRanksReal(SEXP x, int nrow, int ncol, int by_column) {
  SEXP ans;
  int ii, jj;
  int *colOffset;
  double *rowData, *xx;
  int *aa, *I;
  int JJ, AA, nna;
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
    for (jj=0; jj<ncol; jj++) {
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

SEXP rowRanksInteger(SEXP x, int nrow, int ncol, int by_column) {
  SEXP ans;
  int ii, jj;
  int *colOffset;
  int *rowData, *xx;
  int *aa, *I;
  int current_max, JJ, AA, nna;

  PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));
  rowData = (int *) R_alloc(ncol, sizeof(int));
  I = (int *) R_alloc(ncol, sizeof(int));

  colOffset = (int *) R_alloc(ncol, sizeof(int));
  for (jj=0; jj < ncol; jj++) 
    colOffset[jj] = (int) jj*nrow;

  xx = INTEGER(x);
  aa = INTEGER(ans);

  for (ii=0; ii<nrow; ii++) {
    nna = 0;	// number of NA's in this row
    for (jj=0; jj<ncol; jj++) {
      rowData[jj] = xx[ii+colOffset[jj]];
      if (rowData[jj] == NA_INTEGER)
	nna++;
      I[jj] = jj;
      // Rprintf("%d %d: %d ", ii, jj, xx[ii+colOffset[jj]]);
    }
    // Rprintf("\n");

    // Sort 'rowData' increasing with any NA_integer_'s first:
    R_qsort_int_I(rowData, I, 1, ncol);

    // The following does: rank(ties.method="max", na.last="keep")

    JJ = ncol-1;
    current_max = rowData[JJ];
    AA = ii + colOffset[I[JJ]];
    aa[AA] = (current_max == NA_INTEGER) ? NA_INTEGER : JJ+1-nna;
    for (jj=ncol-2; jj>=nna; jj--) {
      AA = ii + colOffset[I[jj]];
      // Rprintf("%d %d %d: %d %d %d ", ii, jj, AA, I[jj], rowData[jj], current_max);
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

SEXP rowRanks(SEXP x, SEXP tiesMethod) {
  SEXP ans, dim;
  int nrow, ncol;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Get dimensions of 'x'. */
  PROTECT(dim = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];
  UNPROTECT(1);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowRanksReal(x, nrow, ncol, 0);
  } else if (isInteger(x)) {
    ans = rowRanksInteger(x, nrow, ncol, 0);
  } else {
    ans = NULL; // To please compiler
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // rowRanks()


SEXP colRanks(SEXP x, SEXP tiesMethod) {
  SEXP xt, ans, dim;
  int nrow, ncol;
  int n = LENGTH(x);

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Get dimensions of 'x'. */
  PROTECT(dim = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];
  UNPROTECT(1);

  // Transpose matrix
  PROTECT(xt = allocVector(TYPEOF(x), n));
  int ii, jj, n1 = n-1;
  if (TYPEOF(x) == INTSXP) {
    for (ii=0, jj=0; ii < n; ii++, jj+=nrow) {
      if (jj > n1) jj -= n1;
      INTEGER(xt)[ii] = INTEGER(x)[jj];
    }
  } else if (TYPEOF(x) == REALSXP) {
    for (ii=0, jj=0; ii < n; ii++, jj+=nrow) {
      if (jj > n1) jj -= n1;
      REAL(xt)[ii] = REAL(x)[jj];
    }
  }
  PROTECT(dim = allocVector(INTSXP, 2));
  INTEGER(dim)[0] = ncol;
  INTEGER(dim)[1] = nrow;
  setAttrib(xt, R_DimSymbol, dim);
  UNPROTECT(1); 

  ans = rowRanks(xt, tiesMethod);
  UNPROTECT(1); // xt

  return(ans);
} // colRanks()


/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to row/colRanks().
 o Added colRanks() analogously to row/colMedians().
 **************************************************************************/
