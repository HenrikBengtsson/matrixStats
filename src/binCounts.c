/***************************************************************************
 Public methods:
 binCounts(SEXP x, SEXP bx)

 Copyright Henrik Bengtsson, 2012
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h> 
#include <R.h>


SEXP binCounts(SEXP x, SEXP bx) {
  int nx = Rf_length(x), nb = Rf_length(bx)-1;
  double *xp = REAL(x), *bxp = REAL(bx);
  SEXP count = PROTECT(NEW_INTEGER(nb));
  int *countp = INTEGER(count);
  int ii = 0, jj = 0, n = 0, iStart = 0;

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
        countp[jj++] = n;

        // No more bins?
        if (jj >= nb) {
          ii = nx; // Cause outer for-loop to exit
          break;
        }
  
        n = 0;
      }
  
      // Count
      ++n;
    }
  
    // Update count of the last bin?
    if (jj < nb) {
      countp[jj] = n;
    
      // Assign the remaining bins to zero counts
      while (++jj < nb) {
        countp[jj] = 0;
      }
    }

  } // if (nb > 0)

  UNPROTECT(1); // 'count'

  return count;
} // binCounts()


/***************************************************************************
 HISTORY:
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
