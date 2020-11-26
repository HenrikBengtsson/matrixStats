validateScalarCenter <- function(center, n, dimname) {
  onScalar <- getOption("matrixStats.center.onScalar", NULL)
  
  ## Nothing to do?
  if (is.null(onScalar)) return()

  fcn <- switch(onScalar, deprecated = .Deprecated, defunct = .Defunct, NULL)
  
  ## Nothing to do?
  if (is.null(fcn)) return()

  msg <- sprintf("Argument 'center' should be of the same length as number of %s of 'x'. Use of a scalar value is deprecated: %s != %s", dimname, length(center), n)
  fcn(msg = msg, package = .packageName)
}


validateVarsCenterFormula <- local({
  .curr <- 1
  .next <- 1
  
  function() {
    freq <- getOption("matrixStats.vars.formula.freq", NULL)
    
    ## Nothing to do?
    if (is.null(freq)) return(FALSE)

    ## never?
    if (freq <= 0) return(FALSE)

    ## always?
    if (is.infinite(freq)) return(TRUE)

    ## each time?
    if (freq == 1) return(TRUE)

    ## once in a while?
    .curr <<- .curr + 1
    if (.curr <= .next) return(FALSE)
    .curr <<- 1 ## reset
    .next <<- freq
    TRUE
  }
})


centerOnUse <- function(fcnname, calls = sys.calls(), msg = NULL) {
  value <- getOption("matrixStats.center.onUse")
  if (is.null(value) || identical(value, "ignore")) return()
  
  value <- match.arg(value, c("deprecated", "defunct"))
  fcn <- switch(value, deprecated = .Deprecated, defunct = .Defunct)

  if (is.null(msg)) {
    msg <- sprintf("Argument 'center' of %s::%s() is %s: %s",
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
