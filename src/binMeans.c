/***************************************************************************
 Public methods:
 binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount, SEXP right)

 Copyright Henrik Bengtsson, 2012-2013
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h> 
#include <R.h>
#include <R_ext/Error.h>

#define BIN_BY 'L'
#include "binMeans-BINBY-template.h"

#define BIN_BY 'R'
#include "binMeans-BINBY-template.h"


SEXP binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount, SEXP right) {
  SEXP ans = NILSXP;
  int nbins;

  /* Argument 'y': */
  if (!isVector(y))
    error("Argument 'y' must be a vector.");

  /* Argument 'x': */
  if (!isVector(x))
    error("Argument 'x' must be a vector.");

  /* Argument 'bx': */
  if (!isVector(bx))
    error("Argument 'bx' must be a vector.");

  /* Argument 'bx': */
  if (!isVector(right))
    error("Argument 'right' must be logical.");

  nbins = Rf_length(bx)-1;

  int closedRight = LOGICAL(right)[0];
  if (closedRight == 0) {
    ans = binMeans_L(REAL(y), Rf_length(y), REAL(x), Rf_length(x), REAL(bx), nbins, asInteger(retCount));
  } else if (closedRight == 1) {
    ans = binMeans_R(REAL(y), Rf_length(y), REAL(x), Rf_length(x), REAL(bx), nbins, asInteger(retCount));
  } else {
    error("Unknown value of argument 'right': %d", closedRight);
  }

  return(ans);
} // binMeans()



/***************************************************************************
 HISTORY:
 2014-06-02 [HB]
  o CLEANUP: Removed unused variable in binMeans().
 2013-10-08 [HB]
  o Now binCounts() calls binCounts_<Lr|lR>().
 2013-05-10 [HB]
  o SPEEDUP: binMeans() no longer tests in every iteration (=for every
    data point) whether the last bin has been reached or not.
 2012-10-10 [HB]
  o BUG FIX: binMeans() would return random/garbage means/counts for
    bins that were beyond the last data point.
  o BUG FIX: In some cases binMeans() could try to go past the last bin.
 2012-10-03 [HB]
  o Created binMeans(), which was adopted from from code proposed by
    Martin Morgan (Fred Hutchinson Cancer Research Center, Seattle) as
    a reply to HB's R-devel thread 'Fastest non-overlapping binning mean
    function out there?' on Oct 3, 2012.
 **************************************************************************/
