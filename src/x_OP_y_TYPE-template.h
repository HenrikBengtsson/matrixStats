#include "types.h"
#include "templates-types.h"

#if OP == '+'
  #define FUN(x,y) (double)x + (double)y
  #define FUN_no_y(x,y) (double)x
  #define FUN_no_x(x,y) (double)y
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Add)
#elif OP == '-'
  #define FUN(x,y) (double)x - (double)y
  #define FUN_no_y(x,y) (double)x
  #define FUN_no_x(x,y) -(double)y
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Sub)
#elif OP == '*'
  #define FUN(x,y) (double)x * (double)y
  #define FUN_no_y(x,y) (double)x
  #define FUN_no_x(x,y) (double)y
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Mul)
#elif OP == '/'
  #define FUN(x,y) (double)x / (double)y
  #define FUN_no_y(x,y) (double)x
  #define FUN_no_x(x,y) 1 / (double)y
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Div)
#else
  #error "INTERNAL ERROR: Failed to set C macro FUN(x,y): Unknown OP"
#endif

void METHOD_NAME_T(X_C_TYPE *x, R_xlen_t nx, 
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
        value = FUN_no_x(xvalue, yvalue);
      } else if (Y_ISNAN(yvalue)) {
        value = FUN_no_y(xvalue, tvalue);
      } else {
        value = FUN(xvalue, yvalue);
      }
    } else {
      value = FUN(xvalue, yvalue);
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

#undef FUN
#undef FUN_no_x
#undef FUN_no_y
#undef METHOD_NAME_T

/* Undo template macros */
#include "templates-types_undef.h"

