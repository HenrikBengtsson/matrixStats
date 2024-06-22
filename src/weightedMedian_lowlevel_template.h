/***********************************************************************
 TEMPLATE:
  double weightedMedian_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nx, double *w, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA, int narm, int interpolate, int ties

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Constants.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"
#include <R_ext/Error.h>


double CONCAT_MACROS(weightedMedian, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nx, double *w,
                     R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA,
                     int narm, int interpolate, int ties) {
  X_C_TYPE value;
  X_C_TYPE *xtmp;
  double weight, res;
  double dx, dy, Dy;
  double *wtmp, *wcum, wtotal, wlow, whigh, tmp_d, tmp_d2;
  R_xlen_t nxt, ii, jj, half;
  int *idxs_int;
  int equalweights = 0;

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* Weights                                                             */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  wtmp = Calloc(nidxs, double);

  /* Check for missing, negative, and infinite weights */
  nxt = 0;
  for (ii=0; ii < nidxs; ii++) {
    /* Assume negative or missing weight by default or
       that the signals is missing and should be dropped */
    wtmp[ii] = 0;

    /*
     * Unlike the indices, the weights are not pre-checked for NA values in any way,
     * meaning that we must pretend that the weights have NA-values in them
     */
    weight = R_INDEX_GET(w, ((idxs == NULL) ? (ii) : idxs[ii]), NA_REAL, 1);
    if (ISNAN(weight)) {
      if (!narm) {
        Free(wtmp);
        return NA_REAL;
      }
    } else if (weight <= 0) {
      /* Drop non-positive weights */
    } else if (isinf(weight)) {
      /* Detected a +Inf.  From now on, treat all +Inf
         weights equal and drop everything else */
      nxt = 0;
      for (jj=0; jj < nidxs; jj++) {
        /* Assume non-infinite weight by default */
        wtmp[jj] = 0;

        weight = R_INDEX_GET(w, ((idxs == NULL) ? (jj) : idxs[jj]), NA_REAL, 1);
        if (isinf(weight)) {
          value = R_INDEX_GET(x, ((idxs == NULL) ? (jj) : idxs[jj]), X_NA, idxsHasNA);
          if (X_ISNAN(value)) {
            if (!narm) {
              Free(wtmp);
              return NA_REAL;
            }
          } else {
            /* Infinite weight, i.e. use data point */
            wtmp[jj] = 1;
            nxt++;
          }
        } else if (ISNAN(weight)) {
          if (!narm) {
            Free(wtmp);
            return NA_REAL;
          }
        }
      }
      equalweights = 1;
      break;
    } else {
      /* A data points with a finite positive weight */
      value = R_INDEX_GET(x, ((idxs == NULL) ? (ii) : idxs[ii]), X_NA, idxsHasNA);
      if (X_ISNAN(value)) {
        if (!narm) {
          Free(wtmp);
          return NA_REAL;
        }
      } else {
        /* A data point with a non-missing value */
        wtmp[ii] = weight;
        nxt++;
      }
    }
  }

  /*
  printf("nx=%d, nxt=%d\n", nx, nxt);
  for (ii=0; ii < nx; ii++) printf("w[%d]=%g, wtmp[%d]=%g\n", (int)ii, (double)w[ii], (int)ii, wtmp[ii]);
  */

  /* Nothing to do? */
  if (nxt == 0) {
    Free(wtmp);
    return NA_REAL;
  }


  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* Copy (x,w) to work with and calculate total weight                  */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  xtmp = Calloc(nxt, X_C_TYPE);
  jj = 0;
  wtotal = 0;
  for (ii=0; ii < nidxs; ii++) {
    if (wtmp[ii] > 0) {
      /*    printf("ii=%d, jj=%d, wtmp[%d]=%g\n", (int)ii, (int)jj, (int)ii, wtmp[ii]); */
      xtmp[jj] = x[((idxs == NULL) ? (ii) : idxs[ii])]; // sure that xvalue is not NA
      wtmp[jj] = wtmp[ii];
      wtotal += wtmp[jj];
      jj++;
    }
  }
  x = xtmp;
  w = wtmp;
  nx = nxt;


/*
  for (ii=0; ii < nx; ii++) printf("x[%d]=%g, w[%d]=%g\n", (int)ii, (double)x[ii], (int)ii, w[ii]);
*/

  /* Early stopping? */
  if (nx == 1) {
    res = (double)x[0];
    Free(xtmp);
    Free(wtmp);
    return res;
  }


  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* All weights equal?  Happens if +Inf were detected.                  */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  if (equalweights) {
    half = (nx+1) / 2;
    /*
    printf("half=%d\n", (int)half);
*/

    X_PSORT(x, nx, half);
    /*
    for (ii=0; ii < nx; ii++) printf("x[%d]=%g\n", (int)ii, (double)x[ii]);
    */
    /* FIXME: Add support for ties here too */
    if (nx % 2 == 1) {
      res = (double)x[half-1];
    } else {
      X_PSORT(x, half, half-1);
      res = ((double)x[half-1] + (double)x[half]) / 2;
    }

    Free(xtmp);
    Free(wtmp);
    return res;
  }


  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* Sort x and calculated the cumulative sum of weights (normalize to   */
  /* one) according to the reordered vector.                             */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* (a) Sort x */
  idxs_int = Calloc(nx, int);
  for (ii = 0; ii < nx; ii++) idxs_int[ii] = ii;
  X_QSORT_I(x, idxs_int, 1, nx);

  /* (b) Normalized cumulative weights */
  wcum = Calloc(nx, double);
  tmp_d2 = 0;
  /* Index where cumulative weight passed 1/2 */
  half = nx+1; /* Default is last */

  if (interpolate) {
    /* Adjust */
    for (ii = 0; ii < nx; ii++) {
      tmp_d = w[idxs_int[ii]] / wtotal;
      tmp_d2 += tmp_d;
      wcum[ii] = tmp_d2 - (tmp_d/2);
      if (wcum[ii] >= 0.5) {
        half = ii;
        /* Early stopping - no need to continue */
        break;
      }
    }
  } else {
    for (ii = 0; ii < nx; ii++) {
      tmp_d2 += w[idxs_int[ii]] / wtotal;
      wcum[ii] = tmp_d2;
      if (tmp_d2 > 0.5) {
        half = ii;
        /* Early stopping - no need to continue */
        break;
      }
    }
  }
  Free(wtmp);
  Free(idxs_int);


  /* Two special cases where more than half of the total weight is at
     a) the first, or b) the last value */
  if (half == 0 || half == nx) {
    res = (double)x[half];
    Free(wcum);
    Free(xtmp);
    return res;
  }


  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* Alt 1: Linearly interpolated weighted median                        */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  if (interpolate) {
    /* The width and the height of the "rectangle". */
    dx = (double)(x[half] - x[half-1]);
    Dy = wcum[half] - wcum[half-1];
/*    printf("dx=%g, Dy=%g\n", dx, Dy); */

    /* The width and the height of the triangle which upper corner touches
       the level where the cumulative sum of weights *equals* half the
       total weight. */
    dy = 0.5 - wcum[half];
    dx = (dy/Dy) * dx;
/*    printf("dx=%g, dy=%g\n", dx, dy); */

    /* The corresponding x value */
    res = dx + x[half];

    Free(wcum);
    Free(xtmp);

    return res;
  }


  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
  /* Alt 2: Classical weighted median (tied or not)                      */
  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  /* At this point we know that:
      1) at most half the total weight is in the set x[1:half],
      2) that the set x[(half+2):n] contains less than half the total weight
     The question is whether x[(half+1):n] contains *more* than
     half the total weight (try x=c(1,2,3), w=c(1,1,1)). If it is then
     we can be sure that x[half+1] is the weighted median we are looking
     for, otherwise it is any function of x[k:(half+1)]. */
  wlow = wcum[half-1];
  whigh = 1 - wlow;

/*
 printf("half=%d, wtotal=%g, wlow=%g, whigh=%g, ties=%d\n", half, (double)wtotal, (double)wlow, (double)whigh, ties);
printf("x[half+(-1:1)]=c(%g, %g, %g)\n", x[half-1-1], x[half-1], x[half-1+1]);

*/

  if (whigh > 0.5) {
/*  printf("matrixStats2: Not a tie!\n"); */
    /* Not a tie */
    res = x[half];
  } else {
/*  printf("matrixStats2: A tie!\n"); */
    /* A tie! */
    if (ties == 1) { /* weighted */
  /* printf("ties=%d, half=%d, wlow*x[half]=%g, whigh*x[half+1]=%g\n", ties, half, wlow*x[half-1], whigh*x[half]); */
      res = wlow*(double)x[half-1] + whigh*(double)x[half];
    } else if (ties == 2) { /* min */
      res = (double)x[half-1];
    } else if (ties == 4) { /* max */
      res = (double)x[half];
    } else if (ties == 8) { /* mean */
      res = ((double)x[half-1] + (double)x[half]) / 2;
    } else {
      error("Unknown value of argument 'ties': %d", ties);
    }
  }

  Free(wcum);
  Free(xtmp);

  return res;
}


/***************************************************************************
 HISTORY:
 2015-07-09 [DJ]
  o Supported subsetted computation.
 2015-01-01 [HB]
 o Created.
 **************************************************************************/
