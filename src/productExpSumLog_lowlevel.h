#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
double productExpSumLog_int(int *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_dbl(bouble *x, R_xlen_t nx, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int hasna)
*/

#define X_TYPE 'i'
#include "productExpSumLog_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#include "productExpSumLog_lowlevel_template.h"
#include "000.templates-types_undef.h"
