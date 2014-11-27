/***********************************************************************
 TEMPLATE:
  void rowCumprods_<Integer|Real>(...)

 GENERATES:
  void rowCumprods_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)
  void rowCumprods_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int narm, int hasna, int byrow, double *ans)

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

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, ANS_C_TYPE *ans) {
  R_xlen_t ii, jj, kk, kk_prev;
  LDOUBLE value;

#if ANS_TYPE == 'i'
  int ok = 1; /* OK, i.e. no integer overflow yet? */
  double R_INT_MIN_d = (double)R_INT_MIN, 
         R_INT_MAX_d = (double)R_INT_MAX;
#endif

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
          value = (LDOUBLE) ans[kk_prev] * (LDOUBLE) x[kk];
          /* Integer overflow? */
          if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
            ok = 0;
            value = NA_REAL;
          }
	} else {
          value = NA_REAL;
	}
#else
        value = (LDOUBLE) ans[kk_prev] * (LDOUBLE) x[kk];
#endif
        ans[kk] = (ANS_C_TYPE) value;

        kk++;        
        kk_prev++;        
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncol; jj++) {
      value = 1;
      for (ii=0; ii < nrow; ii++) {
        if (kk % 1000 == 0)
          R_CheckUserInterrupt();
 #if ANS_TYPE == 'i'
        if (ok) {
          value *= (LDOUBLE) x[kk];
          /* Integer overflow? */
          if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
            ok = 0;
            value = NA_REAL;
          }
	} else {
          value = NA_REAL;
	}
#else
        value *= x[kk];
#endif
        ans[kk] = (ANS_C_TYPE) value;

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
