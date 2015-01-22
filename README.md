# R package: matrixStats

Stable release available via [CRAN](http://cran.r-project.org/package=matrixStats).  Install in R as:

```s
install.packages('matrixStats')
```

## Benchmarking

To benchmark most of the functions of 'matrixStats' on your local system, do:
```s
html <- matrixStats:::benchmark('index')
browseURL(html)
```
This may take several minutes per report to complete.


## Quality assessment

* R CMD check status:
  - <a href="http://cran.r-project.org/web/checks/check_results_matrixStats.html">CRAN checks</a> 
  - <a href="https://travis-ci.org/HenrikBengtsson/matrixStats"><img src="https://travis-ci.org/HenrikBengtsson/matrixStats.svg?branch=master" alt="Build status"></a>
* Test coverage status:
  <a href='https://coveralls.io/r/HenrikBengtsson/matrixStats?branch=develop'><img src='https://coveralls.io/repos/HenrikBengtsson/matrixStats/badge.png?branch=develop' alt='Coverage Status' /></a>
