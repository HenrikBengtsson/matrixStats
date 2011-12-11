/***************************************************************************
 Public methods:
 SEXP rowMedians(SEXP x, SEXP naRm, SEXP hasNA)
 SEXP colMedians(SEXP x, SEXP naRm, SEXP hasNA)

 Private methods:
 SEXP rowMediansReal(SEXP x, int nrow, int ncol, int narm, int hasna, int by_column)
 SEXP rowMediansInteger(SEXP x, int nrow, int ncol, int narm, int hasna, int by_column)

 Authors: Adopted from rowQuantiles.c by R. Gentleman.

 Copyright Henrik Bengtsson, 2007
 **************************************************************************/

/* Include R packages */
#include <R.h>
#include <Rdefines.h>
#include <Rmath.h>



SEXP rowMediansReal(SEXP x, int nrow, int ncol, int narm, int hasna, int by_column) {
  SEXP ans;
  int isOdd;
  int ii, jj, kk, qq;
  int *colOffset;
  double *rowData, *xx;
  double value;

  xx = REAL(x);

  /* R allocate memory for the 'rowData'.  This will be 
     taken care of by the R garbage collector later on. */
  rowData = (double *) R_alloc(ncol, sizeof(double));

  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(REALSXP, nrow));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* When narm == FALSE, isOdd and qq are the same for all rows */
  if (narm == FALSE) {
    isOdd = (ncol % 2 == 1);
    qq = (int)(ncol/2) - 1;
  } else {
    isOdd = FALSE;
    qq = 0;
  }
  //  Rprintf("isOdd=%d, qq=%d\n", isOdd, qq);

  value = 0;

  /* Pre-calculate the column offsets */
  colOffset = (int *) R_alloc(ncol, sizeof(int));

  //HJ begin
  if (by_column) {
    for(jj=0; jj < ncol; jj++) 
      colOffset[jj] = jj;
  } else {
    for(jj=0; jj < ncol; jj++) 
      colOffset[jj] = (int)jj*nrow;
  }
  //HJ end

  if (hasna == TRUE) {
    for(ii=0; ii < nrow; ii++) {
      if(ii % 1000 == 0)
        R_CheckUserInterrupt(); 

      // Rprintf("ii=%d\n", ii);

      int rowIdx = by_column ? ncol*ii : ii; //HJ

      kk = 0;  /* The index of the last non-NA value detected */
      for(jj=0; jj < ncol; jj++) {
        value = xx[rowIdx+colOffset[jj]];  //HJ

        if (ISNAN(value)) {
          if (narm == FALSE) {
            kk = -1;
            break;
          }
        } else {
          rowData[kk] = value;
          kk = kk + 1;
        }
      }
  
      if (kk == 0) {
        REAL(ans)[ii] = R_NaN;
      } else if (kk == -1) {
        REAL(ans)[ii] = R_NaReal;
      } else {
        /* When narm == TRUE, isOdd and qq may change with row */
        if (narm == TRUE) {
          isOdd = (kk % 2 == 1);
          qq = (int)(kk/2) - 1;
        }
  
        /* Permute x[0:kk-1] so that x[qq] is in the correct 
           place with smaller values to the left, ... */
        rPsort(rowData, kk, qq+1);
        value = rowData[qq+1];

        // Rprintf("kk=%d, qq+1=%d, value=%d\n", kk, qq, value);

        if (isOdd == TRUE) {
          REAL(ans)[ii] = value;
        } else {
          if (narm == TRUE || !ISNAN(value)) {
            /* Permute x[0:qq-2] so that x[qq-1] is in the correct 
               place with smaller values to the left, ... */
            rPsort(rowData, qq+1, qq);
            value = (rowData[qq] + value)/2;
            //  Rprintf("qq+1=%d, qq=%d, value=%d\n", qq+1, qq, value);
          }
          REAL(ans)[ii] = value;
        }

      }
    }
  } else {
    for(ii=0; ii < nrow; ii++) {
      if(ii % 1000 == 0)
        R_CheckUserInterrupt(); 

      int rowIdx = by_column ? ncol*ii : ii; //HJ

      for(jj=0; jj < ncol; jj++)
        rowData[jj] = xx[rowIdx+colOffset[jj]]; //HJ
  
      /* Permute x[0:ncol-1] so that x[qq] is in the correct 
         place with smaller values to the left, ... */
      rPsort(rowData, ncol, qq+1);
      value = rowData[qq+1];

      if (isOdd == TRUE) {
        REAL(ans)[ii] = (double)value;
      } else {
        /* Permute x[0:qq-2] so that x[qq-1] is in the correct 
           place with smaller values to the left, ... */
        rPsort(rowData, qq+1, qq);
        value = (rowData[qq] + value)/2;
        REAL(ans)[ii] = (double)value;
      }

    }
  } /* if (hasna ...) */

  UNPROTECT(1);

  return(ans);
} /* rowMediansReal() */




SEXP rowMediansInteger(SEXP x, int nrow, int ncol, int narm, int hasna, int by_column) {
  SEXP ans;
  int isOdd;
  int ii, jj, kk, qq;
  int *colOffset;
  int *rowData, *xx;
  int value;

  xx = INTEGER(x);

  /* R allocate memory for the 'rowData'.  This will be 
     taken care of by the R garbage collector later on. */
  rowData = (int *) R_alloc(ncol, sizeof(int));

  /* R allocate a int vector of length 'nrow' */
  PROTECT(ans = allocVector(REALSXP, nrow));

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* When narm == FALSE, isOdd and qq are the same for all rows */
  if (narm == FALSE) {
    isOdd = (ncol % 2 == 1);
    qq = (int)(ncol/2) - 1;
  } else {
    isOdd = FALSE;
    qq = 0;
  }

  value = 0;

  /* Pre-calculate the column offsets */
  colOffset = (int *) R_alloc(ncol, sizeof(int));

  // HJ begin
  if (by_column) {
    for(jj=0; jj < ncol; jj++) 
      colOffset[jj] = jj;
  } else {
    for(jj=0; jj < ncol; jj++) 
      colOffset[jj] = (int)jj*nrow;
  }
  // HJ end

  if (hasna == TRUE) {
    for(ii=0; ii < nrow; ii++) {
      if(ii % 1000 == 0)
        R_CheckUserInterrupt(); 

      int rowIdx = by_column ? ncol*ii : ii; //HJ

      kk = 0;  /* The index of the last non-NA value detected */
      for(jj=0; jj < ncol; jj++) {
        value = xx[rowIdx+colOffset[jj]]; //HJ

        if (value == NA_INTEGER) {
          if (narm == FALSE) {
            kk = -1;
            break;
          }
        } else {
          rowData[kk] = value;
          kk = kk + 1;
        }
      }
  
      if (kk == 0) {
        REAL(ans)[ii] = R_NaN;
      } else if (kk == -1) {
        REAL(ans)[ii] = R_NaReal;
      } else {
        /* When narm == TRUE, isOdd and qq may change with row */
        if (narm == TRUE) {
          isOdd = (kk % 2 == 1);
          qq = (int)(kk/2) - 1;
        }
  
        /* Permute x[0:kk-1] so that x[qq] is in the correct 
           place with smaller values to the left, ... */
        iPsort(rowData, kk, qq+1);
        value = rowData[qq+1];

        if (isOdd == TRUE) {
          REAL(ans)[ii] = (double)value;
        } else {
          if (narm == TRUE || value != NA_INTEGER) {
            /* Permute x[0:qq-2] so that x[qq-1] is in the correct 
               place with smaller values to the left, ... */
            iPsort(rowData, qq+1, qq);
            if (rowData[qq] == NA_INTEGER)
              REAL(ans)[ii] = R_NaReal;
            else
              REAL(ans)[ii] = (double)((rowData[qq] + value))/2;
          } else {
            REAL(ans)[ii] = (double)value;
          }
        }
      }
    }
  } else {
    for(ii=0; ii < nrow; ii++) {
      if(ii % 1000 == 0)
        R_CheckUserInterrupt(); 

      int rowIdx = by_column ? ncol*ii : ii; //HJ

      for(jj=0; jj < ncol; jj++)
        rowData[jj] = xx[rowIdx+colOffset[jj]]; //HJ
  
      /* Permute x[0:ncol-1] so that x[qq] is in the correct 
         place with smaller values to the left, ... */
      iPsort(rowData, ncol, qq+1);
      value = rowData[qq+1];
      if (isOdd == TRUE) {
        REAL(ans)[ii] = (double)value;
      } else {
        iPsort(rowData, qq+1, qq);
        REAL(ans)[ii] = (double)((rowData[qq] + value))/2;
      }
    }
  } /* if (hasna ...) */

  UNPROTECT(1);

  return(ans);
} /* rowMediansInteger() */



SEXP rowMedians(SEXP x, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int nrow, ncol;
  int narm;
  int hasna;
  int by_column = 0;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  hasna = LOGICAL(hasNA)[0];

  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[0];
  ncol = INTEGER(ans)[1];

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowMediansReal(x, nrow, ncol, narm, hasna, by_column);
  } else if (isInteger(x)) {
    ans = rowMediansInteger(x, nrow, ncol, narm, hasna, by_column);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be a numeric.");
  }

  UNPROTECT(1);

  return(ans);
} /* rowMedians() */

//HJ begin
SEXP colMedians(SEXP x, SEXP naRm, SEXP hasNA) {
  SEXP ans;
  int nrow, ncol;
  int narm;
  int hasna;
  int by_column = 1;

  /* Argument 'x': */
  if (!isMatrix(x))
    error("Argument 'x' must be a matrix.");

  /* Argument 'naRm': */
  if (!isLogical(naRm))
    error("Argument 'naRm' must be a single logical.");

  if (length(naRm) != 1)
    error("Argument 'naRm' must be a single logical.");

  narm = LOGICAL(naRm)[0];
  if (narm != TRUE && narm != FALSE)
    error("Argument 'naRm' must be either TRUE or FALSE.");

  hasna = LOGICAL(hasNA)[0];

  /* Get dimensions of 'x'. */
  PROTECT(ans = getAttrib(x, R_DimSymbol));
  nrow = INTEGER(ans)[1];
  ncol = INTEGER(ans)[0];

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    ans = rowMediansReal(x, nrow, ncol, narm, hasna, by_column);
  } else if (isInteger(x)) {
    ans = rowMediansInteger(x, nrow, ncol, narm, hasna, by_column);
  } else {
    UNPROTECT(1);
    error("Argument 'x' must be a numeric.");
  }

  UNPROTECT(1);

  return(ans);
} /* colMedians() */
//HJ end

/***************************************************************************
 HISTORY:
 2011-12-11 [HB]
 o BUG FIX: rowMediansReal(..., na.rm=TRUE) did not handle NaN:s, only NA:s.
   Note that NaN:s does not exist for integers.
 2011-10-12 [HJ]
 o Added colMedians().
 o Now rowMediansInteger/Real() can operate also by columns, cf. argument
   'by_column'.
 2007-08-14 [HB]
 o Added checks for user interrupts every 1000 line.
 o Added argument 'hasNA' to rowMedians().
 2005-12-07 [HB]
 o BUG FIX: When calculating the median of an even number (non-NA) values,
    the length of the second sort was one element too short, which made the
    method to freeze, i.e. rPsort(rowData, qq, qq) is now (...qq+1, qq).
 2005-11-24 [HB]
  o By implementing a special version for integers, there is no need to
    coerce to double in R, which would take up twice the amount of memory.
  o rowMedians() now handles NAs too.
  o Adopted from rowQuantiles.c in Biobase of Bioconductor.
 **************************************************************************/
