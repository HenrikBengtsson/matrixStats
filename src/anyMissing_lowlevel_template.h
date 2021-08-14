/***********************************************************************
 TEMPLATE:
  int anyMissing_internal(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  SEXP x, R_xlen_t *idxs, R_xlen_t nidxs
 ***********************************************************************/
#include <Rdefines.h>
#include "000.types.h"

#include "000.templates-types.h"


#ifndef CHECK_MISSING
  #define CHECK_MISSING(cond)     \
  for (ii=0; ii < nidxs; ++ii) {  \
    if (cond) return 1;           \
  }
#endif


int anyMissing_internal(SEXP x, R_xlen_t *idxs, R_xlen_t nidxs) {
  R_xlen_t ii;
  double *xdp;
  int *xip, *xlp;
  Rcomplex *xcp;

  switch (TYPEOF(x)) {
    case REALSXP:
      xdp = REAL(x);
      CHECK_MISSING(ISNAN(R_INDEX_GET(xdp, ((idxs == NULL) ? (ii) : idxs[ii]), NA_REAL)));
      break;

    case INTSXP:
      xip = INTEGER(x);
      CHECK_MISSING(R_INDEX_GET(xip, ((idxs == NULL) ? (ii) : idxs[ii]), NA_INTEGER) == NA_INTEGER);
      break;

    case LGLSXP:
      xlp = LOGICAL(x);
      CHECK_MISSING(R_INDEX_GET(xlp, ((idxs == NULL) ? (ii) : idxs[ii]), NA_LOGICAL) == NA_LOGICAL);
      break;

    case CPLXSXP:
      xcp = COMPLEX(x);
#ifdef IDXS_TYPE
      CHECK_MISSING(((idxs == NULL) ? (ii) : idxs[ii]) == NA_R_XLEN_T || ISNAN(xcp[((idxs == NULL) ? (ii) : idxs[ii])].r) || ISNAN(xcp[((idxs == NULL) ? (ii) : idxs[ii])].i));
#else
      CHECK_MISSING(ISNAN(xcp[ii].r) || ISNAN(xcp[ii].i));
#endif
      break;

    case STRSXP:
#ifdef IDXS_TYPE
      CHECK_MISSING(((idxs == NULL) ? (ii) : idxs[ii]) == NA_R_XLEN_T || STRING_ELT(x, ((idxs == NULL) ? (ii) : idxs[ii])) == NA_STRING);
#else
      CHECK_MISSING(STRING_ELT(x, ii) == NA_STRING);
#endif
      break;

    case RAWSXP:
      /* no such thing as a raw NA; always FALSE */
      break;

    default:
      break;
  } /* switch() */

  return 0;
} // anyMissing()


/***************************************************************************
 HISTORY:
 2015-07-15 [DJ]
  o Avoid 'embedding a directive within macro arguments'.
 2015-06-15 [DJ]
  o Created.
 **************************************************************************/
