/***********************************************************************
 TEMPLATE:
  SEXP signTabulate_<Integer|Real>(X_C_TYPE *x, int nx)

 GENERATES:
  SEXP signTabulate_Real(double *x, int nx)
  SEXP signTabulate_Integer(int *x, int nx)

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


SEXP METHOD_NAME(X_C_TYPE *x, R_xlen_t nx) {
  SEXP ans;
  double *ansp;
  X_C_TYPE xi;
  R_xlen_t ii;
  R_xlen_t nNeg = 0, nZero = 0, nPos = 0, nNA=0;
#if X_TYPE == 'r'
  R_xlen_t nPosInf=0, nNegInf=0;
#endif

  for (ii = 0; ii < nx; ii++) { 
    xi = x[ii];
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

#if X_TYPE == 'r'
  PROTECT(ans = allocVector(REALSXP, 6));
#else
  PROTECT(ans = allocVector(REALSXP, 4));
#endif
  ansp = REAL(ans);
  ansp[0] = nNeg;
  ansp[1] = nZero;
  ansp[2] = nPos;
  ansp[3] = nNA;
#if X_TYPE == 'r'
  ansp[4] = nNegInf;
  ansp[5] = nPosInf;
#endif
  UNPROTECT(1);

  return(ans);
}

/* Undo template macros */
#include "templates-types_undef.h" 


/***************************************************************************
 HISTORY:
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
