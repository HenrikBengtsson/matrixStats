/***************************************************************************
 Public methods:
 SEXP indexByRow(SEXP dim, SEXP idxs)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"

SEXP indexByRow(SEXP dim, SEXP idxs) {
  SEXP ans;
  int nr, nc;
  int *ans_ptr, *idxs_ptr;
  R_xlen_t i, idx, n, nidxs;
  int col, row;
  int d;
  double nd = 1.0;

  /* Argument 'dim': */
  if (!isInteger(dim) || xlength(dim) != 2) {
    error("Argument 'dim' must be an integer vector of length two.");
  }

  for (i = 0; i < xlength(dim); i++) {
    d = INTEGER(dim)[i];
    if (d < 0) {
      error("Argument 'dim' specifies a negative value: %d", d);
    }
    nd *= d;
#ifndef LONG_VECTOR_SUPPORT
    if (nd > R_INT_MAX) {
      error("Argument 'dim' specifies too many elements: %.g > %d", nd, R_INT_MAX);
    }
#endif
  }
  n = (R_xlen_t)nd;

  /* Argument 'idxs': */
  if (isNull(idxs)) {
    idxs_ptr = NULL;
    nidxs = 0;
  } else if (isVectorAtomic(idxs)) {
    idxs_ptr = INTEGER(idxs);
    nidxs = xlength(idxs);
  } else {
    /* To please compiler */
    idxs_ptr = NULL;
    nidxs = 0;
    error("Argument 'idxs' must be NULL or a vector.");
  }

  nr = INTEGER(dim)[0];
  nc = INTEGER(dim)[1];

  if (idxs_ptr == NULL) {
    PROTECT(ans = allocVector(INTSXP, n));
    ans_ptr = INTEGER(ans);

    row = 1;
    col = 0;
    for (i = 0; i < n; i++) {
      ans_ptr[i] = row + col*nr;
      col++;
      if (col == nc) {
        row++;
        col = 0;
      }
    }

    UNPROTECT(1);
  } else {
    PROTECT(ans = allocVector(INTSXP, nidxs));
    ans_ptr = INTEGER(ans);

    for (i = 0; i < nidxs; i++) {
      // idxs <- idxs - 1
      // cols <- idxs %/% dim[2L]
      // rows <- idxs  %% dim[2L]
      // cols + dim[1L]*rows + 1L
      idx = idxs_ptr[i] - 1;
      col = idx / nc;
      row = idx - nc*col;
      row = idx % nc;
      idx = col + nr*row + 1;
      ans_ptr[i] = idx;
    }

    UNPROTECT(1);
  }

  return(ans);
} // indexByRow()


/***************************************************************************
 HISTORY:
 2014-11-09 [HB]
  o Created.
 **************************************************************************/
