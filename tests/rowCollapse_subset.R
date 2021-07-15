library("matrixStats")

rowCollapse_R <- function(x, idxs, ..., useNames = NA) {
  ans <- c()
  storage.mode(ans) <- storage.mode(x)
  for (ii in seq_len(length(idxs))) {
    ans[ii] <- x[ii, idxs[ii]]
  }
  
  # Preserve names attribute
  if (isTRUE(useNames)) {
    names <- rownames(x)
    if (!is.null(names)) names(ans) <- names
  }

  ans
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

for (rows in index_cases) {
  if (is.null(rows)) rows <- seq_len(nrow(x))

  for (idxs in list(2L, seq_len(6L))) {
    for (useNames in c(NA, TRUE, FALSE)) {
      suppressWarnings({
        actual <- tryCatch(rowCollapse(x, idxs, rows = rows, useNames = useNames),
                           error = function(c) "error")
        expect <- tryCatch({
          idxs_0 <- rep(idxs, length.out = nrow(x))[rows]
          rowCollapse_R(x[rows, , drop = FALSE], idxs_0, useNames = useNames)
        }, error = function(c) "error")
      })
      stopifnot(all.equal(actual, expect))
    
      suppressWarnings({
        actual <- tryCatch(colCollapse(t(x), idxs, cols = rows, useNames = useNames),
                           error = function(c) "error")
      })
      stopifnot(all.equal(actual, expect))
      
      # Check names attribute
      dimnames(x) <- dimnames
      suppressWarnings({
        actual <- tryCatch(rowCollapse(x, idxs, rows = rows, useNames = useNames),
                           error = function(c) "error")
        expect <- tryCatch({
          idxs_0 <- rep(idxs, length.out = nrow(x))[rows]
          rowCollapse_R(x[rows, , drop = FALSE], idxs_0, useNames = useNames)
        }, error = function(c) "error")
      })
      stopifnot(all.equal(actual, expect))
      
      suppressWarnings({
        actual <- tryCatch(colCollapse(t(x), idxs, cols = rows, useNames = useNames),
                           error = function(c) "error")
      })
      stopifnot(all.equal(actual, expect))
      
      dimnames(x) <- NULL
    }
  }
}
