/***********************************************************************
 TEMPLATE:
  void colCounts_<Integer|Real|Logical>(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, X_C_TYPE value, int narm, int hasna, int *ans)

 GENERATES:
  void colCounts_Real(double *x, R_xlen_t nrow, R_xlen_t ncol, double value, int narm, int hasna, int *ans)
  void colCounts_Integer(int *x, R_xlen_t nrow, R_xlen_t ncol, int value, int narm, int hasna, int *ans)
  void colCounts_Logical(int *x, R_xlen_t nrow, R_xlen_t ncol, int value, int narm, int hasna, int *ans)

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i', 'r', or 'l'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"


void METHOD_NAME(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, X_C_TYPE value, int what, int narm, int hasna, int *ans) {
  R_xlen_t ii, jj, kk;
  int count;
  X_C_TYPE xvalue;

  if (what == 0L) {  /* all */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 1;
        for (ii=0; ii < nrow; ii++) {
          if (!X_ISNAN(x[kk++])) {
            count = 0;
            /* Found another value! Early stopping */
            kk += nrow - ii - 1;
            break;
          }
        }
        ans[jj] = count;
      }
    } else {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 1;
        for (ii=0; ii < nrow; ii++) {
          xvalue = x[kk++];
          if (xvalue == value) {
          } else if (narm && X_ISNAN(xvalue)) {
            /* Skip */
          } else if (!narm && X_ISNAN(xvalue)) {
            /* Early stopping is not possible, because if we do
               find an element that is not 'value' later, then
               we know for sure that all = FALSE regardless of
               missing values. In other words, at this point
               the answer can be either NA or FALSE.*/
            count = NA_INTEGER;
            } else {
            count = 0;
            /* Found another value! Early stopping */
            kk += nrow - ii - 1;
            break;
          }
        } /* for (ii ...) */
        ans[jj] = count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } else if (what == 1L) {  /* any */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 0;
        for (ii=0; ii < nrow; ii++) {
          if (X_ISNAN(x[kk++])) {
            count = 1;
            /* Found value! Early stopping */
            kk += nrow - ii - 1;
            break;
          }
        }
        ans[jj] = count;
      }
    } else {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 0;
        for (ii=0; ii < nrow; ii++) {
          xvalue = x[kk++];
          if (xvalue == value) {
            count = 1;
            /* Found value! Early stopping */
            kk += nrow - ii - 1;
            break;
          } else if (narm && X_ISNAN(xvalue)) {
            /* Skipping */
          } else if (!narm && X_ISNAN(xvalue)) {
            /* Early stopping is not possible, because if we do
               find an element that is 'value' later, then
               we know for sure that any = TRUE regardless of
               missing values. In other words, at this point
               the answer can be either NA or TRUE.*/
            count = NA_INTEGER;
          }
        } /* for (ii ...) */
        ans[jj] = count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } else if (what == 2L) {  /* count */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 0;
        for (ii=0; ii < nrow; ii++) {
          if (X_ISNAN(x[kk++])) {
            ++count;
          }
        }
        ans[jj] = count;
      }
    } else {
      kk = 0;
      for (jj=0; jj < ncol; jj++) {
        count = 0;
        for (ii=0; ii < nrow; ii++) {
          xvalue = x[kk++];
          if (xvalue == value) {
            ++count;
          } else if (!narm && X_ISNAN(xvalue)) {
            count = NA_INTEGER;
            /* Early stopping */
            kk += nrow - ii - 1;
            break;
          }
        } /* for (ii ...) */
        ans[jj] = count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } else {
    error("INTERNAL ERROR: Unknown value of 'what' for colCounts: %d", what);
  } /* if (what) */
}

/* Undo template macros */
#include "templates-types_undef.h"


/***************************************************************************
 HISTORY:
 2014-11-14 [HB]
  o Created colCounts() templates from rowCounts() templates.
 **************************************************************************/
