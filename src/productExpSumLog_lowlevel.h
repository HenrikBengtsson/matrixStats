#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

double productExpSumLog_int_aidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_int_iidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_int_didxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_dbl_aidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_dbl_iidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
double productExpSumLog_dbl_didxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna)
*/

#define METHOD productExpSumLog
#define RETURN_TYPE double
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna

#define X_TYPE 'i'
#include "000.templates-gen-vector.h"
#define X_TYPE 'r'
#include "000.templates-gen-vector.h"
