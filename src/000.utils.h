#include <R.h>
#include "000.types.h"

#define R_TYPE_LGL  1 /* 0b0001 */
#define R_TYPE_INT  2 /* 0b0010 */
#define R_TYPE_REAL 4 /* 0b0100 */


static R_INLINE void assertArgVector(SEXP x, int type, char *xlabel) {
  /* Argument 'x': */
  if (!isVectorAtomic(x)) {
    error("Argument '%s' must be a matrix or a vector", xlabel);
  }
  switch (TYPEOF(x)) {
    case LGLSXP:
      if (!(type & R_TYPE_LGL))
        error("Argument '%s' cannot be logical", xlabel);
      break;

    case INTSXP:
      if (!(type & R_TYPE_INT))
        error("Argument '%s' cannot be integer", xlabel);
      break;

    case REALSXP:
      if (!(type & R_TYPE_REAL))
        error("Argument '%s' cannot be numeric", xlabel);
      break;
      
    default:
      error("Argument '%s' must be of type logical, integer or numeric, not '%s'", xlabel, type2char(TYPEOF(x)));
  } /* switch */
} /* assertArgVector() */


static R_INLINE void assertArgDim(SEXP dim, double max, char *maxlabel) {
  double nrow, ncol;
  const char *dimlabel = "dim.";

  /* Argument 'dim': */
  if (!isVectorAtomic(dim) || xlength(dim) != 2 || !isInteger(dim)) {
    error("Argument '%s' must be an integer vector of length two", dimlabel);
  }
  nrow = (double)INTEGER(dim)[0];
  ncol = (double)INTEGER(dim)[1];
  if (nrow < 0) {
    error("Argument '%s' specifies a negative number of rows (%s[1]): %g", dimlabel, dimlabel, nrow);
  } else if (ncol < 0) {
    error("Argument '%s' specifies a negative number of columns (%s[2]): %g", dimlabel, dimlabel, ncol);
  } else if (nrow * ncol != max) {
    error("Argument '%s' does not match length of argument '%s': %g * %g != %g", dimlabel, maxlabel, nrow, ncol, max);
  }
} /* assertArgDim() */


static R_INLINE void assertArgMatrix(SEXP x, SEXP dim, int type, char *xlabel) {
  /* Argument 'x': */
  if (isMatrix(x)) {
  } else if (isVectorAtomic(x)) {
  } else {
    error("Argument '%s' must be a matrix or a vector", xlabel);
  }
  switch (TYPEOF(x)) {
    case LGLSXP:
      if (!(type & R_TYPE_LGL))
        error("Argument '%s' cannot be logical", xlabel);
      break;

    case INTSXP:
      if (!(type & R_TYPE_INT))
        error("Argument '%s' cannot be integer", xlabel);
      break;

    case REALSXP:
      if (!(type & R_TYPE_REAL))
        error("Argument '%s' cannot be numeric", xlabel);
      break;
      
    default:
      error("Argument '%s' must be of type logical, integer or numeric, not '%s'", xlabel, type2char(TYPEOF(x)));
  } /* switch */

  /* Argument 'dim': */
  assertArgDim(dim, xlength(x), "x");
} /* assertArgMatrix() */


static R_INLINE int asLogicalNoNA(SEXP x, char *xlabel) {
  int value = 0;

  if (length(x) != 1)
    error("Argument '%s' must be a single value", xlabel);
  if (isLogical(x)) {
    value = asLogical(x);
  } else if (isInteger(x)) {
    value = asInteger(x);
  } else {
    error("Argument '%s' must be a logical", xlabel);
  }
  if (value != TRUE && value != FALSE)
    error("Argument '%s' must be either TRUE or FALSE", xlabel);

  return value;
} /* asLogicalNoNA() */


/* Retrieve the 'i'th element of 'x' as R_xlen_t */
static R_INLINE R_xlen_t asR_xlen_t(SEXP x, R_xlen_t i) {
  int mode = TYPEOF(x);
  switch (mode) {
    case INTSXP: return INTEGER(x)[i];
    case REALSXP: return REAL(x)[i];
    default: error("only integer and numeric are supported, not '%s'", type2char(TYPEOF(x)));
  }
  return 0;
} /* asR_xlen_t() */


/* Specified in validateIndices.c */
R_xlen_t *validateIndicesCheckNA(SEXP idxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs, int *hasna);


R_xlen_t *validateIndices(SEXP idxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs);


static R_INLINE int int_from_dbl(double x) {
  if (ISNAN(x)) return NA_INTEGER;
  if (x > INT_MAX || x <= INT_MIN) return NA_INTEGER;
  return x;
} /* int_from_dbl() */


static R_INLINE double dbl_from_int(int x) {
  if (x == NA_INTEGER) return NA_REAL;
  return x;
} /* dbl_from_int() */


#define SWAP(type, x, y) { \
type tmp = x;              \
x = y;                     \
y = tmp;                   \
}
