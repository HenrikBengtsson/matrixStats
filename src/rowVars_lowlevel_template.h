/***********************************************************************
 TEMPLATE:
  void rowVars_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int narm, int hasna, int byrow, double *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQuantiles.c by R. Gentleman.
  Template by Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2007-2013
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
  double value_d, mu_d, sigma2_d;

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
    R_xlen_t rowIdx = byrow ? ROW_INDEX(crows,ii) : R_INDEX_OP(ROW_INDEX(crows,ii), *, ncol); //HJ

    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
      value = R_INDEX_GET(x, idx, X_NA); //HJ

      if (X_ISNAN(value)) {
        if (narm == FALSE) {
          kk = -1;
          break;
        }
      } else {
        values[kk] = value;
        kk = kk + 1;
      }
    } /* for (jj ...) */

    /* Note that 'values' will never contain NA/NaNs */

    if (kk <= 1) {
      ans[ii] = NA_REAL;
    } else {
      /* (a) Calculate mu = sum(x)/length(x) */
      mu_d = 0;
      for (jj=0; jj < kk; jj++) {
        mu_d += (double)values[jj];
      }
      mu_d /= (double)kk;

      /* (b) Calculate sigma^2 */
      sigma2_d = 0;
      for (jj=0; jj < kk; jj++) {
        value_d = ((double)values[jj] - mu_d);
        value_d *= value_d;
        sigma2_d += value_d;
      }
      sigma2_d /= (double)(kk-1);

      ans[ii] = sigma2_d;
    } /* if (kk <= 1) */

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */
}


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-18 [HB]
  o Created from rowMads_TYPE-template.h.
 **************************************************************************/
