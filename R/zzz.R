.onUnload <- function (libpath) {
  library.dynam.unload("matrixStats", libpath)
}

.onAttach <- function(libname, pkgname) {
  ## covr: skip=3
  pd <- utils::packageDescription(pkgname);
  pkgStartupMessage(pkgname, " v", pd$Version, " (",
    pd$Date, ") successfully loaded. See ?", pkgname, " for help.");
}
