#include <Rinternals.h> /* R_xlen_t, ... */
#include <Rversion.h>   /* R_VERSION, R_Version() */

/* Needed if compiled prior to 4.5.0 with STRICT_R_HEADERS */
#include <float.h>

#ifndef R_INT_MIN
#define R_INT_MIN -INT_MAX
#endif

#ifndef R_INT_MAX
#define R_INT_MAX  INT_MAX
#endif


/* inf */
#ifndef IS_INF
#define IS_INF(x) (x == R_PosInf || x == R_NegInf)
#endif


/* Subsetting index mode */
#ifndef SUBSETTED_MODE_INDEX
  #define SUBSETTED_MODE_INDEX
  #define SUBSETTED_ALL 0
  #define SUBSETTED_INTEGER 1
  #define SUBSETTED_REAL 2
#endif


/* 
 * The accumulator type ACC_T is used for storing the 
 * intermediary results in sums and products. Here, better precision than R's
 * default 64-bit floats may be desired to avoid round-off errors. Note that
 * the final answer returned will always be 64-bit floats.
 * Enable the following definition to switch from 64-bit floating point numbers
 * to 80-bit extended precision floating numbers on platforms which support it 
 * (eg. x86). 
 * Some platforms do not support 80-bit floats 
 * and will use 64-bit floats anyway.
 * The trade-off of using 80-bit floats is performance. Unlike 64-bit floats,
 * the compiler does not optimize it with SIMD instructions, meaning that 80-bit
 * float operations may be considerably slower, often with a 2x difference on
 * some benchmarks.
 */
// #define ACC_T_IS_LONG_DOUBLE
#ifdef  ACC_T_IS_LONG_DOUBLE
#define ACC_T long double
#define ACC_T_ALLOC(n) R_allocLD(n)
#else
#define ACC_T double
#define ACC_T_ALLOC(n) ((double*) R_alloc(n, sizeof(double)))
#endif


/* define NA_R_XLEN_T */
#ifdef LONG_VECTOR_SUPPORT
  #define R_XLEN_T_MIN -R_XLEN_T_MAX-1
  #define NA_R_XLEN_T R_XLEN_T_MIN
#else
  #define NA_R_XLEN_T NA_INTEGER
#endif


/* Macro to check for user interrupts every 2^20 iteration */
#define R_CHECK_USER_INTERRUPT(i) if (i % 1048576 == 0) R_CheckUserInterrupt()
