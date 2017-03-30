/***********************************************************************
 TEMPLATE:
  void rowOrderStats_<int|dbl>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, R_xlen_t qq, X_C_TYPE *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQ() by R. Gentleman.
  Template by Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2007-2014
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "000.templates-types.h"


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  R_xlen_t ii, jj;
  R_xlen_t *colOffset, rowIdx;
  X_C_TYPE *values;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
  // Check missing rows
  for (ii=0; ii < nrows; ++ii) {
    if (ROW_INDEX(crows,ii) == NA_R_XLEN_T) break;
  }
  if (ii < nrows && ncols > 0) {
    error("Argument 'rows' must not contain missing value");
  }
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
  // Check missing cols
  for (jj=0; jj < ncols; ++jj) {
    if (COL_INDEX(ccols,jj) == NA_R_XLEN_T) break;
  }
  if (jj < ncols && nrows > 0) {
    error("Argument 'cols' must not contain missing value");
  }
#endif

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(ncols, sizeof(X_C_TYPE));

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncols, sizeof(R_xlen_t));
  for (jj=0; jj < ncols; jj++)
    colOffset[jj] = COL_INDEX_NONA(ccols,jj) * nrow;

  for (ii=0; ii < nrows; ii++) {
    rowIdx = ROW_INDEX_NONA(crows,ii);
    for (jj=0; jj < ncols; jj++)
      values[jj] = x[rowIdx + colOffset[jj]];

    /* Sort vector of length 'ncol' up to position 'qq'.
       "...partial sorting: they permute x so that x[qq] is in the
       correct place with smaller values to the left, larger ones
       to the right." */
    X_PSORT(values, ncols, qq);

    ans[ii] = values[qq];
  }
}


/***************************************************************************
 HISTORY:
 2015-07-08 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2013-01-13 [HB]
  o Merged rowOrderStatsReal() and rowOrderStatsInteger() into
    one rowOrderStats_<int|dbl>() templated function.
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
