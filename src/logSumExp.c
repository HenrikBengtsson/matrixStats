/***************************************************************************
 Public methods:
 SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA)

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


SEXP logSumExp(SEXP lx, SEXP naRm, SEXP hasNA) {
  int narm, hasna;
  int n, ii, iMax;
  double *x, xii, xMax, sum;

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

  /* Quick return? */
  n = length(lx);
  if (n == 0) {
    return(Rf_ScalarReal(R_NegInf));
  } else if (n == 1) {
    if (narm && ISNAN(x[0])) {
      return(Rf_ScalarReal(R_NegInf));
    } else {
      return(lx);
    }
  }

  /* Find the maximum value */
  iMax = 0;
  xMax = x[0];
  for (ii=1; ii < n; ii++) {
    xii = x[ii];

    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(Rf_ScalarReal(R_NaReal));
      }
    }

    if (xii > xMax) {
      iMax = ii;
      xMax = xii;
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  }

  /* Sum differences */
  sum = 0.0;
  for (ii=0; ii < n; ii++) {
    if (ii == iMax) {
      continue;
    }

    xii = x[ii];
    if (hasna && ISNAN(xii)) {
      if (narm) {
        continue;
      } else {
        return(Rf_ScalarReal(R_NaReal));
      }
    } else {
      sum += exp(xii - xMax);
    }

    if (ii % 1000000 == 0) {
      R_CheckUserInterrupt();
    }
  }

  sum = xMax + log1p(sum);

  return(Rf_ScalarReal(sum));
} /* logSumExp() */


/***************************************************************************
 HISTORY:
 2013-04-30 [HB]
 o Created.
 **************************************************************************/
