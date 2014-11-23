/***************************************************************************
 Public methods:
 SEXP rowOrderStats(SEXP x, SEXP which)

 Authors: Henrik Bengtsson. Adopted from rowQ() by R. Gentleman.

 To do: Add support for missing values.

 Copyright Henrik Bengtsson, 2007-2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowOrderStats

#define X_TYPE 'i'
#include "rowOrderStats_TYPE-template.h"

#define X_TYPE 'r'
#include "rowOrderStats_TYPE-template.h"

#undef METHOD



SEXP rowOrderStats(SEXP x, SEXP dim, SEXP which) {
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol, qq;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = INTEGER(dim)[0];
  ncol = INTEGER(dim)[1];

  /* Argument 'which': */
  if (length(which) != 1)
    error("Argument 'which' must be a single number.");

  if (!isNumeric(which))
    error("Argument 'which' must be a numeric number.");

  /* Subtract one here, since rPsort does zero based addressing */
  qq = asInteger(which) - 1;

  /* Assert that 'qq' is a valid index */
  if (qq < 0 || qq >= ncol) {
    error("Argument 'which' is out of range.");
  }

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, nrow));
    rowOrderStats_Real(REAL(x), nrow, ncol, qq, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(INTSXP, nrow));
    rowOrderStats_Integer(INTEGER(x), nrow, ncol, qq, INTEGER(ans));
    UNPROTECT(1);
  }

  return(ans);
} // rowOrderStats()


/***************************************************************************
 HISTORY:
 2009-02-04 [HB]
  o BUG FIX: For some errors in rowOrderStats(), the stack would not become
    UNPROTECTED before calling error.
 2008-03-25 [HB]
  o Renamed from 'rowQuantiles' to 'rowOrderStats'.
 2007-08-10 [HB]
  o Removed arguments for NAs since rowOrderStats() still don't support it.
 2005-11-24 [HB]
  o Cool, it works and compiles nicely.
  o Preallocate colOffset to speed up things even more.
  o Added more comments and error checking.
  o Adopted from rowQ() in Biobase of Bioconductor.
 **************************************************************************/
