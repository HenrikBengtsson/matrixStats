#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD x_OP_y

#undef METHOD


SEXP x_OP_y(SEXP x, SEXP y, SEXP dim, SEXP naRm, SEXP hasNA) {
  int narm, hasna;
  SEXP ans;
  R_xlen_t nrow, ncol;
  double *xx, *yy, *aa; xvalue, yvalue;
  R_xlen_t nx, ny, na, ai, xi, yi;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  PROTECT(ans = allocMatrix(REALSXP, nrow, ncol));
  aa = REAL(x);

  xx = REAL(x);
  nx = xlength(x);

  yy = REAL(y);
  ny = xlength(y);

  na = nx;
  if (ny > nx) na = ny;

  xi = 0;
  yi = 0;

  for (ai=0; ai < na; ai++) {
    xvalue = xx[xi];
    yvalue = yy[yi];
    if (narm) {
      if (X_ISNAN(xvalue)) {
        value = yvalue;
      } else if (X_ISNAN(yvalue)) {
        value = xvalue;
      } else {
        value = xvalue * yvalue;
      }
    } else {
      value = xvalue * yvalue;
    }
    aa[ai] = value;
    xi++;
    yi++;
    if (xi > nx) xi = 0;
    if (yi > ny) yi = 0;
  } /* for (ai ...) */

  UNPROTECT(1);

  return(ans);
} /* x_OP_y() */
