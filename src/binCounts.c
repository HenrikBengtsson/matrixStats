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
  int i = 0, j = 0, n = 0, iStart=0;

  // Skip to the first bin
  while (xp[iStart] < bxp[0]) { 
    ++iStart;
  }
  
  // For each x...
  for (i = iStart; i < nx; ++i) {
    // Skip to a new bin?
    while (xp[i] >= bxp[j+1]) {
      countp[j++] = n;
      n = 0;
    }
    n += 1;
  }

  // Update statistic of last bin
  countp[j] = n;
  UNPROTECT(1); // 'count'

  return count;
} // binCounts()


/***************************************************************************
 HISTORY:
 2012-10-03 [HB]
  o Created.
 **************************************************************************/
