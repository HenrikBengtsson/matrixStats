if (Sys.getenv("_R_CHECK_FULL_") != "") {

if (require("R.rsp")) {
  html <- matrixStats:::benchmark('binCounts')
  print(html)
}

} # _R_CHECK_FULL_
