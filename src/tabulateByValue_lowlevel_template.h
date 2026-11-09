/***********************************************************************
 TEMPLATE:
  void tabulateByValue_<int|lgl|raw>(const X_C_TYPE *x, int nrow, int ncol,
                                  const Bin *bins, int nbin, int byrow, int *ans)

 X_TYPE selects the input type. The sorted bin lookup and output are integer.
 ***********************************************************************/
#include "000.types.h"

#if X_TYPE == 'b'
  /* Raw input is not represented by the shared type template yet. Keep its
     byte mapping local rather than changing types used by other kernels. */
  #undef X_C_TYPE
  #undef X_C_SIGNATURE
  #define X_C_TYPE Rbyte
  #define X_C_SIGNATURE raw
#else
  #include "000.templates-types.h"
#endif

void CONCAT_MACROS(tabulateByValue, X_C_SIGNATURE)(const X_C_TYPE *x,
                        int nrow, int ncol, const Bin *bins, int nbin,
                        int byrow, int *ans) {
  const int groups = byrow ? nrow : ncol;
  R_xlen_t pos = 0;
  int remaining = 0;
  for (int jj = 0; jj < ncol; ++jj) {
    int ii = 0;
    while (ii < nrow) {
      /* Carry the work budget across columns, and split a tall column too.
         pos is a multiple of 2^20 whenever a new budget is needed. */
      if (remaining == 0) {
        R_CHECK_USER_INTERRUPT(pos);
        remaining = 1048576;
      }
      int count = nrow - ii;
      if (count > remaining) count = remaining;
      const int end = ii + count;
      for (; ii < end; ++ii, ++pos) {
        const int bin = firstBin(bins, nbin, x[pos]);
        if (bin >= 0) ++ans[(R_xlen_t)bin * groups + (byrow ? ii : jj)];
      }
      remaining -= count;
    }
  }
}
