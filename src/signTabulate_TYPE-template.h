/***********************************************************************
 TEMPLATE:
  SEXP signTabulate_<Integer|Real>(SEXP x)

 GENERATES:
  SEXP signTabulate_Real(SEXP x)
  SEXP signTabulate_Integer(SEXP x)

 Arguments:
   The following macros ("arguments") should be defined for the 
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/ 
#include <Rdefines.h>
#include <Rmath.h>
#include <float.h>

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h" 


SEXP METHOD_NAME(SEXP x) {
  SEXP ans;
  X_C_TYPE *xx, xi;
  R_xlen_t ii, n = XLENGTH(x);
  R_xlen_t nNeg = 0, nZero = 0, nPos = 0, nNA=0;
#if X_TYPE == 'r'
  R_xlen_t nPosInf=0, nNegInf=0;
#endif

  xx = X_IN_C(x);
  for (ii = 0; ii < n; ii++) { 
    xi = xx[ii];
    if (X_ISNAN(xi)) {
      nNA++;
    } else if (xi > 0) {
      nPos++;
#if X_TYPE == 'r'
      if (xi == R_PosInf) nPosInf++;
#endif
    } else if (xi < 0) {
      nNeg++;
#if X_TYPE == 'r'
      if (xi == R_NegInf) nNegInf++;
#endif
    } else if (xi == 0) {
      nZero++;
    }
  }

  /* R allocate a double vector of length 1 */
#if X_TYPE == 'r'
  PROTECT(ans = allocVector(REALSXP, 6));
#else
  PROTECT(ans = allocVector(REALSXP, 4));
#endif
  REAL(ans)[0] = nNeg;
  REAL(ans)[1] = nZero;
  REAL(ans)[2] = nPos;
  REAL(ans)[3] = nNA;
#if X_TYPE == 'r'
  REAL(ans)[4] = nNegInf;
  REAL(ans)[5] = nPosInf;
#endif
  UNPROTECT(1);

  return(ans);
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
