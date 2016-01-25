#include <R.h>
#include "types.h"

#define R_TYPE_LGL  1 /* 0b0001 */
#define R_TYPE_INT  2 /* 0b0010 */
#define R_TYPE_REAL 4 /* 0b0100 */


static R_INLINE void assertArgVector(SEXP x, int type, char *xlabel) {
  /* Argument 'x': */
  if (!isVectorAtomic(x)) {
    error("Argument '%s' must be a matrix or a vector.", xlabel);
  }
  switch (TYPEOF(x)) {
    case LGLSXP:
      if (!(type & R_TYPE_LGL))
        error("Argument '%s' cannot be logical.", xlabel);
      break;

    case INTSXP:
      if (!(type & R_TYPE_INT))
        error("Argument '%s' cannot be integer.", xlabel);
      break;

    case REALSXP:
      if (!(type & R_TYPE_REAL))
        error("Argument '%s' cannot be numeric.", xlabel);
      break;
  } /* switch */
} /* assertArgVector() */


static R_INLINE void assertArgDim(SEXP dim, double max, char *maxlabel) {
  double nrow, ncol;

  /* Argument 'dim': */
  if (!isVectorAtomic(dim) || xlength(dim) != 2 || !isInteger(dim)) {
    error("Argument 'dim' must be an integer vector of length two.");
  }
  nrow = (double)INTEGER(dim)[0];
  ncol = (double)INTEGER(dim)[1];
  if (nrow < 0) {
    error("Argument 'dim' specifies a negative number of rows (dim[1]): %d", nrow); 
  } else if (ncol < 0) {
    error("Argument 'dim' specifies a negative number of columns (dim[2]): %d", ncol); 
  } else if (nrow * ncol != max) {
    error("Argument 'dim' does not match length of argument '%s': %g * %g != %g", maxlabel, nrow, ncol, max);
  }
} /* assertArgDim() */


static R_INLINE void assertArgMatrix(SEXP x, SEXP dim, int type, char *xlabel) {
  /* Argument 'x': */
  if (isMatrix(x)) {
  } else if (isVectorAtomic(x)) {
  } else {
    error("Argument '%s' must be a matrix or a vector.", xlabel);
  }
  switch (TYPEOF(x)) {
    case LGLSXP:
      if (!(type & R_TYPE_LGL))
        error("Argument '%s' cannot be logical.", xlabel);
      break;

    case INTSXP:
      if (!(type & R_TYPE_INT))
        error("Argument '%s' cannot be integer.", xlabel);
      break;

    case REALSXP:
      if (!(type & R_TYPE_REAL))
        error("Argument '%s' cannot be numeric.", xlabel);
      break;
  } /* switch */

  /* Argument 'dim': */
  assertArgDim(dim, xlength(x), "x");
} /* assertArgMatrix() */ 


static R_INLINE int asLogicalNoNA(SEXP x, char *xlabel) {
  int value = 0;

  if (length(x) != 1)
    error("Argument '%s' must be a single value.", xlabel);
  if (isLogical(x)) {
    value = asLogical(x);
  } else if (isInteger(x)) {
    value = asInteger(x);
  } else {
    error("Argument '%s' must be a logical.", xlabel);
  }
  if (value != TRUE && value != FALSE)
    error("Argument '%s' must be either TRUE or FALSE.", xlabel); 
  
  return value;
} /* asLogicalNoNA() */


/* Retrieve the 'i'th element of 'x' as R_xlen_t */
static R_INLINE R_xlen_t asR_xlen_t(SEXP x, R_xlen_t i) {
  int mode = TYPEOF(x);
  switch (mode) {
    case INTSXP: return INTEGER(x)[i];
    case REALSXP: return REAL(x)[i];
    default: error("only integer and numeric are supported.");
  }
  return 0;
} /* asR_xlen_t() */


/* Specified in validateIndices.c */
void *validateIndicesCheckNA(SEXP idxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs, int *type, int *hasna);


void *validateIndices(SEXP idxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs, int *type);


static R_INLINE int IntegerFromReal(double x) {
  if (ISNAN(x)) return NA_INTEGER;
  if (x > INT_MAX || x <= INT_MIN) return NA_INTEGER;
  return x;
} /* IntegerFromReal() */


static R_INLINE double RealFromInteger(int x) {
  if (x == NA_INTEGER) return NA_REAL;
  return x;
} /* RealFromInteger() */


#define SWAP(type, x, y) { \
type tmp = x;              \
x = y;                     \
y = tmp;                   \
}
