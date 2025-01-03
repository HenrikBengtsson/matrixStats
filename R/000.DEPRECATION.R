defunctShouldBeMatrixOrDim <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("[%s] Argument %s is of class %s, but should be a matrix or 'dim.' should specify one. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", .packageName, x_name, x_class, x_class))  #nolint
}

defunctShouldBeMatrix <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("[%s] Argument %s is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", .packageName, x_name, x_class, x_class))  #nolint
}

defunctShouldBeMatrixOrVector <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("[%s] Argument %s is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", .packageName, x_name, x_class, x_class))  #nolint
}

validateScalarCenter <- function(center, n, dimname) {  onScalar <- getOption("matrixStats.center.onScalar", "defunct") 
  action <- switch(onScalar,
    deprecated = .Deprecated,
       defunct = .Defunct,
                 NULL
  )
  
  if (is.null(action)) {
    stop(sprintf("R option 'matrixStats.center.onScalar' must not be \"%s\"; the only valid values are \"defunct\" and \"deprecated\"", onScalar))
  }
  
  msg <- sprintf("[%s (>= 0.58.0)] Argument '%s' should be of the same length as number of %s of '%s'. Use of a scalar value is %s: %s != %s (See also ?matrixStats::matrixStats.options)", .packageName, "center", dimname, "x", onScalar, length(center), n)
  action(msg = msg, package = .packageName)
}


validateVarsCenterFormula <- local({
  countdown <- NA_integer_
  always <- structure(TRUE, when = "each time this function is called")
  
  function() {
    freq <- getOption("matrixStats.vars.formula.freq", 50L)
    
    ## Nothing to do?
    if (is.null(freq)) return(FALSE)

    ## never?
    if (freq <= 0) return(FALSE)

    ## always?
    if (is.infinite(freq)) return(always)

    ## each time?
    if (freq == 1) return(always)

    ## Not first incident?
    if (!is.na(countdown)) {
      countdown <<- countdown - 1L
      if (countdown > 0L) return(FALSE)
    }
    countdown <<- freq ## reset
    structure(TRUE, when = sprintf("every %g call to this function", freq))
  }
})


centerOnUse <- function(fcnname, calls = sys.calls(), msg = NULL) {
  value <- getOption("matrixStats.center.onUse", "ignore")
  if (identical(value, "ignore")) return()
  
  action <- switch(value,
    deprecated = .Deprecated,
       defunct = .Defunct,
                 NULL
  )

  if (is.null(action)) {
    stop(sprintf("R option 'matrixStats.center.onScalar' must not be \"%s\"; the only valid values are \"defunct\", \"deprecated\", and \"ignore\"", value))
  }

  if (is.null(msg)) {
    msg <- sprintf("[%s] Argument '%s' of %s::%s() is %s: %s (See also ?matrixStats::matrixStats.options)",
                   .packageName, "center", .packageName, fcnname,
                   value, deparse(calls[[1]])[1])
  }
  action(msg = msg, package = .packageName)
}



validateTiesMethodMissing <- local({
  countdown <- NA_integer_
  always <- structure(TRUE, when = "each time this function is called")
  
  function() {
    freq <- getOption("matrixStats.ties.method.freq", 10L)
    
    ## Nothing to do?
    if (is.null(freq)) return(FALSE)

    ## never?
    if (freq <= 0) return(FALSE)

    ## always?
    if (is.infinite(freq)) return(always)

    ## each time?
    if (freq == 1L) return(always)

    ## Not first incident?
    if (!is.na(countdown)) {
      countdown <<- countdown - 1L
      if (countdown > 0L) return(FALSE)
    }
    countdown <<- freq ## reset
    structure(TRUE, when = sprintf("every %g call to this function", freq))
  }
})

tiesMethodMissing <- local({
  function() {
    value <- getOption("matrixStats.ties.method.missing", if (getRversion() >= "4.4.0") "deprecated" else "ignore")
    if (value == "ignore") return()

    ## How often should we check?
    if (!validateTiesMethodMissing()) return()
    
    action <- switch(value,
      deprecated = .Deprecated,
      defunct    = .Defunct,
                   NULL
    )

    if (is.null(action)) {
      stop(sprintf("R option 'matrixStats.ties.method.missing' must not be \"%s\"; the only valid values are \"defunct\", \"deprecated\", and \"ignore\"", value))
    }

    msg <- sprintf("[%s (>= 1.3.0)] Please explicitly specify argument 'ties.method' when calling colRanks() and rowRanks() of %s. This is because the current default ties.method=\"max\" will eventually be updated to ties.method=\"average\" in order to align with the default of base::rank(). If you are an end-user that cannot update the R code causing this, see ?matrixStats::matrixStats.options for how to temporarily disable this check", .packageName, .packageName)
    action(msg = msg, package = .packageName)
  }
})
