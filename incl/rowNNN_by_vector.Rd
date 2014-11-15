These functions takes either a @matrix or a @vector as input.
If a @vector, then argument \code{dim} must be specified and
fullfill \code{prod(dim) == length(x)}.  The result will be
identical to the results obtained when passing
\code{matrix(x, nrow=dim[1L], ncol=dim[2L])}, but avoids
having to temporarily create/allocate a @matrix, if only such
is needed only for these calculations.
