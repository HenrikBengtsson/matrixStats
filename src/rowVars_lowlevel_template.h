/***********************************************************************
 TEMPLATE:
  void rowVars_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int narm, int refine, int hasna, int byrow, double *ans

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
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(rowVars, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol,
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, 
                        int narm, int refine, int hasna, int byrow, double *ans) {
  R_xlen_t ii, jj, kk, idx;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;
  double value_d, sum_d, mu_d, sigma2_d;
  int nocols, norows;
  
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  /* R allocate memory for the 'values'.  This will be
     taken care of by the R garbage collector later on. */
  values = (X_C_TYPE *) R_alloc(ncols, sizeof(X_C_TYPE));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* Pre-calculate the column offsets */
  if (nocols) {
      colOffset = NULL;
  } else {
      colOffset = (R_xlen_t *) R_alloc(ncols, sizeof(R_xlen_t));
      if (byrow) {
          for (jj=0; jj < ncols; jj++)
              if(!rowsHasNA && !colsHasNA){
                  colOffset[jj] = cols[jj] * nrow;
              }
              else{
                  colOffset[jj] = R_INDEX_OP(cols[jj], *, nrow,1,1);
              }
      } else {
          for (jj=0; jj < ncols; jj++)
              colOffset[jj] = cols[jj];
      }    
  }

  for (ii=0; ii < nrows; ii++) {
    //HJ
    R_xlen_t rowIdx;
      if (norows) {
          /* ii and ncols cannot be NA-values, so we do not need R_INDEX_OP */
          rowIdx = byrow ? ii : ii*ncol;
      } else {
          if(!rowsHasNA && !colsHasNA) {
              rowIdx = byrow ? rows[ii] : rows[ii] * ncol;
          }
          rowIdx = byrow ? rows[ii] : R_INDEX_OP(rows[ii], *, ncol,1,1);
      }

    kk = 0;
    for (jj=0; jj < ncols; jj++) {
        if (!rowsHasNA && nocols) {
            /*
             * In this special case, we can eliminate
             * the possibility of having NA indices
             */
            if (byrow) idx = rowIdx + jj*nrow;
            else idx = rowIdx + jj;
            value = x[idx];
        } else if (!rowsHasNA && !colsHasNA && !nocols) {
            idx = rowIdx + colOffset[jj];
            value = x[idx];
        } else {
            if (nocols) {
                if (byrow) idx = R_INDEX_OP(rowIdx, +, jj*nrow,1,1);
                else idx = R_INDEX_OP(rowIdx, +, jj,1,1);
            } else {
                idx = R_INDEX_OP(rowIdx, +, colOffset[jj],1,1);
            }
            value = R_INDEX_GET(x, idx, X_NA,1);
        }
        

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
      sum_d = 0.0;
      for (jj=0; jj < kk; jj++) {
        sum_d += (double)values[jj];
      }
      mu_d = sum_d / (double)kk;

#if X_TYPE == 'r'
      if (refine) {
        sum_d = 0.0;
        for (jj=0; jj < kk; jj++) {
          sum_d += (double)(values[jj] - mu_d);
        }
        mu_d = mu_d + sum_d / (double)kk;
      } /* for (jj ...) */
#endif
      
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
