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
#   \item{x, y}{A @vector of length K and a scalar
#     (either of \code{x} and \code{y} have to be a scalar).
#     These arguments may be of type logical, integer or numeric.
#   }
#   \item{op}{A @character string specifying the comparison to use.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of indices in [1,K].
# }
#
# \details{
#   The function is consistent with
#   \code{\link[base]{which}(x op y, arr.ind=FALSE, useNames=FALSE)}
#   and either one of \code{x} and \code{y} is a scalar.
#   \code{which(x, op, y)} is more memory efficient than the corresponding
#   \code{which(x op y)} call, because the latter allocates a temporary
#   logical vector of length K whereas the former does not.
#   Moreover, if the types of \code{x} and \code{y} are such that the
#   non-scalar one needs to be coerced to the type of the scalar, then
#   another temporary vector of length K needs to be allocated in the case
#   of using \code{which(x op y)} whereas this is not the case for
#   \code{whichIs(x, op, y)}.
# }
#
# @author "HB"
#
# @keyword "univar"
#*/############################################################################
whichIs <- function(x, op=c("==", "!=", "<", "<=", ">", ">="), y, ...) {
  opidx <- match(op, c("==", "!=", "<", "<=", ">", ">="))
  if (is.na(opidx)) stop("Unknown value of argument 'op': ", op)
  .Call(C_whichIs, x, y, opidx)
} # whichIs()
