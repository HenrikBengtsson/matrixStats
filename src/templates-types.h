/*
 * Sets type-specific macros
 */

#define CONCAT(x,y) x ##_## y
#define CONCAT_MACROS(x,y) CONCAT(x,y)

/*
 Data type macros for argument 'x'
 */
#if X_TYPE == 'i'
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Integer)
  #define X_C_TYPE int
  #define X_IN_C INTEGER
#elif X_TYPE == 'r'
  #define METHOD_TYPE CONCAT_MACROS(METHOD, Real)
  #define X_C_TYPE double
  #define X_IN_C REAL
#endif


/*
 Data type macros for result ('ans')
 */
#ifndef ANS_TYPE
  /* Default to same as 'x' */
  #define ANS_TYPE X_TYPE
#endif

#if ANS_TYPE == 'i'
  #define ANS_SXP INTSXP
  #define ANS_IN_C INTEGER
#elif ANS_TYPE == 'r'
  #define ANS_SXP REALSXP
  #define ANS_IN_C REAL
#endif
