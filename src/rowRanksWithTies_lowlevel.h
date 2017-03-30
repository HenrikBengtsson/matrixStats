#include <Rdefines.h>
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

void rowRanksWithTies_Min_dbl_arows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_arows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_arows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_irows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_irows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_irows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_drows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_drows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_dbl_drows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_arows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_arows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_arows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_irows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_irows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_irows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_drows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_drows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int_drows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_arows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_arows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_arows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_irows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_irows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_irows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_drows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_drows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl_drows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_arows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_arows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_arows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_irows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_irows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_irows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_drows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_drows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int_drows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Average_dbl_arows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_arows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_arows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_irows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_irows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_irows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_drows_acols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_drows_icols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_dbl_drows_dcols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_arows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_arows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_arows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_irows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_irows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_irows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_drows_acols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_drows_icols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanksWithTies_Average_int_drows_dcols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
*/

#define METHOD_TEMPLATE_H "rowRanksWithTies_lowlevel_template.h"
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, ANS_C_TYPE *ans


/*****************************************************************
 * ties.method = "min"
 *****************************************************************/
#define TIESMETHOD '0' /* min */
#define METHOD rowRanksWithTies_Min
#define MARGIN 'r'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanksWithTies_Min
#define MARGIN 'c'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "max"
 *****************************************************************/
#define TIESMETHOD '1' /* max */
#define METHOD rowRanksWithTies_Max
#define MARGIN 'r'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanksWithTies_Max
#define MARGIN 'c'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "average"
 *****************************************************************/
#define TIESMETHOD 'a' /* average */
#define METHOD rowRanksWithTies_Average
#define MARGIN 'r'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanksWithTies_Average
#define MARGIN 'c'
#define X_TYPE 'r'
#include "000.templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "000.templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD
