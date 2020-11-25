.onLoad <- function(libname, pkgname) {
  ## https://github.com/HenrikBengtsson/matrixStats/issues/183
  onLoadSetCenterOnScalar()
  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  onLoadSetCenterOnUse()
}

#' @useDynLib "matrixStats", .registration = TRUE, .fixes = "C_"
.onUnload <- function(libpath) {
  library.dynam.unload("matrixStats", libpath)
}
