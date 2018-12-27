/*
Native API (dynamically generated via macros):

int anyMissing_internal_aidxs(SEXP x, void *idxs, R_xlen_t nidxs)
int anyMissing_internal_iidxs(SEXP x, void *idxs, R_xlen_t nidxs)
int anyMissing_internal_didxs(SEXP x, void *idxs, R_xlen_t nidxs)
*/

#define METHOD anyMissing
#define METHOD_NAME anyMissing_internal
#define RETURN_TYPE int
#define ARGUMENTS_LIST SEXP x, void *idxs, R_xlen_t nidxs

#include "000.templates-gen-vector.h"
