/***********************************************************************
 TEMPLATE:
  SEXP rowCounts_<Integer|Real>(SEXP x, int nrow, int ncol, SEXP value, int narm, int hasna)

 GENERATES:
  SEXP rowCounts_Real(SEXP x, int nrow, int ncol, SEXP value, int narm, int hasna)
  SEXP rowCounts_Integer(SEXP x, int nrow, int ncol, SEXP value, int narm, int hasna)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/ 
#include <Rdefines.h>
#include <Rmath.h>

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "templates-types.h" 


SEXP METHOD_NAME(SEXP x, int nrow, int ncol, SEXP value, int narm, int hasna) {
  SEXP ans;
  int ii, jj;
  int colOffset, count;
  X_C_TYPE *xx, xvalue, vvalue;

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(INTSXP, nrow));
  for(ii=0; ii < nrow; ii++) INTEGER(ans)[ii] = 0;

  xx = X_IN_C(x);
  vvalue = X_IN_C(value)[0];

  /* Count missing values? [sic!] */
  if (X_ISNAN(vvalue)) {
    for(jj=0; jj < ncol; jj++) {
      colOffset = (int)jj*nrow;
      for(ii=0; ii < nrow; ii++) {
        xvalue = xx[ii+colOffset];
        if (X_ISNAN(xvalue)) {
          INTEGER(ans)[ii] = INTEGER(ans)[ii] + 1;
        }
      }
    }
  } else {
    for(jj=0; jj < ncol; jj++) {
      colOffset = (int)jj*nrow;
      for(ii=0; ii < nrow; ii++) {
        count = INTEGER(ans)[ii];
        /* Nothing more to do on this row? */
        if (count == NA_INTEGER) continue;

        xvalue = xx[ii+colOffset];
        if (xvalue == vvalue) {
          INTEGER(ans)[ii] = count + 1;
        } else {
          if (!narm && X_ISNAN(xvalue)) {
            INTEGER(ans)[ii] = NA_INTEGER;
            continue;
	  }
	}
      }
    }
  }

  UNPROTECT(1);

  return(ans);
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
