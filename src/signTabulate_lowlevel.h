#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void signTabulate_int(int *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_dbl(double *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, double *ans)
*/

#define X_TYPE 'i'
#include "signTabulate_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "signTabulate_lowlevel_template.h"
#include "000.templates-types_undef.h"
