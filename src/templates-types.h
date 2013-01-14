/*
 * Sets type-specific macros
 */

#define CONCAT(x,y) x ##_## y
#define CONCAT_MACROS(x,y) CONCAT(x,y)

#if R_TYPE == 'i'
  #define R_TO_C INTEGER
  #define R_SXP INTSXP
  #define C_TYPE int
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Integer)
#elif R_TYPE == 'r'
  #define R_TO_C REAL
  #define R_SXP REALSXP
  #define C_TYPE double
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Real)
#endif
