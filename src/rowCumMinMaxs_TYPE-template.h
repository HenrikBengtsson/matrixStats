/***********************************************************************
 TEMPLATE:
  void rowCummins_<Integer|Real>(...)

 GENERATES:
  void rowCummins_Integer(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, double *ans)
  void rowCummins_Real(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, double *ans)

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

#if COMP == '<'
  #define OP <
#elif COMP == '>'
  #define OP >
#endif

void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, int byrow, ANS_C_TYPE *ans) {
  R_xlen_t ii, jj, kk, kk_prev;
  ANS_C_TYPE value;
  int ok;
  int *oks = NULL;

  if (byrow) {
    oks = (int *) R_alloc(nrow, sizeof(int));

    for (kk=0; kk < nrow; kk++) {
      value = (ANS_C_TYPE) x[kk];
      if (ANS_ISNAN(value)) {
        oks[kk] = 0;
        value = ANS_NA;
        ans[kk] = ANS_NA;
      } else {
        oks[kk] = 1;
        ans[kk] = value;
      }
    }

    kk_prev = 0;
    for (jj=1; jj < ncol; jj++) {
      for (ii=0; ii < nrow; ii++) {
        if (oks[ii]) {
          value = (ANS_C_TYPE) x[kk];
          if (ANS_ISNAN(value)) {
            oks[ii] = 0;
            ans[kk] = ANS_NA;
          } else {
            if (value OP ans[kk_prev]) {
              ans[kk] = value;
            } else {
              ans[kk] = (ANS_C_TYPE) ans[kk_prev];
            }
	  }
	} else {
          ans[kk] = ANS_NA;
	}
        kk++;
        kk_prev++;

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncol; jj++) {
      value = (ANS_C_TYPE) x[kk];
      if (ANS_ISNAN(value)) {
        ok = 0;
        value = ANS_NA;
        ans[kk] = ANS_NA;
      } else {
        ok = 1;
        ans[kk] = value;
      }
      kk_prev = kk;
      kk++;

      for (ii=1; ii < nrow; ii++) {
        if (ok) {
          value = (ANS_C_TYPE) x[kk];
          if (ANS_ISNAN(value)) {
            ok = 0;
            value = ANS_NA;
            ans[kk] = ANS_NA;
          } else {
            if (value OP ans[kk_prev]) {
              ans[kk] = value;
            } else {
              ans[kk] = (ANS_C_TYPE) ans[kk_prev];
            }
	  }
          kk++;
          kk_prev++;
	} else {
          ans[kk] = ANS_NA;
          kk++;
	}

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */
}

#undef OP

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-26 [HB]
  o Created from rowVars_TYPE-template.h.
 **************************************************************************/
