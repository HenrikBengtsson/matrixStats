/***************************************************************************
 Public methods:
 binCounts(SEXP x, SEXP bx, SEXP binBy)

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


SEXP binCounts(SEXP x, SEXP bx, SEXP binBy) {
  int binby = INTEGER(binBy)[0];
  SEXP count;
  if (binby == 1) {
    return binCounts_L(x, bx);
  } else if (binby == 2) {
    return binCounts_R(x, bx);
  } else {
    error("Unknown value of argument 'binBy': %d", binby);
  }
  return NULL;
} // binCounts()


/***************************************************************************
 HISTORY:
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
