#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include "api.h"

#define CALLDEF(name, n) {#name, (DL_FUNC) &name, n}

static R_CallMethodDef callMethods[]  = {
  CALLDEF(allocArray2, 2),
  CALLDEF(allocMatrix2, 3),
  CALLDEF(allocVector2, 2),
  CALLDEF(anyMissing, 2),
  CALLDEF(binCounts, 3),
  CALLDEF(binMeans, 5),
  CALLDEF(colCounts, 8),
  CALLDEF(colOrderStats, 5),
  CALLDEF(colRanges, 7),
  CALLDEF(count, 6),
  CALLDEF(diff2, 4),
  CALLDEF(indexByRow, 2),
  CALLDEF(logSumExp, 4),
  CALLDEF(meanOver, 4),
  CALLDEF(productExpSumLog, 4),
  CALLDEF(psortKM, 3),
  CALLDEF(rowCounts, 8),
  CALLDEF(rowCummaxs, 5),
  CALLDEF(rowCummins, 5),
  CALLDEF(rowCumprods, 5),
  CALLDEF(rowCumsums, 5),
  CALLDEF(rowDiffs, 7),
  CALLDEF(rowLogSumExps, 7),
  CALLDEF(rowMads, 8),
  CALLDEF(rowMedians, 7),
  CALLDEF(rowOrderStats, 5),
  CALLDEF(rowRanges, 7),
  CALLDEF(rowRanksWithTies, 6),
  CALLDEF(rowVars, 7),
  CALLDEF(signTabulate, 2),
  CALLDEF(sumOver, 4),
  CALLDEF(validate, 3),
  CALLDEF(weightedMean, 5),
  CALLDEF(weightedMedian, 6),
  CALLDEF(x_OP_y, 11),
  {NULL, NULL, 0}
};

void R_init_matrixStats(DllInfo *info) {
  R_registerRoutines(info, NULL, callMethods, NULL, NULL);
}
