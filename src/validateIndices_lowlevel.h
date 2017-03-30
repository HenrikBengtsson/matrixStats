#include <string.h>
#include "000.utils.h"

#define METHOD validateIndices

#define RETURN_VALIDATED_ANS(type, n, cond, item, poststmt) \
type *ans = (type*) R_alloc(count, sizeof(type));           \
jj = 0;                                                     \
for (ii = 0; ii < n; ++ ii) {                               \
  if (cond) ans[jj ++] = item;                              \
}                                                           \
poststmt                                                    \
return ans

#define FILL_VALIDATED_ANS(n, cond, item) \
jj = 0;                                   \
for (ii = 0; ii < n; ++ ii) {             \
  if (cond) ans[jj ++] = item;            \
}


#define X_TYPE 'i'
#define SUBSETTED_DEFAULT SUBSETTED_INTEGER
#include "validateIndices_lowlevel_template.h"
#undef SUBSETTED_DEFAULT

#define X_TYPE 'r'
#define SUBSETTED_DEFAULT SUBSETTED_REAL
#include "validateIndices_lowlevel_template.h"
#undef SUBSETTED_DEFAULT
