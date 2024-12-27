## Don't test with valgrind
if (Sys.getenv("_R_CHECK_USE_VALGRIND_") == "") {

## 3. Make sure all suggested packages are installed / can be loaded
pkgs <- c("base64enc", "ggplot2", "knitr", "markdown", "microbenchmark",
          "R.devices", "R.rsp")
if (all(unlist(lapply(pkgs, FUN = requireNamespace)))) {
  html <- matrixStats:::benchmark("binCounts")
  print(html)
}

rm(list = "pkgs")

}
