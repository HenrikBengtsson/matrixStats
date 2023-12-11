/***************************************************************************
 Public methods:
 binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount, SEXP right)

 Copyright Henrik Bengtsson, 2012-2013
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include <R_ext/Error.h>
#include "binMeans_lowlevel.h"

SEXP binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount, SEXP right) {
  SEXP ans = NILSXP, count = NILSXP;
  R_xlen_t nx, ny, nbins;
  int closedRight, retcount;
  int *count_ptr = NULL;

  /* Argument 'y': */
  assertArgVector(y, (R_TYPE_REAL), "y");
  ny = xlength(y);

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_REAL), "x");
  nx = xlength(x);
  if (nx != ny) {
    error("Argument 'y' and 'x' are of different lengths: %lld != %lld", (long long int)ny, (long long int)nx);
  }

  /* Argument 'bx': */
  assertArgVector(bx, (R_TYPE_REAL), "bx");
  nbins = xlength(bx)-1;
  if (nbins <= 0) {
    error("Argument 'bx' must specify at least two bin boundaries (= one bin): %lld", (long long int)xlength(bx));
  }

  /* Argument 'right': */
  closedRight = asLogicalNoNA(right, "right");

  /* Argument 'retCount': */
  retcount = asLogicalNoNA(retCount, "retCount");

  PROTECT(ans = allocVector(REALSXP, nbins));
  if (retcount) {
    PROTECT(count = allocVector(INTSXP, nbins));
    count_ptr = INTEGER(count);
  }

  if (closedRight) {
    binMeans_R(REAL(y), ny, REAL(x), nx, REAL(bx), nbins, REAL(ans), count_ptr);
  } else {
    binMeans_L(REAL(y), ny, REAL(x), nx, REAL(bx), nbins, REAL(ans), count_ptr);
  }

  if (retcount) {
    setAttrib(ans, install("count"), count);
    UNPROTECT(1); // 'count'
  }
  UNPROTECT(1); // 'ans'

  return ans;


  return(ans);
} // binMeans()



/***************************************************************************
 HISTORY:
 2015-05-30 [HB]
  o Added protected against 'bx' too short.
 2014-10-06 [HB]
  o CLEANUP: All argument validation is now done by the high-level C API.
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
