/*
 * Sets type-specific macros
 */

#define CONCAT(x,y) x ##_## y
#define CONCAT_MACROS(x,y) CONCAT(x,y)

#if R_TYPE == 'i'
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Integer)
  #define X_C_TYPE int
  #define X_IN_C INTEGER
  #define ANS_SXP INTSXP
  #define ANS_IN_C INTEGER
#elif R_TYPE == 'r'
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Real)
  #define X_C_TYPE double
  #define X_IN_C REAL
  #define ANS_SXP REALSXP
  #define ANS_IN_C REAL
#endif
