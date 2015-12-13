.onUnload <- function (libpath) {
  library.dynam.unload("matrixStats", libpath)
}

.onAttach <- function(libname, pkgname) {
  ## covr: skip=5
  pd <- utils::packageDescription(pkgname)
  msg <- sprintf("%s v%s", pkgname, pd$Version)
  if (!is.null(pd$Date)) msg <- sprintf("%s (%s)", msg, pd$Date)
  msg <- sprintf("%s successfully loaded. See ?%s for help.", msg, pkgname)
  pkgStartupMessage(msg)
}
