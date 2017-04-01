#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include <R_ext/Error.h>

/*
Native API (dynamically generated via macros):

void binMeans_L(double *y, R_xlen_t ny, double *x, R_xlen_t nx, double *bx, R_xlen_t nbins, double *ans, int *count)
void binMeans_R(double *y, R_xlen_t ny, double *x, R_xlen_t nx, double *bx, R_xlen_t nbins, double *ans, int *count)
*/

#define BIN_BY 'L'
#include "binMeans_lowlevel_template.h"

#define BIN_BY 'R'
#include "binMeans_lowlevel_template.h"
