#include <Rdefines.h>
#include "types.h"
#include "utils.h"

/*
Native API (dynamically generated via macros):

void x_OP_y_Add_int_int_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_int_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_int_dbl_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_int_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Add_dbl_dbl_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_int_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_int_dbl_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_int_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Sub_dbl_dbl_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_int_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, int *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_int_dbl_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_int_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Mul_dbl_dbl_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_int_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_acols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_icols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_dcols_aidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_acols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_icols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_dcols_iidxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_arows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_irows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_acols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_icols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_int_dbl_drows_dcols_didxs(int *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_int_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, int *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_acols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_icols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_dcols_aidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_acols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_icols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_dcols_iidxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_arows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_irows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_acols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_icols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
void x_OP_y_Div_dbl_dbl_drows_dcols_didxs(double *x, R_xlen_t nrow, R_xlen_t ncol, double *y, R_xlen_t ny, void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, void *yidxs, R_xlen_t nyidxs, int byrow, int commute, int narm, int hasna, double *ans, R_xlen_t n)
*/

#define METHOD_TEMPLATE_H "x_OP_y_TYPE-template.h"
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, \
                   Y_C_TYPE *y, R_xlen_t ny, \
                   void *xrows, R_xlen_t nxrows, void *xcols, R_xlen_t nxcols, \
                   void *yidxs, R_xlen_t nyidxs, \
                   int byrow, int commute, \
                   int narm, int hasna, \
                   ANS_C_TYPE *ans, R_xlen_t n


/* Addition */
#define METHOD x_OP_y_Add
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '+'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '+'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '+'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '+'
#include "templates-gen-matrix-vector.h"
#undef METHOD


/* Subtraction */
#define METHOD x_OP_y_Sub
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '-'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '-'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '-'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '-'
#include "templates-gen-matrix-vector.h"
#undef METHOD


/* Multiplication */
#define METHOD x_OP_y_Mul
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'i'
#define OP '*'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '*'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '*'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '*'
#include "templates-gen-matrix-vector.h"
#undef METHOD


/* Division */
#define METHOD x_OP_y_Div
#define X_TYPE 'i'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '/'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'i'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '/'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'i'
#define ANS_TYPE 'r'
#define OP '/'
#include "templates-gen-matrix-vector.h"

#define X_TYPE 'r'
#define Y_TYPE 'r'
#define ANS_TYPE 'r'
#define OP '/'
#include "templates-gen-matrix-vector.h"
#undef METHOD


SEXP x_OP_y(SEXP x, SEXP y, SEXP dim, SEXP operator, SEXP xrows, SEXP xcols, SEXP yidxs, SEXP commute, SEXP naRm, SEXP hasNA, SEXP byRow) {
  SEXP ans = NILSXP;
  int narm, hasna, byrow, commute2;
  int op;
  R_xlen_t nrow, ncol, ny;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'y': */
  assertArgVector(y, (R_TYPE_INT | R_TYPE_REAL), "y");
  ny = xlength(y);

  /* Argument 'byRow': */
  byrow = asLogicalNoNA(byRow, "byrow");

  /* Argument 'commute2': */
  commute2 = asLogicalNoNA(commute, "commute");

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'xrows', 'xcols' and 'yidxs': */
  R_xlen_t nxrows, nxcols, nyidxs;
  int xrowsType, xcolsType, yidxsType;
  void *cxrows = validateIndices(xrows, nrow, 0, &nxrows, &xrowsType);
  void *cxcols = validateIndices(xcols, ncol, 0, &nxcols, &xcolsType);
  void *cyidxs = validateIndices(yidxs, ny, 1, &nyidxs, &yidxsType);

  /* Argument 'operator': */
  op = asInteger(operator);


  if (op == 1) {
    /* Addition */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Add_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && isInteger(y)) {
        x_OP_y_Add_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isInteger(x) && isReal(y)) {
        x_OP_y_Add_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Add_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } if (op == 2) {
    /* Subtraction */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Sub_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && isInteger(y)) {
        x_OP_y_Sub_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isInteger(x) && isReal(y)) {
        x_OP_y_Sub_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Sub_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } else if (op == 3) {
    /* Multiplication */
    if (isReal(x) || isReal(y)) {
      PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
      if (isReal(x) && isReal(y)) {
        x_OP_y_Mul_dbl_dbl[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isReal(x) && isInteger(y)) {
        x_OP_y_Mul_dbl_int[xrowsType][xcolsType][yidxsType](
            REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      } else if (isInteger(x) && isReal(y)) {
        x_OP_y_Mul_int_dbl[xrowsType][xcolsType][yidxsType](
            INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
      }
      UNPROTECT(1);
    } else {
      PROTECT(ans = allocMatrix(INTSXP, nxrows, nxcols));
      x_OP_y_Mul_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, INTEGER(ans), xlength(ans));
      UNPROTECT(1);
    }
  } else if (op == 4) {
    /* Division */
    PROTECT(ans = allocMatrix(REALSXP, nxrows, nxcols));
    if (isReal(x) && isReal(y)) {
      x_OP_y_Div_dbl_dbl[xrowsType][xcolsType][yidxsType](
          REAL(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if (isReal(x) && isInteger(y)) {
      x_OP_y_Div_dbl_int[xrowsType][xcolsType][yidxsType](
          REAL(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if (isInteger(x) && isReal(y)) {
      x_OP_y_Div_int_dbl[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, REAL(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    } else if (isInteger(x) && isInteger(y)) {
      x_OP_y_Div_int_int[xrowsType][xcolsType][yidxsType](
          INTEGER(x), nrow, ncol, INTEGER(y), ny, cxrows, nxrows, cxcols, nxcols, cyidxs, nyidxs, byrow, commute2, narm, hasna, REAL(ans), xlength(ans));
    }
    UNPROTECT(1);
  }

  return(ans);
} /* x_OP_y() */
