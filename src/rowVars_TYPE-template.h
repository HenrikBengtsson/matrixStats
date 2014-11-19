/***********************************************************************
 TEMPLATE:
  void rowVars_<Integer|Real>(...)

 GENERATES:
  void rowVars_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)
  void rowVars_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)

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
#include "types.h"
#include <stdlib.h> /* abs() and fabs() */

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans) {
  R_xlen_t ii, jj, kk;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;
  double value_d, mu_d, sigma2_d;

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values   = (X_C_TYPE *) R_alloc(ncol, sizeof(X_C_TYPE));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* Pre-calculate the column offsets */
  colOffset = (R_xlen_t *) R_alloc(ncol, sizeof(R_xlen_t));

  if (byrow) {
    for (jj=0; jj < ncol; jj++)
      colOffset[jj] = (R_xlen_t)jj*nrow;
  } else {
    for (jj=0; jj < ncol; jj++)
      colOffset[jj] = (R_xlen_t)jj;
  }

  for (ii=0; ii < nrow; ii++) {
    if (ii % 1000 == 0)
      R_CheckUserInterrupt();

    R_xlen_t rowIdx = byrow ? ii : ncol*ii; //HJ

    kk = 0;
    for (jj=0; jj < ncol; jj++) {
      value = x[rowIdx+colOffset[jj]];

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
  } /* for (ii ...) */
}

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-18 [HB]
  o Created from rowMads_TYPE-template.h.
 **************************************************************************/
