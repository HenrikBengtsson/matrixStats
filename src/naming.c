#include "naming.h"
void setNames(SEXP vec/* Answer vector*/,SEXP namesVec,R_xlen_t length,void *subscripts,int idxType){

if(length == 0){
  /* If the targets has length zero, we skip the entire process
   * which also is the behavior of base::rowSums
   */
  return;
}
SEXP ansNames;                                                                    
PROTECT(ansNames = allocVector(STRSXP,length));                                     
if(idxType == SUBSETTED_ALL){                                                   
  ansNames = namesVec;                                                  
}                                                                                 
else if(idxType == SUBSETTED_INTEGER){
  Rprintf("Using integer mapping with %d indecies",length);
  int *typedIdx = subscripts;                                                          
  R_xlen_t thisIdx;                                                               
  for(R_xlen_t i = 0; i < length; i++){
    thisIdx = (typedIdx[i] == NA_INTEGER) ? NA_R_XLEN_T : (R_xlen_t)typedIdx[i]-1;
    Rprintf("i=%d,Idx=%d",i,thisIdx);
    if(thisIdx == NA_R_XLEN_T){                                                   
      SET_STRING_ELT(ansNames,i,NA_STRING);                                       
    }                                                                             
    else{                                                                         
      SEXP eltElement = STRING_ELT(namesVec, thisIdx);                  
      SET_STRING_ELT(ansNames,i,eltElement);                                      
    }                                                                             
  }                                                                               
}                                                                                 
else if(idxType == SUBSETTED_REAL){
  Rprintf("Using floating point mapping");
  double *typedIdx = subscripts;                                                       
  R_xlen_t thisIdx;                                                               
  for(R_xlen_t i = 0; i < length; i++){
    Rprintf("index=%f",typedIdx);
    thisIdx = ISNAN(typedIdx[i]) ? NA_R_XLEN_T : (R_xlen_t)typedIdx[i]-1;
    Rprintf("i=%d,Idx=%d",i,thisIdx);
    if(thisIdx == NA_R_XLEN_T){                                                   
      SET_STRING_ELT(ansNames,i,NA_STRING);                                       
    }                                                                             
    else{                                                                         
      SEXP eltElement = STRING_ELT(namesVec, thisIdx);                  
      SET_STRING_ELT(ansNames,i,eltElement);                                      
    }                                                                             
  }                                                                               
}                                                                                 
else{                                                                             
  error("Invalid index type");                                                    
}                                                                                 
namesgets(vec,ansNames);                                                          
UNPROTECT(1);
}