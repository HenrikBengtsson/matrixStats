#include <Rinternals.h>
/*
 * Sets type-specific macros
 */
#define CONCAT(x,y) x ##_## y
#define CONCAT_MACROS(x,y) CONCAT(x,y)

/*
 Data type macros for argument 'x'
 */
#if X_TYPE == 'i'
  #ifndef METHOD_NAME
    #define METHOD_NAME CONCAT_MACROS(METHOD, Integer)
  #endif
  #define X_C_TYPE int
  #define X_IN_C INTEGER
  #define X_ISNAN(x) (x == NA_INTEGER)
  #define X_ABS(x) abs(x)
  #define X_PSORT iPsort
  #define X_QSORT_I R_qsort_int_I
#elif X_TYPE == 'r'
  #ifndef METHOD_NAME
    #define METHOD_NAME CONCAT_MACROS(METHOD, Real)
  #endif
  #define X_C_TYPE double
  #define X_IN_C REAL
  #define X_ISNAN(x) ISNAN(x)
  #define X_ABS(x) fabs(x)
  #define X_PSORT rPsort
  #define X_QSORT_I R_qsort_I
#elif X_TYPE == 'l'
  #ifndef METHOD_NAME
    #define METHOD_NAME CONCAT_MACROS(METHOD, Logical)
  #endif
  #define X_C_TYPE int
  #define X_IN_C LOGICAL
  #define X_ISNAN(x) (x == NA_LOGICAL)
#endif


/*
 Data type macros for result ('ans')
 */
#ifndef ANS_TYPE
  /* Default to same as 'x' */
  #define ANS_TYPE X_TYPE
#endif

#if ANS_TYPE == 'i'
  #define ANS_SXP INTSXP
  #define ANS_NA NA_INTEGER
  #define ANS_C_TYPE int
  #define ANS_IN_C INTEGER
#elif ANS_TYPE == 'r'
  #define ANS_SXP REALSXP
  #define ANS_NA NA_REAL
  #define ANS_C_TYPE double
  #define ANS_IN_C REAL
#elif ANS_TYPE == 'l'
  #define ANS_SXP LGLSXP
  #define ANS_NA NA_LOGICAL
  #define ANS_C_TYPE int
  #define ANS_IN_C LOGICAL
#endif
