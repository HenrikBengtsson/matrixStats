/***************************************************************************
 TEMPLATE:
  binCounts_<L|R>(...)

 GENERATES:
  SEXP binCounts_L(SEXP x, SEXP bx)
  SEXP binCounts_R(SEXP x, SEXP bx)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.
  - BIN_BY: 'L' or 'R'

 Copyright Henrik Bengtsson, 2012-2013
 **************************************************************************/
/* Include R packages */
#include <Rdefines.h>
#include <R.h>

#if BIN_BY == 'L'   /* [u,v) */
  #define METHOD_NAME binCounts_L
  #define IS_PART_OF_FIRST_BIN(x, bx0) (x < bx0)
  #define IS_PART_OF_NEXT_BIN(x, bx1) (x >= bx1)
#elif BIN_BY == 'R' /* (u,v] */
  #define METHOD_NAME binCounts_R
  #define IS_PART_OF_FIRST_BIN(x, bx0) (x <= bx0)
  #define IS_PART_OF_NEXT_BIN(x, bx1) (x > bx1)
#endif

SEXP METHOD_NAME(SEXP x, SEXP bx) {
  int nx = Rf_length(x), nb = Rf_length(bx)-1;
  double *xp = REAL(x), *bxp = REAL(bx);
  SEXP count = PROTECT(NEW_INTEGER(nb));
  int *countp = INTEGER(count);
  int ii = 0, jj = 0, n = 0, iStart = 0;

  // Count?
  if (nb > 0) {

    // Skip to the first bin
    while ((iStart < nx) && IS_PART_OF_FIRST_BIN(xp[iStart], bxp[0])) {
      ++iStart;
    }

    // For each x...
    for (ii = iStart; ii < nx; ++ii) {

      // Skip to a new bin?
      while (IS_PART_OF_NEXT_BIN(xp[ii], bxp[jj+1])) {
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
}


/* Undo template macros */
#undef BIN_BY
#undef IS_PART_OF_FIRST_BIN
#undef IS_PART_OF_NEXT_BIN
#include "templates-types_undef.h"

 
/***************************************************************************
 HISTORY:
 2013-10-08 [HB]
  o Created template for binCounts_<L|R>() to create functions that
    bin either by [u,v) or (u,v].
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
