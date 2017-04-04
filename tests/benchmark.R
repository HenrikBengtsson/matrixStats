## 1. Don't test with valgrind
## 2. Test only R (>= 3.0.2) because of that's what knitr requires
if  (getRversion() >= "3.0.2" && Sys.getenv("_R_CHECK_USE_VALGRIND_") == "") {

## 3. Make sure all suggested packages are installed / can be loaded
pkgs <- c("base64enc", "ggplot2", "knitr", "microbenchmark",
          "R.devices", "R.rsp")
if (all(unlist(lapply(pkgs, FUN = requireNamespace)))) {
  html <- matrixStats:::benchmark("binCounts")
  print(html)
}

rm(list = "pkgs")

}
