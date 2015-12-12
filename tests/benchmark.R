if (Sys.getenv("_R_CHECK_FULL_") != "" && Sys.getenv("_R_CHECK_USE_VALGRIND_") == "") {

## Benchmarks requires knitr, which requires R (>= 3.0.2)
if (require("R.rsp") && getRversion() >= "3.0.2") {
  html <- matrixStats:::benchmark('binCounts')
  print(html)
}

} # _R_CHECK_FULL_
