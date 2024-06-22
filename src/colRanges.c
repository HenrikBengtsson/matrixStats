/***************************************************************************
 Public methods:
 SEXP colRanges(SEXP x, ...)

 Authors: Henrik Bengtsson.

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "colRanges_lowlevel.h"
#include "naming.h"

SEXP colRanges(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP what, SEXP naRm, SEXP hasNA, SEXP useNames) {
  SEXP ans = NILSXP, ans2 = NILSXP;
  int *mins, *maxs;
  double *mins2, *maxs2;
  int *is_counted, all_counted = 0;
  int what2, narm, hasna, usenames;
  R_xlen_t nrow, ncol, jj;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'what': */
  if (length(what) != 1)
    error("Argument 'what' must be a single number");
  if (!isNumeric(what))
    error("Argument 'what' must be a numeric number");
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("Invalid value of 'what': %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsHasNA;
  int colsHasNA;
  R_xlen_t *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsHasNA);
  R_xlen_t *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsHasNA);
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);

  is_counted = (int *) R_alloc(ncols, sizeof(int));

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, ncols, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, ncols));
    }
    colRanges_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, what2, narm, hasna, REAL(ans), is_counted);
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        if (what2 == 2) {
          if (ncols != 0) {
            /* colRanges() returns a numeric Kx2 matrix, reverse dimnames */
            setDimnames(ans, dimnames, ncols, ccols, 0, crows, TRUE);
          }
          /* (else) Zero-length colnames attribute? Keep behavior same as base R function */
        } else{
          SEXP namesVec = VECTOR_ELT(dimnames, 1);
          if (namesVec != R_NilValue) {
            setNames(ans, namesVec, ncols, ccols);
          }        
        }
      }
    }
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, ncols, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, ncols));
    }
    colRanges_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, what2, narm, hasna, INTEGER(ans), is_counted);

    /* Any entries with zero non-missing values? */
    all_counted = 1;
    for (jj=0; jj < ncols; jj++) {
      if (!is_counted[jj]) {
        all_counted = 0;
        break;
      }
    }

    if (!all_counted) {
      /* Handle zero non-missing values */
      /* Instead of return INTSXP, we must return REALSXP (to hold -Inf, and Inf) */
      if (what2 == 0) {
        PROTECT(ans2 = allocVector(REALSXP, ncols));
        mins = INTEGER(ans);
        mins2 = REAL(ans2);
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
          } else {
            mins2[jj] = R_PosInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 1) {
        PROTECT(ans2 = allocVector(REALSXP, ncols));
        maxs = INTEGER(ans);
        maxs2 = REAL(ans2);
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            maxs2[jj] = (double)maxs[jj];
          } else {
            maxs2[jj] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 2) {
        PROTECT(ans2 = allocMatrix(REALSXP, ncols, 2));
        mins = INTEGER(ans);
        maxs = &INTEGER(ans)[ncols];
        mins2 = REAL(ans2);
        maxs2 = &REAL(ans2)[ncols];
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
            maxs2[jj] = (double)maxs[jj];
          } else {
            mins2[jj] = R_PosInf;
            maxs2[jj] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      }

      ans = ans2;
    }
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        if (what2 == 2) {
          if (ncols != 0) {
            /* colRanges() returns a numeric Kx2 matrix, reverse dimnames */
            setDimnames(ans, dimnames, ncols, ccols, 0, crows, TRUE);
          }
          /* (else) Zero-length colnames attribute? Keep behavior same as base R function */
        } else{
          SEXP namesVec = VECTOR_ELT(dimnames, 1);
          if (namesVec != R_NilValue) {
            setNames(ans, namesVec, ncols, ccols);
          }        
        }
      }
    }

    UNPROTECT(1); /* ans */
  }
  
  UNPROTECT(1); /* PROTECT(dim = ...) */

  return(ans);
} // colRanges()


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
