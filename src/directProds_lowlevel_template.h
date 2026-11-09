/***********************************************************************
 TEMPLATE:
  void directProds_<int|dbl>(const X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol,
                            int narm, int byrow, double *ans)
 ***********************************************************************/
#include <float.h>
#include <Rdefines.h>
#include "000.types.h"
#include "000.templates-types.h"

void CONCAT_MACROS(directProds, X_C_SIGNATURE)(const X_C_TYPE *x,
                      R_xlen_t nrow, R_xlen_t ncol,
                      int narm, int byrow, double *ans) {
  const R_xlen_t groups = byrow ? nrow : ncol;
  const R_xlen_t width = byrow ? ncol : nrow;
  const R_xlen_t stride = byrow ? nrow : 1;

  for (R_xlen_t ii = 0; ii < groups; ++ii) {
    R_CHECK_USER_INTERRUPT(ii);
    R_xlen_t idx = byrow ? ii : ii * nrow;
    /* Preserve the accumulator and traversal order of the direct method. */
    long double product = 1.0L;
    for (R_xlen_t jj = 0; jj < width; ++jj, idx += stride) {
      if (jj && jj % 1048576 == 0) R_CheckUserInterrupt();
#if X_TYPE == 'r'
      if (!narm || !X_ISNAN(x[idx])) product *= x[idx];
#else
      if (X_ISNAN(x[idx])) {
        if (narm) continue;
        product = NA_REAL;
        break;
      }
      product *= x[idx];
      if (ISNAN(product)) {
        product = NA_REAL;
        break;
      }
#endif
    }
    if (product > DBL_MAX) ans[ii] = R_PosInf;
    else if (product < -DBL_MAX) ans[ii] = R_NegInf;
    else ans[ii] = (double)product;
  }
}
