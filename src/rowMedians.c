/***************************************************************************
 Public methods:
 SEXP rowMedians(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colMedians(SEXP x, SEXP naRm, SEXP hasNA)

 Authors: Adopted from rowQuantiles.c by R. Gentleman.

 Copyright Henrik Bengtsson, 2007
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD rowMedians

#define X_TYPE 'i'
#include "rowMedians_TYPE-template.h"

#define X_TYPE 'r'
#include "rowMedians_TYPE-template.h"

#undef METHOD 


SEXP rowMedians(SEXP x, SEXP dim, SEXP naRm, SEXP hasNA, SEXP byRow) {
  int narm, hasna, byrow;
  SEXP ans;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'byRow': */
  byrow = asLogical(byRow);


  /* Get dimensions of 'x'. */
  if (byrow) {
    nrow = INTEGER(dim)[0];
    ncol = INTEGER(dim)[1];
  } else {
    nrow = INTEGER(dim)[1];
    ncol = INTEGER(dim)[0];
  }

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */
  PROTECT(ans = allocVector(REALSXP, nrow));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowMedians_Real(REAL(x), nrow, ncol, narm, hasna, byrow, REAL(ans));
  } else if (isInteger(x)) {
    rowMedians_Integer(INTEGER(x), nrow, ncol, narm, hasna, byrow, REAL(ans));
  }

  UNPROTECT(1);

  return(ans);
} /* rowMedians() */


/***************************************************************************
 HISTORY:
 2013-01-13 [HB]
 o Added argument 'byRow' to rowMedians() and dropped colMedians().
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
