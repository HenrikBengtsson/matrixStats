/***********************************************************************
 TEMPLATE:
  double rowLogSumExp_double[idxsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, int rowsType, void *cols, R_xlen_t ncols, int colsType, int narm, int hasna, R_xlen_t byrow, double *ans
 ***********************************************************************/
#include "000.types.h"

#include "000.templates-types.h"


/* extern 1-D function 'logSumExp' */		
extern double (*logSumExp_double[3])(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, int by, double *xx);


RETURN_TYPE METHOD_NAME_IDXS(ARGUMENTS_LIST) {
  R_xlen_t ii, idx;
  double navalue;
  double (*logsumexp)(double *x, void *idxs, R_xlen_t nidxs, int narm, int hasna, int by, double *xx);

#ifdef IDXS_TYPE
  IDXS_C_TYPE *crows = (IDXS_C_TYPE*) rows;
  IDXS_C_TYPE *ccols = (IDXS_C_TYPE*) cols;
#endif

  if (byrow) {
    /* R allocate memory for row-vector 'xx' of length 'ncol'.
       This will be taken care of by the R garbage collector later on. */
    double *xx = (double *) R_alloc(ncols, sizeof(double));

    navalue = (narm || ncols == 0) ? R_NegInf : NA_REAL;
    logsumexp = logSumExp_double[colsType];

    for (ii=0; ii < nrows; ++ii) {
      idx = IDX_INDEX(crows,ii);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logsumexp(x+idx, cols, ncols, narm, hasna, nrow, xx);
      }
    }
  } else {
    navalue = (narm || nrows == 0) ? R_NegInf : NA_REAL;
    logsumexp = logSumExp_double[rowsType];

    for (ii=0; ii < ncols; ++ii) {
      idx = R_INDEX_OP(IDX_INDEX(ccols,ii), *, nrow);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logsumexp(x+idx, rows, nrows, narm, hasna, 0, NULL);
      }
    }
  } /* if (byrow) */
}


/***************************************************************************
 HISTORY:
 2013-06-12 [DH]
 o Created.
 **************************************************************************/
