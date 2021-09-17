#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void rowVars_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
void rowVars_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t Rf_nrows, R_xlen_t *cols, R_xlen_t Rf_ncols, int narm, int hasna, int byrow, double *ans)
*/

#define X_TYPE 'i'
#include "rowVars_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "rowVars_lowlevel_template.h"
#include "000.templates-types_undef.h"
