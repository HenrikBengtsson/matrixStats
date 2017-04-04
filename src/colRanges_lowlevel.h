#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

void colRanges_int_arows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_arows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_arows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_irows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_irows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_irows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_drows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_drows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_int_drows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void colRanges_dbl_arows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_arows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_arows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_irows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_irows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_irows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_drows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_drows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
void colRanges_dbl_drows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, double *ans, int *is_counted)
*/

#define METHOD colRanges
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int what, int narm, int hasna, X_C_TYPE *ans, int *is_counted

#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"
