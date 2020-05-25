/***************************************************************************
 Public methods:
 SEXP colCounts(SEXP x, ...)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "colCounts_lowlevel.h"

SEXP colCounts(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP value, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna, what2;
  R_xlen_t ii, jj, nrow, ncol, nval;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'value': */
  assertArgVector(value, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "value");
  nval = LENGTH(value);

  /* Argument 'what': */
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("INTERNAL ERROR: Unknown value of 'what' for rowCounts: %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  if (nval == 1) {
    /* R allocate an integer vector of length 'ncol' */
  /* R allocate memory for vector 'count' of length 'ncols'.
     This will be taken care of by the R garbage collector later on. */
    double *count = (double *) R_alloc(ncols, sizeof(double));

    if (isReal(x)) {
      colCounts_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, asReal(value), what2, narm, hasna, count);
    } else if (isInteger(x)) {
      colCounts_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, asInteger(value), what2, narm, hasna, count);
    } else if (isLogical(x)) {
      colCounts_lgl[rowsType][colsType](LOGICAL(x), nrow, ncol, crows, nrows, ccols, ncols, asLogical(value), what2, narm, hasna, count);
    }

    /* Coerce counts from double to integer.  This is needed because
      colCount_nnn() returns double counts, which is in turn is needed
      because count() may need to return > INT_MAX. */
    PROTECT(ans = allocVector(INTSXP, ncols));
    int *ans_ptr = INTEGER(ans);
    for (ii = 0; ii < ncols; ii++) {
      if (count[ii] == (double)NA_R_XLEN_T) {
        ans_ptr[ii] = NA_INTEGER;
      } else {
        ans_ptr[ii] = (int)count[ii];
      }
    }
  } else {
    /* R allocate an integer matrix of length 'ncol' width nval */
    /* R allocate memory for vector 'count' of length 'ncols'.
     This will be taken care of by the R garbage collector later on. */
    PROTECT(ans = allocMatrix(INTSXP, ncols, nval));
    int *ans_ptr = INTEGER(ans);
    double *count = (double *) R_alloc(ncols, sizeof(double));

    for (jj = 0; jj < nval; jj++) {

      if (isReal(x)) {
        colCounts_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(value)[jj], what2, narm, hasna, count);
      } else if (isInteger(x)) {
        colCounts_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(value)[jj], what2, narm, hasna, count);
      } else if (isLogical(x)) {
        colCounts_lgl[rowsType][colsType](LOGICAL(x), nrow, ncol, crows, nrows, ccols, ncols, LOGICAL(value)[jj], what2, narm, hasna, count);
      }
    
      /* Coerce counts from double to integer.  This is needed because
       colCount_nnn() returns double counts, which is in turn is needed
       because count() may need to return > INT_MAX. */
      for (ii = 0; ii < ncols; ii++) {
        if (count[ii] == (double)NA_R_XLEN_T) {
          ans_ptr[jj * ncols + ii] = NA_INTEGER;
        } else {
          ans_ptr[jj * ncols + ii] = (int)count[ii];
        }
      }
    }
  }
  UNPROTECT(1);

  return(ans);
} // colCounts()


SEXP count(SEXP x, SEXP idxs, SEXP value, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna, what2, big_flag = 0;
  R_xlen_t nx, nval, ii;
  double count = 0.0;

  /* Argument 'x' and 'dim': */
  assertArgVector(x, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'value': */
  assertArgVector(value, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "value");
  nval = LENGTH(value);
  
  /* Argument 'what': */
  what2 = asInteger(what);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'idxs': */
  R_xlen_t nrows, ncols = 1;
  int rowsType, colsType = SUBSETTED_ALL;
  void *crows = validateIndices(idxs, nx, 1, &nrows, &rowsType);
  void *ccols = NULL;

  if (nval == 1) {
    if (isReal(x)) {
      colCounts_dbl[rowsType][colsType](REAL(x), nx, 1, crows, nrows, ccols, ncols, asReal(value), what2, narm, hasna, &count);
    } else if (isInteger(x)) {
      colCounts_int[rowsType][colsType](INTEGER(x), nx, 1, crows, nrows, ccols, ncols, asInteger(value), what2, narm, hasna, &count);
    } else if (isLogical(x)) {
      colCounts_lgl[rowsType][colsType](LOGICAL(x), nx, 1, crows, nrows, ccols, ncols, asLogical(value), what2, narm, hasna, &count);
    }
    /* R allocate a scalar */
    if (count > (double)INT_MAX && count != (double)NA_R_XLEN_T) {
      PROTECT(ans = ScalarReal(count));
      UNPROTECT(1);
    } else {
      PROTECT(ans = ScalarInteger(0));
      if (count == (double)NA_R_XLEN_T) {
        ans = ScalarInteger(NA_INTEGER);
      } else {
        ans = ScalarInteger((int)count);
      }
      UNPROTECT(1);
    }
  } else {
    double *ct_ptr = (double *) R_alloc(nval, sizeof(double));
    for (ii = 0; ii < nval; ii++) {
      if (isReal(x)) {
        colCounts_dbl[rowsType][colsType](REAL(x), nx, 1, crows, nrows, ccols, ncols, REAL(value)[ii], what2, narm, hasna, &ct_ptr[ii]);
      } else if (isInteger(x)) {
        colCounts_int[rowsType][colsType](INTEGER(x), nx, 1, crows, nrows, ccols, ncols, INTEGER(value)[ii], what2, narm, hasna, &ct_ptr[ii]);
      } else if (isLogical(x)) {
        colCounts_lgl[rowsType][colsType](LOGICAL(x), nx, 1, crows, nrows, ccols, ncols, LOGICAL(value)[ii], what2, narm, hasna, &ct_ptr[ii]);
      }
      if (ct_ptr[ii] > (double)INT_MAX && ct_ptr[ii] != (double)NA_R_XLEN_T) big_flag = 1;
    }
    /* R allocate a vector */
    if (big_flag == 1) {
      PROTECT(ans = allocVector(REALSXP, nval));
      ans = (struct SEXPREC *)ct_ptr;
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocVector(INTSXP, nval));
      for (ii = 0; ii < nval; ii++) {
        if (ct_ptr[ii] == (double)NA_R_XLEN_T) {
          INTEGER(ans)[ii] = NA_INTEGER;
        } else {
          INTEGER(ans)[ii] = (int)ct_ptr[ii];
        }
      }
      UNPROTECT(1);
    }
  }
  return(ans);
} // count()


/***************************************************************************
 HISTORY:
 2019-05-4 [BKM]
  o Supported a vector of values.
 2015-04-21 [DJ]
  o Supported subsetted computation.
 2014-11-14 [HB]
  o Created from rowCounts.c.
 **************************************************************************/
