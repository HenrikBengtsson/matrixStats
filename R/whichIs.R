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
#   \item{y}{A @numeric scalar.}
#   \item{op}{A @character string specifying the comparison to use.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of indices in [1,K].
# }
#
# \details{
#   \code{which(x, y, op) is more memory efficient than the corresponding
#   \code{which(x OP y)} call, because the latter allocates a temporary
#   logical vector of length K whereas the former does not.  Moreover,
#   if the types of \code{x} and \code{y} are such that \code{x} needs to
#   be coerced to that of \code{y}, then another temporary vector of type
#   \code{typeof(y)} and length K needs to be allocated.
# }
#
# @author "HB"
#
# @keyword "univar"
#*/############################################################################
whichIs <- function(x, y, op=c("==", "!=", "<", "<=", ">", ">="), ...) {
  nx <- length(x)
  stopifnot(length(y) == 1)
  op <- match.arg(op)

  ## Early stopping?
  if (is.na(y)) return(integer(0L))
  
  tx <- typeof(x)
  ty <- typeof(y)

  fcnName <- sprintf("whichIs_%s_%s", tx, ty)
  ns <- asNamespace("matrixStats")
  if (exists(fcnName, mode="function", envir=ns)) {
    fcn <- get(fcnName, mode="function", envir=ns)
    res <- fcn(x, y, op=op)
  } else {
    fcn <- get(op, mode="function", envir=baseenv())
    res <- fcn(x, y)
    res <- which(res)
  }
  
  res
} # whichIs()

whichIs_integer_integer <- function(x, y, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, y)
  which(res)
}

whichIs_double_double <- function(x, y, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, y)
  which(res)
}

whichIs_integer_double <- function(x, y, op) {
  nx <- length(x)
  
  ## Early / instant stopping?
  if (is.infinite(y)) {
    if (op == "==") {
      return(integer(0L))
    } else if (op == "!=") {
      return(seq_len(nx))
    } else if (op == ">" || op == ">=") {
      if (y > 0) {
        return(integer(0L))
      } else if (y < 0) {
        return(seq_len(nx))
      }
    } else if (op == "<" || op == "<=") {
      if (y > 0) {
        return(seq_len(nx))
      } else if (y < 0) {
        return(integer(0L))
      }
    }
  }

  ## Early stopping?
  if (op == "==") {
    if (y %% 1 != 0) return(integer(0L))
  } else if (op == "!=") {
    if (y %% 1 == 0) return(seq_len(nx))
  }

  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, y)
  which(res)
}

whichIs_double_integer <- function(x, y, op) {
  fcn <- get(op, mode="function", envir=baseenv())
  res <- fcn(x, y)
  which(res)
}
