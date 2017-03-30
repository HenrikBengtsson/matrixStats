#include <Rdefines.h>
#include <R_ext/Constants.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

void diff2_int_aidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nans)
void diff2_int_iidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nans)
void diff2_int_didxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, int *ans, R_xlen_t nans)
void diff2_dbl_aidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nans)
void diff2_dbl_iidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nans)
void diff2_dbl_didxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, double *ans, R_xlen_t nans)
*/

#define METHOD diff2
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, R_xlen_t lag, R_xlen_t differences, X_C_TYPE *ans, R_xlen_t nans

#define X_TYPE 'i'
#include "000.templates-gen-vector.h"
#define X_TYPE 'r'
#include "000.templates-gen-vector.h"
