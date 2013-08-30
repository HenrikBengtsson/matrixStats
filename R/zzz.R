.onAttach <- function(libname, pkgname) {
  pd <- utils::packageDescription(pkgname);
  startupMessage(pkgname, " v", pd$Version, " (",
    pd$Date, ") successfully loaded. See ?", pkgname, " for help.");
}
