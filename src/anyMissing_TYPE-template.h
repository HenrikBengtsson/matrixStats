/***********************************************************************
 TEMPLATE:
  double anyMissing[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  SEXP x, void *idxs, R_xlen_t nidxs
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


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  R_xlen_t ii;
  double *xdp;
  int *xip, *xlp;
  Rcomplex *xcp;

#ifdef IDXS_TYPE
  IDXS_C_TYPE *cidxs = (IDXS_C_TYPE*) idxs;
#endif

  switch (TYPEOF(x)) {
    case REALSXP:
      xdp = REAL(x);
      CHECK_MISSING(ISNAN(R_INDEX_GET(xdp, IDX_INDEX(cidxs,ii), NA_REAL)));
      break;

    case INTSXP:
      xip = INTEGER(x);
      CHECK_MISSING(R_INDEX_GET(xip, IDX_INDEX(cidxs,ii), NA_INTEGER) == NA_INTEGER);
      break;

    case LGLSXP:
      xlp = LOGICAL(x);
      CHECK_MISSING(R_INDEX_GET(xlp, IDX_INDEX(cidxs,ii), NA_LOGICAL) == NA_LOGICAL);
      break;

    case CPLXSXP:
      xcp = COMPLEX(x);
#ifdef IDXS_TYPE
      CHECK_MISSING(IDX_INDEX(cidxs,ii) == NA_R_XLEN_T || ISNAN(xcp[IDX_INDEX_NONA(cidxs,ii)].r) || ISNAN(xcp[IDX_INDEX_NONA(cidxs,ii)].i));
#else
      CHECK_MISSING(ISNAN(xcp[ii].r) || ISNAN(xcp[ii].i));
#endif
      break;

    case STRSXP:
#ifdef IDXS_TYPE
      CHECK_MISSING(IDX_INDEX(cidxs,ii) == NA_R_XLEN_T || STRING_ELT(x, IDX_INDEX_NONA(cidxs,ii)) == NA_STRING);
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
