#include <Rdefines.h>
#include <Rmath.h>
#include "000.utils.h"


/*
Native API (dynamically generated via macros):

double logSumExp_double_aidxs(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx)
double logSumExp_double_iidxs(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx)
double logSumExp_double_didxs(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx)
*/

#define METHOD logSumExp
#define METHOD_NAME logSumExp_double
#define RETURN_TYPE double
#define ARGUMENTS_LIST double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx

#include "000.templates-gen-vector.h"
