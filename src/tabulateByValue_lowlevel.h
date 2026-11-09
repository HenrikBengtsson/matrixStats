#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

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

/* Native API, generated for integer, logical and raw input below. */
#define X_TYPE 'i'
#include "tabulateByValue_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'l'
#include "tabulateByValue_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'b'
#include "tabulateByValue_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef X_C_TYPE
#undef X_C_SIGNATURE
