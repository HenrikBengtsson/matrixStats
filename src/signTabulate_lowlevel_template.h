/***********************************************************************
 TEMPLATE:
  void signTabulate_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, double *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(signTabulate, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, double *ans) {
  X_C_TYPE xi;
  R_xlen_t ii;
  R_xlen_t nNeg = 0, nZero = 0, nPos = 0, nNA=0;
#if X_TYPE == 'r'
  R_xlen_t nPosInf=0, nNegInf=0;
#endif

  for (ii = 0; ii < nidxs; ii++) {
    xi = R_INDEX_GET(x, ((idxs == NULL) ? (ii) : idxs[ii]), X_NA);
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

  ans[0] = nNeg;
  ans[1] = nZero;
  ans[2] = nPos;
  ans[3] = nNA;
#if X_TYPE == 'r'
  ans[4] = nNegInf;
  ans[5] = nPosInf;
#endif
}


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
