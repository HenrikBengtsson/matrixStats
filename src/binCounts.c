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
  int ii = 0, jj = 0, n = 0, iStart=0;

  // Skip to the first bin
  while ((iStart < nx) & (xp[iStart] < bxp[0])) { 
    ++iStart;
  }
  
  // For each x...
  for (ii = iStart; ii < nx; ++ii) {
    // No more bins?
    if (jj >= nb) break;

    // Skip to a new bin?
    while (xp[ii] >= bxp[jj+1]) {
      countp[jj++] = n;

      // No more bins?
      if (jj >= nb) break;

      n = 0;
    }

    n += 1;
  }

  // Update count of the last bin?
  if (jj < nb) {
    countp[jj] = n;
  
    // Assign the remaining bins to zero counts
    while (++jj < nb) {
      countp[jj] = 0;
    }
  }

  UNPROTECT(1); // 'count'

  return count;
} // binCounts()


/***************************************************************************
 HISTORY:
 2012-10-10 [HB]
  o BUG FIX: binCounts() would return random/garbage counts for bins
    that were beyond the last data point.
  o BUG FIX: In some cases binCounts() could try to go past the last bin.
 2012-10-03 [HB]
  o Created.
 **************************************************************************/
