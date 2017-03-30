#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"

/*
Native API (dynamically generated via macros):

void signTabulate_int_aidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_int_iidxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_int_didxs(int *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_dbl_aidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_dbl_iidxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
void signTabulate_dbl_didxs(double *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans)
*/

#define METHOD signTabulate
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans

#define X_TYPE 'i'
#include "000.templates-gen-vector.h"
#define X_TYPE 'r'
#include "000.templates-gen-vector.h"
