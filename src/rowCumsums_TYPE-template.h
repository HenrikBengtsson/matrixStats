/***********************************************************************
 TEMPLATE:
  void rowCumsums_<Integer|Real>(...)

 GENERATES:
  void rowCumsums_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, double *ans)
  void rowCumsums_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, double *ans)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, ANS_C_TYPE *ans) {
  R_xlen_t ii, jj, kk, kk_prev;
  LDOUBLE value;

#if ANS_TYPE == 'i'
  double R_INT_MIN_d = (double)R_INT_MIN, 
         R_INT_MAX_d = (double)R_INT_MAX;
  /* OK, i.e. no integer overflow yet? */
  int warn = 0, ok, *oks = NULL;
#endif

  if (nrow == 0 || ncol == 0) return;

  if (byrow) {
#if ANS_TYPE == 'i'
    oks = (int *) R_alloc(nrow, sizeof(int));
#endif

    for (kk=0; kk < nrow; kk++) {
      ans[kk] = (ANS_C_TYPE) x[kk];
#if ANS_TYPE == 'i'
      oks[kk] = !X_ISNA(x[kk]);
#endif
    }

    kk_prev = 0;
    for (jj=1; jj < ncol; jj++) {
      for (ii=0; ii < nrow; ii++) {
#if ANS_TYPE == 'i'
        if (oks[ii]) {
          /* Missing value? */
          if (X_ISNA(x[kk])) {
            oks[ii] = 0;
            ans[kk] = ANS_NA;
          } else {
            value = (LDOUBLE) ans[kk_prev] + (LDOUBLE) x[kk];
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              oks[ii] = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
	    }
  	  }
	} else {
          ans[kk] = ANS_NA;
	}
#else
        ans[kk] = (ANS_C_TYPE) ((LDOUBLE) ans[kk_prev] + (LDOUBLE) x[kk]);
#endif

        kk++;        
        kk_prev++;        

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncol; jj++) {
      value = 0;
#if ANS_TYPE == 'i'
      ok = 1;
#endif
      for (ii=0; ii < nrow; ii++) {
#if ANS_TYPE == 'i'
        if (ok) {
          /* Missing value? */
          if (X_ISNA(x[kk])) {
            ok = 0;
            ans[kk] = ANS_NA;
          } else {
            value += (LDOUBLE) x[kk];
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              ok = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
	    }
  	  }
	} else {
          ans[kk] = ANS_NA;
	}
#else
        value += x[kk];
        ans[kk] = (ANS_C_TYPE) value;
#endif

        kk++;        

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */

#if ANS_TYPE == 'i'
  /* Warn on integer overflow? */
  if (warn) {
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
