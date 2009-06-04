/***************************************************************************
 Public methods:
 SEXP rowOrderStats(SEXP x, SEXP which)

 Private methods:
 SEXP rowOrderStatsReal(SEXP x, int nrow, int ncol, int qq,)
 SEXP rowOrderStatsInteger(SEXP x, int nrow, int ncol, int qq)

 Authors: Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2008
 **************************************************************************/
/* Include R packages */
#include <R.h>
#include <Rdefines.h>
#include <Rmath.h>


SEXP rowOrderStatsReal(SEXP x, int nrow, int ncol, int qq) {
  SEXP ans;
  int ii, jj;
  int *colOffset;
  double *rowData, *xx;

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(REALSXP, nrow));

  /* R allocate memory for the 'rowData'.  This will be 
     taken care of by the R garbage collector later on. */
  rowData = (double *) R_alloc(ncol, sizeof(double));

  /* Pre-calculate the column offsets */
  colOffset = (int *) R_alloc(ncol, sizeof(int));
  for(jj=0; jj < ncol; jj++) 
    colOffset[jj] = (int)jj*nrow;

  xx = REAL(x);
  for(ii=0; ii < nrow; ii++) {
    for(jj=0; jj < ncol; jj++) {
      rowData[jj] = xx[ii+colOffset[jj]];
    }

    /* Sort vector of length 'ncol' up to position 'qq'. 
       "...partial sorting: they permute x so that x[k] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    rPsort(rowData, ncol, qq);

    REAL(ans)[ii] = rowData[qq];
  }

  UNPROTECT(1);

  return(ans);
}


SEXP rowOrderStatsInteger(SEXP x, int nrow, int ncol, int qq) {
  SEXP ans;
  int ii, jj;
  int *colOffset;
  int *rowData, *xx;

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(INTSXP, nrow));

  /* R allocate memory for the 'rowData'.  This will be 
     taken care of by the R garbage collector later on. */
  rowData = (int *) R_alloc(ncol, sizeof(int));

  /* Pre-calculate the column offsets */
  colOffset = (int *) R_alloc(ncol, sizeof(int));
  for(jj=0; jj < ncol; jj++) 
    colOffset[jj] = (int)jj*nrow;

  xx = INTEGER(x);
  for(ii=0; ii < nrow; ii++) {
    for(jj=0; jj < ncol; jj++) 
      rowData[jj] = xx[ii+colOffset[jj]];

    /* Sort vector of length 'ncol' up to position 'qq'. 
       "...partial sorting: they permute x so that x[k] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    iPsort(rowData, ncol, qq);

    INTEGER(ans)[ii] = rowData[qq];
  }

  UNPROTECT(1);

  return(ans);
}




SEXP rowOrderStats(SEXP x, SEXP which) {
  SEXP ans;
  int nrow, ncol, qq;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number.");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number.");


  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];

  /* Subtract one here, since rPsort does zero based addressing */
  qq = asInteger(which) - 1;

  /* Assert that 'qq' is a valid index */
  if (qq < 0 || qq >= ncol) {
    UNPROTECT(1);
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowOrderStatsReal(x, nrow, ncol, qq);
  } else if (isInteger(x)) {
    ans = rowOrderStatsInteger(x, nrow, ncol, qq);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be numeric.");
  }

  UNPROTECT(1);

  return(ans);
} // rowOrderStats()


/***************************************************************************
 HISTORY:
 2009-02-04 [HB]
  o BUG FIX: For some errors in rowOrderStats(), the stack would not become
    UNPROTECTED before calling error.
 2008-03-25 [HB]
  o Renamed from 'rowQuantiles' to 'rowOrderStats'.
 2007-08-10 [HB]
  o Removed arguments for NAs since rowOrderStats() still don't support it.
 2005-11-24 [HB]
  o Cool, it works and compiles nicely.
  o Preallocate colOffset to speed up things even more.
  o Added more comments and error checking.
  o Adopted from rowQ() in Biobase of Bioconductor.
 **************************************************************************/
