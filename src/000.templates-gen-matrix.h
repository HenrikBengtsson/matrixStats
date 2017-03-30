#include "000.macros.h"


#include METHOD_TEMPLATE_H
#define COLS_TYPE 'i'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE
#define COLS_TYPE 'r'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE

#define ROWS_TYPE 'i'
#include METHOD_TEMPLATE_H
#define COLS_TYPE 'i'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE
#define COLS_TYPE 'r'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE
#undef ROWS_TYPE

#define ROWS_TYPE 'r'
#include METHOD_TEMPLATE_H
#define COLS_TYPE 'i'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE
#define COLS_TYPE 'r'
#include METHOD_TEMPLATE_H
#undef COLS_TYPE
#undef ROWS_TYPE


RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST) = {
  {METHOD_NAME_arows_acols, METHOD_NAME_arows_icols, METHOD_NAME_arows_dcols},
  {METHOD_NAME_irows_acols, METHOD_NAME_irows_icols, METHOD_NAME_irows_dcols},
  {METHOD_NAME_drows_acols, METHOD_NAME_drows_icols, METHOD_NAME_drows_dcols},
};

#include "000.templates-types_undef.h"
