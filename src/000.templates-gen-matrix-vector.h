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
    {METHOD_NAME_arows_acols_aidxs, METHOD_NAME_arows_acols_iidxs, METHOD_NAME_arows_acols_didxs},
    {METHOD_NAME_arows_icols_aidxs, METHOD_NAME_arows_icols_iidxs, METHOD_NAME_arows_icols_didxs},
    {METHOD_NAME_arows_dcols_aidxs, METHOD_NAME_arows_dcols_iidxs, METHOD_NAME_arows_dcols_didxs},
  }, {
    {METHOD_NAME_irows_acols_aidxs, METHOD_NAME_irows_acols_iidxs, METHOD_NAME_irows_acols_didxs},
    {METHOD_NAME_irows_icols_aidxs, METHOD_NAME_irows_icols_iidxs, METHOD_NAME_irows_icols_didxs},
    {METHOD_NAME_irows_dcols_aidxs, METHOD_NAME_irows_dcols_iidxs, METHOD_NAME_irows_dcols_didxs},
  }, {
    {METHOD_NAME_drows_acols_aidxs, METHOD_NAME_drows_acols_iidxs, METHOD_NAME_drows_acols_didxs},
    {METHOD_NAME_drows_icols_aidxs, METHOD_NAME_drows_icols_iidxs, METHOD_NAME_drows_icols_didxs},
    {METHOD_NAME_drows_dcols_aidxs, METHOD_NAME_drows_dcols_iidxs, METHOD_NAME_drows_dcols_didxs},
  }
};

#include "000.templates-types_undef.h"
