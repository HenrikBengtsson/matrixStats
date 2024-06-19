.onLoad <- function(libname, pkgname) {
  ## Set options based on environment variables
  update_package_options()
}

#' @useDynLib "matrixStats", .registration = TRUE, .fixes = "C_"
.onUnload <- function(libpath) {
  library.dynam.unload("matrixStats", libpath)
}
