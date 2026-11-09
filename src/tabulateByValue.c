#include <Rdefines.h>
#include <stdlib.h>
#include <string.h>

#include "tabulateByValue_lowlevel.h"

SEXP tabulateByValue(SEXP x, SEXP keys, SEXP byRow) {
  const int type = TYPEOF(x);
  if (!isMatrix(x) || (type != INTSXP && type != LGLSXP && type != RAWSXP))
    error("Expected an integer, logical or raw matrix");
  if (TYPEOF(keys) != INTSXP || XLENGTH(keys) > INT_MAX)
    error("Invalid bin vector");
  const int byrow = asLogicalNoNA(byRow, "byRow");
  const int nr = nrows(x), nc = ncols(x);
  const int groups = byrow ? nr : nc;
  const int nbin = LENGTH(keys);
  SEXP ans = PROTECT(allocMatrix(INTSXP, groups, nbin));
  int *out = INTEGER(ans);
  if (XLENGTH(ans)) memset(out, 0, (size_t)XLENGTH(ans) * sizeof(int));
  if (nbin && XLENGTH(x)) {
    const int *c_keys = INTEGER(keys);
    Bin *bins = (Bin *)R_alloc(nbin, sizeof(Bin));
    for (int k = 0; k < nbin; ++k) {
      bins[k].key = c_keys[k];
      bins[k].column = k;
    }
    qsort(bins, nbin, sizeof(Bin), compareBins);
    if (type == INTSXP) {
      tabulateByValue_int(INTEGER(x), nr, nc, bins, nbin, byrow, out);
    } else if (type == LGLSXP) {
      tabulateByValue_lgl(LOGICAL(x), nr, nc, bins, nbin, byrow, out);
    } else if (type == RAWSXP) {
      tabulateByValue_raw(RAW(x), nr, nc, bins, nbin, byrow, out);
    }
    /* A repeated key needs the same counts in each requested output column. */
    int first = 0;
    for (int k = 1; k < nbin; ++k) {
      if (bins[k].key != bins[first].key) {
        first = k;
      } else {
        memcpy(out + (R_xlen_t)bins[k].column * groups,
               out + (R_xlen_t)bins[first].column * groups,
               (size_t)groups * sizeof(int));
      }
    }
  }
  UNPROTECT(1);
  return ans;
}
