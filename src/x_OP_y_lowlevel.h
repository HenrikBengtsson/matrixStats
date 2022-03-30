#include <Rdefines.h>
#include "000.types.h"
#include "000.utils.h"
#include "000.macros.h"

/*
Native API (dynamically generated via macros):
 
void x_OP_y_Add_int_int(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Div_int_int(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, R_xlen_t *xrows, R_xlen_t nxrows, int xrowsHasNA, R_xlen_t *xcols, R_xlen_t nxcols, int xcolsHasNA, R_xlen_t *yidxs, R_xlen_t nyidxs, int yidxsHasNA, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
*/


/* Addition */
#define METHOD x_OP_y_Add
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '+'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '+'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '+'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '+'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD


/* Subtraction */
#define METHOD x_OP_y_Sub
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '-'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '-'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '-'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '-'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD


/* Multiplication */
#define METHOD x_OP_y_Mul
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '*'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '*'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '*'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '*'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD


/* Division */
#define METHOD x_OP_y_Div
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '/'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '/'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '/'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '/'
#include "x_OP_y_lowlevel_template.h"
#include "000.templates-types_undef.h"
#undef METHOD
