/***********************************************************************
 TEMPLATE:
  void colRanges_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int what, X_C_TYPE *ans)

 GENERATES:
  void colRanges_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, int what, double *ans)
  void colRanges_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int what, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/ 
#include <R_ext/Memory.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h" 

void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int what, int narm, int hasna, X_C_TYPE *ans, int *is_counted) {
  R_xlen_t ii, jj;
  R_xlen_t offset;
  X_C_TYPE value, *mins = NULL, *maxs = NULL;

  /* Rprintf("(nrow,ncol)=(%d,%d), what=%d\n", nrow, ncol, what); */

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  if (hasna) {
    for (jj=0; jj < ncol; jj++) is_counted[jj] = 0;

    /* Missing values */
    if (what == 0) {
      /* colMins() */
      mins = ans;

      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[jj] = value;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) break;
#endif
	    }
	  } else if (!is_counted[jj]) {
            mins[jj] = value;
            is_counted[jj] = 1;
	  } else if (value < mins[jj]) {
            mins[jj] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncol; jj++) {
        if (!is_counted[jj]) {
	  mins[jj] = R_PosInf;
	}
      }
#endif
    } else if (what == 1) {
      /* colMaxs() */
      maxs = ans;
  
      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              maxs[jj] = value;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) break;
#endif
	    }
	  } else if (!is_counted[jj]) {
            maxs[jj] = value;
            is_counted[jj] = 1;
	  } else if (value > maxs[jj]) {
            maxs[jj] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncol; jj++) {
        if (!is_counted[jj]) {
	  maxs[jj] = R_NegInf;
	}
      }
#endif
    } else if (what == 2) {
      /* colRanges() */
      mins = ans;
      maxs = &ans[ncol];
  
      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[jj] = value;
              maxs[jj] = value;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) break;
#endif
	    }
	  } else if (!is_counted[jj]) {
            mins[jj] = value;
            maxs[jj] = value;
            is_counted[jj] = 1;
	  } else if (value < mins[jj]) {
            mins[jj] = value;
	  } else if (value > maxs[jj]) {
            maxs[jj] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncol; jj++) {
        if (!is_counted[jj]) {
          mins[jj] = R_PosInf;
          maxs[jj] = R_NegInf;
        }
      }
#endif
    } /* if (what ...) */
  } else {
    /* No missing values */
    if (what == 0) {
      /* colMins() */
      mins = ans;
  
      /* Initiate results */
      for (jj=0; jj < ncol; jj++) {
        mins[jj] = x[jj];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value < mins[jj]) mins[jj] = value;
        }
      }
    } else if (what == 1) {
      /* colMax() */
      maxs = ans;
  
      /* Initiate results */
      for (jj=0; jj < ncol; jj++) {
        maxs[jj] = x[jj];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value > maxs[jj]) maxs[jj] = value;
        }
      }
    } else if (what == 2) {
      /* colRanges()*/
      mins = ans;
      maxs = &ans[ncol];
  
      /* Initiate results */
      for (jj=0; jj < ncol; jj++) {
        mins[jj] = x[jj];
        maxs[jj] = x[jj];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value < mins[jj]) {
            mins[jj] = value;
          } else if (value > maxs[jj]) {
            maxs[jj] = value;
	  }
        }
      }
    } /* if (what ...) */
  } /* if (narm) */
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
