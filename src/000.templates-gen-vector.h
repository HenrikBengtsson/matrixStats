#include "000.macros.h"


#include METHOD_TEMPLATE_H
#define IDXS_TYPE 'i'
#include METHOD_TEMPLATE_H
#undef IDXS_TYPE
#define IDXS_TYPE 'r'
#include METHOD_TEMPLATE_H
#undef IDXS_TYPE


RETURN_TYPE (*METHOD_NAME[3])(ARGUMENTS_LIST) = {
  METHOD_NAME_aidxs, METHOD_NAME_iidxs, METHOD_NAME_didxs
};

#include "000.templates-types_undef.h"
