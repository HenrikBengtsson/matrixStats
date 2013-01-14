/***************************************************************************
 Public methods:
 SEXP rowRanks(SEXP x, SEXP tiesMethod)
 SEXP colRanks(SEXP x, SEXP tiesMethod)

 Private methods:
 SEXP rowRanks_Real(SEXP x, int nrow, int ncol, int byrow)
 SEXP rowRanks_Integer(SEXP x, int nrow, int ncol, int byrow)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson (minor)
 **************************************************************************/
#include <Rinternals.h>

SEXP rowRanks_Real(SEXP x, int nrow, int ncol, int byrow);
SEXP rowRanks_Integer(SEXP x, int nrow, int ncol, int byrow);


SEXP rowRanks(SEXP x, SEXP tiesMethod) {
  SEXP ans, dim;
  int nrow, ncol;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Get dimensions of 'x'. */
  PROTECT(dim = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];
  UNPROTECT(1);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowRanks_Real(x, nrow, ncol, 0);
  } else if (isInteger(x)) {
    ans = rowRanks_Integer(x, nrow, ncol, 0);
  } else {
    ans = NULL; // To please compiler
    error("Argument 'x' must be numeric.");
  }

  return(ans);
} // rowRanks()


/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
