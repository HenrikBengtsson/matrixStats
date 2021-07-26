#' Gets the rank of the elements in each row (column) of a matrix
#'
#' Gets the rank of the elements in each row (column) of a matrix.
#'
#' @inheritParams rowAlls
#'
#' @param ties.method A \code{\link[base]{character}} string specifying how
#' ties are treated.  For details, see below.
#'
#' @param preserveShape A \code{\link[base]{logical}} specifying whether the
#' \code{\link[base]{matrix}} returned should preserve the input shape of
#' \code{x}, or not.
#'
#' @return A \code{\link[base]{matrix}} of type \code{\link[base]{integer}} is
#' returned, unless \code{ties.method = "average"} when it is of type
#' \code{\link[base]{numeric}}.
#'
#' The \code{rowRanks()} function always returns an NxK
#' \code{\link[base]{matrix}}, where N (K) is the number of rows (columns)
#' whose ranks are calculated.
#'
#' The \code{colRanks()} function returns an NxK \code{\link[base]{matrix}}, if
#' \code{preserveShape = TRUE}, otherwise a KxN \code{\link[base]{matrix}}.
#'
#' Any \code{\link[base]{names}} of \code{x} are ignored and absent in the
#' result.
#'
#' @details
#' These functions rank values and treats missing values the same way as
#' \code{\link[base]{rank}}().
#' For equal values ("ties"), argument \code{ties.method} determines how these
#' are ranked among each other.  More precisely, for the following values of
#' \code{ties.method}, each index set of ties consists of:
#' \itemize{
#'  \item{\code{"first"} - increasing values that are all unique}
#'  \item{\code{"last"} - decreasing values that are all unique}
#'  \item{\code{"min"} - identical values equaling the minimum of
#'     their original ranks}
#'  \item{\code{"max"} - identical values equaling the maximum of
#'     their original ranks}
#'  \item{\code{"average"} - identical values that equal the sample mean of
#'     their original ranks. Because the average is calculated, the returned
#'     ranks may be non-integer values}
#'  \item{\code{"random"} - randomly shuffled values of their original ranks.}
#'  \item{\code{"dense"} - increasing values that are all unique and,
#'     contrary to \code{"first"}, never contain any gaps}
#' }
#' For more information on \code{ties.method = "dense"}, see \code{frank()} of
#' the \pkg{data.table} package.
#' For more information on the other alternatives, see \code{\link[base]{rank}}().
#'
#' Note that, due to different randomization strategies, the shuffling order
#' produced by these functions when using \code{ties.method = "random"} does
#' not reproduce that of \code{\link[base]{rank}}().
#'
#' \emph{WARNING: For backward-compatibility reasons, the default is
#' \code{ties.method = "max"}, which differs from \code{\link[base]{rank}}()
#' which uses \code{ties.method = "average"} by default.
#' Since we plan to change the default behavior in a future version, we recommend
#' to explicitly specify the intended value of argument \code{ties.method}.}
#'
#' @section Missing values:
#' Missing values are ranked as \code{NA_integer_}, as with \code{na.last = "keep"}
#' in the \code{\link[base]{rank}}() function.
#'
#' @section Performance:
#' The implementation is optimized for both speed and memory.  To avoid
#' coercing to \code{\link[base]{double}}s (and hence memory allocation),
#' there is a unique implementation for \code{\link[base]{integer}} matrices.
#' Furthermore, it is more memory efficient to do
#' \code{colRanks(x, preserveShape = TRUE)} than
#' \code{t(colRanks(x, preserveShape = FALSE))}.
#'
#' @author Hector Corrada Bravo and Harris Jaffee.  Peter Langfelder for adding
#' 'ties.method' support.  Brian Montgomery for adding more 'ties.method's.
#' Henrik Bengtsson adapted the original native
#' implementation of \code{rowRanks()} from Robert Gentleman's \code{rowQ()} in
#' the \pkg{Biobase} package.
#'
#' @seealso
#' For developers, see also Section Utility functions' in 
#' 'Writing R Extensions manual', particularly the
#' native functions \code{R_qsort_I()} and \code{R_qsort_int_I()}.
#' @keywords array iteration robust univar
#'
#' @export
rowRanks <- function(x, rows = NULL, cols = NULL,
                     # max is listed twice so that it remains the default for now
                     ties.method = c("max", "average", "first", "last", "random",
                                     "max", "min", "dense"),
                     dim. = dim(x), ..., useNames = NA) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  ties_method <- charmatch(ties.method, c("average", "first", "last", "random",
                                          "max", "min", "dense"), nomatch = 0L)
  if (ties_method == 0L) {
    stop(sprintf("Unknown value of argument '%s': %s", "ties.method", ties.method))
  }

  dim. <- as.integer(dim.)
  # byrow = TRUE
  y <- .Call(C_rowRanksWithTies, x, dim., rows, cols, ties_method, TRUE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      if (!is.null(dimnames(x))) {
        rownames <- rownames(x)
        if (!is.null(rows)) rownames <- rownames[rows]
        colnames <- colnames(x)
        if (!is.null(cols)) colnames <- colnames[cols]
        dimnames(y) <- list(rownames, colnames)
      }
    } else {
      dimnames(y) <- NULL
    }
  }
  
  y
}


#' @rdname rowRanks
#' @export
colRanks <- function(x, rows = NULL, cols = NULL,
                     # max is listed twice so that it remains the default for now
                     ties.method = c("max", "average", "first", "last", "random",
                                     "max", "min", "dense"),
                     dim. = dim(x), preserveShape = FALSE, ..., useNames = NA) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  # Argument 'preserveShape'
  preserveShape <- as.logical(preserveShape)

  ties_method <- charmatch(ties.method, c("average", "first", "last", "random",
                                          "max", "min", "dense"), nomatch = 0L)
  if (ties_method == 0L) {
    stop(sprintf("Unknown value of argument '%s': %s", "ties.method", ties.method))
  }

  dim. <- as.integer(dim.)
  # byrow = FALSE
  y <- .Call(C_rowRanksWithTies, x, dim., rows, cols, ties_method, FALSE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      if (!is.null(dimnames(x))) {
        rownames <- rownames(x)
        if (!is.null(rows)) rownames <- rownames[rows]        
        colnames <- colnames(x)
        if (!is.null(cols)) colnames <- colnames[cols]
        dimnames(y) <- list(rownames, colnames)
      }
    } else {
      dimnames(y) <- NULL
    }
  } 
  
  if (!preserveShape) y <- t(y)
  y
}
