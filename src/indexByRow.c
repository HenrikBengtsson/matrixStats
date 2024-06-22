/***************************************************************************
 Public methods:
 SEXP indexByRow(SEXP dim, SEXP idxs)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"

void indexByRow_i(int nrow, int ncol, int *idxs_ptr, R_xlen_t nidxs, int *ans_ptr) {
  R_xlen_t i, idx, n_max;
  int col, row;
  
  if (idxs_ptr == NULL) {
    row = 1;
    col = 0;
    for (i = 0; i < nidxs; i++) {
      ans_ptr[i] = row + col * nrow;
      col++;
      if (col == ncol) {
        row++;
        col = 0;
      }
    }
  } else {
    n_max = (R_xlen_t)nrow * (R_xlen_t)ncol;
    for (i = 0; i < nidxs; i++) {
      idx = idxs_ptr[i] - 1;
      if (idx < 0) {
        error("Argument 'idxs' may only contain positive indices: %lld", (long long int)(idx + 1));
      } if (idx >= n_max) {
        error("Argument 'idxs' contains indices larger than %lld: %lld",
              (long long int)n_max, (long long int)(idx + 1));
      }
      col = idx / ncol;
      row = idx % ncol;
      idx = col + nrow * row + 1;
      ans_ptr[i] = idx;
    }
  }
} // indexByRow_i()


SEXP indexByRow(SEXP dim, SEXP idxs) {
  SEXP ans;
  int d, i;
  R_xlen_t nidxs;
  double n_max;
  int *idxs_ptr;

  /* Argument 'dim': */
  if (!isInteger(dim) || xlength(dim) != 2) {
    error("Argument 'dim' must be an integer vector of length two");
  }

  n_max = 1.0;
  for (i = 0; i < xlength(dim); i++) {
    d = INTEGER(dim)[i];
    if (d < 0) {
      error("Argument 'dim' specifies a negative value: %d", d);
    }
    n_max *= d;
#ifndef LONG_VECTOR_SUPPORT
    if (n_max > R_INT_MAX) {
      error("Argument 'dim' (%d,%d) specifies a matrix that has more than 2^31-1 elements: %.0f", INTEGER(dim)[0], INTEGER(dim)[1], n_max);
    }
#endif
    if (n_max > R_INT_MAX) {
      error("Argument 'dim' (%d,%d) specifies a matrix that has more than 2^31-1 elements: %.0f", INTEGER(dim)[0], INTEGER(dim)[1], n_max);
    }
  }

  /* Argument 'idxs': */
  if (isNull(idxs)) {
    idxs_ptr = NULL;
    nidxs = (R_xlen_t)n_max;
  } else if (isVectorAtomic(idxs)) {
    idxs_ptr = INTEGER(idxs);
    nidxs = xlength(idxs);
  } else {
    /* To please compiler */
    idxs_ptr = NULL;
    nidxs = 0;
    error("Argument 'idxs' must be NULL or a vector");
  }

  PROTECT(ans = allocVector(INTSXP, nidxs));

  indexByRow_i(INTEGER(dim)[0], INTEGER(dim)[1],
               idxs_ptr, nidxs, INTEGER(ans));

  UNPROTECT(1);
  
  return(ans);
} // indexByRow()


/***************************************************************************
 HISTORY:
 2014-11-09 [HB]
  o Created.
 **************************************************************************/
