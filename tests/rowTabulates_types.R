library("matrixStats")

# Exercise every generated input type against an independent R count.
reference <- function(x, values, byrow) {
  groups <- if (byrow) nrow(x) else ncol(x)
  ans <- matrix(0L, nrow = groups, ncol = length(values))
  for (kk in seq_along(values)) {
    hit <- if (is.na(values[kk])) is.na(x) else !is.na(x) & x == values[kk]
    ans[, kk] <- as.integer(if (byrow) rowSums(hit) else colSums(hit))
  }
  ans
}

inputs <- list(
  integer = matrix(c(NA_integer_, -2L, 0L, 3L, -2L, 0L), nrow = 3L),
  logical = matrix(c(NA, FALSE, TRUE, TRUE, FALSE, NA), nrow = 3L),
  raw = matrix(as.raw(c(0, 1, 255, 1, 0, 255)), nrow = 3L)
)
keys <- list(integer = c(NA_integer_, -2L, 0L, 3L, -2L, 99L),
             logical = c(NA, FALSE, TRUE, FALSE),
             raw = as.raw(c(0, 1, 255, 1, 42)))

for (mode in names(inputs)) {
  x <- inputs[[mode]]
  dimnames(x) <- list(letters[seq_len(nrow(x))], LETTERS[seq_len(ncol(x))])
  original <- serialize(x, NULL)
  for (y in list(x, x[FALSE, , drop = FALSE], x[, FALSE, drop = FALSE])) {
    values <- keys[[mode]]
    stopifnot(
      identical(unname(rowTabulates(y, values = values)), reference(y, values, TRUE)),
      identical(unname(colTabulates(y, values = values)), reference(y, values, FALSE)),
      identical(rownames(rowTabulates(y, values = values)), rownames(y)),
      identical(rownames(colTabulates(y, values = values)), colnames(y))
    )
  }
  stopifnot(identical(serialize(x, NULL), original))
}
