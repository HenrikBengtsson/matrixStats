/***********************************************************************
 TEMPLATE:
  void rowDiffs_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, int byrow, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"
#include <R_ext/Error.h>


#undef X_DIFF
#undef DIFF_X_MATRIX
#if X_TYPE == 'i'
  #ifndef diff_int
    static R_INLINE int diff_int(int a, int b) {
      if (X_ISNA(a) || X_ISNA(b)) return(NA_INTEGER);
      return a-b;
    }
    #define diff_int diff_int
  #endif
  #define X_DIFF diff_int
  #define DIFF_X_MATRIX diff_matrix_int
#elif X_TYPE == 'r'
  #define X_DIFF(a,b) a-b
  #define DIFF_X_MATRIX diff_matrix_double
#endif


#if (X_TYPE == 'i' && !defined(diff_matrix_int)) || (X_TYPE == 'r' && !defined(diff_matrix_double))
  static R_INLINE void DIFF_X_MATRIX(X_C_TYPE *x, R_xlen_t nrow_x, R_xlen_t ncol_x, int byrow, R_xlen_t lag, X_C_TYPE *y, R_xlen_t nrow_y, R_xlen_t ncol_y) {
    R_xlen_t ii, jj, ss, tt, uu;
    if (byrow) {
      uu = lag * nrow_x;
      tt = 0;
      ss = 0;
      for (jj=0; jj < ncol_y; jj++) {
        for (ii=0; ii < nrow_y; ii++) {
          y[ss++] = X_DIFF(x[uu++], x[tt++]);
        }
      }
    } else {
      uu = lag;
      tt = 0;
      ss = 0;
      for (jj=0; jj < ncol_y; jj++) {
        for (ii=0; ii < nrow_y; ii++) {
          /* Rprintf("y[%d] = x[%d] - x[%d] = %g - %g = %g\n", ss, uu, tt, (double)x[uu], (double)x[tt], (double)X_DIFF(x[uu], x[tt])); */
          y[ss++] = X_DIFF(x[uu++], x[tt++]);
        }
        tt += lag;
        uu += lag;
      }
    }
  }
  #if X_TYPE == 'i'
    #define diff_matrix_int diff_matrix_int
  #elif X_TYPE == 'r'
    #define diff_matrix_double diff_matrix_double
  #endif
#endif


#undef DIFF_X_MATRIX_TYPE
#if X_TYPE == 'i'
  #define DIFF_X_MATRIX_TYPE CONCAT_MACROS(DIFF_X_MATRIX_TYPE, int)
#elif X_TYPE == 'r'
  #define DIFF_X_MATRIX_TYPE CONCAT_MACROS(DIFF_X_MATRIX_TYPE, double)
#endif


static R_INLINE void DIFF_X_MATRIX_TYPE(X_C_TYPE *x, R_xlen_t nrow,
                                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA,
                                        int byrow, R_xlen_t lag, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans) {
  R_xlen_t ii, jj, ss;
  R_xlen_t idx, colBegin1, colBegin2;
  X_C_TYPE xvalue1, xvalue2;
  int norows, nocols;
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  ss = 0;
  if (byrow) {
    for (jj=0; jj < ncol_ans; jj++) {
        if (nocols) {
            colBegin1 = jj * nrow;
        } else if (!colsHasNA) {
            colBegin1 = cols[jj] * nrow;
        } else {
            colBegin1 = R_INDEX_OP(cols[jj], *, nrow, 1, 1);
        }
        if (nocols) {
            colBegin2 = (jj+lag) * nrow;
        } else if (!colsHasNA) {
            colBegin2 = cols[jj+lag] * nrow;
        } else {
            colBegin2 = R_INDEX_OP(cols[jj+lag], *, nrow, 1, 1);
        }
      for (ii=0; ii < nrow_ans; ii++) {
          if (norows) {
              if (!colsHasNA || colBegin1 != NA_R_XLEN_T){
                  /*
                   * In this special case, we can eliminate
                   * the possibility of having NA indices
                   */
                  idx = colBegin1 + ii;
                  xvalue1 = x[idx];
              } else {
                  xvalue1 = X_NA;
              }
          } else if (!rowsHasNA && !colsHasNA) {
              idx = colBegin1 + rows[ii];
              xvalue1 = x[idx];
          } else {
              idx = R_INDEX_OP(colBegin1, +, (rows[ii]), 1, 1);
              xvalue1 = R_INDEX_GET(x, idx, X_NA, 1);
          }
          if (norows) {
              if (!colsHasNA || colBegin2 != NA_R_XLEN_T){
                  /*
                   * In this special case, we can eliminate
                   * the possibility of having NA indices
                   */
                  idx = colBegin2 + ii;
                  xvalue2 = x[idx];
              } else {
                  xvalue2 = X_NA;
              }
          } else if (!rowsHasNA && !colsHasNA) {
              idx = colBegin2 + rows[ii];
              xvalue2 = x[idx];
          } else {
              idx = R_INDEX_OP(colBegin2, +, (rows[ii]), 1, 1);
              xvalue2 = R_INDEX_GET(x, idx, X_NA, 1);
          }
        ans[ss++] = X_DIFF(xvalue2, xvalue1);
      }
    }
  } else {
    for (jj=0; jj < ncol_ans; jj++) {
        if (nocols) {
            colBegin1 = jj * nrow;
        } else {
            R_xlen_t colsElement = cols[jj];
            if (!colsHasNA || colsElement != NA_R_XLEN_T) {
                colBegin1 = colsElement * nrow;
            } else {
                colBegin1 = NA_R_XLEN_T;
            }
        }
      for (ii=0; ii < nrow_ans; ii++) {
          if (norows) {
              if (!colsHasNA || colBegin1 != NA_R_XLEN_T){
                  /*
                   * In this special case, we can eliminate
                   * the possibility of having NA indices
                   */
                  idx = colBegin1 + ii;
                  xvalue1 = x[idx];
              } else {
                  xvalue1 = X_NA;
              }
          } else if (!rowsHasNA && !colsHasNA) {
              idx = colBegin1 + rows[ii];
              xvalue1 = x[idx];
          } else {
              idx = R_INDEX_OP(colBegin1, +, (rows[ii]), 1, 1);
              xvalue1 = R_INDEX_GET(x, idx, X_NA, 1);
          }
        if (norows) {
            if (!colsHasNA || colBegin1 != NA_R_XLEN_T){
                /*
                 * In this special case, we can eliminate
                 * the possibility of having NA indices
                 */
                idx = colBegin1 + ii + lag;
                xvalue2 = x[idx];
            } else {
                xvalue2 = X_NA;
            }
        } else if (!rowsHasNA && !colsHasNA) {
            idx = colBegin1 + rows[ii+lag];
            xvalue2 = x[idx];
        } else {
            idx = R_INDEX_OP(colBegin1, +, (rows[ii+lag]), 1, 1);
            xvalue2 = R_INDEX_GET(x, idx, X_NA, 1);
        }
        ans[ss++] = X_DIFF(xvalue2, xvalue1);
      }
    }
  }
}


void CONCAT_MACROS(rowDiffs, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, 
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, 
                        int byrow, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans) {
  R_xlen_t nrow_tmp, ncol_tmp;
  X_C_TYPE *tmp = NULL;

  /* Nothing to do? */
  if (ncol_ans <= 0 || nrow_ans <= 0) return;

  /* Special case (difference == 1) */
  if (differences == 1) {
    DIFF_X_MATRIX_TYPE(x, nrow, rows, nrows, rowsHasNA, cols, ncols, colsHasNA, byrow, lag, ans, nrow_ans, ncol_ans);
  } else {
    /* Allocate temporary work matrix (to hold intermediate differences) */
    if (byrow) {
      nrow_tmp = nrows;
      ncol_tmp = ncols - lag;
    } else {
      nrow_tmp = nrows - lag;
      ncol_tmp = ncols;
    }
    tmp = Calloc(nrow_tmp*ncol_tmp, X_C_TYPE);

    /* (a) First order of differences */
    DIFF_X_MATRIX_TYPE(x, nrow, rows, nrows, rowsHasNA, cols, ncols, colsHasNA, byrow, lag, tmp, nrow_tmp, ncol_tmp);
    if (byrow) {
      ncol_tmp = ncol_tmp - lag;
    } else {
      nrow_tmp = nrow_tmp - lag;
    }

    /* (a) Intermediate orders of differences */
    while (--differences > 1) {
      DIFF_X_MATRIX(tmp, nrow_tmp, ncol_tmp, byrow, lag, tmp, nrow_tmp, ncol_tmp);
      if (byrow) {
        ncol_tmp = ncol_tmp - lag;
      } else {
        nrow_tmp = nrow_tmp - lag;
      }
    }

    /* (c) Last order of differences */
    DIFF_X_MATRIX(tmp, nrow_tmp, ncol_tmp, byrow, lag, ans, nrow_ans, ncol_ans);

    /* Deallocate temporary work matrix */
    Free(tmp);
  } /* if (differences ...) */
}


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
