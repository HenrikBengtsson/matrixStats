## covr: skip=all

pkgStartupMessage <- function(..., quietly=NA) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Infer 'quietly' from argument 'argument' in library() call?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.na(quietly)) {
    quietly <- FALSE

    # Just in case the below won't work one day due to R updates...
    tryCatch({
      # The default, if not found
      quietly <- formals(base::library)$quietly

      # Identify the environment/frame of interest by making sure
      # it at least contains all the arguments of source().
      argsToFind <- names(formals(base::library))

      # Scan the call frames/environments backwards...
      srcfileList <- list()
      for (ff in sys.nframe():0) {
        env <- sys.frame(ff)

        # Does the environment look like a library() environment?
        exist <- sapply(argsToFind, FUN=exists, envir=env, inherits=FALSE)
        if (!all(exist)) {
          # Nope, then skip to the next one
          next
        }

        # Was argument 'quietly' specified?
        missing <- eval(expression(missing(quietly)), envir=env)
        if (!missing) {
          quietly <- get("quietly", envir=env, inherits=FALSE)
          break
        }

        # ...otherwise keep searching due to nested library() calls.
      } # for (ff ...)
    }, error = function() {})
  } # if (is.na(quietly)


  # Output message?
  if (!quietly) {
    packageStartupMessage(...)
  }
}

############################################################################
# HISTORY:
# 2015-01-27
# o Copied from R.methodsS3.  Here it will only be used internally.
############################################################################
