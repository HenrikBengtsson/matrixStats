/***********************************************************************
 TEMPLATE:
  void rowSums2_<int|dbl>(ARGUMENTS_LIST)

 Copyright: Henrik Bengtsson, 2017
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "000.templates-types.h"


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  R_xlen_t ii, jj, kk, idx;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;
  double sum_d;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(ncols, sizeof(X_C_TYPE));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncols, sizeof(R_xlen_t));

  if (byrow) {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
  } else {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = COL_INDEX(ccols,jj);
  }

  for (ii=0; ii < nrows; ii++) {
    R_xlen_t rowIdx = byrow ? ROW_INDEX(crows,ii) : R_INDEX_OP(ROW_INDEX(crows,ii), *, ncol);

    /* Step 1: Collect values to process below
       If a NA or NaN value is detected, then:
       - na.rm = TRUE : skip it
       - na.rm = FALSE: return immediately
     */
    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
      value = R_INDEX_GET(x, idx, X_NA);

      if (X_ISNAN(value)) {
        if (narm == FALSE) {
          kk = -1;
          break;
        }
      } else {
        values[kk] = value;
        kk = kk + 1;
      }
    }

    /* Note that 'values' will never contain NA/NaNs */

    /* Step 2: Process values */
    if (kk == -1) {
      /* na.rm = FALSE with NA/NaN values */
      ans[ii] = NA_REAL;
    } else if (kk == 0) {
      /* na.rm = TRUE with no non-NA/NaN values */
      ans[ii] = 0;
    } else {
      /* Calculate the sum */
      sum_d = 0;
      for (jj=0; jj < kk; jj++) {
        sum_d += (double)values[jj];
      }

      ans[ii] = sum_d;
    } /* if (kk <= 1) */

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */
}
