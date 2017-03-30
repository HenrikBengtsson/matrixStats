#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include <R_ext/Error.h>

/*
Native API (dynamically generated via macros):

void binCounts_L(double *x, R_xlen_t nx, double *bx, R_xlen_t nbins, int *count)
void binCounts_R(double *x, R_xlen_t nx, double *bx, R_xlen_t nbins, int *count)
*/

#define BIN_BY 'L'
#include "binCounts_lowlevel_template.h"

#define BIN_BY 'R'
#include "binCounts_lowlevel_template.h"
