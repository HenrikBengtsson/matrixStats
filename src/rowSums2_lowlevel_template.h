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
  R_xlen_t ii, jj, idx;
  R_xlen_t *colOffset;
  X_C_TYPE value;
  /* Use long double (if available) for higher precision */
  /* NOTE: SIMD does not long doubles - in case we ever go there */
  LDOUBLE sum;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

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

    sum = 0.0;

    for (jj=0; jj < ncols; jj++) {
      idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
      value = R_INDEX_GET(x, idx, X_NA);
  #if X_TYPE == 'i'
      if (!X_ISNAN(value)) {
        sum += (LDOUBLE)value;
      } else if (!narm) {
        sum = R_NaReal;
        break;
      }
  #elif X_TYPE == 'r'
      if (!narm) {
        sum += (LDOUBLE)value;
        if (jj % 1048576 == 0 && ISNA(sum)) break;
      } else if (!ISNAN(value)) {
        sum += (LDOUBLE)value;
      }
  #endif
    } /* for (jj ...) */

    if (sum > DOUBLE_XMAX) {
      ans[ii] = R_PosInf;
    } else if (sum < -DOUBLE_XMAX) {
      ans[ii] = R_NegInf;
    } else {
      ans[ii] = (double)sum;
    }

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */
}
