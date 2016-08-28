############################################################################/**
# @RdocFunction whichIs
#
# @title "Identifying vector elements based on comparision to a scalar"
#
# @synopsis
#
# \description{
#   Identifying vector elements based on comparision to a scalar.
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of length K.}
#   \item{value}{A @numeric scalar.}
#   \item{op}{A @character string specifying the comparison to use.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of indices in [1,K].
# }
#
# \details{
#   \code{which(x, value, op)} is more memory efficient than the corresponding
#   \code{which(x OP value)} call, because the latter allocates a temporary
#   logical vector of length K whereas the former does not.  Moreover,
#   if the types of \code{x} and \code{value} are such that \code{x} needs to
#   be coerced to that of \code{value}, then another temporary vector of type
#   \code{typeof(value)} and length K needs to be allocated.
# }
#
# @author "HB"
#
# @keyword "univar"
#*/############################################################################
whichIs <- function(x, value, op=c("==", "!=", "<", "<=", ">", ">="), ...) {
  nx <- length(x)
  stopifnot(length(value) == 1)
  op <- match.arg(op)

  ## Early stopping?
  if (is.na(value)) return(integer(0L))
  
  fcnName <- sprintf("whichIs_%s_%s", typeof(x), typeof(value))
  ns <- asNamespace("matrixStats")
  if (exists(fcnName, mode="function", envir=ns)) {
    fcn <- get(fcnName, mode="function", envir=ns)
    res <- fcn(x, value, op=op)
  } else {
    fcn <- get(op, mode="function", envir=baseenv())
    res <- fcn(x, value)
    res <- which(res)
  }
  
  res
} # whichIs()

whichIs_integer_integer <- function(x, value, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, value)
  which(res)
}

whichIs_double_double <- function(x, value, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, value)
  which(res)
}

whichIs_integer_double <- function(x, value, op) {
  nx <- length(x)
  
  ## Early / instant stopping?
  if (is.infinite(value)) {
    if (op == "==") {
      return(integer(0L))
    } else if (op == "!=") {
      return(seq_len(nx))
    } else if (op == ">" || op == ">=") {
      if (value > 0) {
        return(integer(0L))
      } else if (value < 0) {
        return(seq_len(nx))
      }
    } else if (op == "<" || op == "<=") {
      if (value > 0) {
        return(seq_len(nx))
      } else if (value < 0) {
        return(integer(0L))
      }
    }
  }

  ## Early stopping?
  if (op == "==") {
    if (value %% 1 != 0) return(integer(0L))
  } else if (op == "!=") {
    if (value %% 1 != 0) return(seq_len(nx))
  }

  fcn <- get(op, mode="function", envir=baseenv())
  x <- as.double(x)
  res <- fcn(x, value)
  which(res)
}

whichIs_double_integer <- function(x, value, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  value <- as.double(value)
  res <- fcn(x, value)
  which(res)
}
