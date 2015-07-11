/***************************************************************************
 Public methods:
 SEXP productExpSumLog(SEXP x, SEXP idxs, SEXP naRm, SEXP hasNA)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h" 
#include "utils.h"


#define METHOD productExpSumLog
#define RETURN_TYPE double
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, int narm, int hasna

#define X_TYPE 'i'
#include "templates-gen-vector.h"
#define X_TYPE 'r'
#include "templates-gen-vector.h"


SEXP productExpSumLog(SEXP x, SEXP idxs, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP;
  R_xlen_t nx;
  double res = NA_REAL;
  int narm, hasna;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, nx, 1, &nidxs, &idxsType);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    res = productExpSumLog_Real[idxsType](REAL(x), nx, cidxs, nidxs, narm, hasna);
  } else if (isInteger(x)) {
    res = productExpSumLog_Integer[idxsType](INTEGER(x), nx, cidxs, nidxs, narm, hasna);
  }

  /* Return results */
  PROTECT(ans = allocVector(REALSXP, 1));
  REAL(ans)[0] = res;
  UNPROTECT(1);

  return(ans);
} // productExpSumLog()


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
