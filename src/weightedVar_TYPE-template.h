/***********************************************************************
 TEMPLATE:
  double weightedVar_<Integer|Real>(X_C_TYPE *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, SEXP center)
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"
#include <R_ext/Error.h>

double weightedMean_Real(double *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine);
double weightedMean_Integer(int *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, int refine);

double METHOD_NAME(X_C_TYPE *x, R_xlen_t nx, double *w, R_xlen_t nw, int narm, SEXP center) {
  X_C_TYPE value;
  R_xlen_t i, n;
  double dCenter;

  X_C_TYPE *xx = (X_C_TYPE*) R_alloc(nx, sizeof(X_C_TYPE));
  double *ww = (double*) R_alloc(nw, sizeof(double));

  /* Remove values with zero (and negative) weight. This will:
     1) take care of the case when all weights are zero,
     2) it will most likely speed up the sorting. */
  n = 0;
  for (i = 0; i < nx; ++ i) {
    if (w[i] > 0) {
      ww[n] = w[i];
      xx[n] = x[i];
      ++ n;
    }
  }
  nx = n;
  nw = n;

  /* Drop missing values? */
  if (narm) {
    n = 0;
    for (i = 0; i < nx; ++ i) {
      if (!X_ISNAN(xx[i]) && !ISNAN(ww[i])) {
        ww[n] = ww[i];
        xx[n] = xx[i];
        ++ n;
      }
    }
    nx = n;
    nw = n;
  } else {
    for (i = 0; i < nx; i ++) {
      if (X_ISNAN(xx[i]) || ISNAN(ww[i])) {
        return NA_REAL;
      }
    }
  }

  /* Are any weights Inf? Then treat them with equal weight and all others
     with weight zero. */
  for (i = 0; i < nx; ++ i) {
    if (!R_FINITE(ww[i])) break;
  }
  if (i < nx) {
    n = 0;
    for (; i < nx; ++ i) {
      ww[n] = 1;
      xx[n] = xx[i];
      ++ n;
    }
    nx = n;
    nw = n;
  }

  if (nx == 0L) return NA_REAL;
  if (nx == 1L) return 0;

  /* Arguement: center */
  if (isNull(center)) {
#if X_TYPE == 'i'
    dCenter = weightedMean_Integer(x, nx, w, nw, narm, 1);
#elif X_TYPE == 'r'
    dCenter = weightedMean_Real(x, nx, w, nw, narm, 1);
#endif
  } else {
    dCenter = REAL(center)[0];
  }

  double *fake = (double*) R_alloc(nx, sizeof(double));

  for (i = 0; i < nx; ++ i) {
    value = (LDOUBLE)xx[i];
    fake[i] = (value - dCenter) * (value - dCenter);
  }

  LDOUBLE var = (LDOUBLE)weightedMean_Real(fake, nx, ww, nw, narm, 1);
  var = var * nx / (nx - 1L);

  return (double)var;
}

/* Undo template macros */
#include "templates-types_undef.h"

/***************************************************************************
 HISTORY:
 2015-03-15 [HB]
 o Created.
 **************************************************************************/
