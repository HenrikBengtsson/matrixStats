/***************************************************************************
 Public methods:
 SEXP signTabulate(SEXP x, SEXP idxs)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"


#define METHOD signTabulate
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nx, void *idxs, R_xlen_t nidxs, double *ans

#define X_TYPE 'i'
#include "templates-gen-vector.h"
#define X_TYPE 'r'
#include "templates-gen-vector.h"


SEXP signTabulate(SEXP x, SEXP idxs) {
  SEXP ans = NILSXP;
  R_xlen_t nx;

  /* Argument 'x': */
  assertArgVector(x, (R_TYPE_INT | R_TYPE_REAL), "x");
  nx = xlength(x);

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, nx, 1, &nidxs, &idxsType);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocVector(REALSXP, 6));
    signTabulate_Real[idxsType](REAL(x), nx, cidxs, nidxs, REAL(ans));
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocVector(REALSXP, 4));
    signTabulate_Integer[idxsType](INTEGER(x), nx, cidxs, nidxs, REAL(ans));
    UNPROTECT(1);
  }

  return(ans);
} // signTabulate()


/***************************************************************************
 HISTORY:
 2015-07-04 [DJ]
  o Supported subsetted computation.
 2014-06-04 [HB]
  o Created.
 **************************************************************************/
