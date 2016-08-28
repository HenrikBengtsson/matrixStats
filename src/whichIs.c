#include <Rinternals.h> /* R_xlen_t, ... */
#include <math.h>

#ifndef R_INT_MAX
#define R_INT_MAX  INT_MAX
#endif

SEXP allocSeqEmpty() {
  SEXP ans;
  
  PROTECT(ans = allocVector(INTSXP, 0));
  UNPROTECT(1);
  
  return(ans);
}

SEXP whichNonNA_int(int *x, R_xlen_t nx) {
  SEXP ans;
  int *aans;
  R_xlen_t ii, aa, nans;

  /* Pass 1: Count number of non-NA values */
  nans = 0;
  for (ii = 0; ii < nx; ii++) {
    if (x[ii] != NA_INTEGER) nans++;
  }

  /* Assert assumption of maximum return length */
  if (nans > R_INT_MAX) {
    error("Too many occurances of value");
  }
  
  PROTECT(ans = allocVector(INTSXP, nans));
  aans = INTEGER(ans);

  /* Pass 2: Index all non-NA values */
  aa = 0;
  for (ii = 0; ii < nx; ii++) {
    if (x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
  }
  
  UNPROTECT(1);
  
  return(ans);
}


SEXP whichIs_int_int(int *x, R_xlen_t nx, int value, int op) {
  SEXP ans = NILSXP;
  int *aans;
  R_xlen_t nans;
  R_xlen_t ii, aa;

  /* Pass 1: Count number of occurances */
  nans = 0;
  if (op == 1) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] == value && x[ii] != NA_INTEGER) nans++;
    }
  } else if (op == 2) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] != value && x[ii] != NA_INTEGER) nans++;
    }
  } else if (op == 3) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] <  value && x[ii] != NA_INTEGER) nans++;
    }
  } else if (op == 4) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] <= value && x[ii] != NA_INTEGER) nans++;
    }
  } else if (op == 5) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] >  value && x[ii] != NA_INTEGER) nans++;
    }
  } else if (op == 6) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] >= value && x[ii] != NA_INTEGER) nans++;
    }
  }

  /* Assert assumption of maximum return length */
  if (nans > R_INT_MAX) {
    error("Too many occurances of value");
  }
  
  PROTECT(ans = allocVector(INTSXP, nans));
  aans = INTEGER(ans);
  
  /* Pass 2: Record occurances */
  aa = 0;
  if (op == 1) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] == value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  } else if (op == 2) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] != value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  } else if (op == 3) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] <  value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  } else if (op == 4) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] <= value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  } else if (op == 5) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] >  value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  } else if (op == 6) {
    for (ii = 0; ii < nx; ii++) {
      if (x[ii] >= value && x[ii] != NA_INTEGER) aans[aa++] = ii + 1;
    }
  }
  
  UNPROTECT(1);
  
  return ans;
} /* whichIs_int_int() */


SEXP whichIs_double_double(double *x, R_xlen_t nx, double value, int op) {
  SEXP ans = NILSXP;
  int *aans;
  R_xlen_t nans;
  R_xlen_t ii, aa;
  int hasNA;

  /* Pass 1: Count number of occurances */
  nans = 0;
  hasNA = 0;
  if (op == 1) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] == value) nans++;
    }
  } else if (op == 2) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] != value) nans++;
    }
  } else if (op == 3) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] <  value) nans++;
    }
  } else if (op == 4) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] <= value) nans++;
    }
  } else if (op == 5) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] >  value) nans++;
    }
  } else if (op == 6) {
    for (ii = 0; ii < nx; ii++) {
      if (ISNAN(x[ii])) { hasNA = 1; continue; }
      if (x[ii] >= value) nans++;
    }
  }

  /* Assert assumption of maximum return length */
  if (nans > R_INT_MAX) {
    error("Too many occurances of value");
  }
  
  PROTECT(ans = allocVector(INTSXP, nans));
  aans = INTEGER(ans);
  
  /* Pass 2: Record occurances */
  aa = 0;
  if (op == 1) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] == value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] == value) aans[aa++] = ii + 1;
      }
    }
  } else if (op == 2) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] != value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] != value) aans[aa++] = ii + 1;
      }
    }
  } else if (op == 3) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] <  value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] <  value) aans[aa++] = ii + 1;
      }
    }
  } else if (op == 4) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] <= value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] <= value) aans[aa++] = ii + 1;
      }
    }
  } else if (op == 5) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] >  value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] >  value) aans[aa++] = ii + 1;
      }
    }
  } else if (op == 6) {
    if (hasNA) {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] >= value && !ISNAN(x[ii])) aans[aa++] = ii + 1;
      }
    } else {
      for (ii = 0; ii < nx; ii++) {
        if (x[ii] >= value) aans[aa++] = ii + 1;
      }
    }
  }
  
  UNPROTECT(1);
  
  return ans;
} /* whichIs_double_double() */


SEXP whichIs_double_int(double *x, R_xlen_t nx, int value, int op) {
  return whichIs_double_double(x, nx, (double)value, op);
} /* whichIs_double_int() */


SEXP whichIs_int_double(int *x, R_xlen_t nx, double value, int op) {
  SEXP ans = NILSXP;
  R_xlen_t ii;
  int value_int;
  double fraction;
  
  /* Early stopping? */
  if (value == R_NegInf) {
    /* All (integer) x are greater than or different than -Inf */
    if (op == 2 || op == 5 || op == 6) { /* x > value || x >= value */
      /* Return indices of all non-missing 'x' */
      return(whichNonNA_int(x, nx));
    } else {
      return(allocSeqEmpty());
    }
    return(ans);
  } else if (value == R_PosInf) {
    /* All (integer) x are less than or different than +Inf */
    if (op == 2 || op == 3 || op == 4) { /* x < value || x <= value */
      /* Return indices of all non-missing 'x' */
      return(whichNonNA_int(x, nx));
    } else {
      return(allocSeqEmpty());
    }
  }

  
  /* Coerce value to a proper integer */
  value_int = (int)value;
  fraction = value - ((long)value);
  if (fraction != 0) {
    if (op == 1) { /* x == value */
      /* => No x are equal to value */
      return(allocSeqEmpty());
    } else if (op == 2) { /* x != value */
      /* => All x are different from value */
      /* Return indices of all non-missing 'x' */
      return(whichNonNA_int(x, nx));
    } else if (op == 3) { /* x < value */
      if (value > 0) {
        value_int++;
      } else {
        value_int--;
        op = 4;
      }
    } else if (op == 4) { /* x <= value */
      if (value < 0) value_int--;
    } else if (op == 5) { /* x > value */
      if (value > 0) {
        value_int++;
        op = 6;
      } else {
        value_int--;
      }
    } else if (op == 6) { /* x >= value */
      if (value > 0) value_int++;
    }
  } /* if (fraction != 0) */
  
  return whichIs_int_int(x, nx, value_int, op);
} /* whichIs_int_double() */


SEXP whichIs(SEXP x, SEXP y, SEXP operator) {
  SEXP ans = NILSXP;
  R_xlen_t nx = xlength(x);
  int op = asInteger(operator);
  int value_i;
  double value_d;
  SEXP tmp;

  if (op < 1 || op > 6) {
    error("Unknown value on argument 'op': %d", op);
  }

  if (xlength(y) != 1) {
    /* Swap 'x' and 'y'? ... such that 'y' is always scalar */
    if (nx == 1) {
      tmp = x;
      x = y;
      y = tmp;
      nx = xlength(x);
    } else {
      error("Either argument 'x' or 'y' must be a scalar");
    }
  }


  /* Match toward an integer (or a logical) scalar ... ? */
  if (isInteger(y) || isLogical(y)) {
    value_i = asInteger(y);
    
    /* Early stopping? */
    if (value_i == NA_INTEGER) {
      return(allocSeqEmpty());
    }

    if (isInteger(x) || isLogical(x)) {
      ans = whichIs_int_int(INTEGER(x), nx, value_i, op);
    } else if (isReal(x)) {
      ans = whichIs_double_int(REAL(x), nx, value_i, op);
    } else {
      error("Unsupported type of 'x'. Only logical, integer and numeric vectors can be searched.");
    }
  } else if (isReal(y)) { /* ... or a double scalar? */
    value_d = asReal(y);
    
    /* Early stopping? */
    if (ISNAN(value_d)) {
      return(allocSeqEmpty());
    }
    
    if (isInteger(x) || isLogical(x)) {
      ans = whichIs_int_double(INTEGER(x), nx, value_d, op);
    } else if (isReal(x)) {
      ans = whichIs_double_double(REAL(x), nx, value_d, op);
    } else {
      error("Unsupported type of 'x'. Only logical, integer and numeric vectors can be searched.");
    }
  } else {
    error("Unsupported type of 'y'. Only logical, integer and numeric scalars can be compared to.");
  }
  
  return ans;
} /* whichIs() */
