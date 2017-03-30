/***************************************************************************
 Public methods:
 SEXP rowRanksWithTies(SEXP x, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow)

 Authors: Hector Corrada Bravo, Peter Langfelder and Henrik Bengtsson

 TO DO: Add support for missing values.
 **************************************************************************/
#include <Rdefines.h>
#include "utils.h"

/*
FIXME: Harmonize, by renaming rowRanks_ties -> rowRanksWithTies_ 2017-03-29
*/

/*
Native API (dynamically generated via macros):

void rowRanks_tiesMin_Real_noRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_noRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_noRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_intRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_intRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_intRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_realRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_realRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Real_realRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_noRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_noRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_noRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_intRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_intRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_intRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_realRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_realRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMin_Integer_realRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_noRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_noRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_noRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_intRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_intRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_intRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_realRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_realRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Real_realRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_noRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_noRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_noRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_intRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_intRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_intRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_realRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_realRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesMax_Integer_realRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, int *ans)
void rowRanks_tiesAverage_Real_noRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_noRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_noRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_intRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_intRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_intRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_realRows_noCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_realRows_intCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Real_realRows_realCols(double *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_noRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_noRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_noRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_intRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_intRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_intRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_realRows_noCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_realRows_intCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
void rowRanks_tiesAverage_Integer_realRows_realCols(int *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t Rf_nrows, void *cols, R_xlen_t Rf_ncols, double *ans)
*/

#define METHOD_TEMPLATE_H "rowRanksWithTies_TYPE_TIES-template.h"
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, ANS_C_TYPE *ans


/*****************************************************************
 * ties.method = "min"
 *****************************************************************/
#define TIESMETHOD '0' /* min */
#define METHOD rowRanks_tiesMin
#define MARGIN 'r'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanks_tiesMin
#define MARGIN 'c'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "max"
 *****************************************************************/
#define TIESMETHOD '1' /* max */
#define METHOD rowRanks_tiesMax
#define MARGIN 'r'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanks_tiesMax
#define MARGIN 'c'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD


/*****************************************************************
 * ties.method = "average"
 *****************************************************************/
#define TIESMETHOD 'a' /* average */
#define METHOD rowRanks_tiesAverage
#define MARGIN 'r'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'r'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD

#define METHOD colRanks_tiesAverage
#define MARGIN 'c'
#define X_TYPE 'r'
#include "templates-gen-matrix.h"

#define MARGIN 'c'
#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#undef METHOD
#undef TIESMETHOD



/* Peter Langfelder's modifications:
 * byrow: 0 => rank columns, !0 => rank rows
 * tiesMethod: 1: maximum, 2: average, 3:minimum
 * The returned rank is a REAL matrix to accomodate average ranks
 */
SEXP rowRanksWithTies(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow) {
  int tiesmethod, byrow;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'tiesMethod': */
  tiesmethod = asInteger(tiesMethod);
  if (tiesmethod < 1 || tiesmethod > 3) {
    error("Argument 'tiesMethod' is out of range [1,3]: %d", tiesmethod);
  }

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    if (byrow) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanks_tiesMax_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanks_tiesAverage_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanks_tiesMin_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    } else {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanks_tiesMax_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          colRanks_tiesAverage_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanks_tiesMin_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    }
  } else if (isInteger(x)) {
    if (byrow) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanks_tiesMax_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanks_tiesAverage_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanks_tiesMin_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    } else {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanks_tiesMax_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          colRanks_tiesAverage_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanks_tiesMin_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    }
  }

  return(ans);
} // rowRanksWithTies()


/***************************************************************************
 HISTORY:
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2013-01-13 [HB]
  o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
