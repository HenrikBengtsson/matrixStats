#include <Rdefines.h>
#include <stdlib.h>
#include <string.h>
#include "000.utils.h"

typedef struct {
  int key;
  int column;
} Bin;

static int compareBins(const void *left, const void *right) {
  const Bin *a = left;
  const Bin *b = right;
  return (a->key > b->key) - (a->key < b->key);
}

/* Return the first matching bin in the sorted lookup, including NA_INTEGER. */
static int firstBin(const Bin *bins, int count, int value) {
  int lo = 0, hi = count;
  while (lo < hi) {
    const int mid = lo + (hi - lo) / 2;
    if (bins[mid].key < value) lo = mid + 1;
    else hi = mid;
  }
  return lo < count && bins[lo].key == value ? bins[lo].column : -1;
}

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
    Bin *bins = (Bin *)R_alloc(nbin, sizeof(Bin));
    for (int k = 0; k < nbin; ++k) {
      bins[k].key = INTEGER(keys)[k];
      bins[k].column = k;
    }
    qsort(bins, nbin, sizeof(Bin), compareBins);
    const int *ints = type == INTSXP ? INTEGER(x) : type == LGLSXP ? LOGICAL(x) : NULL;
    const Rbyte *raw = type == RAWSXP ? RAW(x) : NULL;
    R_xlen_t pos = 0;
    for (int j = 0; j < nc; ++j) {
      for (int i = 0; i < nr; ++i, ++pos) {
        R_CHECK_USER_INTERRUPT(pos);
        const int value = raw ? raw[pos] : ints[pos];
        const int bin = firstBin(bins, nbin, value);
        if (bin >= 0) ++out[(R_xlen_t)bin * groups + (byrow ? i : j)];
      }
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
