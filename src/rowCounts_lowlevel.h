#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void rowCounts_int(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int value, int what, int narm, int hasna, int *ans)
void rowCounts_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int value, int what, int narm, int hasna, int *ans)
void rowCounts_lgl(int *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int value, int what, int narm, int hasna, int *ans)
*/

#define X_TYPE 'i'
#include "rowCounts_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "rowCounts_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'l'
#include "rowCounts_lowlevel_template.h"
#include "000.templates-types_undef.h"
