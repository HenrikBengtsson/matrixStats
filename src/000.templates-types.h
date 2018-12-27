#include <Rinternals.h>
#include "000.macros.h"


#undef X_C_TYPE
#undef X_IN_C
#undef X_ISNAN
#undef X_ISNA
#undef X_ABS
#undef X_PSORT
#undef X_QSORT_I
#undef X_NA

#undef Y_C_TYPE
#undef Y_IN_C
#undef Y_ISNAN
#undef Y_ISNA
#undef Y_ABS
#undef Y_PSORT
#undef Y_QSORT_I
#undef Y_NA

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
    #define X_IN_C INTEGER
    #define X_ISNAN(x) (x == NA_INTEGER)
    #define X_ISNA(x) (x == NA_INTEGER)
    #define X_ABS(x) abs(x)
    #define X_PSORT iPsort
    #define X_QSORT_I R_qsort_int_I
    #define X_NA NA_INTEGER
  #elif X_TYPE == 'r'
    #define X_C_TYPE double
    #define X_IN_C REAL
    #define X_ISNAN(x) ISNAN(x) /* True for R's NA and IEEE NaN */
    #define X_ISNA(x) ISNA(x)   /* True for R's NA */
    #define X_ABS(x) fabs(x)
    #define X_PSORT rPsort
    #define X_QSORT_I R_qsort_I
    #define X_NA NA_REAL
  #elif X_TYPE == 'l'
    #define X_C_TYPE int
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
    #define Y_IN_C INTEGER
    #define Y_ISNAN(x) (x == NA_INTEGER)
    #define Y_ISNA(x) (x == NA_INTEGER)
    #define Y_ABS(x) abs(x)
    #define Y_PSORT iPsort
    #define Y_QSORT_I R_qsort_int_I
    #define Y_NA NA_INTEGER
  #elif Y_TYPE == 'r'
    #define Y_C_TYPE double
    #define Y_IN_C REAL
    #define Y_ISNAN(x) ISNAN(x) /* NA or NaN */
    #define Y_ISNA(x) ISNA(x) /* NA only */
    #define Y_ABS(x) fabs(x)
    #define Y_PSORT rPsort
    #define Y_QSORT_I R_qsort_I
    #define Y_NA NA_REAL
  #elif Y_TYPE == 'l'
    #define Y_C_TYPE int
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
 Method name based on 'x' (and 'y') types
 */
#ifndef METHOD_NAME
  #if X_TYPE == 'i'
    #if Y_TYPE == 'i'
      #define METHOD_NAME CONCAT_MACROS(METHOD, int_int)
    #elif Y_TYPE == 'r'
      #define METHOD_NAME CONCAT_MACROS(METHOD, int_dbl)
    #elif Y_TYPE == 'l'
      #define METHOD_NAME CONCAT_MACROS(METHOD, int_lgl)
    #else
      #define METHOD_NAME CONCAT_MACROS(METHOD, int)
    #endif
  #elif X_TYPE == 'r'
    #if Y_TYPE == 'i'
      #define METHOD_NAME CONCAT_MACROS(METHOD, dbl_int)
    #elif Y_TYPE == 'r'
      #define METHOD_NAME CONCAT_MACROS(METHOD, dbl_dbl)
    #elif Y_TYPE == 'l'
      #define METHOD_NAME CONCAT_MACROS(METHOD, dbl_lgl)
    #else
      #define METHOD_NAME CONCAT_MACROS(METHOD, dbl)
    #endif
  #elif X_TYPE == 'l'
    #if Y_TYPE == 'i'
      #define METHOD_NAME CONCAT_MACROS(METHOD, lgl_int)
    #elif Y_TYPE == 'r'
      #define METHOD_NAME CONCAT_MACROS(METHOD, lgl_dbl)
    #elif Y_TYPE == 'l'
      #define METHOD_NAME CONCAT_MACROS(METHOD, lgl_lgl)
    #else
      #define METHOD_NAME CONCAT_MACROS(METHOD, lgl)
    #endif
  #else
    #error "INTERNAL ERROR: Failed to set C macro METHOD_NAME: Unknown X_TYPE"
  #endif
#endif


/*
 Subsetted indexing: matrix
 */
#undef ROW_INDEX_NONA
#undef ROW_INDEX
#undef ROWS_C_TYPE
#undef METHOD_NAME_ROWS

#undef COL_INDEX_NONA
#undef COL_INDEX
#undef COLS_C_TYPE
#undef METHOD_NAME_ROWS_COLS

#ifdef ROWS_TYPE
  #define ROW_INDEX_NONA(rows, ii) ((R_xlen_t)rows[ii]-1)
  #if ROWS_TYPE == 'i'
    #define ROWS_C_TYPE int
    #define ROW_INDEX(rows, ii) (rows[ii] == NA_INTEGER ? NA_R_XLEN_T : (R_xlen_t)rows[ii]-1)
    #define METHOD_NAME_ROWS CONCAT_MACROS(METHOD_NAME, irows)
  #elif ROWS_TYPE == 'r'
    #define ROWS_C_TYPE double
    #define ROW_INDEX(rows, ii) (ISNAN(rows[ii]) ? NA_R_XLEN_T : (R_xlen_t)rows[ii]-1)
    #define METHOD_NAME_ROWS CONCAT_MACROS(METHOD_NAME, drows)
  #else
    #error "INTERNAL ERROR: Failed to set C macro METHOD_NAME: Unknown ROWS_TYPE"
  #endif
#else
  #define ROW_INDEX_NONA(rows, ii) (ii)
  #define ROW_INDEX(rows, ii) (ii)
  #define ROWS_C_TYPE void
  #define METHOD_NAME_ROWS CONCAT_MACROS(METHOD_NAME, arows)
#endif

#ifdef COLS_TYPE
  #define COL_INDEX_NONA(cols, jj) ((R_xlen_t)cols[jj]-1)
  #if COLS_TYPE == 'i'
    #define COLS_C_TYPE int
    #define COL_INDEX(cols, jj) (cols[jj] == NA_INTEGER ? NA_R_XLEN_T : (R_xlen_t)cols[jj]-1)
    #define METHOD_NAME_ROWS_COLS CONCAT_MACROS(METHOD_NAME_ROWS, icols)
  #elif COLS_TYPE == 'r'
    #define COLS_C_TYPE double
    #define COL_INDEX(cols, jj) (ISNAN(cols[jj]) ? NA_R_XLEN_T : (R_xlen_t)cols[jj]-1)
    #define METHOD_NAME_ROWS_COLS CONCAT_MACROS(METHOD_NAME_ROWS, dcols)
  #else
    #error "INTERNAL ERROR: Failed to set C macro METHOD_NAME: Unknown ROWS_TYPE"
  #endif
#else
  #define COL_INDEX_NONA(cols, jj) (jj)
  #define COL_INDEX(cols, jj) (jj)
  #define COLS_C_TYPE void
  #define METHOD_NAME_ROWS_COLS CONCAT_MACROS(METHOD_NAME_ROWS, acols)
#endif

#undef METHOD_NAME_arows
#undef METHOD_NAME_arows_acols
#undef METHOD_NAME_arows_icols
#undef METHOD_NAME_arows_dcols
#undef METHOD_NAME_irows
#undef METHOD_NAME_irows_acols
#undef METHOD_NAME_irows_icols
#undef METHOD_NAME_irows_dcols
#undef METHOD_NAME_drows
#undef METHOD_NAME_drows_acols
#undef METHOD_NAME_drows_icols
#undef METHOD_NAME_drows_dcols

#define METHOD_NAME_arows CONCAT_MACROS(METHOD_NAME, arows)
#define METHOD_NAME_arows_acols CONCAT_MACROS(METHOD_NAME_arows, acols)
#define METHOD_NAME_arows_icols CONCAT_MACROS(METHOD_NAME_arows, icols)
#define METHOD_NAME_arows_dcols CONCAT_MACROS(METHOD_NAME_arows, dcols)
#define METHOD_NAME_irows CONCAT_MACROS(METHOD_NAME, irows)
#define METHOD_NAME_irows_acols CONCAT_MACROS(METHOD_NAME_irows, acols)
#define METHOD_NAME_irows_icols CONCAT_MACROS(METHOD_NAME_irows, icols)
#define METHOD_NAME_irows_dcols CONCAT_MACROS(METHOD_NAME_irows, dcols)
#define METHOD_NAME_drows CONCAT_MACROS(METHOD_NAME, drows)
#define METHOD_NAME_drows_acols CONCAT_MACROS(METHOD_NAME_drows, acols)
#define METHOD_NAME_drows_icols CONCAT_MACROS(METHOD_NAME_drows, icols)
#define METHOD_NAME_drows_dcols CONCAT_MACROS(METHOD_NAME_drows, dcols)


/*
 Subsetted indexing: vector
 */
#undef IDX_INDEX_NONA
#undef IDX_INDEX
#undef IDXS_C_TYPE
#undef METHOD_NAME_IDXS

#ifdef IDXS_TYPE
  #define IDX_INDEX_NONA(idxs, ii) ((R_xlen_t)idxs[ii]-1)
  #if IDXS_TYPE == 'i'
    #define IDXS_C_TYPE int
    #define IDX_INDEX(idxs, ii) (idxs[ii] == NA_INTEGER ? NA_R_XLEN_T : (R_xlen_t)idxs[ii]-1)
    #define METHOD_NAME_IDXS CONCAT_MACROS(METHOD_NAME, iidxs)
  #elif IDXS_TYPE == 'r'
    #define IDXS_C_TYPE double
    #define IDX_INDEX(idxs, ii) (ISNAN(idxs[ii]) ? NA_R_XLEN_T : (R_xlen_t)idxs[ii]-1)
    #define METHOD_NAME_IDXS CONCAT_MACROS(METHOD_NAME, didxs)
  #else
    #error "INTERNAL ERROR: Failed to set C macro METHOD_NAME: Unknown IDXS_TYPE"
  #endif
#else
  #define IDX_INDEX_NONA(idxs, ii) (ii)
  #define IDX_INDEX(idxs, ii) (ii)
  #define IDXS_C_TYPE void
  #define METHOD_NAME_IDXS CONCAT_MACROS(METHOD_NAME, aidxs)
#endif

#undef METHOD_NAME_aidxs
#undef METHOD_NAME_iidxs
#undef METHOD_NAME_didxs

#define METHOD_NAME_aidxs CONCAT_MACROS(METHOD_NAME, aidxs)
#define METHOD_NAME_iidxs CONCAT_MACROS(METHOD_NAME, iidxs)
#define METHOD_NAME_didxs CONCAT_MACROS(METHOD_NAME, didxs)


/*
 Subsetted indexing: matrix + vector
 */
#undef METHOD_NAME_ROWS_COLS_IDXS

#ifdef IDXS_TYPE
  #if IDXS_TYPE == 'i'
    #define METHOD_NAME_ROWS_COLS_IDXS CONCAT_MACROS(METHOD_NAME_ROWS_COLS, iidxs)
  #elif IDXS_TYPE == 'r'
    #define METHOD_NAME_ROWS_COLS_IDXS CONCAT_MACROS(METHOD_NAME_ROWS_COLS, didxs)
  #endif
#else
  #define METHOD_NAME_ROWS_COLS_IDXS CONCAT_MACROS(METHOD_NAME_ROWS_COLS, aidxs)
#endif

#define METHOD_NAME_aidxs CONCAT_MACROS(METHOD_NAME, aidxs)
#undef METHOD_NAME_arows_acols_aidxs
#undef METHOD_NAME_arows_acols_iidxs
#undef METHOD_NAME_arows_acols_didxs
#undef METHOD_NAME_arows_icols_aidxs
#undef METHOD_NAME_arows_icols_iidxs
#undef METHOD_NAME_arows_icols_didxs
#undef METHOD_NAME_arows_dcols_aidxs
#undef METHOD_NAME_arows_dcols_iidxs
#undef METHOD_NAME_arows_dcols_didxs
#undef METHOD_NAME_irows_acols_aidxs
#undef METHOD_NAME_irows_acols_iidxs
#undef METHOD_NAME_irows_acols_didxs
#undef METHOD_NAME_irows_icols_aidxs
#undef METHOD_NAME_irows_icols_iidxs
#undef METHOD_NAME_irows_icols_didxs
#undef METHOD_NAME_irows_dcols_aidxs
#undef METHOD_NAME_irows_dcols_iidxs
#undef METHOD_NAME_irows_dcols_didxs
#undef METHOD_NAME_drows_acols_aidxs
#undef METHOD_NAME_drows_acols_iidxs
#undef METHOD_NAME_drows_acols_didxs
#undef METHOD_NAME_drows_icols_aidxs
#undef METHOD_NAME_drows_icols_iidxs
#undef METHOD_NAME_drows_icols_didxs
#undef METHOD_NAME_drows_dcols_aidxs
#undef METHOD_NAME_drows_dcols_iidxs
#undef METHOD_NAME_drows_dcols_didxs

#define METHOD_NAME_arows_acols_aidxs CONCAT_MACROS(METHOD_NAME_arows_acols, aidxs)
#define METHOD_NAME_arows_acols_iidxs CONCAT_MACROS(METHOD_NAME_arows_acols, iidxs)
#define METHOD_NAME_arows_acols_didxs CONCAT_MACROS(METHOD_NAME_arows_acols, didxs)
#define METHOD_NAME_arows_icols_aidxs CONCAT_MACROS(METHOD_NAME_arows_icols, aidxs)
#define METHOD_NAME_arows_icols_iidxs CONCAT_MACROS(METHOD_NAME_arows_icols, iidxs)
#define METHOD_NAME_arows_icols_didxs CONCAT_MACROS(METHOD_NAME_arows_icols, didxs)
#define METHOD_NAME_arows_dcols_aidxs CONCAT_MACROS(METHOD_NAME_arows_dcols, aidxs)
#define METHOD_NAME_arows_dcols_iidxs CONCAT_MACROS(METHOD_NAME_arows_dcols, iidxs)
#define METHOD_NAME_arows_dcols_didxs CONCAT_MACROS(METHOD_NAME_arows_dcols, didxs)
#define METHOD_NAME_irows_acols_aidxs CONCAT_MACROS(METHOD_NAME_irows_acols, aidxs)
#define METHOD_NAME_irows_acols_iidxs CONCAT_MACROS(METHOD_NAME_irows_acols, iidxs)
#define METHOD_NAME_irows_acols_didxs CONCAT_MACROS(METHOD_NAME_irows_acols, didxs)
#define METHOD_NAME_irows_icols_aidxs CONCAT_MACROS(METHOD_NAME_irows_icols, aidxs)
#define METHOD_NAME_irows_icols_iidxs CONCAT_MACROS(METHOD_NAME_irows_icols, iidxs)
#define METHOD_NAME_irows_icols_didxs CONCAT_MACROS(METHOD_NAME_irows_icols, didxs)
#define METHOD_NAME_irows_dcols_aidxs CONCAT_MACROS(METHOD_NAME_irows_dcols, aidxs)
#define METHOD_NAME_irows_dcols_iidxs CONCAT_MACROS(METHOD_NAME_irows_dcols, iidxs)
#define METHOD_NAME_irows_dcols_didxs CONCAT_MACROS(METHOD_NAME_irows_dcols, didxs)
#define METHOD_NAME_drows_acols_aidxs CONCAT_MACROS(METHOD_NAME_drows_acols, aidxs)
#define METHOD_NAME_drows_acols_iidxs CONCAT_MACROS(METHOD_NAME_drows_acols, iidxs)
#define METHOD_NAME_drows_acols_didxs CONCAT_MACROS(METHOD_NAME_drows_acols, didxs)
#define METHOD_NAME_drows_icols_aidxs CONCAT_MACROS(METHOD_NAME_drows_icols, aidxs)
#define METHOD_NAME_drows_icols_iidxs CONCAT_MACROS(METHOD_NAME_drows_icols, iidxs)
#define METHOD_NAME_drows_icols_didxs CONCAT_MACROS(METHOD_NAME_drows_icols, didxs)
#define METHOD_NAME_drows_dcols_aidxs CONCAT_MACROS(METHOD_NAME_drows_dcols, aidxs)
#define METHOD_NAME_drows_dcols_iidxs CONCAT_MACROS(METHOD_NAME_drows_dcols, iidxs)
#define METHOD_NAME_drows_dcols_didxs CONCAT_MACROS(METHOD_NAME_drows_dcols, didxs)


/*
 Subsetted indexing: whether to check NA according to indexing
 */
#undef R_INDEX_OP
#undef R_INDEX_GET

#if !defined(ROWS_TYPE) && !defined(COLS_TYPE) && !defined(IDXS_TYPE)
  #define R_INDEX_OP(a, OP, b) (a OP b)
  #define R_INDEX_GET(x, i, NA) x[i]
#else
  #define R_INDEX_OP(a, OP, b) (a == NA_R_XLEN_T || b == NA_R_XLEN_T ? NA_R_XLEN_T : a OP b)
  #define R_INDEX_GET(x, i, NA) (i == NA_R_XLEN_T ? NA : x[i])
#endif
