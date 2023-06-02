#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
double weightedMean_int(int *x, R_xlen_t nx, double *w, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA, int narm, int refine)
double weightedMean_dbl(double *x, R_xlen_t nx, double *w, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA, int narm, int refine)
*/

#define X_TYPE 'i'
#include "weightedMean_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "weightedMean_lowlevel_template.h"
#include "000.templates-types_undef.h"
