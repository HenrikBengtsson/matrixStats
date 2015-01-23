benchmark <- function(fcn, tags=NULL, path=NULL, workdir="reports", envir=parent.frame(), ...) {
  requireNamespace("R.rsp") || stop("R.rsp not installed.")

  if (is.function(fcn)) {
    fcn <- deparse(substitute(fcn))
  }

  if (is.null(path)) {
    path <- system.file("benchmarking", package="matrixStats")
  }

  fullname <- paste(c(fcn, tags), collapse=",")
  filename <- sprintf("%s.md.rsp", fullname)
  pathname <- file.path(path, filename)

  R.rsp::rfile(pathname, workdir=workdir, envir=envir, ...)
} # benchmark()

############################################################################
# HISTORY:
# 2014-06-02
# o Created.
############################################################################
