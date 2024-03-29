library("matrixStats")

diff2_R <- function(..., useNames = NA){
  res <- diff(...)
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

set.seed(0x42)

for (mode in c("integer", "double")) {
  x <- rnorm(10, sd = 5)
  storage.mode(x) <- mode
  str(x)

  for (has_na in c(FALSE, TRUE)) {
    for (setNames in c(TRUE, FALSE)) {
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        if (has_na) {
          x[sample(1:10, size = 3)] <- NA
        }
        if (setNames) {
          names(x) <- LETTERS[1:10]
        }
        for (l in 1:3) {
          for (d in 1:4) {
            cat(sprintf("%s: NAs = %s, lag = %d, differences = %d, setNames = %d, useNames = %d\n",
                        mode, has_na, l, d, setNames, useNames))
            y0 <- diff2_R(x, lag = l, differences = d, useNames = useNames)
            str(y0)
            y1 <- diff2(x, lag = l, differences = d, useNames = useNames)
            str(y1)
            stopifnot(identical(y1, y0))
          }
        }  
      }
    }
  } # for (has_na ...)
}
