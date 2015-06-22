#include "types.h"
#include "templates-types.h"

#if OP == '+'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Add)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
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
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
    return (double)x - (double)y;
  }
  #define FUN_narm FUN_no_NA
#elif OP == '*'
  #define METHOD_NAME_T CONCAT_MACROS(METHOD_NAME, Mul)
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME_T)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
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
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
    return (double)x / (double)y;
  }
  #define FUN_narm FUN_no_NA
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
  double value;
#if ANS_TYPE == 'i'
  int ok = 1; /* OK, i.e. no integer overflow yet? */
  double R_INT_MIN_d = (double)R_INT_MIN, 
         R_INT_MAX_d = (double)R_INT_MAX;
#endif

  xi = 0;
  txi = row = col = 0;
  yi = 0;

  if (byrow) {
    if (commute) {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          value = FUN_narm(y[yi], x[xi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
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
          value = FUN_no_NA(y[yi], x[xi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
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
          value = FUN_narm(x[xi], y[yi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
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
          value = FUN_no_NA(x[xi], y[yi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
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
          value = FUN_narm(y[yi], x[xi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          value = FUN_no_NA(y[yi], x[xi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      }
    } else {
      if (narm) {
        for (kk=0; kk < n; kk++) {
          value = FUN_narm(x[xi], y[yi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      } else {
        for (kk=0; kk < n; kk++) {
          value = FUN_no_NA(x[xi], y[yi]);
#if ANS_TYPE == 'i'
          if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
            ok = 0;
            value = NA_REAL;
          }
          ans[kk] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
          ans[kk] = (ANS_C_TYPE) value;
#endif
          if (++xi >= nx) xi = 0;
          if (++yi >= ny) yi = 0;
        }
      }
    }
  } /* if (byrow) */

#if ANS_TYPE == 'i'
  /* Warn on integer overflow? */
  if (!ok) {
    warning("Integer overflow. Detected one or more elements whose absolute values were out of the range [%d,%d] that can be used to for integers. Such values are set to NA_integer_.", R_INT_MIN, R_INT_MAX);
  }
#endif
}

#undef FUN
#undef FUN_narm
#undef METHOD_NAME_T

/* Undo template macros */
#include "templates-types_undef.h"

