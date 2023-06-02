/***********************************************************************
 TEMPLATE:
  int anyMissing_internal(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  SEXP x, R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA
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


int anyMissing_internal(SEXP x,
                        R_xlen_t *idxs, R_xlen_t nidxs, int idxsHasNA) {
  R_xlen_t ii;
  double *xdp;
  int *xip, *xlp;
  Rcomplex *xcp;

  switch (TYPEOF(x)) {
    case REALSXP:
      xdp = REAL(x);
      if (idxs == NULL) {
          CHECK_MISSING(ISNAN(xdp[ii]));
      } else if (!idxsHasNA) {
          CHECK_MISSING(ISNAN(xdp[idxs[ii]]));
      } else {
          CHECK_MISSING(ISNAN(R_INDEX_GET(xdp, idxs[ii], NA_REAL, 1)));
      }
      break;

    case INTSXP:
        xip = INTEGER(x);
        if (idxs == NULL) {
            CHECK_MISSING(xip[ii] == NA_INTEGER);
        } else if (!idxsHasNA) {
            CHECK_MISSING(xip[idxs[ii]] == NA_INTEGER);
        } else {
            CHECK_MISSING(R_INDEX_GET(xip, idxs[ii], NA_INTEGER, 1) == NA_INTEGER);
        }
        break;

    case LGLSXP:
        xlp = LOGICAL(x);
        if (idxs == NULL) {
            CHECK_MISSING(xlp[ii] == NA_LOGICAL);
        } else if (!idxsHasNA) {
            CHECK_MISSING(xlp[idxs[ii]] == NA_LOGICAL);
        } else {
            CHECK_MISSING(R_INDEX_GET(xlp, idxs[ii], NA_LOGICAL, 1) == NA_LOGICAL);
        }
        break;

    case CPLXSXP:
      xcp = COMPLEX(x);
      
      if (idxs == NULL) {
          CHECK_MISSING(ISNAN(xcp[ii].r) || ISNAN(xcp[ii].i));
      } else if (!idxsHasNA) {
          CHECK_MISSING(ISNAN(xcp[idxs[ii]].r) || ISNAN(xcp[idxs[ii]].i));
      } else {
          /*
           * We exploit the short-circuiting of the logical OR operator such that if idxs[ii]
           * is NA, then we don't evaluate the latter two parts of the expression
           * 
           */
          CHECK_MISSING(idxs[ii] == NA_R_XLEN_T || ISNAN(xcp[idxs[ii]].r) || ISNAN(xcp[idxs[ii]].i));
      }
      break;

    case STRSXP:
        if (idxs == NULL) {
            CHECK_MISSING(STRING_ELT(x,ii) == NA_STRING);
        } else if (!idxsHasNA) {
            CHECK_MISSING(STRING_ELT(x,idxs[ii]) == NA_STRING);
        } else {
            CHECK_MISSING(idxs[ii] == NA_R_XLEN_T || STRING_ELT(x, idxs[ii]) == NA_STRING);
        }
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
