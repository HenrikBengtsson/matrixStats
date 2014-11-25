#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD x_OP_y

#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#include "x_OP_y_TYPE-template.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#include "x_OP_y_TYPE-template.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#include "x_OP_y_TYPE-template.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#include "x_OP_y_TYPE-template.h"

#undef METHOD


SEXP x_OP_y(SEXP x, SEXP y, SEXP dim, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int narm, hasna;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'y': */
  assertArgVector(y, (R_TYPE_INT | R_TYPE_REAL), "y");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  
  if (isReal(x) || isReal(y)) {
    PROTECT(ans = allocMatrix(REALSXP, nrow, ncol));
    if (isReal(x) && isReal(y)) {
      x_OP_y_Real_Real(REAL(x), xlength(x), REAL(y), xlength(y), narm, FALSE, REAL(ans), xlength(ans));
    } else if (isReal(x) && isInteger(y)) {
      x_OP_y_Real_Integer(REAL(x), xlength(x), INTEGER(y), xlength(y), narm, FALSE, REAL(ans), xlength(ans));
    } else if (isInteger(x) && isReal(y)) {
      x_OP_y_Integer_Real(INTEGER(x), xlength(x), REAL(y), xlength(y), narm, FALSE, REAL(ans), xlength(ans));
    }
    UNPROTECT(1);
  } else {
    PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));
    x_OP_y_Integer_Integer(INTEGER(x), xlength(x), INTEGER(y), xlength(y), narm, FALSE, INTEGER(ans), xlength(ans));
    UNPROTECT(1);
  }

  return(ans);
} /* x_OP_y() */
