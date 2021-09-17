#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void rowRanges_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
void rowRanges_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int what, int narm, int hasna, int *ans, int *is_counted)
*/

#define X_TYPE 'i'
#include "rowRanges_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "rowRanges_lowlevel_template.h"
#include "000.templates-types_undef.h"
