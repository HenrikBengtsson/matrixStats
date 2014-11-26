#include "types.h"
#include "templates-types.h"

#if OP == '+'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Add)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x + (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME_T)
  static R_INLINE double FUN_narm(X_C_TYPE x, Y_C_TYPE y) {
    if (X_ISNAN(x)) {
      return (double)y;
    } else if (Y_ISNAN(y)) {
      return (double)x;
    } else {
      return (double)x + (double)y;
    }
  }
#elif OP == '-'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Sub)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x - (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME_T)
  static R_INLINE double FUN_narm(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x - (double)y;
  }
#elif OP == '*'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Mul)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x * (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME_T)
  static R_INLINE double FUN_narm(X_C_TYPE x, Y_C_TYPE y) {
    if (X_ISNAN(x)) {
      return (double)y;
    } else if (Y_ISNAN(y)) {
      return (double)x;
    } else {
      return (double)x * (double)y;
    }
  }
#elif OP == '/'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Div)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x / (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME_T)
  static R_INLINE double FUN_narm(X_C_TYPE x, Y_C_TYPE y) {
    return (double)x / (double)y;
  }
#else
  #error "INTERNAL ERROR: Failed to set C inline function FUN(x, y): Unknown OP"
#endif

void METHOD_NAME_T(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol,
                   Y_C_TYPE *y, R_xlen_t ny,
                   int byrow, int commute,
                   int narm, int hasna, 
                   ANS_C_TYPE *ans, R_xlen_t n) {
  R_xlen_t kk, xi, yi, nx = nrow * ncol;
  R_xlen_t row, col, txi;

  xi = 0;
  txi = row = col = 0;
  yi = 0;

  if (byrow) {
    if (commute) {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_narm(y[yi], x[xi]);
          if (++xi >= nx) xi = 0;
          if (++row >= nrow) {         /* Current index in t(x):  */
            row = 0;                   /* col = xi / nrow;        */
            col++;                     /* row = xi % nrow;        */
            txi = col;                 /* txi = row * ncol + col; */
          } else {
            txi += ncol;
          }
          yi = txi % ny;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_no_NA(y[yi], x[xi]);
          if (++xi >= nx) xi = 0;
          if (++row >= nrow) {         /* Current index in t(x):  */
            row = 0;                   /* col = xi / nrow;        */
            col++;                     /* row = xi % nrow;        */
            txi = col;                 /* txi = row * ncol + col; */
          } else {
            txi += ncol;
          }
          yi = txi % ny;
        }
      }
    } else {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_narm(x[xi], y[yi]);
          if (++xi >= nx) xi = 0;
          if (++row >= nrow) {         /* Current index in t(x):  */
            row = 0;                   /* col = xi / nrow;        */
            col++;                     /* row = xi % nrow;        */
            txi = col;                 /* txi = row * ncol + col; */
          } else {
            txi += ncol;
          }
          yi = txi % ny;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_no_NA(x[xi], y[yi]);
          if (++xi >= nx) xi = 0;
          if (++row >= nrow) {         /* Current index in t(x):  */
            row = 0;                   /* col = xi / nrow;        */
            col++;                     /* row = xi % nrow;        */
            txi = col;                 /* txi = row * ncol + col; */
          } else {
            txi += ncol;
          }
          yi = txi % ny;
        }
      }
    }
  } else {
    if (commute) {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_narm(y[yi], x[xi]);
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_no_NA(y[yi], x[xi]);
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      }
    } else {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_narm(x[xi], y[yi]);
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          ans[kk] = (ANS_C_TYPE) FUN_no_NA(x[xi], y[yi]);
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      }
    }
  }
}

#undef FUN
#undef METHOD_NAME_T

/* Undo template macros */
#include "templates-types_undef.h"

