#' Gets the rank of each row (column) of a matrix
#'
#' Gets the rank of each row (column) of a matrix.
#'
#' The row ranks of \code{x} are collected as \emph{rows} of the result matrix.
#'
#' The column ranks of \code{x} are collected as \emph{rows} if
#' \code{preserveShape = FALSE}, otherwise as \emph{columns}.
#'
#' The implementation is optimized for both speed and memory.  To avoid
#' coercing to \code{\link[base]{double}}s (and hence memory allocation), there
#' is a unique implementation for \code{\link[base]{integer}} matrices.  It is
#' more memory efficient to do \code{colRanks(x, preserveShape = TRUE)} than
#' \code{t(colRanks(x, preserveShape = FALSE))}.
#'
#' Any \code{\link[base]{names}} of \code{x} are ignored and absent in the
#' result.
#'
#' @param x A \code{\link[base]{numeric}} or \code{\link[base]{integer}} NxK
#' \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param ties.method A \code{\link[base]{character}} string specifying how
#' ties are treated.  For details, see below.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param preserveShape A \code{\link[base]{logical}} specifying whether the
#' \code{\link[base]{matrix}} returned should preserve the input shape of
#' \code{x}, or not.
#'
#' @param ... Not used.
#'
#' @return An \code{\link[base]{integer}} \code{\link[base]{matrix}} is
#' returned.  The \code{rowRanks()} function always returns an NxK
#' \code{\link[base]{matrix}}, where N (K) is the number of rows (columns)
#' whose ranks are calculated.
#'
#' The \code{colRanks()} function returns an NxK \code{\link[base]{matrix}}, if
#' \code{preserveShape = TRUE}, otherwise a KxN \code{\link[base]{matrix}}.
#'
#' %% The mode of the returned matrix is \code{\link[base]{integer}}, except
#' for %% \code{ties.method == "average"} when it is
#' \code{\link[base]{double}}.
#'
#' @section Missing and non- values: These are ranked as \code{NA}, as with
#' \code{na.last = "keep"} in the \code{\link[base]{rank}}() function.
#'
#' @author Hector Corrada Bravo and Harris Jaffee.  Peter Langfelder for adding
#' 'ties.method' support.  Henrik Bengtsson adapted the original native
#' implementation of \code{rowRanks()} from Robert Gentleman's \code{rowQ()} in
#' the \pkg{Biobase} package.
#'
#' @seealso \code{\link[base]{rank}}().  For developers, see also Section
#' 'Utility functions' in 'Writing R Extensions manual', particularly the
#' native functions \code{R_qsort_I()} and \code{R_qsort_int_I()}.
#' @keywords array iteration robust univar
#'
#' @export
rowRanks <- function(x, rows = NULL, cols = NULL,
                     ties.method = c("max", "average", "min"),
                     dim. = dim(x), ...) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  if (is.element("flavor", names(list(...)))) {
    .Defunct(msg = "Argument 'flavor' of rowRanks() is defunct.",
             package = "matrixStats")
  }

  ties_method <- charmatch(ties.method, c("max", "average", "min"),
                           nomatch = 0L)
  if (ties_method == 0L) {
    stop("Unknown value of argument 'ties.method': ", ties.method)
  }

  dim. <- as.integer(dim.)
  # byrow = TRUE
  .Call(C_rowRanksWithTies, x, dim., rows, cols, ties_method, TRUE)
}


#' @rdname rowRanks
#' @export
colRanks <- function(x, rows = NULL, cols = NULL,
                     ties.method = c("max", "average", "min"),
                     dim. = dim(x), preserveShape = FALSE, ...) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  if (is.element("flavor", names(list(...)))) {
    .Defunct(msg = "Argument 'flavor' of colRanks() is defunct.",
             package = "matrixStats")
  }

  # Argument 'preserveShape'
  preserveShape <- as.logical(preserveShape)

  ties_method <- charmatch(ties.method, c("max", "average", "min"),
                           nomatch = 0L)
  if (ties_method == 0L) {
    stop("Unknown value of argument 'ties.method': ", ties.method)
  }

  dim. <- as.integer(dim.)
  # byrow = FALSE
  y <- .Call(C_rowRanksWithTies, x, dim., rows, cols, ties_method, FALSE)
  if (!preserveShape) y <- t(y)
  y
}
