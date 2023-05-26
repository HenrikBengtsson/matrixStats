#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void diff2_int(int *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nans)
void diff2_dbl(double *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nans)
*/

#define X_TYPE 'i'
#include "diff2_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "diff2_lowlevel_template.h"
#include "000.templates-types_undef.h"
