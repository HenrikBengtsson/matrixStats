.First.lib <- function(libname, pkgname) {
  library.dynam(pkgname, package=pkgname)
}

.Last.lib <- function(libpath) {
  library.dynam.unload(libpath=libpath)
}




