#' Options used for matrixStats
#'
#' Below are the \R options and environment variables that are used by the
#' \pkg{matrixStats} package and packages enhancing it.\cr
#' \cr
#' \emph{WARNING: Note that the names and the default values of these options may
#'  change in future versions of the package.  Please use with care until
#'  further notice.}
#'
#' @section Options for controlling deprecation:
#' \describe{
#'  \item{\option{matrixStats.center.onUse}:}{(string)
#'    Action taken when argument \code{center} is specified.
#'    If \code{"defunct"}, an error is thrown.
#'    If \code{"deprecated"}, a warning is signalled.
#'    If \code{"ignore"}, it's silently ignored.
#'    (Default: \code{"ignore"})}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.center.onScalar}:}{(string)
#'    Action taken when argument \code{center} is a scalar.
#'    If \code{"defunct"}, an error is thrown.
#'    If \code{"deprecated"}, a warning is signalled.
#'    If \code{"ignore"}, it's silently ignored.
#'    (Default: \code{"deprecated"})}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.formula.onMistake}:}{(string)
#'    Action taken when argument \code{center} is specified with the wrong
#'    assumptions of the underlying formula used internally.
#'    If \code{"defunct"}, an error is thrown.
#'    If \code{"deprecated"}, a warning is signalled.
#'    (Default: \code{"defunct"})}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.formula.freq}:}{(numeric)
#'    Controls how often the above assumption is checked.
#'    (Default: \code{50} - every 50:th call starting with the first)}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.ties.method.missing}:}{(string)
#'    Controls whether argument \code{ties.method} for \code{colRanks()}
#'    and \code{rowRanks()} should be explicitly specified.
#'    If \code{"defunct"}, an error is produced, if not.
#'    If \code{"deprecated"}, a warning is signalled.
#'    If \code{"ignore"}, it's silently ignored.
#'    (Default: \code{"deprecated"} in R (>= 4.4.0), otherwise \code{"ignore"})}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.ties.method.freq}:}{(numeric)
#'    Controls how often the above validation is checked.
#'    (Default: \code{50} - every 50:th call starting with the first)}
#' }
#'
#' \describe{
#'  \item{\option{matrixStats.useNames.NA}:}{(string)
#'    Action taken when argument \code{useNames} is set to \code{NA}.
#'    If \code{"defunct"}, an error is thrown.
#'    If \code{"deprecated"}, a warning is signalled.
#'    (Default: \code{"defunct"})}
#' }
#'
#' @section Environment variables that set R options:
#' All of the above \R \option{matrixStats.*} options can be set by
#' corresponding environment variable \env{R_MATRIXSTATS_*}
#' \emph{when the \pkg{matrixStats} package is loaded}.
#' For example, if \code{R_MATRIXSTATS_USENAMES_NA=defunct}, then option
#' \option{matrixStats.useNames.NA} is set to \code{"defunct"} (string).
#'
#' @examples
#' \dontrun{
#' options(matrixStats.useNames.NA = "defunct")
#' }
#'
#' @aliases
#' matrixStats.useNames.NA
#' R_MATRIXSTATS_USENAMES_NA
#' matrixStats.vars.formula.freq
#' R_MATRIXSTATS_VARS_FORMULA_FREQ
#' matrixStats.vars.formula.onMistake
#' R_MATRIXSTATS_VARS_FORMULA_ONMISTAKE
#' matrixStats.vars.center.onUse
#' R_MATRIXSTATS_VARS_CENTER_ONUSE
#' matrixStats.center.onScalar
#' R_MATRIXSTATS_CENTER_ONSCALAR
#' matrixStats.ties.method.missing
#' R_MATRIXSTATS_TIES_METHOD_MISSING
#' matrixStats.ties.method.freq
#' R_MATRIXSTATS_TIES_METHOD_FREQ
#' matrixStats.envs.min.version
#' R_MATRIXSTATS_ENVS_MIN_VERSION
#'
#' @keywords internal
#' @name matrixStats.options
NULL


commaq <- function(x, sep = ", ") {
  paste(sQuote(x), collapse = sep)
}

stopf <- function(fmt, ..., call. = TRUE, domain = NULL) {
  msg <- sprintf(fmt, ...)
  msg <- .makeMessage(msg, domain = domain)
  if (is.call(call.)) {
    call <- call.
  } else if (isTRUE(call)) {
    call <- sys.call(which = -1L)
  } else {
    call <- NULL
  }
  cond <- simpleError(msg, call = call)
  stop(cond)
}

trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
}


# Set an R option from an environment variable
update_package_option <- function(name, mode = "character", default = NULL, split = NULL, trim = TRUE, disallow = c("NA"), choices = NULL, force = FALSE) {
  ## Nothing to do?
  value <- getOption(name, NULL)
  if (!force && !is.null(value)) return(getOption(name, default = default))

  ## name="matrixStats.some.setting" => env="R_MATRIXSTATS_SOME_SETTING"
  env <- gsub(".", "_", toupper(name), fixed = TRUE)
  env <- paste("R_", env, sep = "")

  env_value <- value <- Sys.getenv(env, unset = NA_character_)
  ## Nothing to do?
  if (is.na(value)) {  
    return(getOption(name, default = default))
  }
  
  ## Trim?
  if (trim) value <- trim(value)

  ## Validate?
  if (!is.null(choices)) {
    value <- match.arg(value, choices = choices)
  }
  
  ## Nothing to do?
  if (!nzchar(value)) return(getOption(name, default = default))

  ## Split?
  if (!is.null(split)) {
    value <- strsplit(value, split = split, fixed = TRUE)
    value <- unlist(value, use.names = FALSE)
    if (trim) value <- trim(value)
  }

  ## Coerce?
  mode0 <- storage.mode(value)
  if (mode0 != mode) {
    suppressWarnings({
      storage.mode(value) <- mode
    })
  }

  if (length(disallow) > 0) {
    if ("NA" %in% disallow) {
      if (any(is.na(value))) {
        stopf("Coercing environment variable %s=%s to %s would result in missing values for option %s: %s", sQuote(env), sQuote(env_value), sQuote(mode), sQuote(name), commaq(value))
      }
    }
    if (is.numeric(value)) {
      if ("non-positive" %in% disallow) {
        if (any(value <= 0, na.rm = TRUE)) {
          stopf("Environment variable %s=%s specifies a non-positive value for option %s: %s", sQuote(env), sQuote(env_value), sQuote(name), commaq(value))
        }
      }
      if ("negative" %in% disallow) {
        if (any(value < 0, na.rm = TRUE)) {
          stopf("Environment variable %s=%s specifies a negative value for option %s: %s", sQuote(env), sQuote(env_value), sQuote(name), commaq(value))
        }
      }
    }
  }
  
  do.call(options, args = structure(list(value), names = name))
  
  getOption(name, default = default)
}


## Set package options based on environment variables
update_package_options <- function() {
  update_package_option("matrixStats.envs.min.version", mode = "character")

  ## Nothing to do?
  v <- getOption("matrixStats.envs.min.version", NULL)
  if (!is.null(v)) {
    ns <- getNamespace(.packageName)
    pkgV <- ns[[".__NAMESPACE__."]][["spec"]][["version"]]
    if (pkgV < v) return()
  }

  update_package_option("matrixStats.vars.formula.onMistake", default = "defunct", choices = c("deprecated", "defunct"))
  
  update_package_option("matrixStats.vars.formula.freq", mode = "numeric", default = "50")
  
  update_package_option("matrixStats.vars.center.onUse", default = "ignore", choices = c("deprecated", "defunct", "ignore"))
  
  update_package_option("matrixStats.center.onScalar", default = "defunct", choices = c("deprecated", "defunct", "ignore"))
  
  update_package_option("matrixStats.useNames.NA", default = "defunct", choices = c("deprecated", "defunct"))

  update_package_option("matrixStats.ties.method.missing", default = if (getRversion() >= "4.4.0") "deprecated" else "ignore", choices = c("deprecated", "defunct", "ignore"))

  update_package_option("matrixStats.ties.method.freq", mode = "numeric", default = "50")
}
