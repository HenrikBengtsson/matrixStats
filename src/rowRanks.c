/***************************************************************************
 Public methods:
 SEXP rowRanks(SEXP x, SEXP tiesMethod)
 SEXP colRanks(SEXP x, SEXP tiesMethod)

 To do: Add support for missing values.

 Hector Corrada Bravo
 Henrik Bengtsson
 **************************************************************************/
#include <Rinternals.h>

#include "rowRanks_Integer.h"
#include "rowRanks_Real.h"

SEXP rowRanks(SEXP x, SEXP tiesMethod) {
  SEXP dim, ans = NILSXP;
  int nrow, ncol;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Get dimensions of 'x'. */
  dim = getAttrib(x, R_DimSymbol);
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  PROTECT(ans = allocMatrix(INTSXP, nrow, ncol));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowRanks_Real(REAL(x), nrow, ncol, 0, INTEGER(ans));
  } else if (isInteger(x)) {
    rowRanks_Integer(INTEGER(x), nrow, ncol, 0, INTEGER(ans));
  } else {
    error("Argument 'x' must be numeric.");
  }

  UNPROTECT(1);

  return(ans);
} // rowRanks()


/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
