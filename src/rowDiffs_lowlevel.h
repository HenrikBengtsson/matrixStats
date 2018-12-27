#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

void rowDiffs_int_arows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_arows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_arows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_irows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_irows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_irows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_drows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_drows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_int_drows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_arows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_arows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_arows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_irows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_irows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_irows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_drows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_drows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl_drows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
*/

#define METHOD rowDiffs
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans

#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"
