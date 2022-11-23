deprecatedUseNamesNA <- function() {
  .Deprecated(msg = "useNames = NA is deprecated. Instead, specify either useNames = TRUE or useNames = TRUE.", package = .packageName)
}


defunctShouldBeMatrixOrDim <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("Argument %s is of class %s, but should be a matrix or 'dim.' should specify one. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", x_name, x_class, x_class))  #nolint
}

defunctShouldBeMatrix <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("Argument %s is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", x_name, x_class, x_class))  #nolint
}

defunctShouldBeMatrixOrVector <- function(x) {
  x_class <- sQuote(class(x)[1])
  x_name <- sQuote(as.character(substitute(x)))
  .Defunct(msg = sprintf("Argument %s is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", x_name, x_class, x_class))  #nolint
}

validateScalarCenter <- function(center, n, dimname) {
  onScalar <- getOption("matrixStats.center.onScalar", NULL)
  
  ## Nothing to do?
  if (is.null(onScalar)) return()

  fcn <- switch(onScalar, deprecated = .Deprecated, defunct = .Defunct, NULL)
  
  ## Nothing to do?
  if (is.null(fcn)) return()

  msg <- sprintf("Argument '%s' should be of the same length as number of %s of '%s'. Use of a scalar value is deprecated: %s != %s", "center", dimname, "x", length(center), n)
  fcn(msg = msg, package = .packageName)
}


validateVarsCenterFormula <- local({
  .curr <- 1
  .next <- 1
  always <- structure(TRUE, when = "each time this function is called")
  
  function() {
    freq <- getOption("matrixStats.vars.formula.freq", NULL)
    
    ## Nothing to do?
    if (is.null(freq)) return(FALSE)

    ## never?
    if (freq <= 0) return(FALSE)

    ## always?
    if (is.infinite(freq)) return(always)

    ## each time?
    if (freq == 1) return(always)

    ## once in a while?
    .curr <<- .curr + 1
    .next <<- freq  ## update .next according to R option

    ## Skip or not?
    if (.curr <= .next) return(FALSE)
    .curr <<- 1 ## reset
    structure(TRUE, when = sprintf("every %g call to this function", freq))
  }
})


centerOnUse <- function(fcnname, calls = sys.calls(), msg = NULL) {
  value <- getOption("matrixStats.center.onUse")
  if (is.null(value) || identical(value, "ignore")) return()
  
  value <- match.arg(value, c("deprecated", "defunct"))
  fcn <- switch(value, deprecated = .Deprecated, defunct = .Defunct)

  if (is.null(msg)) {
    msg <- sprintf("Argument '%s' of %s::%s() is %s: %s", "center",
                   .packageName, fcnname, value, deparse(calls[[1]])[1])
  }
  
  fcn(msg = msg, package = .packageName)
}


onLoadSetVarsFormulaFreq <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.vars.formula.freq", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("R_MATRIXSTATS_VARS_FORMULA_FREQ", "50")
  if (nzchar(value)) {
    value <- as.numeric(value)
  } else {
    value <- NULL
  }

  options(matrixStats.vars.formula.freq = value)
}


onLoadSetVarsFormulaOnMistake <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.vars.formula.onMistake", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("R_MATRIXSTATS_VARS_FORMULA_MISTAKE", "defunct")
  if (is.na(value)) return()

  value <- match.arg(value, c("deprecated", "defunct"))
  options(matrixStats.vars.formula.onMistake = value)
}


onLoadSetCenterOnUse <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.center.onUse", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("R_MATRIXSTATS_CENTER_ONUSE", NA_character_)
  if (is.na(value)) return()

  value <- match.arg(value, c("ignore", "deprecated", "defunct"))
  options(matrixStats.center.onUse = value)
}

onLoadSetCenterOnScalar <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.center.onScalar", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("R_MATRIXSTATS_CENTER_ONSCALAR", "deprecated")
  if (is.na(value)) return()

  value <- match.arg(value, c("ignore", "deprecated", "defunct"))
  options(matrixStats.center.onScalar = value)
}
