#include <float.h>
#include <Rdefines.h>
#include "000.utils.h"

/* Match the accumulator used by the running R, including its exponent range. */
SEXP directProdsFormat(void) {
  SEXP format = PROTECT(allocVector(INTSXP, 3));
  INTEGER(format)[0] = LDBL_MANT_DIG;
  INTEGER(format)[1] = LDBL_MIN_EXP - 1;
  INTEGER(format)[2] = LDBL_MAX_EXP;
  UNPROTECT(1);
  return format;
}

SEXP directProds(SEXP x, SEXP naRm, SEXP byRow) {
  const int type = TYPEOF(x);
  if (!isMatrix(x) || (type != REALSXP && type != INTSXP && type != LGLSXP))
    error("Expected a double, integer or logical matrix");
  const int remove = asLogicalNoNA(naRm, "na.rm");
  const int rows = asLogicalNoNA(byRow, "byRow");
  const R_xlen_t nr = nrows(x), nc = ncols(x);
  const R_xlen_t groups = rows ? nr : nc, width = rows ? nc : nr;
  const R_xlen_t stride = rows ? nr : 1;
  SEXP ans = PROTECT(allocVector(REALSXP, groups));
  double *out = REAL(ans);
  const double *reals = type == REALSXP ? REAL(x) : NULL;
  const int *ints = type == INTSXP ? INTEGER(x) : type == LGLSXP ? LOGICAL(x) : NULL;

  for (R_xlen_t g = 0; g < groups; ++g) {
    R_CHECK_USER_INTERRUPT(g);
    R_xlen_t i = rows ? g : g * nr;
    long double product = 1.0L;
    if (type == REALSXP) {
      for (R_xlen_t k = 0; k < width; ++k, i += stride) {
        if (k && k % 1048576 == 0) R_CheckUserInterrupt();
        if (!remove || !ISNAN(reals[i])) product *= reals[i];
      }
    } else {
      for (R_xlen_t k = 0; k < width; ++k, i += stride) {
        if (k && k % 1048576 == 0) R_CheckUserInterrupt();
        if (ints[i] == NA_INTEGER) {
          if (remove) continue;
          product = NA_REAL;
          break;
        }
        product *= ints[i];
        if (ISNAN(product)) {
          product = NA_REAL;
          break;
        }
      }
    }
    if (product > DBL_MAX) out[g] = R_PosInf;
    else if (product < -DBL_MAX) out[g] = R_NegInf;
    else out[g] = (double)product;
  }
  UNPROTECT(1);
  return ans;
}
