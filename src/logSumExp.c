/***************************************************************************
 Public methods:
 SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA)
 SEXP rowLogSumExps(SEXP lx, SEXP naRm, SEXP hasNA, SEXP byRow)

 Arguments:
   lx   : numeric vector
   naRm : a logical scalar
   hasNA: a logical scalar


 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2013
 **************************************************************************/

/* Include R packages */
#include <R.h>
#include <Rdefines.h>
#include <Rmath.h>


/* 
 logSumExp_double(x):

  1. Scans for the maximum value of x=(x[0], x[1], ..., x[n-1])
  2. Computes result from 'x'.

  NOTE: The above sweeps the "contiguous" 'x' vector twice.
*/
double logSumExp_double(double *x, int n, int narm, int hasna) {
  int ii, iMax;
  double xii, xMax, sum;

  /* Quick return? */
  if (n == 0) {
    return(R_NegInf);
  } else if (n == 1) {
    if (narm && ISNAN(x[0])) {
      return(R_NegInf);
    } else {
      return(x[0]);
    }
  }

  /* Find the maximum value */
  iMax = 0;
  xMax = x[0];
  for (ii=1; ii < n; ii++) {
    /* Get the ii:th value */
    xii = x[ii];

    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(R_NaReal);
      }
    }

    if (xii > xMax) {
      iMax = ii;
      xMax = xii;
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  } /* for (ii ...) */

  /* Sum differences */
  sum = 0.0;
  for (ii=0; ii < n; ii++) {
    if (ii == iMax) {
      continue;
    }

    /* Get the ii:th value */
    xii = x[ii];

    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(R_NaReal);
      }
    } else {
      sum += exp(xii - xMax);
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  } /* for (ii ...) */

  sum = xMax + log1p(sum);

  return(sum);
} /* logSumExp_double() */



/* 
 logSumExp_double_by(x):

  1. Scans for the maximum value of x=(x[0], x[by], ..., x[(n-1)*by])
     and copies the values to xx = (xx[0], xx[1], xx[2], ..., xx[n-1]),
     which *must* be preallocated.
  2. Computes result from 'xx'.

  NOTE: The above sweeps the "scattered" 'x' vector only once, and then 
  the "contigous" 'xx' vector once.  This is more likely to create 
  cache hits.
*/
double logSumExp_double_by(double *x, int n, int narm, int hasna, int by, double *xx) {
  int ii, iMax, idx;
  double xii, xMax, sum;

  /* Quick return? */
  if (n == 0) {
    return(R_NegInf);
  } else if (n == 1) {
    if (narm && ISNAN(x[0])) {
      return(R_NegInf);
    } else {
      return(x[0]);
    }
  }


  /* To increase the chances for cache hits below, which 
     sweeps through the data twice, we copy data into a
     temporary contigous vector while scanning for the
     maximum value. */

  /* Find the maximum value (and copy) */
  iMax = 0;
  xMax = x[0];
  xx[0] = xMax;
  idx = 0;
  for (ii=1; ii < n; ii++) {
    /* Get the ii:th value */
    idx = idx + by;
    xii = x[idx];

    /* Copy */
    xx[ii] = xii;

    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(R_NaReal);
      }
    }

    if (xii > xMax) {
      iMax = ii;
      xMax = xii;
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  } /* for (ii ...) */


  /* Sum differences */
  sum = 0.0;
  for (ii=0; ii < n; ii++) {
    if (ii == iMax) {
      continue;
    }

    /* Get the ii:th value */
    xii = xx[ii];

    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(R_NaReal);
      }
    } else {
      sum += exp(xii - xMax);
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  } /* for (ii ...) */

  sum = xMax + log1p(sum);

  return(sum);
} /* logSumExp_double_by() */



SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA) {
  int narm, hasna;
  double *x;
  int n;

  /* Argument 'lx': */
  if (!isReal(lx)) {
    error("Argument 'lx' must be a numeric vector.");
  }

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  /* Argument 'hasNA': */
  hasna = LOGICAL(hasNA)[0];

  /* If unknown, assume NAs */
  if (ISNAN(hasna)) {
    hasna = TRUE;
  }

  /* Get the values */
  x = REAL(lx);
  n = length(lx);

  return(Rf_ScalarReal(logSumExp_double(x, n, narm, hasna)));
} /* logSumExp() */



SEXP rowLogSumExps(SEXP lx, SEXP naRm, SEXP hasNA, SEXP byRow) {
  SEXP ans;
  int narm, hasna, byrow;
  int nrow, ncol, len, ii;
  double *x, *xx;

  /* Argument 'lx': */
  if (!isMatrix(lx)) {
    error("Argument 'lx' must be a matrix.");
  }
  if (!isReal(lx)) {
    error("Argument 'lx' must be a numeric vector.");
  }

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  /* Argument 'hasNA': */
  hasna = LOGICAL(hasNA)[0];

  /* Argument 'byRow': */
  byrow = INTEGER(byRow)[0];

  /* If unknown, assume NAs */
  if (ISNAN(hasna)) {
    hasna = TRUE;
  }

  /* Get dimensions of 'lx'. */
  PROTECT(ans = getAttrib(lx, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];
  UNPROTECT(1); /* PROTECT(ans = ...) */

  /* R allocate a double vector of length 'nrow'
     Note that 'nrow' means 'ncol' if byrow=FALSE. */ 
  if (byrow) { len = nrow; } else { len = ncol; }
  PROTECT(ans = allocVector(REALSXP, len));

  /* Get the values */
  x = REAL(lx);

  if (byrow) {
    /* R allocate memory for row-vector 'xx' of length 'ncol'. 
       This will be taken care of by the R garbage collector later on. */
    xx = (double *) R_alloc(ncol, sizeof(double));

    for (ii=0; ii < nrow; ii++) {
      REAL(ans)[ii] = logSumExp_double_by(x, ncol, narm, hasna, nrow, xx);
      /* Move to the beginning next row */
      x++;
    }
  } else {
    for (ii=0; ii < ncol; ii++) {
      REAL(ans)[ii] = logSumExp_double(x, nrow, narm, hasna);
      /* Move to the beginning next column */
      x += nrow;
    }
  }

  UNPROTECT(1); /* PROTECT(ans = ...) */

  return(ans);
} /* rowLogSumExps() */



/***************************************************************************
 HISTORY:
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
