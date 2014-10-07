# R package: matrixStats

Stable release available via [CRAN](http://cran.r-project.org/package=matrixStats).  Install in R as:

```s
install.packages('matrixStats')
```

R CMD check status: <a href="https://travis-ci.org/HenrikBengtsson/matrixStats"><img src="https://travis-ci.org/HenrikBengtsson/matrixStats.svg?branch=master" alt="Build status"></a>


## Benchmarking

To benchmark most of the functions of 'matrixStats' on your local system, do:
```s
html <- matrixStats:::benchmark('index')
browseURL(html)
```
This will take several minutes to complete.
