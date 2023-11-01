.onLoad <- function(libname, pkgname) {
  ## https://github.com/HenrikBengtsson/matrixStats/issues/183
  onLoadSetCenterOnScalar()
  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  onLoadSetCenterOnUse()
  ## https://github.com/HenrikBengtsson/matrixStats/issues/16
  onLoadSetVarsFormulaFreq()
  onLoadSetVarsFormulaOnMistake()

  ## Deprecate validateIndices() /HB 2021-08-26
  action <- Sys.getenv("R_MATRIXSTATS_VALIDATEINDICES", NA_character_)
  if (!is.na(action)) {
    action <- match.arg(action, choices = c("deprecated", "defunct"))
    options(matrixStats.validateIndices = action)
  }

  ## Deprecate/defunct useNames = NA /HB 2023-10-31
  action <- Sys.getenv("R_MATRIXSTATS_USENAMES_NA", NA_character_)
  if (!is.na(action)) {
    action <- match.arg(action, choices = c("deprecated", "defunct"))
    options(matrixStats.useNames.NA = action)
  }
}

#' @useDynLib "matrixStats", .registration = TRUE, .fixes = "C_"
.onUnload <- function(libpath) {
  library.dynam.unload("matrixStats", libpath)
}
