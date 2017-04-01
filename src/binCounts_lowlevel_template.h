/***************************************************************************
 TEMPLATE:
  void binCounts_<L|R>(...)

 GENERATES:
  void binCounts_L(double *x, int nx, double *bx, int nbins, int *count)
  void binCounts_R(double *x, int nx, double *bx, int nbins, int *count)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.
  - BIN_BY: 'L' or 'R'

 Copyright Henrik Bengtsson, 2012-2014
 **************************************************************************/
#include <Rinternals.h>

#if BIN_BY == 'L'   /* [u,v) */
  #define METHOD_NAME binCounts_L
  #define IS_PART_OF_FIRST_BIN(x, bx0) (x < bx0)
  #define IS_PART_OF_NEXT_BIN(x, bx1) (x >= bx1)
#elif BIN_BY == 'R' /* (u,v] */
  #define METHOD_NAME binCounts_R
  #define IS_PART_OF_FIRST_BIN(x, bx0) (x <= bx0)
  #define IS_PART_OF_NEXT_BIN(x, bx1) (x > bx1)
#endif

void METHOD_NAME(double *x, R_xlen_t nx, double *bx, R_xlen_t nbins, int *count) {
  R_xlen_t ii = 0, jj = 0, iStart = 0;
  int n = 0;
  int warn = 0;

  // Count?
  if (nbins > 0) {

    // Skip to the first bin
    while ((iStart < nx) && IS_PART_OF_FIRST_BIN(x[iStart], bx[0])) {
      ++iStart;
    }

    // For each x...
    for (ii = iStart; ii < nx; ++ii) {

      // Skip to a new bin?
      while (IS_PART_OF_NEXT_BIN(x[ii], bx[jj+1])) {
        count[jj++] = n;

        // No more bins?
        if (jj >= nbins) {
          ii = nx; // Cause outer for-loop to exit
          break;
        }

        n = 0;
      }

      /* Although unlikely, with long vectors the count for a bin
         can become greater than what is possible to represent by
         an integer.  Detect and warn about this. */
      if (n == R_INT_MAX) {
        warn = 1;
        // No point in keep counting for this bin
        break;
      }

      // Count
      ++n;
    }

    // Update count of the last bin?
    if (jj < nbins) {
      count[jj] = n;

      // Assign the remaining bins to zero counts
      while (++jj < nbins) {
        count[jj] = 0;
      }
    }

  } // if (nbins > 0)

  if (warn) {
    warning("Integer overflow. Detected one or more bins with a count that is greater than what can be represented by the integer data type. Setting count to the maximum integer possible (.Machine$integer.max = %d). The bin mean is still correct.", R_INT_MAX);
  }
}


/* Undo template macros */
#undef BIN_BY
#undef IS_PART_OF_FIRST_BIN
#undef IS_PART_OF_NEXT_BIN
#include "000.templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-07 [HB]
  o ROBUSTNESS: Added protection for integer overflow in bin counts.
2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
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
