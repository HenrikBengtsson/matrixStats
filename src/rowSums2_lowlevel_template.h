/***********************************************************************
 TEMPLATE:
  void rowSums2_<int|dbl>(ARGUMENTS_LIST)

 Copyright: Henrik Bengtsson, 2017
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rdefines.h>
#include <Rmath.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(rowSums2, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                  R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                  R_xlen_t *cols, R_xlen_t ncols, int colsHasNA,
                  int narm, int hasna, int byrow, double *ans) {
    R_xlen_t ii, jj, idx;
    R_xlen_t *colOffset;
    X_C_TYPE value;
    int nocols, norows;
    
    /* If there are no missing values, don't try to remove them. */
    if (hasna == FALSE)
        narm = FALSE;
    
    if (cols == NULL) { nocols = 1; } else { nocols = 0; }
    if (rows == NULL) { norows = 1; } else { norows = 0; }
    
    
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
    
    if (byrow){
      /* Use long double (if available) for higher precision */
      /* NOTE: SIMD does not long doubles - in case we ever go there */
      LDOUBLE* sum = LDOUBLE_ALLOC(nrows);
      memset(sum, 0, nrows*sizeof(LDOUBLE));
      for (jj=0; jj < nrows; jj++) {
        R_xlen_t colOffset;
        if (nocols){
          colOffset = jj * nrow;
        } else if (!colsHasNA) {
          colOffset = cols[jj] * nrow;
        } else{
          colOffset = R_INDEX_OP(cols[jj], *, nrow,1,1);
        }
        for (ii=0; ii < nrows; ii++) {
          R_xlen_t rowIdx;
          if (norows) {
            /* ii and ncols cannot be NA-values, so we do not need R_INDEX_OP */
            rowIdx = ii;
          } else {
            rowIdx = rows[ii];
          }
          if (!colsHasNA && !rowsHasNA) {
            idx = rowIdx + colOffset;
          } else {
            idx = R_INDEX_OP(rowIdx, +, colOffset,1,1);
          }
          value = R_INDEX_GET(x, idx, X_NA, 1);
#if X_TYPE == 'i'
          if (!X_ISNAN(value)) {
            sum[ii] += (LDOUBLE)value;
          } else if (!narm) {
            sum[ii] = R_NaReal;
          }
#elif X_TYPE == 'r'
          if (!narm) {
            sum[ii] += (LDOUBLE)value;
          } else if (!ISNAN(value)) {
            sum[ii] += (LDOUBLE)value;
          }
#endif
        } /* for (ii ...) */
        R_CHECK_USER_INTERRUPT(jj);
        
        } /* for (jj ...) */ 
        for (ii=0; ii < nrows; ii++){
          if (sum[ii] > DBL_MAX) {
            ans[ii] = R_PosInf;
          } else if (sum[ii] < -DBL_MAX) {
            ans[ii] = R_NegInf;
          } else {
            ans[ii] = (double)sum[ii];
          }
        }
      }  else { /* if (byrow) */
            /* Use long double (if available) for higher precision */
            /* NOTE: SIMD does not long doubles - in case we ever go there */
    LDOUBLE sum;
    for (ii=0; ii < nrows; ii++) {
        R_xlen_t rowIdx;
        if (norows) {
            /* ii and ncols cannot be NA-values, so we do not need R_INDEX_OP */
            rowIdx = ii*ncol;
        } else {
            if(!rowsHasNA && !colsHasNA) {
                rowIdx = rows[ii] * ncol;
            }
            rowIdx = R_INDEX_OP(rows[ii], *, ncol,1,1);
        }
        sum = 0.0;
        
        for (jj=0; jj < ncols; jj++) {
            if (!rowsHasNA && nocols) {
                /*
                 * In this special case, we can eliminate
                 * the possibility of having NA indicies
                 */
                idx = rowIdx + jj;
                value = x[idx];
            } else if (!rowsHasNA && !colsHasNA && !nocols) {
                idx = rowIdx + colOffset[jj];
                value = x[idx];
            } else {
                if (nocols) {
                    idx = R_INDEX_OP(rowIdx, +, jj,1,1);
                } else {
                    idx = R_INDEX_OP(rowIdx, +, colOffset[jj],1,1);
                }
                value = R_INDEX_GET(x, idx, X_NA, 1);
            }
            
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
                
                if (sum > DBL_MAX) {
                    ans[ii] = R_PosInf;
                } else if (sum < -DBL_MAX) {
                    ans[ii] = R_NegInf;
                } else {
                    ans[ii] = (double)sum;
                }
                
                R_CHECK_USER_INTERRUPT(ii);
    } /* for (ii ...) */
    } /* else */
}
