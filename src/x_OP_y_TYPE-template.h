#include "types.h"
#include "templates-types.h"

void METHOD_NAME(X_C_TYPE *x, R_xlen_t nx, 
                 Y_C_TYPE *y, R_xlen_t ny, 
                 int narm, int hasna, 
                 ANS_C_TYPE *ans, R_xlen_t n) {
  X_C_TYPE xvalue;
  Y_C_TYPE yvalue;
  double value;
  R_xlen_t kk, xi, yi;

  xi = 0;
  yi = 0;

  for (kk=0; kk < n; kk++) {
    xvalue = x[xi];
    yvalue = y[yi];

    if (narm) {
      if (X_ISNAN(xvalue)) {
        value = (double) yvalue;
      } else if (Y_ISNAN(yvalue)) {
        value = (double) xvalue;
      } else {
        value = (double) xvalue * (double) yvalue;
      }
    } else {
      value = (double) xvalue * (double) yvalue;
    }

    /* Rprintf("xvalue=%g, yvalue=%g, value=%g\n", xvalue, yvalue, value); */
    ans[kk] = (ANS_C_TYPE) value;

    /* Next x and y values */
    xi++;
    yi++;
    if (xi >= nx) xi = 0;
    if (yi >= ny) yi = 0;
  } /* for (kk ...) */
}

/* Undo template macros */
#include "templates-types_undef.h"

