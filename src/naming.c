#include "naming.h"

void setNames(SEXP vec/*Answer vector*/, SEXP namesVec, R_xlen_t length, R_xlen_t *subscripts) {

  if (length == 0) {
    /* Zero-length names attribute? Keep behavior same as base R function */
    return;
  }
  if (subscripts == NULL) { 
    namesgets(vec, namesVec);
  } else {
    SEXP ansNames = PROTECT(allocVector(STRSXP, length));
    R_xlen_t thisIdx;            
    for (R_xlen_t i = 0; i < length; i++) {
      thisIdx = subscripts[i];
      if (thisIdx == NA_R_XLEN_T) {                                                   
        SET_STRING_ELT(ansNames, i, NA_STRING);                                       
      }                                                                             
      else {                                                                         
        SEXP eltElement = STRING_ELT(namesVec, thisIdx);                  
        SET_STRING_ELT(ansNames, i, eltElement);                                      
      }                                                                             
    }
    namesgets(vec, ansNames);                                                          
    UNPROTECT(1);    
  }
}


void setDimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows,
                 R_xlen_t *crows, R_xlen_t ncols, R_xlen_t *ccols, Rboolean reverseDimnames) {
  if (crows == NULL && ccols == NULL && nrows > 0 && ncols > 0){
    dimnamesgets(mat, dimnames);
    return;
  }
  SEXP rownames = VECTOR_ELT(dimnames,  reverseDimnames ? 1 : 0);
  SEXP colnames = VECTOR_ELT(dimnames,  reverseDimnames ? 0 : 1);
  SEXP ansDimnames = PROTECT(allocVector(VECSXP, 2));
  
  if (nrows == 0 || rownames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 0, R_NilValue);
  } else if (crows == NULL) {
    SET_VECTOR_ELT(ansDimnames, 0, rownames);
  } else {
    SEXP ansRownames = PROTECT(allocVector(STRSXP, nrows));
    R_xlen_t thisIdx;            
    for (R_xlen_t i = 0; i < nrows; i++) {
      thisIdx = crows[i];
      if (thisIdx == NA_R_XLEN_T) {                                                   
        SET_STRING_ELT(ansRownames, i, NA_STRING);                                
      }                                                                             
      else {                                                                         
        SEXP eltElement = STRING_ELT(rownames, thisIdx);                  
        SET_STRING_ELT(ansRownames, i, eltElement);                                      
      }                                                                             
    }
    SET_VECTOR_ELT(ansDimnames, 0, ansRownames);
    UNPROTECT(1);
  }
  
  if (ncols == 0 || colnames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 1, R_NilValue);
  } else if (ccols == NULL) {
    SET_VECTOR_ELT(ansDimnames, 1, colnames);
  } else {
    if (colnames != R_NilValue) {
      SEXP ansColnames = PROTECT(allocVector(STRSXP, ncols));
      R_xlen_t thisIdx;            
      for (R_xlen_t i = 0; i < ncols; i++) {
        thisIdx = ccols[i];
        if (thisIdx == NA_R_XLEN_T) {                                                   
          SET_STRING_ELT(ansColnames, i, NA_STRING);                                       
        }                                                                             
        else {                                                                  
          SEXP eltElement = STRING_ELT(colnames, thisIdx);                  
          SET_STRING_ELT(ansColnames, i, eltElement);                                      
        }                                                                             
      }
      SET_VECTOR_ELT(ansDimnames, 1, ansColnames);
      UNPROTECT(1);           
    }
  }
  
  dimnamesgets(mat, ansDimnames);
  UNPROTECT(1); 
}


void set_rowDiffs_Dimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows,
                           R_xlen_t *crows, R_xlen_t ncols, R_xlen_t ncol_ans, R_xlen_t *ccols) {
  
  if (nrows == 0 && ncol_ans == 0) {
    /* Zero-length attributes? Keep behavior same as base R function */
    return;
  }
  
  SEXP rownames = VECTOR_ELT(dimnames, 0);
  SEXP colnames = VECTOR_ELT(dimnames, 1);
  
  SEXP ansDimnames = PROTECT(allocVector(VECSXP, 2));
  
  if (nrows == 0 || rownames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 0, R_NilValue);
  } else if (crows == NULL) {
    SET_VECTOR_ELT(ansDimnames, 0, rownames);
  } else {
    SEXP ansRownames = PROTECT(allocVector(STRSXP, nrows));
    R_xlen_t thisIdx;            
    for (R_xlen_t i = 0; i < nrows; i++) {
      thisIdx = crows[i];
      if (thisIdx == NA_R_XLEN_T) {                                                   
        SET_STRING_ELT(ansRownames, i, NA_STRING);                                       
      }                                                                             
      else {                                                                         
        SEXP eltElement = STRING_ELT(rownames, thisIdx);                  
        SET_STRING_ELT(ansRownames, i, eltElement);                                      
      }                                                                             
    }
    SET_VECTOR_ELT(ansDimnames, 0, ansRownames);
    UNPROTECT(1);
  }
  
  if (ncol_ans == 0 || colnames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 1, R_NilValue);
  } else {
    SEXP ansColnames = PROTECT(allocVector(STRSXP, ncol_ans));
    R_xlen_t j = 0;
    if (ccols == NULL) {
      for (R_xlen_t i = (ncols - ncol_ans); i < ncols; i++) {
        SEXP eltElement = STRING_ELT(colnames, i);
        SET_STRING_ELT(ansColnames, j++, eltElement);
      }
    } else {
      R_xlen_t thisIdx;            
      for (R_xlen_t i = (ncols - ncol_ans); i < ncols; i++) {
        thisIdx = ccols[i];
        if (thisIdx == NA_R_XLEN_T) {                                                   
          SET_STRING_ELT(ansColnames, j++, NA_STRING);                                       
        }                                                                             
        else {                                                                  
          SEXP eltElement = STRING_ELT(colnames, thisIdx);                  
          SET_STRING_ELT(ansColnames, j++, eltElement);
        }
      }
    }
    SET_VECTOR_ELT(ansDimnames, 1, ansColnames);
    UNPROTECT(1); 
  }
  dimnamesgets(mat, ansDimnames);
  UNPROTECT(1); 
}


void set_colDiffs_Dimnames(SEXP mat/*Answer matrix*/, SEXP dimnames, R_xlen_t nrows, R_xlen_t nrow_ans,
                      R_xlen_t *crows, R_xlen_t ncols, R_xlen_t *ccols) {
  
  if (nrow_ans == 0 && ncols == 0) {
    /* Zero-length attributes? Keep behavior same as base R function */
    return;
  }
  
  SEXP rownames = VECTOR_ELT(dimnames, 0);
  SEXP colnames = VECTOR_ELT(dimnames, 1);
  
  SEXP ansDimnames = PROTECT(allocVector(VECSXP, 2));
  
  if (nrow_ans == 0 || rownames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 0, R_NilValue);
  } else {
    SEXP ansRownames = PROTECT(allocVector(STRSXP, nrow_ans));
    R_xlen_t j = 0;
    if (crows == NULL) {
      for (R_xlen_t i = (nrows - nrow_ans); i < nrows; i++) {
        SEXP eltElement = STRING_ELT(rownames, i);
        SET_STRING_ELT(ansRownames, j++, eltElement);
      }
    } else {
      R_xlen_t thisIdx;            
      for (R_xlen_t i = (nrows - nrow_ans); i < nrows; i++) {
        thisIdx = crows[i];
        if (thisIdx == NA_R_XLEN_T) {                                                   
          SET_STRING_ELT(ansRownames, j++, NA_STRING);                                       
        }                                                                             
        else {                                                                  
          SEXP eltElement = STRING_ELT(rownames, thisIdx);                  
          SET_STRING_ELT(ansRownames, j++, eltElement);
        }
      }
    }
    SET_VECTOR_ELT(ansDimnames, 0, ansRownames);
    UNPROTECT(1); 
  }
  
  if (ncols == 0 || colnames == R_NilValue) {
    SET_VECTOR_ELT(ansDimnames, 1, R_NilValue);
  } else if (ccols == NULL) {
    SET_VECTOR_ELT(ansDimnames, 1, colnames);
  } else {
    SEXP ansColnames = PROTECT(allocVector(STRSXP, ncols));
    R_xlen_t thisIdx;            
    for (R_xlen_t i = 0; i < ncols; i++) {
      thisIdx = ccols[i];
      if (thisIdx == NA_R_XLEN_T) {                                                   
        SET_STRING_ELT(ansColnames, i, NA_STRING);                                       
      }                                                                             
      else {                                                                         
        SEXP eltElement = STRING_ELT(colnames, thisIdx);                  
        SET_STRING_ELT(ansColnames, i, eltElement);                                      
      }                                                                             
    }
    SET_VECTOR_ELT(ansDimnames, 1, ansColnames);
    UNPROTECT(1);
  }
  dimnamesgets(mat, ansDimnames);
  UNPROTECT(1); 
}
