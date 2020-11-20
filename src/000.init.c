#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include "000.api.h"

#define CALLDEF(name, n) {#name, (DL_FUNC) &name, n}

static R_CallMethodDef callMethods[]  = {
  CALLDEF(allocArray2, 2),
  CALLDEF(allocMatrix2, 3),
  CALLDEF(allocVector2, 2),
  CALLDEF(anyMissing, 2),
  CALLDEF(binCounts, 3),
  CALLDEF(binMeans, 5),
  CALLDEF(colCounts, 7),
  CALLDEF(colOrderStats, 5),
  CALLDEF(colRanges, 6),
  CALLDEF(count, 5),
  CALLDEF(diff2, 4),
  CALLDEF(indexByRow, 2),
  CALLDEF(logSumExp, 3),
  CALLDEF(mean2, 4),
  CALLDEF(productExpSumLog, 3),
  CALLDEF(psortKM, 3),
  CALLDEF(rowCounts, 7),
  CALLDEF(rowCummaxs, 5),
  CALLDEF(rowCummins, 5),
  CALLDEF(rowCumprods, 5),
  CALLDEF(rowCumsums, 5),
  CALLDEF(rowDiffs, 7),
  CALLDEF(rowLogSumExps, 6),
  CALLDEF(rowMads, 7),
  CALLDEF(rowMeans2, 6),
  CALLDEF(rowMedians, 6),
  CALLDEF(rowOrderStats, 5),
  CALLDEF(rowRanges, 6),
  CALLDEF(rowRanksWithTies, 6),
  CALLDEF(rowSums2, 6),
  CALLDEF(rowVars, 6),
  CALLDEF(signTabulate, 2),
  CALLDEF(sum2, 4),
  CALLDEF(validate, 3),
  CALLDEF(weightedMean, 5),
  CALLDEF(weightedMedian, 6),
  CALLDEF(x_OP_y, 10),
  {NULL, NULL, 0}
};

void R_init_matrixStats(DllInfo *info) {
  R_registerRoutines(info, NULL, callMethods, NULL, NULL);
  R_useDynamicSymbols(info, FALSE);
}
