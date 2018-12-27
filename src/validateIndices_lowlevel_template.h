/***********************************************************************
 TEMPLATE:
  void validateIndices_<int|dbl>(X_C_TYPE *idxs, R_xlen_t nidxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs, int *subsettedType, int *hasna)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i', 'r'

 ***********************************************************************/
#include <Rdefines.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "000.templates-types.h"

#undef int_from_idx_TYPE
#undef dbl_from_idx_TYPE
#if X_TYPE == 'i'
#define int_from_idx_TYPE CONCAT_MACROS(int_from_idx, int)
#define dbl_from_idx_TYPE CONCAT_MACROS(dbl_from_idx, int)
#elif X_TYPE == 'r'
#define int_from_idx_TYPE CONCAT_MACROS(int_from_idx, dbl)
#define dbl_from_idx_TYPE CONCAT_MACROS(dbl_from_idx, dbl)
#endif

static R_INLINE int int_from_idx_TYPE(X_C_TYPE x, R_xlen_t maxIdx) {
  if (X_ISNAN(x)) return NA_INTEGER;
#if X_TYPE == 'r'
  if (x > R_INT_MAX || x < R_INT_MIN) return NA_INTEGER; // including the cases of Inf
#endif
  if (x > maxIdx) return NA_INTEGER;
  return x;
}

static R_INLINE int dbl_from_idx_TYPE(X_C_TYPE x, R_xlen_t maxIdx) {
  if (X_ISNAN(x)) return NA_REAL;
#if X_TYPE == 'r'
  if (IS_INF(x)) return NA_REAL;
#endif
  if (x > maxIdx) return NA_REAL;
  return x;
}

/** idxs must not be NULL, which should be checked before calling this function. **/
void* METHOD_NAME(X_C_TYPE *idxs, R_xlen_t nidxs, R_xlen_t maxIdx, int allowOutOfBound, R_xlen_t *ansNidxs, int *subsettedType, int *hasna) {
  // set default as no NA.
  *hasna = FALSE;
  // For a un-full positive legal idxs array, we should use SUBSETTED_INTEGER as default.
  *subsettedType = SUBSETTED_INTEGER;

  R_xlen_t ii, jj;
  int state = 0;
  R_xlen_t count = 0;
  Rboolean needReAlloc = FALSE;

  // figure out whether idxs are all positive or all negative.
  for (ii = 0; ii < nidxs; ++ ii) {
    X_C_TYPE idx = idxs[ii];
    if (idx > 0 || X_ISNAN(idx)
#if X_TYPE == 'r'
        || IS_INF(idx)
#endif
        ) {
      if (state < 0) error("only 0's may be mixed with negative subscripts");

#if X_TYPE == 'r'
      if (IS_INF(idx)) {
        needReAlloc = TRUE; // need to realloc indices array to set inf to NA
      } else
#endif
      if (!X_ISNAN(idx)) {
        if (idx > maxIdx) {
          if (!allowOutOfBound) error("subscript out of bounds");
          *hasna = TRUE; // out-of-bound index is NA
          needReAlloc = TRUE;
        }
#if X_TYPE == 'r'
        if (idx > R_INT_MAX) *subsettedType = SUBSETTED_REAL;
#endif
      } else {
        *hasna = TRUE;
      }
      state = 1;
      ++ count;

    } else if (idx < 0) {
      if (state > 0) error("only 0's may be mixed with negative subscripts");
      state = -1;
      needReAlloc = TRUE;

    } else { // idx == 0, need to realloc indices array
      needReAlloc = TRUE;
    }
  }

  if (state >= 0) *ansNidxs = count;
  if (!needReAlloc) { // must have: state >= 0
    *subsettedType = SUBSETTED_DEFAULT;
    return idxs;
  }

  // fill positive idxs into ans
  if (state >= 0) {
    if (*subsettedType == SUBSETTED_INTEGER) {
      // NOTE: braces is needed here, because of macro-defined function
      RETURN_VALIDATED_ANS(int, nidxs, idxs[ii], int_from_idx_TYPE(idxs[ii],maxIdx),);
    }
    // *subsettedType == SUBSETTED_REAL
    RETURN_VALIDATED_ANS(double, nidxs, idxs[ii], dbl_from_idx_TYPE(idxs[ii],maxIdx),);
  }

  // state < 0
  // use filter as bitset to find out all required idxs
  Rboolean *filter = Calloc(maxIdx, Rboolean);
  count = maxIdx;
  memset(filter, 0, maxIdx*sizeof(Rboolean)); // set to FALSE
  for (ii = 0; ii < nidxs; ++ ii) {
    R_xlen_t idx = -idxs[ii];
    if (idx > 0 && idx <= maxIdx) {
      if (filter[idx-1] == 0) {
        -- count;
        filter[idx-1] = TRUE;
      }
    }
  }

  *ansNidxs = count;
  if (count == 0) {
    Free(filter);
    return NULL;
  }

  // find the biggest number 'upperBound'
  R_xlen_t upperBound;
  for (upperBound = maxIdx-1; upperBound >= 0; -- upperBound) {
    if (!filter[upperBound]) break;
  }
  ++ upperBound;
  if (upperBound > R_INT_MAX) *subsettedType = SUBSETTED_REAL;

  // fill required idxs into ans
  if (*subsettedType == SUBSETTED_INTEGER) {
    // NOTE: braces is needed here, because of macro-defined function
    RETURN_VALIDATED_ANS(int, upperBound, !filter[ii], ii + 1, Free(filter););
  }
  // *subsettedType == SUBSETTED_REAL
  RETURN_VALIDATED_ANS(double, upperBound, !filter[ii], ii + 1, Free(filter););
}


#include "000.templates-types_undef.h"
