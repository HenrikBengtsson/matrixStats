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
  {METHOD_NAME_noRows_noCols, METHOD_NAME_noRows_intCols, METHOD_NAME_noRows_realCols},
  {METHOD_NAME_intRows_noCols, METHOD_NAME_intRows_intCols, METHOD_NAME_intRows_realCols},
  {METHOD_NAME_realRows_noCols, METHOD_NAME_realRows_intCols, METHOD_NAME_realRows_realCols},
};
#include "templates-types_undef.h"
