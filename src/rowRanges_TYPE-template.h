/***********************************************************************
 TEMPLATE:
  void rowRanges_<Integer|Real>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int what, X_C_TYPE *ans)

 GENERATES:
  void rowRanges_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, int what, double *ans)
  void rowRanges_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int what, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQ() by R. Gentleman.
  Template by Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2007-2014
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
  int *skip = NULL;

  /* Rprintf("(nrow,ncol)=(%d,%d), what=%d\n", nrow, ncol, what); */

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  if (hasna) {
    skip = (int *) R_alloc(nrow, sizeof(int));
    for (ii=0; ii < nrow; ii++) {
      is_counted[ii] = 0;
      skip[ii] = 0;
    }

    /* Missing values */
    if (what == 0) {
      /* rowMins() */
      mins = ans;

      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          if (!narm && skip[ii]) continue;

          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
	    }
	  } else if (!is_counted[ii]) {
            mins[ii] = value;
            is_counted[ii] = 1;
	  } else if (value < mins[ii]) {
            mins[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrow; ii++) {
        if (!is_counted[ii]) {
	  mins[ii] = R_PosInf;
	}
      }
#endif
    } else if (what == 1) {
      /* rowMaxs() */
      maxs = ans;
  
      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          if (!narm && skip[ii]) continue;

          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              maxs[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
	    }
	  } else if (!is_counted[ii]) {
            maxs[ii] = value;
            is_counted[ii] = 1;
	  } else if (value > maxs[ii]) {
            maxs[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrow; ii++) {
        if (!is_counted[ii]) {
	  maxs[ii] = R_NegInf;
	}
      }
#endif
    } else if (what == 2) {
      /* rowRanges() */
      mins = ans;
      maxs = &ans[nrow];
  
      for (jj=0; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;

        for (ii=0; ii < nrow; ii++) {
          if (!narm && skip[ii]) continue;

          value = x[ii+offset];

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[ii] = value;
              maxs[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
	    }
	  } else if (!is_counted[ii]) {
            mins[ii] = value;
            maxs[ii] = value;
            is_counted[ii] = 1;
	  } else if (value < mins[ii]) {
            mins[ii] = value;
	  } else if (value > maxs[ii]) {
            maxs[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrow; ii++) {
        if (!is_counted[ii]) {
          mins[ii] = R_PosInf;
          maxs[ii] = R_NegInf;
        }
      }
#endif
    } /* if (what ...) */
  } else {
    /* No missing values */
    if (what == 0) {
      /* rowMins() */
      mins = ans;
  
      /* Initiate reults */
      for (ii=0; ii < nrow; ii++) {
        mins[ii] = x[ii];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value < mins[ii]) mins[ii] = value;
        }
      }
    } else if (what == 1) {
      /* rowMax() */
      maxs = ans;
  
      /* Initiate reults */
      for (ii=0; ii < nrow; ii++) {
        maxs[ii] = x[ii];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value > maxs[ii]) maxs[ii] = value;
        }
      }
    } else if (what == 2) {
      /* rowRanges()*/
      mins = ans;
      maxs = &ans[nrow];
  
      /* Initiate reults */
      for (ii=0; ii < nrow; ii++) {
        mins[ii] = x[ii];
        maxs[ii] = x[ii];
      }
  
      for (jj=1; jj < ncol; jj++) {
        offset = (R_xlen_t)jj*nrow;
        for (ii=0; ii < nrow; ii++) {
          value = x[ii+offset];
          if (value < mins[ii]) {
            mins[ii] = value;
          } else if (value > maxs[ii]) {
            maxs[ii] = value;
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
