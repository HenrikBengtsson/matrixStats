validateScalarCenter <- function(center, n, dimname) {
  onScalar <- getOption("matrixStats.center.onScalar", "deprecated")
  
  ## Nothing to do?
  if (is.null(onScalar)) return()

  fcn <- switch(onScalar, deprecated = .Deprecated, defunct = .Defunct, NULL)
  
  ## Nothing to do?
  if (is.null(fcn)) return()

  msg <- sprintf("Argument 'center' should be of the same length as number of %s of 'x'. Use of a scalar value is deprecated: %s != %s", dimname, length(center), n)
  fcn(msg = msg, package = .packageName)
}


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


onLoadSetCenterOnUse <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.center.onUse", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("MATRIXSTATS_CENTER_ONUSE", NA_character_)
  if (is.na(value)) return()

  value <- match.arg(value, c("ignore", "deprecated", "defunct"))
  options(matrixStats.center.onUse = value)
}

onLoadSetCenterOnScalar <- function() {
  ## Option is already set?
  if (!is.null(getOption("matrixStats.center.onScalar", NULL))) return()

  ## Is environment variable set?
  value <- Sys.getenv("MATRIXSTATS_CENTER_ONSCALAR", NA_character_)
  if (is.na(value)) return()

  value <- match.arg(value, c("ignore", "deprecated", "defunct"))
  options(matrixStats.center.onScalar = value)
}
