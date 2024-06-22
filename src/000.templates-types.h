#include <Rinternals.h>
#include "000.macros.h"


#undef X_C_TYPE
#undef X_C_SIGNATURE
#undef X_IN_C
#undef X_ISNAN
#undef X_ISNA
#undef X_ABS
#undef X_PSORT
#undef X_QSORT_I
#undef X_NA

#undef Y_C_TYPE
#undef Y_C_SIGNATURE
#undef Y_IN_C
#undef Y_ISNAN
#undef Y_ISNA
#undef Y_ABS
#undef Y_PSORT
#undef Y_QSORT_I
#undef Y_NA

#undef X_C_Y_C_SIGNATURE

#undef ANS_SXP
#undef ANS_NA
#undef ANS_ISNAN
#undef ANS_ISNA
#undef ANS_C_TYPE
#undef ANS_IN_C


/*
 Data type macros for argument 'x'
 */
#ifdef X_TYPE
  #if X_TYPE == 'i'
    #define X_C_TYPE int
    #define X_C_SIGNATURE int
    #define X_IN_C INTEGER
    #define X_ISNAN(x) (x == NA_INTEGER)
    #define X_ISNA(x) (x == NA_INTEGER)
    #define X_ABS(x) abs(x)
    #define X_PSORT iPsort
    #define X_QSORT_I R_qsort_int_I
    #define X_NA NA_INTEGER
  #elif X_TYPE == 'r'
    #define X_C_TYPE double
    #define X_C_SIGNATURE dbl
    #define X_IN_C REAL
    #define X_ISNAN(x) ISNAN(x) /* True for R's NA and IEEE NaN */
    #define X_ISNA(x) ISNA(x)   /* True for R's NA */
    #define X_ABS(x) fabs(x)
    #define X_PSORT rPsort
    #define X_QSORT_I R_qsort_I
    #define X_NA NA_REAL
  #elif X_TYPE == 'l'
    #define X_C_TYPE int
    #define X_C_SIGNATURE lgl
    #define X_IN_C LOGICAL
    #define X_ISNAN(x) (x == NA_LOGICAL)
    #define X_NA NA_LOGICAL
  #else
    #error "INTERNAL ERROR: Failed to set C macro X_C_TYPE etc.: Unknown X_TYPE"
  #endif
#endif


/*
 Data type macros for argument 'y'
 */
#ifdef Y_TYPE
  #if Y_TYPE == 'i'
    #define Y_C_TYPE int
    #define Y_C_SIGNATURE int
    #define Y_IN_C INTEGER
    #define Y_ISNAN(x) (x == NA_INTEGER)
    #define Y_ISNA(x) (x == NA_INTEGER)
    #define Y_ABS(x) abs(x)
    #define Y_PSORT iPsort
    #define Y_QSORT_I R_qsort_int_I
    #define Y_NA NA_INTEGER
  #elif Y_TYPE == 'r'
    #define Y_C_TYPE double
    #define Y_C_SIGNATURE dbl
    #define Y_IN_C REAL
    #define Y_ISNAN(x) ISNAN(x) /* NA or NaN */
    #define Y_ISNA(x) ISNA(x) /* NA only */
    #define Y_ABS(x) fabs(x)
    #define Y_PSORT rPsort
    #define Y_QSORT_I R_qsort_I
    #define Y_NA NA_REAL
  #elif Y_TYPE == 'l'
    #define Y_C_TYPE int
    #define Y_C_SIGNATURE lgl
    #define Y_IN_C LOGICAL
    #define Y_ISNAN(x) (x == NA_LOGICAL)
    #define Y_NA NA_LOGICAL
  #else
    #error "INTERNAL ERROR: Failed to set C macro Y_C_TYPE etc.: Unknown Y_TYPE"
  #endif
#endif


/*
 Data type macros for result ('ans')
 */
#ifndef ANS_TYPE
  #ifdef X_TYPE
    /* Default to same as 'x' */
    #define ANS_TYPE X_TYPE
  #endif
#endif


#ifdef ANS_TYPE
  #if ANS_TYPE == 'i'
    #define ANS_SXP INTSXP
    #define ANS_NA NA_INTEGER
    #define ANS_ISNAN(x) (x == NA_INTEGER)
    #define ANS_ISNA(x) (x == NA_INTEGER)
    #define ANS_C_TYPE int
    #define ANS_IN_C INTEGER
  #elif ANS_TYPE == 'r'
    #define ANS_SXP REALSXP
    #define ANS_NA NA_REAL
    #define ANS_ISNAN(x) ISNAN(x) /* NA or NaN */
    #define ANS_ISNA(x) ISNA(x) /* NA only */
    #define ANS_C_TYPE double
    #define ANS_IN_C REAL
  #elif ANS_TYPE == 'l'
    #define ANS_SXP LGLSXP
    #define ANS_NA NA_LOGICAL
    #define ANS_ISNAN(x) (x == NA_LOGICAL)
    #define ANS_C_TYPE int
    #define ANS_IN_C LOGICAL
  #else
    #error "INTERNAL ERROR: Failed to set C macro ANS_C_TYPE: Unknown ANS_TYPE"
  #endif
#endif


/*
 Subsetted indexing: whether to check NA according to indexing
 For optimization purposes, these macros can skip checking
 whether the arguments are NA based on the macro arguments.
 This may seem like a futile optimization (we do branching),
 but such checking flags are often loop invariants meaning
 the compiler will optimize out the branches and put the
 before the loop.
 */
#undef R_INDEX_OP
#undef R_INDEX_GET

#define R_INDEX_OP(a, OP, b, check_a_NA, check_b_NA) ((check_a_NA ? a == NA_R_XLEN_T : 0) || (check_b_NA ? b == NA_R_XLEN_T : 0) ? NA_R_XLEN_T : (a) OP (b))
    
#define R_INDEX_GET(x, i, NA, check_i_NA) ((check_i_NA ? (i) == NA_R_XLEN_T : 0) ? NA : x[(i)])
