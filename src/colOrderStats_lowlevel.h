#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void colOrderStats_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
void colOrderStats_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, R_xlen_t qq, int *ans)
*/

#define X_TYPE 'i'
#include "colOrderStats_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "colOrderStats_lowlevel_template.h"
#include "000.templates-types_undef.h"
