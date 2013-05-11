/***************************************************************************
 Public methods:
 binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount)

 Copyright Henrik Bengtsson, 2012
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h> 
#include <R.h>
#include <R_ext/Error.h>


SEXP binMeans(SEXP y, SEXP x, SEXP bx, SEXP retCount) {
  int ny = Rf_length(y), nx = Rf_length(x), nb = Rf_length(bx)-1;
  double *yp = REAL(y), *xp = REAL(x), *bxp = REAL(bx);
  SEXP ans = PROTECT(NEW_NUMERIC(nb));
  double *ansp = REAL(ans);
  int retcount = LOGICAL(retCount)[0];
  SEXP count = NULL;
  int *countp = NULL;
  int ii = 0, jj = 0, n = 0, iStart=0;
  double sum = 0.0;

  // Assert same lengths of 'x' and 'y'
  if (ny != nx) {
    error("Argument 'y' and 'x' are of different lengths: %d != %d", ny, nx);
  }

  if (retcount) {
    count = PROTECT(NEW_INTEGER(nb));
    countp = INTEGER(count);
  }

  // Count?
  if (nb > 0) {

    // Skip to the first bin
    while ((iStart < nx) && (xp[iStart] < bxp[0])) { 
      ++iStart;
    }
    
    // For each x...
    for (ii = iStart; ii < nx; ++ii) {

      // Skip to a new bin?
      while (xp[ii] >= bxp[jj+1]) {
        // Update statistic of current bin?
        if (retcount) { countp[jj] = n; }
        ansp[jj] = n > 0 ? sum / n : 0;
        sum = 0.0;
        n = 0;
  
        // ...and move to next
        ++jj;
  
        // No more bins?
        if (jj >= nb) {
          ii = nx; // Cause outer for-loop to exit
          break;
        }
      }
  
      // Sum and count 
      sum += yp[ii];
      ++n;
    }
  
    // Update statistic of the last bin?
    if (jj < nb) {
      if (retcount) countp[jj] = n;
      ansp[jj] = n > 0 ? sum / n : 0;
  
      // Assign the remaining bins to zero counts and missing mean values
      while (++jj < nb) {
        ansp[jj] = R_NaReal;
        if (retcount) countp[jj] = 0;
      }
    }
  
  } // if (nb > 0)


  if (retcount) {
    setAttrib(ans, install("count"), count);
    UNPROTECT(1); // 'count'
  }
  UNPROTECT(1); // 'ans'

  return ans;
} // binMeans()


/***************************************************************************
 HISTORY:
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
