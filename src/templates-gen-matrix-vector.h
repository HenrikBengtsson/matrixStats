#include "macros.h"


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


#define IDXS_TYPE 'i'
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
#undef IDXS_TYPE


#define IDXS_TYPE 'r'
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
#undef IDXS_TYPE


RETURN_TYPE (*METHOD_NAME[3][3][3])(ARGUMENTS_LIST) = {{
    {METHOD_NAME_noRows_noCols_noIdxs, METHOD_NAME_noRows_noCols_intIdxs, METHOD_NAME_noRows_noCols_realIdxs},
    {METHOD_NAME_noRows_intCols_noIdxs, METHOD_NAME_noRows_intCols_intIdxs, METHOD_NAME_noRows_intCols_realIdxs},
    {METHOD_NAME_noRows_realCols_noIdxs, METHOD_NAME_noRows_realCols_intIdxs, METHOD_NAME_noRows_realCols_realIdxs},
  }, {
    {METHOD_NAME_intRows_noCols_noIdxs, METHOD_NAME_intRows_noCols_intIdxs, METHOD_NAME_intRows_noCols_realIdxs},
    {METHOD_NAME_intRows_intCols_noIdxs, METHOD_NAME_intRows_intCols_intIdxs, METHOD_NAME_intRows_intCols_realIdxs},
    {METHOD_NAME_intRows_realCols_noIdxs, METHOD_NAME_intRows_realCols_intIdxs, METHOD_NAME_intRows_realCols_realIdxs},
  }, {
    {METHOD_NAME_realRows_noCols_noIdxs, METHOD_NAME_realRows_noCols_intIdxs, METHOD_NAME_realRows_noCols_realIdxs},
    {METHOD_NAME_realRows_intCols_noIdxs, METHOD_NAME_realRows_intCols_intIdxs, METHOD_NAME_realRows_intCols_realIdxs},
    {METHOD_NAME_realRows_realCols_noIdxs, METHOD_NAME_realRows_realCols_intIdxs, METHOD_NAME_realRows_realCols_realIdxs},
  }
};

#include "templates-types_undef.h"
