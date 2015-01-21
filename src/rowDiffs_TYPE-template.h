/***********************************************************************
 TEMPLATE:
  void rowDiffs_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>


#if X_TYPE == 'i'
  static R_INLINE int diff_int(int a, int b) {
    if (X_ISNA(a) || X_ISNA(b)) return(NA_INTEGER);
    return a-b;
  }
  #define X_DIFF diff_int
  #define DIFF_X_MATRIX diff_matrix_int
#elif X_TYPE == 'r'
  #define X_DIFF(a,b) a-b
  #define DIFF_X_MATRIX diff_matrix_double
#endif


static R_INLINE void DIFF_X_MATRIX(X_C_TYPE *x, int nrow_x, int ncol_x, int byrow, int lag, X_C_TYPE *y, int nrow_y, int ncol_y) {
  int ii, jj, ss = 0, tt = 0, uu;
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
	/*	Rprintf("y[%d] = x[%d] - x[%d] = %g - %g = %g\n", ss, uu, tt, (double)x[uu], (double)x[tt], (double)X_DIFF(x[uu], x[tt]));  */
        y[ss++] = X_DIFF(x[uu++], x[tt++]);
      }
      tt += lag;
      uu += lag;
    }
  }
}


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans) {
  R_xlen_t nrow_tmp, ncol_tmp;
  int ii, jj, ss, tt, uu;
  X_C_TYPE *tmp = NULL;

  /* Nothing to do? */
  if ((byrow && ncol_ans <= 0) || (!byrow && nrow_ans <= 0)) return;

  /* Special case (difference == 1) */
  if (differences == 1) {
    DIFF_X_MATRIX(x, nrow, ncol, byrow, lag, ans, nrow_ans, ncol_ans);
  } else {
    /* Allocate temporary work matrix (to hold intermediate differences) */
    if (byrow) {
      nrow_tmp = nrow;
      ncol_tmp = ncol - lag;
    } else {
      nrow_tmp = nrow - lag;
      ncol_tmp = ncol;
    }
    tmp = Calloc(nrow_tmp*ncol_tmp, X_C_TYPE);

    /* (a) First order of differences */ 
    DIFF_X_MATRIX(x, nrow, ncol, byrow, lag, tmp, nrow_tmp, ncol_tmp);
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


#undef X_DIFF
#undef DIFF_X_MATRIX

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2014-12-29 [HB]
 o Created.
 **************************************************************************/
