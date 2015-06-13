/***********************************************************************
 TEMPLATE:
  double anyMissing[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  SEXP x, void *idxs, R_xlen_t nidxs
 ***********************************************************************/
#include <Rdefines.h>
#include "types.h"

#include "templates-types.h"


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
      CHECK_MISSING(
#ifdef IDXS_C_TYPE
          IDX_INDEX(cidxs,ii) == NA_R_XLEN_T ||
#endif
          ISNAN(R_INDEX_GET(xdp, IDX_INDEX(cidxs,ii), NA_REAL))
      );
      break;

    case INTSXP:
      xip = INTEGER(x);
      CHECK_MISSING(
#ifdef IDXS_C_TYPE
          IDX_INDEX(cidxs,ii) == NA_R_XLEN_T ||
#endif
          xip[IDX_INDEX(cidxs,ii)] == NA_INTEGER
      );
      break;

    case LGLSXP:
      xlp = LOGICAL(x);
      CHECK_MISSING(
#ifdef IDXS_C_TYPE
          IDX_INDEX(cidxs,ii) == NA_R_XLEN_T ||
#endif
          xlp[IDX_INDEX(cidxs,ii)] == NA_LOGICAL
      );
      break;

    case CPLXSXP:
      xcp = COMPLEX(x);
      CHECK_MISSING(
#ifdef IDXS_C_TYPE
          IDX_INDEX(cidxs,ii) == NA_R_XLEN_T ||
#endif
          ISNAN(xcp[IDX_INDEX(cidxs,ii)].r) || ISNAN(xcp[IDX_INDEX(cidxs,ii)].i)
      );
      break;

    case STRSXP:
      CHECK_MISSING(
#ifdef IDXS_C_TYPE
          IDX_INDEX(cidxs,ii) == NA_R_XLEN_T ||
#endif
          STRING_ELT(x, IDX_INDEX(cidxs,ii)) == NA_STRING
      );
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
 2015-06-15 [DJ]
  o Created.
 **************************************************************************/
