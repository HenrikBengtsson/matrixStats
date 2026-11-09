#include <float.h>
#include <Rdefines.h>
#include "000.types.h"
#include "directProds_lowlevel.h"

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
  const int byrow = asLogicalNoNA(byRow, "byRow");
  const R_xlen_t nrow = nrows(x), ncol = ncols(x);
  SEXP ans = PROTECT(allocVector(REALSXP, byrow ? nrow : ncol));

  /* Dispatch once, following the other typed low-level matrix kernels. */
  if (isReal(x)) {
    directProds_dbl(REAL(x), nrow, ncol, remove, byrow, REAL(ans));
  } else if (isInteger(x) || isLogical(x)) {
    directProds_int(INTEGER(x), nrow, ncol, remove, byrow, REAL(ans));
  }
  UNPROTECT(1);
  return ans;
}
