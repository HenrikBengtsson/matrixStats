/***************************************************************************
 Public methods:
 anyMissing(SEXP x, SEXP idxs)

 TO DO: Support list():s too.

 Copyright Henrik Bengtsson, 2007
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "anyMissing_lowlevel.h"


SEXP anyMissing(SEXP x, SEXP idxs) {
  SEXP ans;
  R_xlen_t nx;

  nx = xlength(x);

  /* anyMissing() on zero-length objects should always return FALSE,
     just like any(double(0)). */
  if (nx == 0) return(ScalarLogical(FALSE));

  /* Argument 'idxs': */
  R_xlen_t nidxs;
  int idxsType;
  void *cidxs = validateIndices(idxs, nx, 1, &nidxs, &idxsType);
  
  if (nidxs == 0) return(ScalarLogical(FALSE));

  if (anyMissing_internal[idxsType](x, cidxs, nidxs)) {
    return(ScalarLogical(TRUE));
  }

  return(ScalarLogical(FALSE));  
} // anyMissing()


/***************************************************************************
 HISTORY:
 2015-06-14 [DJ]
  o Supported subsetted computation.
 2007-08-14 [HB]
  o Created using do_isna() in src/main/coerce.c as a template.
 **************************************************************************/
