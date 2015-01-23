## These tests need to be last of all tests, otherwise
## covr::package_coverage() gives an error.
cat("1. Loading package\n")
requireNamespace("matrixStats")
stopifnot("matrixStats" %in% loadedNamespaces())

cat("2. Unloading package\n")
unloadNamespace("matrixStats")
stopifnot(!"matrixStats" %in% loadedNamespaces())

cat("3. Attaching package\n")
library("matrixStats")
stopifnot("package:matrixStats" %in% search())

cat("3. Detaching package\n")
detach("package:matrixStats")
stopifnot(!"package:matrixStats" %in% search())
stopifnot("matrixStats" %in% loadedNamespaces())

cat("4. Unloading package\n")
unloadNamespace("matrixStats")
stopifnot(!"matrixStats" %in% loadedNamespaces())

cat("5. Attaching package (again)\n")
library("matrixStats")
stopifnot("package:matrixStats" %in% search())

cat("6. Detaching package (again)\n")
detach("package:matrixStats")
stopifnot(!"package:matrixStats" %in% search())
stopifnot("matrixStats" %in% loadedNamespaces())

cat("7. DONE\n")

