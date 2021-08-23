#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include <R_ext/Error.h>
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
double weightedMedian_int(int *x, R_xlen_t nx, double *w, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int interpolate, int ties)
double weightedMedian_dbl(double *x, R_xlen_t nx, double *w, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int interpolate, int ties)
*/

#define X_TYPE 'i'
#include "weightedMedian_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "weightedMedian_lowlevel_template.h"
#include "000.templates-types_undef.h"
