#include <Rdefines.h>
#include "000.types.h"
#include "x_OP_y_lowlevel.h"

SEXP x_OP_y(SEXP x, SEXP y, SEXP dim, SEXP operator, SEXP xrows, SEXP xcols, SEXP yidxs, SEXP commute, SEXP naRm, SEXP hasNA, SEXP byRow) {
  SEXP ans = NILSXP;
  int narm, hasna, byrow, commute2;
  int op;
  R_xlen_t nrow, ncol, ny;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'y': */
  assertArgVector(y, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "y");
  ny = xlength(y);

  /* Argument 'byRow': */
  byrow = asLogicalNoNA(byRow, "byrow");

  /* Argument 'commute2': */
  commute2 = asLogicalNoNA(commute, "commute");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'xrows', 'xcols' and 'yidxs': */
  R_xlen_t nxrows, nxcols, nyidxs;
  int xrowsType, xcolsType, yidxsType;
  void *cxrows = validateIndices(xrows, nrow, 0, &nxrows, &xrowsType);
  void *cxcols = validateIndices(xcols, ncol, 0, &nxcols, &xcolsType);
  void *cyidxs = validateIndices(yidxs, ny, 1, &nyidxs, &yidxsType);

  /* Argument 'operator': */
  op = asInteger(operator);


  if (op == 1) {
    /* Addition */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Add_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && (isInteger(y) || isLogical(y))) {
        x_OP_y_Add_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if ((isInteger(x) || isLogical(x)) && isReal(y)) {
        x_OP_y_Add_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Add_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } else if (op == 2) {
    /* Subtraction */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Sub_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && (isInteger(y) || isLogical(y))) {
        x_OP_y_Sub_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if ((isInteger(x) || isLogical(x)) && isReal(y)) {
        x_OP_y_Sub_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Sub_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } else if (op == 3) {
    /* Multiplication */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Mul_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && (isInteger(y) || isLogical(y))) {
        x_OP_y_Mul_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if ((isInteger(x) || isLogical(x)) && isReal(y)) {
        x_OP_y_Mul_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Mul_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } else if (op == 4) {
    /* Division */
    PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
    if (isReal(x) && isReal(y)) {
      x_OP_y_Div_dbl_dbl[xrowsType][xcolsType][yidxsType](
          REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if (isReal(x) && (isInteger(y) || isLogical(y))) {
      x_OP_y_Div_dbl_int[xrowsType][xcolsType][yidxsType](
          REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if ((isInteger(x) || isLogical(x)) && isReal(y)) {
      x_OP_y_Div_int_dbl[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if ((isInteger(x) || isLogical(x)) && (isInteger(y) || isLogical(y))) {
      x_OP_y_Div_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    }
    UNPROTECT(1);
  } else {
    error("Unknown value on argument 'OP': %dL", op);
  }

  return(ans);
} /* x_OP_y() */
