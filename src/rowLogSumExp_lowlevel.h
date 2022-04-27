#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):
 
void rowLogSumExps_double(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int narm, int hasna, R_xlen_t byrow, double *ans)
*/

#include "rowLogSumExp_lowlevel_template.h"
