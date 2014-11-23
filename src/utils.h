#include <Rinternals.h>

inline void assertArgMatrix(SEXP x, SEXP dim) {
  int nrow, ncol;

  /* Argument 'x': */
  if (isMatrix(x)) {
  } else if (isVector(x)) {
  } else {
    error("Argument 'x' must be a matrix or a vector.");
  }

  /* Argument 'dim': */
  if (!isVector(dim) || xlength(dim) != 2 || !isInteger(dim)) {
    error("Argument 'dim' must be an integer vector of length two.");
  }
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];
  if (nrow * ncol != xlength(x)) {
    error("Argument 'dim' does not match length of argument 'x': %d * %d != %d", nrow, ncol, xlength(x));
  }
} /* assertArgMatrix() */ 
