/***********************************************************************
 TEMPLATE:
  void rowCounts_<Integer|Real|Logical>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, X_C_TYPE value, int narm, int hasna, int *ans)

 GENERATES:
  void rowCounts_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, double value, int narm, int hasna, int *ans)
  void rowCounts_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int value, int narm, int hasna, int *ans)
  void rowCounts_Logical(int *x, R_xlen_t nrow, R_xlen_t ncol, int value, int narm, int hasna, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i', 'r', or 'l'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/ 
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h" 


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, X_C_TYPE value, int narm, int hasna, int *ans) {
  R_xlen_t ii, jj, kk;
  int count;
  X_C_TYPE xvalue;

  for(ii=0; ii < nrow; ii++) ans[ii] = 0;

  /* Count missing values? [sic!] */
  if (X_ISNAN(value)) {
    kk = 0;
    for(jj=0; jj < ncol; jj++) {
      for(ii=0; ii < nrow; ii++) {
        xvalue = x[kk++];
        if (X_ISNAN(xvalue)) ans[ii] = ans[ii] + 1;
      }
    }
  } else {
    kk = 0;
    for(jj=0; jj < ncol; jj++) {
      for(ii=0; ii < nrow; ii++) {
        count = ans[ii];
        /* Nothing more to do on this row? */
        if (count == NA_INTEGER) continue;

        xvalue = x[kk++];
        if (xvalue == value) {
          ans[ii] = count + 1;
        } else {
          if (!narm && X_ISNAN(xvalue)) {
            ans[ii] = NA_INTEGER;
            continue;
	  }
	}
      }
    }
  }
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2014-11-01 [HB]
  o SPEEDUP: Now using ansp = INTEGER(ans) once and then querying/assigning
    'ansp[i]' instead of INTEGER(ans)[i].
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
