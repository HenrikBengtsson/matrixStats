/***********************************************************************
 TEMPLATE:
  void rowCumsums_<Integer|Real>(...)

 GENERATES:
  void rowCumsums_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)
  void rowCumsums_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)

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


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, ANS_C_TYPE *ans) {
  R_xlen_t ii, jj, kk, kk_prev;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;
  LDOUBLE sum;
  double value_d, mu_d, sigma2_d;
#if ANS_TYPE == 'i'
  int ok = 1; /* OK, i.e. no integer overflow yet? */
  double R_INT_MIN_d = (double)R_INT_MIN, 
         R_INT_MAX_d = (double)R_INT_MAX;
#endif

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  if (byrow) {
    for (kk=0; kk < nrow; kk++) {
      ans[kk] = (ANS_C_TYPE) x[kk];
    }

    kk_prev = 0;
    for (jj=1; jj < ncol; jj++) {
      for (ii=0; ii < nrow; ii++) {
        if (kk % 1000 == 0)
          R_CheckUserInterrupt();
 #if ANS_TYPE == 'i'
        if (ok) {
          sum = (LDOUBLE) ans[kk_prev] + (LDOUBLE) x[kk];
          /* Integer overflow? */
          if (sum < R_INT_MIN_d || sum > R_INT_MAX_d) {
            ok = 0;
            sum = NA_REAL;
          }
	} else {
          sum = NA_REAL;
	}
#else
        sum = (LDOUBLE) ans[kk_prev] + (LDOUBLE) x[kk];
#endif
        ans[kk] = (ANS_C_TYPE) sum;

        kk++;        
        kk_prev++;        
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncol; jj++) {
      sum = 0;
      for (ii=0; ii < nrow; ii++) {
        if (kk % 1000 == 0)
          R_CheckUserInterrupt();
 #if ANS_TYPE == 'i'
        if (ok) {
          sum += (LDOUBLE) x[kk];
          /* Integer overflow? */
          if (sum < R_INT_MIN_d || sum > R_INT_MAX_d) {
            ok = 0;
            sum = NA_REAL;
          }
	} else {
          sum = NA_REAL;
	}
#else
        sum += x[kk];
#endif
        ans[kk] = (ANS_C_TYPE) sum;

        kk++;        
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */

#if ANS_TYPE == 'i'
  /* Warn on integer overflow? */
  if (!ok) {
    warning("Integer overflow. Detected one or more elements whose absolute values were out of the range [%d,%d] that can be used to for integers. Such values are set to NA_integer_.", R_INT_MIN, R_INT_MAX);
  }
#endif 
}

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-26 [HB]
  o Created from rowVars_TYPE-template.h.
 **************************************************************************/
