#include "macros.h"

#ifndef METHOD_TEMPLATE_H
#define METHOD_TEMPLATE_H QUOTE_MACROS(CONCAT_MACROS(METHOD,TYPE-template.h))
#endif

#ifdef X_TYPE_I
  #define X_TYPE 'i'
  #include "templates-gen-matrix.h"
#endif

#ifdef X_TYPE_R
  #define X_TYPE 'r'
  #include "templates-gen-matrix.h"
#endif

#ifdef X_TYPE_L
  #define X_TYPE 'l'
  #include "templates-gen-matrix.h"
#endif

#undef METHOD_TEMPLATE_H
