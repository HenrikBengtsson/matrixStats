/***************************************************************************
 Public methods:
 binCounts(SEXP x, SEXP bx, SEXP right)

 Copyright Henrik Bengtsson, 2012-2013
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>
#include <R.h>
#include <R_ext/Error.h>

#define BIN_BY 'L'
#include "binCounts-BINBY-template.h"

#define BIN_BY 'R'
#include "binCounts-BINBY-template.h"


SEXP binCounts(SEXP x, SEXP bx, SEXP right) {
  SEXP counts = NILSXP;
  int nx, nbins;

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");

  /* Argument 'bx': */
  if (!isVector(bx))
    error("Argument 'bx' must be a vector.");

  nx = Rf_length(x);
  nbins = Rf_length(bx)-1;
  PROTECT(counts = allocVector(INTSXP, nbins));

  int closedRight = LOGICAL(right)[0];
  if (closedRight == 0) {
    binCounts_L(REAL(x), nx, REAL(bx), nbins, INTEGER(counts));
  } else if (closedRight == 1) {
    binCounts_R(REAL(x), nx, REAL(bx), nbins, INTEGER(counts));
  } else {
    error("Unknown value of argument 'right': %d", closedRight);
  }

  UNPROTECT(1);

  return(counts);
} // binCounts()


/***************************************************************************
 HISTORY:
 2014-06-03 [HB]
  o Dropped unused variable 'count'.
 2013-10-08 [HB]
  o Now binCounts() calls binCounts_<Lr|lR>().
 2013-05-10 [HB]
  o SPEEDUP: binCounts() no longer tests in every iteration (=for every
    data point) whether the last bin has been reached or not.
 2012-10-10 [HB]
  o BUG FIX: binCounts() would return random/garbage counts for bins
    that were beyond the last data point.
  o BUG FIX: In some cases binCounts() could try to go past the last bin.
 2012-10-03 [HB]
  o Created.
 **************************************************************************/
