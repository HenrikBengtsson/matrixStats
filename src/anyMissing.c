/***************************************************************************
 Public methods:
 anyMissing(SEXP x)

 TO DO: Support list():s too.

 Copyright Henrik Bengtsson, 2007
 **************************************************************************/

/* Include R packages */
#include <Rdefines.h>


SEXP anyMissing(SEXP x) {
  SEXP ans;
  int n, ii;
  double *xdp;
  int *xip, *xlp;
  Rcomplex *xcp;

  PROTECT(ans = allocVector(LGLSXP, 1));
  LOGICAL(ans)[0] = 0;

  n = length(x);

  /* anyMissing() on zero-length objects should always return FALSE,
     just like any(double(0)). */
  if (n == 0) {
    UNPROTECT(1);
    return(ans);
  }

  switch (TYPEOF(x)) {
    case REALSXP:
      xdp = REAL(x);
      for (ii=0; ii < n; ii++) {
        if ISNAN(xdp[ii]) {
          LOGICAL(ans)[0] = 1;
          break; 
        }
      }
      break;

    case INTSXP:
      xip = INTEGER(x);
      for (ii=0; ii < n; ii++) {
        if (xip[ii] == NA_INTEGER) {
          LOGICAL(ans)[0] = 1;
          break; 
        }
      }
      break;

    case LGLSXP:
      xlp = LOGICAL(x);
      for (ii=0; ii < n; ii++) {
        if (xlp[ii] == NA_LOGICAL) {
          LOGICAL(ans)[0] = 1;
          break; 
        }
      }
      break;

    case CPLXSXP:
      xcp = COMPLEX(x);
      for (ii=0; ii < n; ii++) {
        if (ISNAN(xcp[ii].r) || ISNAN(xcp[ii].i)) {
          LOGICAL(ans)[0] = 1;
          break; 
        }
      }
      break;

    case STRSXP:
      for (ii=0; ii < n; ii++) {
        if (STRING_ELT(x, ii) == NA_STRING) {
          LOGICAL(ans)[0] = 1;
          break; 
        }
      }
      break; 

    case RAWSXP: 
      /* no such thing as a raw NA */
      break; 
    default:
      break; 
  } /* switch() */

  UNPROTECT(1); /* ans */

  return(ans);
} // anyMissing()


/***************************************************************************
 HISTORY:
 2007-08-14 [HB]
  o Created using do_isna() in src/main/coerce.c as a template.
 **************************************************************************/
