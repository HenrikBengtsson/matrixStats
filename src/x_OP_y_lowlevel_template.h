#include "000.types.h"
#include "000.templates-types.h"

#define X_C_Y_C_SIGNATURE CONCAT_MACROS(X_C_SIGNATURE, Y_C_SIGNATURE)
#define METHOD_NAME CONCAT_MACROS(METHOD, X_C_Y_C_SIGNATURE)


#if OP == '+'
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
    return (double)x + (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME)
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
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME)
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
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME)
  static R_INLINE double FUN_no_NA(X_C_TYPE x, Y_C_TYPE y) {
#if X_TYPE == 'i'
    if (X_ISNAN(x)) return NA_REAL;
#endif
#if Y_TYPE == 'i'
    if (Y_ISNAN(y)) return NA_REAL;
#endif
    return (double)x * (double)y;
  }
  #define FUN_narm CONCAT_MACROS(FUN, METHOD_NAME)
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
  #define FUN_no_NA CONCAT_MACROS(FUN_no_NA, METHOD_NAME)
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

  
void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol,
                        Y_C_TYPE *y, R_xlen_t ny,
                        R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA,
                        R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA,
                        R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA,
                        int byrow, int commute,
                        int narm, int hasna,
                        ANS_C_TYPE *ans, R_xlen_t n) {
  R_xlen_t ii, jj, kk, idx, colBegin;
  R_xlen_t txi, yi;
  X_C_TYPE xvalue;
  Y_C_TYPE yvalue;
  int noxcols, noxrows, noyidxs;
  double value;
  
  if (xcols == NULL) { noxcols = 1; } else { noxcols = 0; }
  if (xrows == NULL) { noxrows = 1; } else { noxrows = 0; }
  if (yidxs == NULL) { noyidxs = 1; } else { noyidxs = 0; }
  
#if ANS_TYPE == 'i'
  int ok = 1; /* OK, i.e. no integer overflow yet? */
  double R_INT_MIN_d = (double)R_INT_MIN,
         R_INT_MAX_d = (double)R_INT_MAX;
#endif

  yi = 0;
  kk = 0;

  if (byrow) {
    if (commute) {
      if (narm) {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          txi = jj;
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
            
            if (noyidxs) {
                idx = txi%nyidxs;
                yvalue = y[idx];
            } else {
                idx = yidxs[txi%nyidxs];
                if (!yidxsHasNA) {
                    yvalue = y[idx];
                }
                else {
                    yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
                }
            }
            
            value = FUN_narm(yvalue, xvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            txi += nxcols;  /* txi = ii * nxcols + jj; */
          }
        }
      } else {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          txi = jj;
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = txi%nyidxs;
                  yvalue = y[idx];
              } else {
                  idx = yidxs[txi%nyidxs];
                  if (!yidxsHasNA) {
                      yvalue = y[idx];
                  }
                  else {
                      yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
                  }
              }
              
            value = FUN_no_NA(yvalue, xvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            txi += nxcols;  /* txi = ii * nxcols + jj; */
          }
        }
      }
    } else {
      if (narm) {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          txi = jj;
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = txi%nyidxs;
                  yvalue = y[idx];
              } else {
                  idx = yidxs[txi%nyidxs];
                  if (!yidxsHasNA) {
                      yvalue = y[idx];
                  }
                  else {
                      yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
                  }
              }
              
            value = FUN_narm(xvalue, yvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            txi += nxcols;  /* txi = ii * nxcols + jj; */
          }
        }
      } else {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          txi = jj;
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = txi%nyidxs;
                  yvalue = y[idx];
              } else {
                  idx = yidxs[txi%nyidxs];
                  if (!yidxsHasNA) {
                      yvalue = y[idx];
                  }
                  else {
                      yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
                  }
              }

            value = FUN_no_NA(xvalue, yvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            txi += nxcols;  /* txi = ii * nxcols + jj; */
          }
        }
      }
    }
  } else { /* if (byrow) */
    if (commute) {
      if (narm) {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
            
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = yi;
                  yvalue = y[idx];
              } else if (!yidxsHasNA) {
                  idx = yidxs[yi];
                  yvalue = y[idx];
              } else {
                  idx = yidxs[yi];
                  yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
              }
              
            value = FUN_narm(yvalue, xvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            if (++ yi >= nyidxs) yi = 0;
          }
        }
      } else {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = yi;
                  yvalue = y[idx];
              } else if (!yidxsHasNA) {
                  idx = yidxs[yi];
                  yvalue = y[idx];
              } else {
                  idx = yidxs[yi];
                  yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
              }
            value = FUN_no_NA(yvalue, xvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            if (++ yi >= nyidxs) yi = 0;
          }
        }
      }
    } else {
      if (narm) {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = yi;
                  yvalue = y[idx];
              } else if (!yidxsHasNA) {
                  idx = yidxs[yi];
                  yvalue = y[idx];
              } else {
                  idx = yidxs[yi];
                  yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
              }
              
            value = FUN_narm(xvalue, yvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            if (++ yi >= nyidxs) yi = 0;
          }
        }
      } else {
        for (jj=0; jj < nxcols; ++jj) {
            if (noxcols) {
                colBegin = jj * nrow;
            } else {
                R_xlen_t colsElement = xcols[jj];
                if (!xcolsHasNA || colsElement != NA_R_XLEN_T) {
                    colBegin = colsElement * nrow;
                } else {
                    colBegin = NA_R_XLEN_T;
                }
            }
          for (ii=0; ii < nxrows; ++ii) {
              if (noxrows) {
                  if (!xcolsHasNA || colBegin != NA_R_XLEN_T) {
                      /*
                       * In this special case, we can eliminate
                       * the possibility of having NA indices
                       */
                      idx = colBegin + ii;
                      xvalue = x[idx];
                  } else {
                      xvalue = X_NA;
                  }
              } else if (!xrowsHasNA && !xcolsHasNA) {
                  idx = colBegin + xrows[ii];
                  xvalue = x[idx];
              } else {
                  idx = R_INDEX_OP(colBegin, +, (xrows[ii]), 1, 1);
                  xvalue = R_INDEX_GET(x, idx, X_NA, 1);
              }
              
              if (noyidxs) {
                  idx = yi;
                  yvalue = y[idx];
              } else if (!yidxsHasNA) {
                  idx = yidxs[yi];
                  yvalue = y[idx];
              } else {
                  idx = yidxs[yi];
                  yvalue = R_INDEX_GET(y, idx, Y_NA, 1);
              }

            value = FUN_no_NA(xvalue, yvalue);
#if ANS_TYPE == 'i'
            if (ok && (value < R_INT_MIN_d || value > R_INT_MAX_d)) {
              ok = 0;
              value = NA_REAL;
            }
            ans[kk ++] = ISNAN(value) ? NA_INTEGER : (ANS_C_TYPE) value;
#else
            ans[kk ++] = (ANS_C_TYPE) value;
#endif

            if (++ yi >= nyidxs) yi = 0;
          }
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
