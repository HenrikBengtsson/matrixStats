#include <Rinternals.h>

#define R_TYPE_LGL  1 /* 0b0001 */
#define R_TYPE_INT  2 /* 0b0010 */
#define R_TYPE_REAL 4 /* 0b0100 */


inline void assertArgVector(SEXP x, int type, char *xlabel) {
  /* Argument 'x': */
  if (!isVector(x)) {
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


inline void assertArgMatrix(SEXP x, SEXP dim, int type, char *xlabel) {
  double nrow, ncol;

  /* Argument 'x': */
  if (isMatrix(x)) {
  } else if (isVector(x)) {
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
  if (!isVector(dim) || xlength(dim) != 2 || !isInteger(dim)) {
    error("Argument 'dim' must be an integer vector of length two.");
  }
  nrow = (double)INTEGER(dim)[0];
  ncol = (double)INTEGER(dim)[1];
  if (nrow * ncol != (double) xlength(x)) {
    error("Argument 'dim' does not match length of argument '%s': %g * %g != %g", xlabel, nrow, ncol, (double)xlength(x));
  }
} /* assertArgMatrix() */ 



inline int asLogicalNoNA(SEXP x, char *xlabel) {
  int value;

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

