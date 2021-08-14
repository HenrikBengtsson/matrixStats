#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
double sum2_int(int *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int narm)
double sum2_dbl(double *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int narm)
*/

#define X_TYPE 'i'
#include "sum2_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "sum2_lowlevel_template.h"
#include "000.templates-types_undef.h"
