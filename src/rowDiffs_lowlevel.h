#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void rowDiffs_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
void rowDiffs_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int byrow, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nrow_ans, R_xlen_t ncol_ans)
*/

#define X_TYPE 'i'
#include "rowDiffs_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "rowDiffs_lowlevel_template.h"
#include "000.templates-types_undef.h"
