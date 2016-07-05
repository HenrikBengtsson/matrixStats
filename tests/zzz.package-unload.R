## These tests need to be last of all tests, otherwise
## covr::package_coverage() gives an error.
cat("1. Loading package\n")
loadNamespace("matrixStats")
stopifnot("matrixStats" %in% loadedNamespaces())

cat("2. Unloading package\n")
unloadNamespace("matrixStats")
stopifnot(!"matrixStats" %in% loadedNamespaces())

if (FALSE) {
  ## 'covr' gives "Error in library("matrixStats") :
  ## there is no package called 'matrixStats'" here, cf.
  ## https://travis-ci.org/HenrikBengtsson/matrixStats/builds/48015577

  cat("3. Attaching package\n")
  library("matrixStats")
  stopifnot("package:matrixStats" %in% search())

  cat("4. Detaching package\n")
  detach("package:matrixStats")
  stopifnot(!"package:matrixStats" %in% search())
  stopifnot("matrixStats" %in% loadedNamespaces())

  cat("5. Unloading package\n")
  unloadNamespace("matrixStats")
  stopifnot(!"matrixStats" %in% loadedNamespaces())

  cat("6. Attaching package (again)\n")
  library("matrixStats")
  stopifnot("package:matrixStats" %in% search())

  cat("7. Detaching package (again)\n")
  detach("package:matrixStats")
  stopifnot(!"package:matrixStats" %in% search())
  stopifnot("matrixStats" %in% loadedNamespaces())
}

cat("7. DONE\n")
