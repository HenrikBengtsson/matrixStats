#ifndef NAMING_H
#define NAMING_H

#include <R.h>
#include <Rinternals.h>
#include "000.types.h"

void setNames(SEXP vec/* Answer vector*/, SEXP namesVec, R_xlen_t length, R_xlen_t *subscripts);
void setDimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows, R_xlen_t *crows, R_xlen_t ncols, R_xlen_t *ccols, Rboolean reverseDimnames);
void set_rowDiffs_Dimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows, R_xlen_t *crows, R_xlen_t ncols, R_xlen_t ncol_ans, R_xlen_t *ccols);
void set_colDiffs_Dimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows, R_xlen_t nrow_ans, R_xlen_t *crows, R_xlen_t ncols, R_xlen_t *ccols);

#endif /* NAMING_H */