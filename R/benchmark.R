benchmark <- function(fcn, tags = NULL, path = NULL, workdir = "reports",
                      envir = parent.frame(), ...) {
  requireNamespace("R.rsp") || stop(sprintf("Package %s is not installed", "R.rsp"))

  if (is.function(fcn)) {
    fcn <- deparse(substitute(fcn))
  }

  if (is.null(path)) {
    path <- system.file("benchmarking", package = "matrixStats")
  }

  fullname <- paste(c(fcn, tags), collapse = ", ")
  filename <- sprintf("%s.md.rsp", fullname)
  pathname <- file.path(path, filename)

  oopts <- options("prompt" = "> ")
  on.exit(options(oopts))
  R.rsp::rfile(pathname, workdir = workdir, envir = envir, ...)
}
