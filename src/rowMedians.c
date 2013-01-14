/***************************************************************************
 Public methods:
 SEXP rowMedians(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colMedians(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Adopted from rowQuantiles.c by R. Gentleman.

 Copyright Henrik Bengtsson, 2007
 **************************************************************************/

/* Include R packages */
#include <Rdefines.h>

SEXP rowMedians_Real(SEXP x, int nrow, int ncol, int narm, int hasna, int byrow);
SEXP rowMedians_Integer(SEXP x, int nrow, int ncol, int narm, int hasna, int byrow);

SEXP rowMedians(SEXP x, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int nrow, ncol;
  int narm;
  int hasna;
  int byrow = 1;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  hasna = LOGICAL(hasNA)[0];

  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowMedians_Real(x, nrow, ncol, narm, hasna, byrow);
  } else if (isInteger(x)) {
    ans = rowMedians_Integer(x, nrow, ncol, narm, hasna, byrow);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be a numeric.");
  }

  UNPROTECT(1);

  return(ans);
} /* rowMedians() */

//HJ begin
SEXP colMedians(SEXP x, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int nrow, ncol;
  int narm;
  int hasna;
  int byrow = 0;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  hasna = LOGICAL(hasNA)[0];

  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[1];
  ncol = INTEGER(ans)[0];

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowMedians_Real(x, nrow, ncol, narm, hasna, byrow);
  } else if (isInteger(x)) {
    ans = rowMedians_Integer(x, nrow, ncol, narm, hasna, byrow);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be a numeric.");
  }

  UNPROTECT(1);

  return(ans);
} /* colMedians() */
//HJ end

/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Using internal arguments 'by_row' instead of 'by_column'.
 2011-12-11 [HB]
 o BUG FIX: rowMediansReal(..., na.rm=TRUE) did not handle NaN:s, only NA:s.
   Note that NaN:s does not exist for integers.
 2011-10-12 [HJ]
 o Added colMedians().
 o Now rowMediansInteger/Real() can operate also by columns, cf. argument
   'by_column'.
 2007-08-14 [HB]
 o Added checks for user interrupts every 1000 line.
 o Added argument 'hasNA' to rowMedians().
 2005-12-07 [HB]
 o BUG FIX: When calculating the median of an even number (non-NA) values,
    the length of the second sort was one element too short, which made the
    method to freeze, i.e. rPsort(rowData, qq, qq) is now (...qq+1, qq).
 2005-11-24 [HB]
  o By implementing a special version for integers, there is no need to
    coerce to double in R, which would take up twice the amount of memory.
  o rowMedians() now handles NAs too.
  o Adopted from rowQuantiles.c in Biobase of Bioconductor.
 **************************************************************************/
