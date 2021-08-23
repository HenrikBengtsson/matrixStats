/***********************************************************************
 TEMPLATE:
  void rowMeans2_<int|dbl>(ARGUMENTS_LIST)

 Copyright: Henrik Bengtsson, 2017
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(rowMeans2, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, 
                        int narm, int hasna, int byrow, double *ans) {
  R_xlen_t ii, jj, idx;
  R_xlen_t *colOffset;
  X_C_TYPE value;
  LDOUBLE sum, avg;
  R_xlen_t count;

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* Pre-calculate the column offsets */
  if (cols == NULL) {
    colOffset = NULL;
  }
  else {
    colOffset = (R_xlen_t *) R_alloc(ncols, sizeof(R_xlen_t));
    if (byrow) {
      for (jj=0; jj < ncols; jj++)
        colOffset[jj] = R_INDEX_OP(cols[jj], *, nrow);
    } else {
      for (jj=0; jj < ncols; jj++)
        colOffset[jj] = cols[jj];
    }    
  }

  for (ii=0; ii < nrows; ii++) {
    R_xlen_t rowIdx;
    if (rows == NULL) {
      rowIdx = byrow ? ii : R_INDEX_OP(ii, *, ncol);
    }
    else {
      rowIdx = byrow ? rows[ii] : R_INDEX_OP(rows[ii], *, ncol);
    }

    sum = 0.0;
    count = 0;

    for (jj=0; jj < ncols; jj++) {
      if (colOffset == NULL) {
        if (byrow) idx = R_INDEX_OP(rowIdx, +, jj*nrow);
        else idx = R_INDEX_OP(rowIdx, +, jj);
      }
      else {
        idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
      }
      value = R_INDEX_GET(x, idx, X_NA);
#if X_TYPE == 'i'
      if (!X_ISNAN(value)) {
        sum += (LDOUBLE)value;
        ++count;
      } else if (!narm) {
        sum = R_NaReal;
        break;
      }
#elif X_TYPE == 'r'
      if (!narm) {
        sum += (LDOUBLE)value;
        ++count;
        if (jj % 1048576 == 0 && ISNA(sum)) break;
      } else if (!ISNAN(value)) {
        sum += (LDOUBLE)value;
        ++count;
      }
#endif
    } /* for (jj ...) */

    if (sum > DOUBLE_XMAX) {
      avg = R_PosInf;
    } else if (sum < -DOUBLE_XMAX) {
      avg = R_NegInf;
    } else {
      avg = sum / count;
    }

    ans[ii] = (double)avg;

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */
}
