# matrixStats: Functions that Apply to Rows and Columns of Matrices (and to Vectors)

The matrixStats package provides highly optimized functions for
computing common summaries over rows and columns of matrices,
e.g. `rowQuantiles()`. There are also functions that operate on vectors,
e.g. `logSumExp()`. Their implementations strive to minimize both memory
usage and processing time. They are often remarkably faster compared
to good old `apply()` solutions. The calculations are mostly implemented
in C, which allow us to optimize beyond what is possible to do in
plain R. The package installs out-of-the-box on all common operating
systems, including Linux, OS X and Windows.

## Example
It is [many times
faster](http://www.jottr.org/2015/01/matrixStats-0.13.1.html) to
calculate medians column by column using
```r
> library("matrixStats")
> X <- matrix(rnorm(200 * 5000), nrow = 200, ncol = 5000)
> mu <- colMedians(X)
```
compared with
```r
> mu <- apply(X, MARGIN=2, FUN=median)
```

Moreover, if performing calculations on a subset of rows and/or
columns, using
```r
> mu <- colMedians(X, rows=33:158, cols=1001:3000)
```
is much faster and more memory efficient than
```r
> mu <- apply(X[33:158,1001:3000], MARGIN=2, FUN=median)
```



## Benchmarks
For formal benchmarking of matrixStats functions relative to
alternatives, see the [Benchmark reports](https://github.com/HenrikBengtsson/matrixStats/wiki/Benchmark-reports).

## Installation
R package matrixStats is available on [CRAN](http://cran.r-project.org/package=matrixStats) and can be installed in R as:
```r
install.packages('matrixStats')
```

### Pre-release version
To install the pre-release version that is available in branch `feature/subsetting`, use:
```r
source('http://callr.org/install#HenrikBengtsson/matrixStats@feature/subsetting')
```
This will install the package from source.  Because of this and because this package also compiles native code, Windows users need to have [Rtools](https://cran.r-project.org/bin/windows/Rtools/) installed and OS X users need to have [Xcode](https://developer.apple.com/xcode/) installed.




## Software status

| Resource:     | CRAN        | Travis CI     | Appveyor         |
| ------------- | ------------------- | ------------- | ---------------- |
| _Platforms:_  | _Multiple_          | _Linux_       | _Windows_        |
| R CMD check   | <a href="http://cran.r-project.org/web/checks/check_results_matrixStats.html"><img border="0" src="http://www.r-pkg.org/badges/version/matrixStats" alt="CRAN version"></a> | <a href="https://travis-ci.org/HenrikBengtsson/matrixStats"><img src="https://travis-ci.org/HenrikBengtsson/matrixStats.svg" alt="Build status"></a> | <a href="https://ci.appveyor.com/project/HenrikBengtsson/matrixstats"><img src="https://ci.appveyor.com/api/projects/status/github/HenrikBengtsson/matrixStats?svg=true" alt="Build status"></a> |
| Test coverage |                     | <a href="https://coveralls.io/r/HenrikBengtsson/matrixStats"><img src="https://coveralls.io/repos/HenrikBengtsson/matrixStats/badge.svg?branch=develop" alt="Coverage Status"/></a>   |                  |
