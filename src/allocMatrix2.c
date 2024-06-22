#include <Rdefines.h>
#include "000.types.h"
#include <R_ext/Error.h>


/* Checks whether setting bytes of an int/double to all zeroes
   corresponds to assigning a zero value.  Note that the bit
   representation of int's and double's may not be the same
   on all architectures. */
int memset_zero_ok_int(void) {
  int t = 1;
  memset(&t, 0, sizeof(t));
  return (t == 0);
}

int memset_zero_ok_double(void) {
  double t = 1;
  memset(&t, 0, sizeof(t));
  return (t == 0);
}

/* For debugging purposes */
/*
SEXP memsetZeroable(void) {
  SEXP ans;
  PROTECT(ans = allocVector(LGLSXP, 2));
  LOGICAL(ans)[1] = memset_zero_ok_int();
  LOGICAL(ans)[2] = memset_zero_ok_double();
  UNPROTECT(1);
  return(ans);
}
*/

void fillWithValue(SEXP ans, SEXP value) {
  R_xlen_t i, n;
  SEXPTYPE type;
  double *ans_ptr_d, value_d;
  int *ans_ptr_i, value_i;
  int *ans_ptr_l, value_l;

  /* Argument 'ans': */
  if (!isVectorAtomic(ans)) {
    error("Argument 'ans' must be a vector");
  }
  n = xlength(ans);

  /* Argument 'value': */
  if (!isVectorAtomic(value) || xlength(value) != 1) {
    error("Argument 'value' must be a scalar");
  }
  type = TYPEOF(value);

  switch (type) {
    case INTSXP:
      value_i = asInteger(value);
      ans_ptr_i = INTEGER(ans);
      if (value_i == 0 && memset_zero_ok_int()) {
        memset(ans_ptr_i, 0, n*sizeof(value_i));
      } else {
        for (i=0; i < n; i++) ans_ptr_i[i] = value_i;
      }
      break;
    case REALSXP:
      value_d = asReal(value);
      ans_ptr_d = REAL(ans);
      if (value_d == 0 && memset_zero_ok_double()) {
        memset(ans_ptr_d, 0, n*sizeof(value_d));
      } else {
        for (i=0; i < n; i++) ans_ptr_d[i] = value_d;
      }
      break;
    case LGLSXP:
      value_l = asLogical(value);
      ans_ptr_l = LOGICAL(ans);
      if (value_l == 0 && memset_zero_ok_int()) {
        memset(ans_ptr_l, 0, n*sizeof(value_l));
      } else {
        for (i=0; i < n; i++) ans_ptr_l[i] = value_l;
      }
      break;
    default:
      error("Argument 'value' must be either of type integer, numeric or logical");
      break;
  }
} /* fillWithValue() */


SEXP allocVector2(SEXP length, SEXP value) {
  SEXP ans;
  SEXPTYPE type;
  R_xlen_t n = 0;

  /* Argument 'length': */
  if (isInteger(length) && xlength(length) == 1) {
    n = (R_xlen_t)asInteger(length);
  } else if (isReal(length) && xlength(length) == 1) {
    n = (R_xlen_t)asReal(length);
  } else {
    error("Argument 'length' must be a single numeric");
  }
  if (n < 0) error("Argument 'length' is negative");

  /* Argument 'value': */
  if (!isVectorAtomic(value) || xlength(value) != 1) {
    error("Argument 'value' must be a scalar");
  }
  type = TYPEOF(value);

  PROTECT(ans = allocVector(type, n));
  fillWithValue(ans, value);
  UNPROTECT(1);

  return(ans);
} /* allocVector2() */


SEXP allocMatrix2(SEXP nrow, SEXP ncol, SEXP value) {
  SEXP ans;
  SEXPTYPE type;
  int nc, nr;

  /* Argument 'nrow' & 'ncol': */
  if (!isInteger(nrow) || xlength(nrow) != 1) {
    error("Argument 'nrow' must be a single integer");
  }
  if (!isInteger(ncol) || xlength(ncol) != 1) {
    error("Argument 'ncol' must be a single integer");
  }
  nr = asInteger(nrow);
  nc = asInteger(ncol);
  if (nr < 0) error("Argument 'nrow' is negative");
  if (nr < 0) error("Argument 'ncol' is negative");

  /* Argument 'value': */
  if (!isVectorAtomic(value) || xlength(value) != 1) {
    error("Argument 'value' must be a scalar");
  }
  type = TYPEOF(value);

  PROTECT(ans = allocMatrix(type, nr, nc));
  fillWithValue(ans, value);
  UNPROTECT(1);

  return(ans);
} /* allocMatrix2() */


SEXP allocArray2(SEXP dim, SEXP value) {
  SEXP ans;
  SEXPTYPE type;
  int i, d;
  double nd = 1.0;
  R_xlen_t n;

  /* Argument 'dim': */
  if (!isInteger(dim) || xlength(dim) == 0) {
    error("Argument 'dim' must be an integer vector of at least length one");
  }

  for (i = 0; i < xlength(dim); i++) {
    d = INTEGER(dim)[i];
    nd *= d;
#ifndef LONG_VECTOR_SUPPORT
    if (nd > R_INT_MAX) {
      error("Argument 'dim' specifies too many elements: %.g > %d", nd, R_INT_MAX);
    }
#endif
  }
  n = (R_xlen_t)nd;

  /* Argument 'value': */
  if (!isVectorAtomic(value) || xlength(value) != 1) {
    error("Argument 'value' must be a scalar");
  }
  type = TYPEOF(value);

  PROTECT(dim = duplicate(dim));
  PROTECT(ans = allocVector(type, n));
  fillWithValue(ans, value);
  setAttrib(ans, R_DimSymbol, dim);
  UNPROTECT(2);

  return(ans);
} /* allocArray2() */
