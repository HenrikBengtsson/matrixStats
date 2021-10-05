#include <Rdefines.h>
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void rowRanksWithTies_Min_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Min_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Max_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans) 
void rowRanksWithTies_Min_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Average_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans) 
void rowRanksWithTies_Min_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanksWithTies_Average_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int *ans)
*/

/*****************************************************************
 * ties.method = "average"
 *****************************************************************/
#define TIESMETHOD 'a' /* average */
#define METHOD rowRanksWithTies_Average
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Average
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "first"
 *****************************************************************/
#define TIESMETHOD 'f' /* first */
#define METHOD rowRanksWithTies_First
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_First
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "last"
 *****************************************************************/
#define TIESMETHOD 'l' /* last */
#define METHOD rowRanksWithTies_Last
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Last
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "random"
 *****************************************************************/
#define TIESMETHOD 'r' /* random */
#define METHOD rowRanksWithTies_Random
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Random
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "min"
 *****************************************************************/
#define TIESMETHOD '0' /* min */
#define METHOD rowRanksWithTies_Min
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Min
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "max"
 *****************************************************************/
#define TIESMETHOD '1' /* max */
#define METHOD rowRanksWithTies_Max
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Max
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "dense"
 *****************************************************************/
#define TIESMETHOD 'd' /* dense */
#define METHOD rowRanksWithTies_Dense
#define MARGIN 'r'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD

#define METHOD colRanksWithTies_Dense
#define MARGIN 'c'
#define X_TYPE 'r'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "rowRanksWithTies_lowlevel_template.h" 
#include "000.templates-types_undef.h"
#undef METHOD
#undef TIESMETHOD
