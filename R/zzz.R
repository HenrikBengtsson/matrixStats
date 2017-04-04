#' @useDynLib "matrixStats", .registration = TRUE, .fixes = "C_"
.onUnload <- function(libpath) {
  library.dynam.unload("matrixStats", libpath)
}
