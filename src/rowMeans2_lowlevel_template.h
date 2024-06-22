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
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA,
                        int narm, int refine,
                        int hasna, int byrow, double *ans) {
  R_xlen_t ii, jj, idx;
  R_xlen_t *colOffset;
  X_C_TYPE value;
  LDOUBLE sum, avg;
  R_xlen_t count;
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

  for (ii=0; ii < nrows; ii++) {
    R_xlen_t rowIdx;
      
    if (norows) {
      /* ii and ncols cannot be NA-values, so we do not need R_INDEX_OP */
      rowIdx = byrow ? ii : ii*ncol;
    } else {
      if(!rowsHasNA && !colsHasNA) {
          rowIdx = byrow ? rows[ii] : rows[ii] * ncol;
      }
      rowIdx = byrow ? rows[ii] : R_INDEX_OP(rows[ii], *, ncol, 1, 1);
    }
    sum = 0.0;
    count = 0;

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
                if (byrow) idx = R_INDEX_OP(rowIdx, +, jj*nrow, 1, 1);
                else idx = R_INDEX_OP(rowIdx, +, jj, 1, 1);
            } else {
                idx = R_INDEX_OP(rowIdx, +, colOffset[jj], 1, 1);
            }
            value = R_INDEX_GET(x, idx, X_NA,1);
        }
        
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

    if (sum > DBL_MAX) {
      avg = R_PosInf;
    } else if (sum < -DBL_MAX) {
      avg = R_NegInf;
    } else {
      avg = sum / count;

#if X_TYPE == 'r'
      if (refine) {
        sum = 0.0;
        
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
                  if (byrow) idx = R_INDEX_OP(rowIdx, +, jj*nrow, 1, 1);
                  else idx = R_INDEX_OP(rowIdx, +, jj, 1, 1);
              } else {
                  idx = R_INDEX_OP(rowIdx, +, colOffset[jj], 1, 1);
              }
              value = R_INDEX_GET(x, idx, X_NA,1);
          }
        
          if (!narm) {
            sum += (LDOUBLE)(value) - avg;
            if (jj % 1048576 == 0 && ISNA(sum)) break;
          } else if (!ISNAN(value)) {
            sum += (LDOUBLE)(value) - avg;
          }
        }
        avg = avg + sum / count;
      } /* for (jj ...) */
#endif
    }

    ans[ii] = (double)avg;

    R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */
}
