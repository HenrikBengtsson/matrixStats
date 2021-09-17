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
  CALLDEF(colCounts, 9),
  CALLDEF(colOrderStats, 6),
  CALLDEF(colRanges, 8),
  CALLDEF(count, 6),
  CALLDEF(diff2, 4),
  CALLDEF(indexByRow, 2),
  CALLDEF(logSumExp, 4),
  CALLDEF(mean2, 4),
  CALLDEF(productExpSumLog, 4),
  CALLDEF(psortKM, 3),
  CALLDEF(rowCounts, 9),
  CALLDEF(rowCummaxs, 6),
  CALLDEF(rowCummins, 6),
  CALLDEF(rowCumprods, 6),
  CALLDEF(rowCumsums, 6),
  CALLDEF(rowDiffs, 8),
  CALLDEF(rowLogSumExps, 8),
  CALLDEF(rowMads, 9),
  CALLDEF(rowMeans2, 8),
  CALLDEF(rowMedians, 8),
  CALLDEF(rowOrderStats, 6),
  CALLDEF(rowRanges, 8),
  CALLDEF(rowRanksWithTies, 7),
  CALLDEF(rowSums2, 8),
  CALLDEF(rowVars, 8),
  CALLDEF(signTabulate, 2),
  CALLDEF(sum2, 4),
  CALLDEF(validate, 3),
  CALLDEF(weightedMean, 5),
  CALLDEF(weightedMedian, 6),
  CALLDEF(x_OP_y, 11),
  {NULL, NULL, 0}
};

void R_init_matrixStats(DllInfo *info) {
  R_registerRoutines(info, NULL, callMethods, NULL, NULL);
  R_useDynamicSymbols(info, FALSE);
}
