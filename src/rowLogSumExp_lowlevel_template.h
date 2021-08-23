/***********************************************************************
 TEMPLATE:
  double rowLogSumExp_double(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  double *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, int narm, int hasna, R_xlen_t byrow, double *ans
 ***********************************************************************/
#include "000.types.h"

#include "000.templates-types.h"


/* extern 1-D function 'logSumExp' */
extern double logSumExp_double(double *x, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx);


void rowLogSumExps_double(double *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, 
                        int narm, int hasna, R_xlen_t byrow, double *ans) {
  R_xlen_t ii, idx;
  double navalue;
  // double (*logsumexp)(double *x, R_xlen_t *idxs, R_xlen_t nidxs, int narm, int hasna, R_xlen_t by, double *xx);

  if (byrow) {
    /* R allocate memory for row-vector 'xx' of length 'ncol'.
       This will be taken care of by the R garbage collector later on. */
    double *xx = (double *) R_alloc(ncols, sizeof(double));

    navalue = (narm || ncols == 0) ? R_NegInf : NA_REAL;

    for (ii=0; ii < nrows; ++ii) {
      idx = ((rows == NULL) ? (ii) : rows[ii]);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logSumExp_double(x+idx, cols, ncols, narm, hasna, nrow, xx);
      }
    }
  } else {
    navalue = (narm || nrows == 0) ? R_NegInf : NA_REAL;

    for (ii=0; ii < ncols; ++ii) {
      idx = R_INDEX_OP(((cols == NULL) ? (ii) : cols[ii]), *, nrow);
      if (idx == NA_R_XLEN_T) {
        ans[ii] = navalue;
      } else {
        ans[ii] = logSumExp_double(x+idx, rows, nrows, narm, hasna, 0, NULL);
      }
    }
  } /* if (byrow) */
}


/***************************************************************************
 HISTORY:
 2013-06-12 [DH]
 o Created.
 **************************************************************************/
