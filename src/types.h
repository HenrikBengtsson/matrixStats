/*
 Backward compatibility with R (< 3.0.0)
 */
#ifndef LONG_VECTOR_SUPPORT
  #ifndef R_XLEN_T
    typedef int R_xlen_t;
    #define R_XLEN_T 1
  #endif
  #ifndef xlength
    #define xlength length
  #endif
#endif

#ifndef R_INT_MIN
#define R_INT_MIN -INT_MAX
#endif

#ifndef R_INT_MAX
#define R_INT_MAX  INT_MAX
#endif
