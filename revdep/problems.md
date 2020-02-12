# antiProfiles

<details>

* Version: 1.26.0
* Source code: https://github.com/cran/antiProfiles
* URL: https://github.com/HCBravoLab/antiProfiles
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 7

Run `revdep_details(,"antiProfiles")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ev: no visible global function definition for ‘predict’
    ev: no visible global function definition for ‘smoothScatter’
    ev : f1: no visible global function definition for ‘predict’
    ev: no visible global function definition for ‘curve’
    Undefined global functions or variables:
      curve predict smoothScatter
    Consider adding
      importFrom("graphics", "curve", "smoothScatter")
      importFrom("stats", "predict")
    to your NAMESPACE file.
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 24

Run `revdep_details(,"aroma.cn")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 47

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘GLAD’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD', 'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.16.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, https://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 6

Run `revdep_details(,"aroma.light")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# bdynsys

<details>

* Version: 1.3
* Source code: https://github.com/cran/bdynsys
* Date/Publication: 2014-12-08 07:01:51
* Number of recursive dependencies: 81

Run `revdep_details(,"bdynsys")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_data: no visible global function definition for ‘dev.set’
    plot_data: no visible global function definition for ‘postscript’
    plot_data: no visible global function definition for ‘plot’
    plot_data: no visible global function definition for ‘matplot’
    plot_data: no visible global function definition for ‘points’
    plot_data: no visible global function definition for ‘legend’
    plot_data: no visible global function definition for ‘dev.off’
    polyfitbayes: no visible global function definition for ‘runif’
    polyfitbayes: no visible global function definition for ‘var’
    polyfitreg: no visible global function definition for ‘lm’
    polyfitreg: no visible binding for global variable ‘na.exclude’
    polyfitreg: no visible global function definition for ‘var’
    Undefined global functions or variables:
      dev.off dev.set grid legend lm matplot na.exclude plot points
      postscript runif sd var write.table
    Consider adding
      importFrom("grDevices", "dev.off", "dev.set", "postscript")
      importFrom("graphics", "grid", "legend", "matplot", "plot", "points")
      importFrom("stats", "lm", "na.exclude", "runif", "sd", "var")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

# bingat

<details>

* Version: 1.3
* Source code: https://github.com/cran/bingat
* Date/Publication: 2017-07-05 18:30:37 UTC
* Number of recursive dependencies: 34

Run `revdep_details(,"bingat")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘genalg’ in Rd xrefs
    ```

# bnbc

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/bnbc
* URL: https://github.com/hansenlab/bnbc
* BugReports: https://github.com/hansenlab/bnbc/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 75

Run `revdep_details(,"bnbc")` for more info

</details>

## In both

*   checking whether package ‘bnbc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘bnbc’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/00LOCK-bnbc/00new/bnbc/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/bnbc’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘bnbc’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/00LOCK-bnbc/00new/bnbc/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/bnbc’

```
# bumphunter

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/bumphunter
* URL: https://github.com/ririzarr/bumphunter
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 97

Run `revdep_details(,"bumphunter")` for more info

</details>

## In both

*   checking whether package ‘bumphunter’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'S4Vectors', 'IRanges', 'GenomeInfoDb', 'GenomicRanges', 'foreach',
      'iterators', 'parallel', 'locfit'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘bumphunter’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/bumphunter’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘bumphunter’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/old/bumphunter.Rcheck/bumphunter’

```
# CARBayesST

<details>

* Version: 3.0.2
* Source code: https://github.com/cran/CARBayesST
* URL: http://github.com/duncanplee/CARBayesST
* BugReports: http://github.com/duncanplee/CARBayesST/issues
* Date/Publication: 2019-12-12 10:50:02 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"CARBayesST")` for more info

</details>

## In both

*   checking whether package ‘CARBayesST’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CARBayesST/new/CARBayesST.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CARBayesST’ ...
** package ‘CARBayesST’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c CARBayesST.cpp -o CARBayesST.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o CARBayesST.so CARBayesST.o RcppExports.o registerDynamicSymbol.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CARBayesST/new/CARBayesST.Rcheck/00LOCK-CARBayesST/00new/CARBayesST/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘sf’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CARBayesST’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CARBayesST/new/CARBayesST.Rcheck/CARBayesST’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CARBayesST’ ...
** package ‘CARBayesST’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c CARBayesST.cpp -o CARBayesST.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CARBayesST/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o CARBayesST.so CARBayesST.o RcppExports.o registerDynamicSymbol.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CARBayesST/old/CARBayesST.Rcheck/00LOCK-CARBayesST/00new/CARBayesST/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘sf’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CARBayesST’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CARBayesST/old/CARBayesST.Rcheck/CARBayesST’

```
# cellWise

<details>

* Version: 2.1.0
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2019-02-25 17:40:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"cellWise")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
     (number of the row).
     Their column names are:
     
    [1] X1
     
     These columns will be ignored in the analysis.
     We continue with the remaining 20 columns:
     
     [1] X2  X3  X4  X5  X6  X7  X8  X9  X10 X11 X12 X13 X14 X15 X16 X17 X18 X19 X20
    [20] X21
     
     The final data set we will analyze has 50 rows and 20 columns.
     
    > cellMap(DDCx$remX, DDCx$stdResid,
    + columnlabels = 1:d, rowlabels = 1:n)
    > 
    > # For more examples, we refer to the vignette:
    > vignette("DDC_examples")
    starting httpd help server ...Error in startDynamicHelp(TRUE) : cannot listen to TCP port 27400
    Calls: <Anonymous> -> print.vignette -> <Anonymous> -> startDynamicHelp
    Execution halted
    ```

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘rospca’ in Rd xrefs
    ```

# chromswitch

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/chromswitch
* URL: https://github.com/sjessa/chromswitch
* BugReports: https://github.com/sjessa/chromswitch/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 153

Run `revdep_details(,"chromswitch")` for more info

</details>

## In both

*   checking whether package ‘chromswitch’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘chromswitch’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/chromswitch’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘chromswitch’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/old/chromswitch.Rcheck/chromswitch’

```
# cliqueMS

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/cliqueMS
* URL: http://cliquems.seeslab.net
* BugReports: https://github.com/osenan/cliqueMS/issues
* Date/Publication: 2019-11-15
* Number of recursive dependencies: 127

Run `revdep_details(,"cliqueMS")` for more info

</details>

## In both

*   checking whether package ‘cliqueMS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/new/cliqueMS.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘cliqueMS’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findAnnotationR.cpp -o findAnnotationR.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findCliquesR.cpp -o findCliquesR.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findIsotopesR.cpp -o findIsotopesR.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o cliqueMS.so RcppExports.o findAnnotationR.o findCliquesR.o findIsotopesR.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/new/cliqueMS.Rcheck/00LOCK-cliqueMS/00new/cliqueMS/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cliqueMS’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/new/cliqueMS.Rcheck/cliqueMS’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘cliqueMS’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findAnnotationR.cpp -o findAnnotationR.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findCliquesR.cpp -o findCliquesR.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/BH/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cliqueMS/RcppArmadillo/include" -I/usr/local/include -fopenmp  -fpic  -g -O2  -c findIsotopesR.cpp -o findIsotopesR.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o cliqueMS.so RcppExports.o findAnnotationR.o findCliquesR.o findIsotopesR.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/old/cliqueMS.Rcheck/00LOCK-cliqueMS/00new/cliqueMS/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cliqueMS’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/old/cliqueMS.Rcheck/cliqueMS’

```
# Clomial

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/Clomial
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 2

Run `revdep_details(,"Clomial")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    Clomial: no visible global function definition for ‘runif’
    Clomial.generate.data: no visible global function definition for
      ‘runif’
    Clomial.generate.data: no visible global function definition for
      ‘rbinom’
    Clomial.likelihood: no visible global function definition for ‘dbinom’
    Phi: no visible global function definition for ‘dbinom’
    choose.best: no visible global function definition for ‘tail’
    compute.P.reparam : update.Wj: no visible global function definition
      for ‘optim’
    compute.P.reparam : plot.obj: no visible global function definition for
      ‘plot’
    compute.q: no visible global function definition for ‘dbinom’
    Undefined global functions or variables:
      dbinom optim plot rbinom runif tail
    Consider adding
      importFrom("graphics", "plot")
      importFrom("stats", "dbinom", "optim", "rbinom", "runif")
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# clusterExperiment

<details>

* Version: 2.6.1
* Source code: https://github.com/cran/clusterExperiment
* BugReports: https://github.com/epurdom/clusterExperiment/issues
* Date/Publication: 2019-11-06
* Number of recursive dependencies: 179

Run `revdep_details(,"clusterExperiment")` for more info

</details>

## In both

*   checking whether package ‘clusterExperiment’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘clusterExperiment’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c search_pairs.cpp -o search_pairs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c subsampleLoop.cpp -o subsampleLoop.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o clusterExperiment.so RcppExports.o search_pairs.o subsampleLoop.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/00LOCK-clusterExperiment/00new/clusterExperiment/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘clusterExperiment’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/clusterExperiment’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘clusterExperiment’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c search_pairs.cpp -o search_pairs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c subsampleLoop.cpp -o subsampleLoop.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o clusterExperiment.so RcppExports.o search_pairs.o subsampleLoop.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/clusterExperiment/old/clusterExperiment.Rcheck/00LOCK-clusterExperiment/00new/clusterExperiment/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘clusterExperiment’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/clusterExperiment/old/clusterExperiment.Rcheck/clusterExperiment’

```
# CNPBayes

<details>

* Version: 1.13.5
* Source code: https://github.com/cran/CNPBayes
* URL: https://github.com/scristia/CNPBayes
* BugReports: https://github.com/scristia/CNPBayes/issues
* Date/Publication: 2019-01-05
* Number of recursive dependencies: 162

Run `revdep_details(,"CNPBayes")` for more info

</details>

## In both

*   checking whether package ‘CNPBayes’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CNPBayes’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c miscfunctions.cpp -o miscfunctions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch.cpp -o multibatch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch_pooledvar.cpp -o multibatch_pooledvar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch_reduced.cpp -o multibatch_reduced.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c pooledvar_reduced.cpp -o pooledvar_reduced.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c triomodel.cpp -o triomodel.o
Error in loadNamespace(name) : there is no package called ‘startup’
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o CNPBayes.so RcppExports.o miscfunctions.o multibatch.o multibatch_pooledvar.o multibatch_reduced.o pooledvar_reduced.o triomodel.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Error in loadNamespace(name) : there is no package called ‘startup’
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/00LOCK-CNPBayes/00new/CNPBayes/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘CNPBayes’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/CNPBayes’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CNPBayes’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c miscfunctions.cpp -o miscfunctions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch.cpp -o multibatch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch_pooledvar.cpp -o multibatch_pooledvar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c multibatch_reduced.cpp -o multibatch_reduced.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c pooledvar_reduced.cpp -o pooledvar_reduced.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c triomodel.cpp -o triomodel.o
Error in loadNamespace(name) : there is no package called ‘startup’
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o CNPBayes.so RcppExports.o miscfunctions.o multibatch.o multibatch_pooledvar.o multibatch_reduced.o pooledvar_reduced.o triomodel.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Error in loadNamespace(name) : there is no package called ‘startup’
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNPBayes/old/CNPBayes.Rcheck/00LOCK-CNPBayes/00new/CNPBayes/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘CNPBayes’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNPBayes/old/CNPBayes.Rcheck/CNPBayes’

```
# CNVScope

<details>

* Version: 2.9.4
* Source code: https://github.com/cran/CNVScope
* URL: https://github.com/jamesdalg/CNVScope/
* BugReports: https://github.com/jamesdalg/CNVScope/issues/
* Date/Publication: 2019-12-07 15:30:02 UTC
* Number of recursive dependencies: 194

Run `revdep_details(,"CNVScope")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RCurl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# consensusOV

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/consensusOV
* URL: http://www.pmgenomics.ca/bhklab/software/consensusOV
* BugReports: https://github.com/bhklab/consensusOV/issues
* Date/Publication: 2019-12-05
* Number of recursive dependencies: 126

Run `revdep_details(,"consensusOV")` for more info

</details>

## In both

*   checking whether package ‘consensusOV’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/consensusOV/new/consensusOV.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘consensusOV’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘consensusOV’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/consensusOV/new/consensusOV.Rcheck/consensusOV’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘consensusOV’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘consensusOV’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/consensusOV/old/consensusOV.Rcheck/consensusOV’

```
# CopywriteR

<details>

* Version: 2.18.0
* Source code: https://github.com/cran/CopywriteR
* URL: https://github.com/PeeperLab/CopywriteR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 61

Run `revdep_details(,"CopywriteR")` for more info

</details>

## In both

*   checking whether package ‘CopywriteR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/new/CopywriteR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CopywriteR’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CopywriteR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/new/CopywriteR.Rcheck/CopywriteR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘CopywriteR’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CopywriteR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/old/CopywriteR.Rcheck/CopywriteR’

```
# corrcoverage

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/corrcoverage
* URL: https://annahutch.github.io/corrcoverage
* BugReports: https://github.com/annahutch/corrcoverage/issues
* Date/Publication: 2019-12-06 23:20:12 UTC
* Number of recursive dependencies: 68

Run `revdep_details(,"corrcoverage")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

# crlmm

<details>

* Version: 1.44.0
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 72

Run `revdep_details(,"crlmm")` for more info

</details>

## In both

*   checking whether package ‘crlmm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘crlmm’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c gtypeCaller.c -o gtypeCaller.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c trimmed.c -o trimmed.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c utils.c -o utils.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o crlmm.so gtypeCaller.o init.o trimmed.o utils.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/00LOCK-crlmm/00new/crlmm/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘oligoClasses’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘oligoClasses’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘crlmm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/crlmm’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘crlmm’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c gtypeCaller.c -o gtypeCaller.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c trimmed.c -o trimmed.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c utils.c -o utils.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o crlmm.so gtypeCaller.o init.o trimmed.o utils.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/crlmm/old/crlmm.Rcheck/00LOCK-crlmm/00new/crlmm/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘oligoClasses’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘oligoClasses’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘crlmm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/crlmm/old/crlmm.Rcheck/crlmm’

```
# crossmeta

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 186

Run `revdep_details(,"crossmeta")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'RCurl', 'XML'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# cSEM

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/cSEM
* URL: https://github.com/M-E-Rademaker/cSEM, https://m-e-rademaker.github.io/cSEM/
* BugReports: https://github.com/M-E-Rademaker/cSEM/issues
* Date/Publication: 2020-01-13 17:20:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# DAMOCLES

<details>

* Version: 2.2
* Source code: https://github.com/cran/DAMOCLES
* Date/Publication: 2020-01-22 12:10:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(,"DAMOCLES")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘expm’
      All declared Imports should be used.
    ```

# DeepBlueR

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 144

Run `revdep_details(,"DeepBlueR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'XML', 'RCurl'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DelayedArray

<details>

* Version: 0.12.2
* Source code: https://github.com/cran/DelayedArray
* Date/Publication: 2020-01-06
* Number of recursive dependencies: 68

Run `revdep_details(,"DelayedArray")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    17491    17    36
    > stopifnot(identical(DF, as(A2, "DataFrame")))
    > 
    > t(A2)  # transposition is delayed so is very fast and memory-efficient
    <2 x 17491> matrix of class DelayedMatrix and type "integer":
              [,1]     [,2]     [,3]     [,4] ... [,17488] [,17489] [,17490]
    cov         20       20       20       20   .       15       17       17
    score       39       39       39       39   .        4       36       36
          [,17491]
    cov         17
    score       36
    > colSums(A2)
       cov  score 
    184431 887720 
    > 
    > ## ---------------------------------------------------------------------
    > ## C. AN HDF5Array OBJECT IS A (PARTICULAR KIND OF) DelayedArray OBJECT
    > ## ---------------------------------------------------------------------
    > library(HDF5Array)
    Error in library(HDF5Array) : there is no package called ‘HDF5Array’
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run_unitTests.R’ failed.
    Last 13 lines of output:
      1 Test Suite : 
      DelayedArray RUnit Tests - 42 test functions, 1 error, 0 failures
      ERROR in test_DelayedMatrix_row_col_summarization: Error : package or namespace load failed for 'genefilter' in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
       there is no package called 'RCurl'
      
      Test files with failing tests
      
         test_DelayedMatrix-stats.R 
           test_DelayedMatrix_row_col_summarization 
      
      
      Error in BiocGenerics:::testPackage("DelayedArray") : 
        unit tests failed for package DelayedArray
      Calls: <Anonymous> -> <Anonymous>
      Execution halted
    ```

*   checking package subdirectories ... WARNING
    ```
    Subdirectory 'inst/doc' contains invalid file names:
      ‘02-Implementing_a_backend.Rmd’ ‘01-Working_with_large_arrays.Rnw’
      ‘02-Implementing_a_backend.html’ ‘01-Working_with_large_arrays.pdf’
    Please remove or rename the files.
    See section ‘Package subdirectories’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘HDF5Array’ in Rd xrefs
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘multGrids’
    Undocumented S4 methods:
      generic '[' and siglist 'DelayedArray,ANY,ANY,ANY'
      generic '[<-' and siglist 'DelayedArray,ANY,ANY,ANY'
      generic 'crossprod' and siglist 'ANY,DelayedMatrix'
      generic 'crossprod' and siglist 'DelayedMatrix,ANY'
      generic 'crossprod' and siglist 'DelayedMatrix,DelayedMatrix'
      generic 'crossprod' and siglist 'DelayedMatrix,missing'
      generic 'dimnames<-' and siglist 'DelayedArray,ANY'
      generic 'tcrossprod' and siglist 'ANY,DelayedMatrix'
      generic 'tcrossprod' and siglist 'DelayedMatrix,ANY'
      generic 'tcrossprod' and siglist 'DelayedMatrix,DelayedMatrix'
      generic 'tcrossprod' and siglist 'DelayedMatrix,missing'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘HDF5Array’
    
    Depends: includes the non-default packages:
      'stats4', 'matrixStats', 'BiocGenerics', 'S4Vectors', 'IRanges',
      'BiocParallel'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘BiocGenerics:::testPackage’
      ‘S4Vectors:::.list.names’ ‘S4Vectors:::anyMissing’
      ‘S4Vectors:::anyMissingOrOutside’ ‘S4Vectors:::delete_NULLs’
      ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::extract_positions_from_Rle’ ‘S4Vectors:::new_DataFrame’
      ‘S4Vectors:::prepare_objects_to_bind’
      ‘S4Vectors:::rep.int_along_ROWS’ ‘S4Vectors:::sapply_isNULL’
      See the note in ?`:::` about the use of this operator.
    ```

# DelayedMatrixStats

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/DelayedMatrixStats
* URL: https://github.com/PeteHaitch/DelayedMatrixStats
* BugReports: https://github.com/PeteHaitch/DelayedMatrixStats/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 68

Run `revdep_details(,"DelayedMatrixStats")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 3. Error: Non-NULL rows and cols (@test_row_and_col_functions.R#62)  ────────
      cannot coerce type 'closure' to vector of type 'character'
      Backtrace:
       1. base::Map(f = ms_f, matrix_list, rows = rows_list, cols = cols_list)
       2. base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
       4. base::.Defunct(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 14733 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 3 ]
      1. Error: Non-NULL rows and cols (@test_row_and_col_functions.R#62) 
      2. Error: Default arguments (@test_row_and_col_functions.R#47) 
      3. Error: Non-NULL rows and cols (@test_row_and_col_functions.R#62) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking whether package ‘DelayedMatrixStats’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DelayedMatrixStats/new/DelayedMatrixStats.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocParallel’ ‘HDF5Array’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::set_dim’ ‘DelayedArray:::set_dimnames’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DeMixT

<details>

* Version: 1.2.4
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2020-02-05
* Number of recursive dependencies: 70

Run `revdep_details(,"DeMixT")` for more info

</details>

## In both

*   checking whether package ‘DeMixT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeMixT/new/DeMixT.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'parallel', 'Rcpp', 'SummarizedExperiment', 'knitr', 'KernSmooth',
      'matrixcalc'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘DeMixT’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c DeMixT.c -o DeMixT.o
DeMixT.c: In function ‘Tdemix’:
DeMixT.c:265:9: warning: implicit declaration of function ‘Rprintf’ [-Wimplicit-function-declaration]
         if (nHavepi != 1)  Rprintf("Iteration %d: updating parameters\n", i+1);
         ^
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c Profile_2D.cpp -o Profile_2D.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o DeMixT.so DeMixT.o Profile_2D.o RcppExports.o init.o registerDynamicSymbol.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeMixT/new/DeMixT.Rcheck/00LOCK-DeMixT/00new/DeMixT/libs
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.2comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.2comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.3comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.3comp’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DeMixT’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeMixT/new/DeMixT.Rcheck/DeMixT’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘DeMixT’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c DeMixT.c -o DeMixT.o
DeMixT.c: In function ‘Tdemix’:
DeMixT.c:265:9: warning: implicit declaration of function ‘Rprintf’ [-Wimplicit-function-declaration]
         if (nHavepi != 1)  Rprintf("Iteration %d: updating parameters\n", i+1);
         ^
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c Profile_2D.cpp -o Profile_2D.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/DeMixT/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o DeMixT.so DeMixT.o Profile_2D.o RcppExports.o init.o registerDynamicSymbol.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeMixT/old/DeMixT.Rcheck/00LOCK-DeMixT/00new/DeMixT/libs
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.2comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.2comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.3comp’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘test.data.3comp’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DeMixT’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeMixT/old/DeMixT.Rcheck/DeMixT’

```
# DepecheR

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2020-02-05
* Number of recursive dependencies: 97

Run `revdep_details(,"DepecheR")` for more info

</details>

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(DepecheR)
      > 
      > test_check("DepecheR")
      ── 1. Failure: generateBimodalData expected output simple centers (@test_dataGen
      all(colMeans(x$samples) > centers[2, ] * (1 - prop) - 0.1) isn't true.
      
      [1] "Done with k-means"
      [1] "Now the first bit is done, and the iterative part takes off"
      [1] "Clusters 1 to 1 smoothed in 0.0762569904327393 . Now, 0 clusters are left."
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 22 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: generateBimodalData expected output simple centers (@test_dataGen.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
      Code: function(xYData, groupVector, dataTrans, kNeighK = max(100,
                     round(nrow(dataTrans)/10000)), kMeansK =
                     round(nrow(dataTrans)/1000), densContour = TRUE,
                     groupName1 = unique(groupVector)[1], groupName2 =
                     unique(groupVector)[2], plotName = "default", title =
                     FALSE, bandColor = "black", plotDir = ".", dotSize =
                     400/sqrt(nrow(xYData)), returnProb = FALSE,
                     returnProbColVec = FALSE, createOutput = TRUE)
      Docs: function(xYData, groupVector, dataTrans, kNeighK = max(100,
                     round(nrow(dataTrans)/10000)), kMeansK =
                     round(nrow(dataTrans)/1000), densContour = TRUE,
                     groupName1 = unique(groupVector)[1], groupName2 =
                     unique(groupVector)[2], plotName = "default", title =
                     FALSE, bandColor = "black", plotDir = ".", dotSize =
                     400/sqrt(nrow(xYData)), returnProbColVec = FALSE,
                     createOutput = TRUE)
      Argument names in code not in docs:
        returnProb
      Mismatches in argument names:
        Position: 14 Code: returnProb Docs: returnProbColVec
        Position: 15 Code: returnProbColVec Docs: createOutput
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘microClust’
    ```

*   checking compiled code ... NOTE
    ```
    File ‘DepecheR/libs/DepecheR.so’:
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘Clusterer.o’
      Found ‘srand’, possibly from ‘srand’ (C)
        Objects: ‘Clusterer.o’, ‘InterfaceUtils.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# DEqMS

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/DEqMS
* BugReports: https://github.com/yafeng/DEqMS/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 96

Run `revdep_details(,"DEqMS")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The following objects are masked from ‘package:base’:
    
        Filter, Find, Map, Position, Reduce, anyDuplicated, append,
        as.data.frame, basename, cbind, colnames, dirname, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
        lapply, mapply, match, mget, order, paste, pmax, pmax.int, pmin,
        pmin.int, rank, rbind, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    Loading required package: AnnotationHub
    Loading required package: BiocFileCache
    Loading required package: dbplyr
    > eh = ExperimentHub()
    No internet connection using 'localHub=TRUE'
    Using temporary cache /scratch/120652.1.long.q/RtmpQQVDSI/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Residualplot: no visible global function definition for ‘fitted’
    Residualplot: no visible global function definition for ‘residuals’
    VarianceScatterplot: no visible global function definition for ‘fitted’
    peptideProfilePlot: no visible binding for global variable ‘variable’
    peptideProfilePlot: no visible binding for global variable ‘value’
    peptideProfilePlot: no visible binding for global variable ‘PSM_id’
    peptideProfilePlot: no visible binding for global variable ‘Peptide’
    spectraCounteBayes: no visible global function definition for ‘fitted’
    Undefined global functions or variables:
      PSM_id Peptide fitted residuals value variable
    Consider adding
      importFrom("stats", "fitted", "residuals")
    to your NAMESPACE file.
    ```

# detrendr

<details>

* Version: 0.6.4
* Source code: https://github.com/cran/detrendr
* URL: https://rorynolan.github.io/detrendr, https://www.github.com/rorynolan/detrendr
* BugReports: https://www.github.com/rorynolan/detrendr/issues
* Date/Publication: 2019-07-08 16:40:03 UTC
* Number of recursive dependencies: 92

Run `revdep_details(,"detrendr")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ijtiff’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# diffloop

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/diffloop
* URL: https://github.com/aryeelab/diffloop
* BugReports: https://github.com/aryeelab/diffloop/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 147

Run `revdep_details(,"diffloop")` for more info

</details>

## In both

*   checking whether package ‘diffloop’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘diffloop’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘diffloop’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/diffloop’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘diffloop’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘diffloop’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/old/diffloop.Rcheck/diffloop’

```
# DiscoRhythm

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/DiscoRhythm
* URL: https://github.com/matthewcarlucci/DiscoRhythm
* BugReports: https://github.com/matthewcarlucci/DiscoRhythm/issues
* Date/Publication: 2019-11-29
* Number of recursive dependencies: 154

Run `revdep_details(,"DiscoRhythm")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘magick’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DMCFB

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/DMCFB
* BugReports: https://github.com/shokoohi/DMCFB/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 100

Run `revdep_details(,"DMCFB")` for more info

</details>

## In both

*   checking whether package ‘DMCFB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/new/DMCFB.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘DMCFB’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DMCFB’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/new/DMCFB.Rcheck/DMCFB’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘DMCFB’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DMCFB’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/old/DMCFB.Rcheck/DMCFB’

```
# dmrseq

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 139

Run `revdep_details(,"dmrseq")` for more info

</details>

## In both

*   checking whether package ‘dmrseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/new/dmrseq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘dmrseq’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘BS.chr21’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘BS.chr21’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘dmrseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/new/dmrseq.Rcheck/dmrseq’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘dmrseq’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘BS.chr21’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘BS.chr21’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘dmrseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/old/dmrseq.Rcheck/dmrseq’

```
# Doscheda

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2020-02-05
* Number of recursive dependencies: 155

Run `revdep_details(,"Doscheda")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘Doscheda-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: corrPlot
    > ### Title: Plot showing correlation between all channels across replicates
    > ### Aliases: corrPlot corrPlot,ChemoProtSet-method corrPlot,ANY,ANY-method
    > 
    > ### ** Examples
    > 
    > 
    > ex <- processedExample
    > ex <- runNormalisation(ex)
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: www.humanmine.org; Name or service not known
    Calls: runNormalisation ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Could not resolve host: www.humanmine.org; Name or service not known
      Backtrace:
       1. Doscheda:::normalize_data(...)
       2. Doscheda:::uniprotGene(organism)
       3. httr::POST(...)
       4. httr:::request_perform(req, hu$handle$handle)
       6. httr:::request_fetch.write_memory(req$output, req$url, handle)
       7. curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: normalize_data med works (@test-normal.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# doseR

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/doseR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 57

Run `revdep_details(,"doseR")` for more info

</details>

## In both

*   checking whether package ‘doseR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/doseR/new/doseR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘doseR’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘doseR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/doseR/new/doseR.Rcheck/doseR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘doseR’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘doseR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/doseR/old/doseR.Rcheck/doseR’

```
# dplR

<details>

* Version: 1.7.0
* Source code: https://github.com/cran/dplR
* URL: https://github.com/AndyBunn/dplR
* Date/Publication: 2019-07-18 11:20:08 UTC
* Number of recursive dependencies: 88

Run `revdep_details(,"dplR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    Package suggested but not available for checking: ‘gmp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# EasyqpcR

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/EasyqpcR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 85

Run `revdep_details(,"EasyqpcR")` for more info

</details>

## In both

*   checking whether package ‘EasyqpcR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EasyqpcR/new/EasyqpcR.Rcheck/00install.out’ for details.
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EasyqpcR’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
R session is headless; GTK+ not initialized.
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘cairoDevice’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EasyqpcR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EasyqpcR/new/EasyqpcR.Rcheck/EasyqpcR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EasyqpcR’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
R session is headless; GTK+ not initialized.
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘cairoDevice’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EasyqpcR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EasyqpcR/old/EasyqpcR.Rcheck/EasyqpcR’

```
# EMDomics

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 55

Run `revdep_details(,"EMDomics")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Sadhika Malladi <contact@sadhikamalladi.com> [aut, cre]
      Daniel Schmolze <emd@schmolze.com> [aut, cre]
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    calculate_cvm : <anonymous>: no visible global function definition for
      ‘median’
    calculate_cvm_gene: no visible global function definition for ‘combn’
    calculate_emd: no visible global function definition for ‘combn’
    calculate_emd : <anonymous>: no visible global function definition for
      ‘median’
    calculate_emd_gene: no visible global function definition for ‘combn’
    calculate_ks: no visible global function definition for ‘combn’
    calculate_ks : <anonymous>: no visible global function definition for
      ‘p.adjust’
    calculate_ks : <anonymous>: no visible global function definition for
      ‘median’
    calculate_ks_gene: no visible global function definition for ‘combn’
    calculate_ks_gene: no visible global function definition for ‘ks.test’
    Undefined global functions or variables:
      combn hist ks.test median p.adjust
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "ks.test", "median", "p.adjust")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

# ENmix

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/ENmix
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 170

Run `revdep_details(,"ENmix")` for more info

</details>

## In both

*   checking whether package ‘ENmix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/new/ENmix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ENmix’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ENmix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/new/ENmix.Rcheck/ENmix’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ENmix’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ENmix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/old/ENmix.Rcheck/ENmix’

```
# EnrichedHeatmap

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/EnrichedHeatmap
* URL: https://github.com/jokergoo/EnrichedHeatmap
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 75

Run `revdep_details(,"EnrichedHeatmap")` for more info

</details>

## In both

*   checking whether package ‘EnrichedHeatmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EnrichedHeatmap’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c dist_by_closeness.cpp -o dist_by_closeness.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o EnrichedHeatmap.so RcppExports.o dist_by_closeness.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/00LOCK-EnrichedHeatmap/00new/EnrichedHeatmap/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EnrichedHeatmap’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/EnrichedHeatmap’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EnrichedHeatmap’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c dist_by_closeness.cpp -o dist_by_closeness.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o EnrichedHeatmap.so RcppExports.o dist_by_closeness.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/old/EnrichedHeatmap.Rcheck/00LOCK-EnrichedHeatmap/00new/EnrichedHeatmap/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EnrichedHeatmap’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/old/EnrichedHeatmap.Rcheck/EnrichedHeatmap’

```
# eseis

<details>

* Version: 0.5.0
* Source code: https://github.com/cran/eseis
* Date/Publication: 2019-12-17 11:30:02 UTC
* Number of recursive dependencies: 85

Run `revdep_details(,"eseis")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# evaluomeR

<details>

* Version: 1.2.41
* Source code: https://github.com/cran/evaluomeR
* URL: https://github.com/neobernad/evaluomeR
* BugReports: https://github.com/neobernad/evaluomeR/issues
* Date/Publication: 2020-01-09
* Number of recursive dependencies: 114

Run `revdep_details(,"evaluomeR")` for more info

</details>

## In both

*   checking whether package ‘evaluomeR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/evaluomeR/new/evaluomeR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘evaluomeR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘bioMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘bioMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘ontMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘ontMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘rnaMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘rnaMetrics’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘evaluomeR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/evaluomeR/new/evaluomeR.Rcheck/evaluomeR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘evaluomeR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘bioMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘bioMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘ontMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘ontMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘rnaMetrics’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘rnaMetrics’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘evaluomeR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/evaluomeR/old/evaluomeR.Rcheck/evaluomeR’

```
# EventPointer

<details>

* Version: 2.4.0
* Source code: https://github.com/cran/EventPointer
* BugReports: https://github.com/jpromeror/EventPointer/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 141

Run `revdep_details(,"EventPointer")` for more info

</details>

## In both

*   checking whether package ‘EventPointer’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/new/EventPointer.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EventPointer’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘SG_RNASeq’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘SG_RNASeq’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EventPointer’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/new/EventPointer.Rcheck/EventPointer’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘EventPointer’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘SG_RNASeq’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘SG_RNASeq’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EventPointer’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/old/EventPointer.Rcheck/EventPointer’

```
# ExCluster

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 30

Run `revdep_details(,"ExCluster")` for more info

</details>

## In both

*   checking whether package ‘ExCluster’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/new/ExCluster.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ExCluster’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ExCluster’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/new/ExCluster.Rcheck/ExCluster’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ExCluster’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ExCluster’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/old/ExCluster.Rcheck/ExCluster’

```
# ExpressionNormalizationWorkflow

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* BugReports: https://github.com/
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 94

Run `revdep_details(,"ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ExpressionNormalizationWorkflow’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ExpressionNormalizationWorkflow’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/ExpressionNormalizationWorkflow’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ExpressionNormalizationWorkflow’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ExpressionNormalizationWorkflow’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/old/ExpressionNormalizationWorkflow.Rcheck/ExpressionNormalizationWorkflow’

```
# FastHCS

<details>

* Version: 0.0.6
* Source code: https://github.com/cran/FastHCS
* Date/Publication: 2018-05-22 16:49:10 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"FastHCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# FastRCS

<details>

* Version: 0.0.8
* Source code: https://github.com/cran/FastRCS
* Date/Publication: 2018-05-13 19:59:51 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"FastRCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 75

Run `revdep_details(,"FDb.FANTOM4.promoters.hg19")` for more info

</details>

## In both

*   checking whether package ‘FDb.FANTOM4.promoters.hg19’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘FDb.FANTOM4.promoters.hg19’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/FDb.FANTOM4.promoters.hg19’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘FDb.FANTOM4.promoters.hg19’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/old/FDb.FANTOM4.promoters.hg19.Rcheck/FDb.FANTOM4.promoters.hg19’

```
# fishpond

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/fishpond
* URL: https://github.com/mikelove/fishpond
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 168

Run `revdep_details(,"fishpond")` for more info

</details>

## In both

*   checking whether package ‘fishpond’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/fishpond/new/fishpond.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘fishpond’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/fishpond/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/fishpond/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c readEDS.cpp -o readEDS.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o fishpond.so RcppExports.o readEDS.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/fishpond/new/fishpond.Rcheck/00LOCK-fishpond/00new/fishpond/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘fishpond’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/fishpond/new/fishpond.Rcheck/fishpond’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘fishpond’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/fishpond/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/fishpond/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c readEDS.cpp -o readEDS.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o fishpond.so RcppExports.o readEDS.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/fishpond/old/fishpond.Rcheck/00LOCK-fishpond/00new/fishpond/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘fishpond’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/fishpond/old/fishpond.Rcheck/fishpond’

```
# flowCore

<details>

* Version: 1.52.1
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2019-12-04
* Number of recursive dependencies: 109

Run `revdep_details(,"flowCore")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘flowCore-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: filterResultList-class
    > ### Title: Class "filterResultList"
    > ### Aliases: filterResultList-class filterResultList
    > ###   [,filterResultList,ANY-method [[,filterResultList,ANY-method
    > ###   names,filterResultList-method parameters,filterResultList-method
    > ###   show,filterResultList-method split,flowSet,filterResultList-method
    > ###   summary,filterResultList-method
    > ### Keywords: classes
    > 
    > ### ** Examples
    > 
    > 
    > library(flowStats)
    Error in library(flowStats) : there is no package called ‘flowStats’
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(flowCore)
      > library(flowStats)
      Error in library(flowStats) : there is no package called 'flowStats'
      Execution halted
    ```

*   checking R files for non-ASCII characters ... WARNING
    ```
    Found the following file with non-ASCII characters:
      AllGenerics.R
    Portable packages must use only ASCII characters in their R code,
    except perhaps in comments.
    Use \uxxxx escapes for other characters.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘flowViz’, ‘flowStats’, ‘ggcyto’ in Rd xrefs
    Missing link or links in documentation object 'compensation-class.Rd':
      ‘[flowCore:spillover-flowSet]{spillover}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘Data’ ‘action’ ‘actions’ ‘gate’ ‘isNull’ ‘journal’ ‘parent’
      ‘spillover’ ‘spillover_match’ ‘tree’ ‘views’
    Undocumented S4 methods:
      generic 'identifier' and siglist 'NULL'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'flowViz', 'flowStats', 'openCyto', 'ggcyto'
    ```

*   checking R code for possible problems ... NOTE
    ```
    eval,compensatedParameter-missing : <anonymous>: no visible binding for
      global variable ‘mat’
    eval,compensatedParameter-missing : <anonymous>: no visible binding for
      global variable ‘msv’
    Undefined global functions or variables:
      mat msv
    ```

# funtooNorm

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 127

Run `revdep_details(,"funtooNorm")` for more info

</details>

## In both

*   checking whether package ‘funtooNorm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘funtooNorm’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: multiple methods tables found for ‘splitAsList’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘funtooNorm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/funtooNorm’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘funtooNorm’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: multiple methods tables found for ‘splitAsList’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘funtooNorm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/old/funtooNorm.Rcheck/funtooNorm’

```
# gap

<details>

* Version: 1.2.2
* Source code: https://github.com/cran/gap
* URL: https://github.com/jinghuazhao/R
* BugReports: https://github.com/jinghuazhao/R/issues
* Date/Publication: 2020-02-02 15:10:02 UTC
* Number of recursive dependencies: 132

Run `revdep_details(,"gap")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘genetics’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘regress’
    ```

# gcapc

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/gcapc
* URL: https://github.com/tengmx/gcapc
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 55

Run `revdep_details(,"gcapc")` for more info

</details>

## In both

*   checking whether package ‘gcapc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gcapc/new/gcapc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘gcapc’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘gcapc’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gcapc/new/gcapc.Rcheck/gcapc’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘gcapc’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘gcapc’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gcapc/old/gcapc.Rcheck/gcapc’

```
# genomation

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/genomation
* URL: http://bioinformatics.mdc-berlin.de/genomation/
* BugReports: https://github.com/BIMSBbioinfo/genomation/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 88

Run `revdep_details(,"genomation")` for more info

</details>

## In both

*   checking whether package ‘genomation’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘genomation’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c binSum.cpp -o binSum.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o genomation.so RcppExports.o binSum.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/00LOCK-genomation/00new/genomation/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘genomation’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/genomation’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘genomation’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c binSum.cpp -o binSum.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o genomation.so RcppExports.o binSum.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/genomation/old/genomation.Rcheck/00LOCK-genomation/00new/genomation/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘genomation’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/genomation/old/genomation.Rcheck/genomation’

```
# GenRank

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/GenRank
* URL: https://github.com/chakri9/GenRank
* BugReports: https://github.com/chakri9/GenRank/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 59

Run `revdep_details(,"GenRank")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    CombP: no visible global function definition for ‘read.table’
    ComputeCE: no visible global function definition for ‘read.table’
    ComputeCE: no visible global function definition for ‘complete.cases’
    ComputeRP: no visible global function definition for ‘read.table’
    ComputeRP: no visible global function definition for ‘complete.cases’
    Undefined global functions or variables:
      complete.cases read.table
    Consider adding
      importFrom("stats", "complete.cases")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

# GJRM

<details>

* Version: 0.2-2
* Source code: https://github.com/cran/GJRM
* URL: http://www.ucl.ac.uk/statistics/people/giampieromarra
* Date/Publication: 2020-02-07 11:40:05 UTC
* Number of recursive dependencies: 71

Run `revdep_details(,"GJRM")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rmpfr’
    
    Package which this enhances but not available for checking: ‘sp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GNET2

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/GNET2
* URL: https://github.com/chrischen1/GNET2
* BugReports: https://github.com/chrischen1/GNET2/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 89

Run `revdep_details(,"GNET2")` for more info

</details>

## In both

*   checking whether package ‘GNET2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GNET2/new/GNET2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘GNET2’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GNET2/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GNET2/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c gnet_rcpp.cpp -o gnet_rcpp.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o GNET2.so RcppExports.o gnet_rcpp.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GNET2/new/GNET2.Rcheck/00LOCK-GNET2/00new/GNET2/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GNET2’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GNET2/new/GNET2.Rcheck/GNET2’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘GNET2’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GNET2/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GNET2/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c gnet_rcpp.cpp -o gnet_rcpp.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o GNET2.so RcppExports.o gnet_rcpp.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GNET2/old/GNET2.Rcheck/00LOCK-GNET2/00new/GNET2/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GNET2’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GNET2/old/GNET2.Rcheck/GNET2’

```
# GUIDEseq

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 112

Run `revdep_details(,"GUIDEseq")` for more info

</details>

## In both

*   checking whether package ‘GUIDEseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/new/GUIDEseq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘GUIDEseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘GUIDEseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/new/GUIDEseq.Rcheck/GUIDEseq’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘GUIDEseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘GUIDEseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/old/GUIDEseq.Rcheck/GUIDEseq’

```
# Gviz

<details>

* Version: 1.30.1
* Source code: https://github.com/cran/Gviz
* URL: https://github.com/ivanek/Gviz
* BugReports: https://github.com/ivanek/Gviz/issues
* Date/Publication: 2020-01-23
* Number of recursive dependencies: 146

Run `revdep_details(,"Gviz")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘biovizBase’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gwasurvivr

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/gwasurvivr
* URL: https://github.com/suchestoncampbelllab/gwasurvivr
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 130

Run `revdep_details(,"gwasurvivr")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘VariantAnnotation’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# hipathia

<details>

* Version: 2.2.1
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2019-12-06
* Number of recursive dependencies: 116

Run `revdep_details(,"hipathia")` for more info

</details>

## In both

*   checking whether package ‘hipathia’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/hipathia/new/hipathia.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘hipathia’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘brca’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘brca’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘exp_data’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘exp_data’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘go_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘go_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘path_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘path_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘results’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘results’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘hipathia’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/hipathia/new/hipathia.Rcheck/hipathia’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘hipathia’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘brca’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘brca’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘exp_data’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘exp_data’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘go_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘go_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘path_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘path_vals’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘results’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘results’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘hipathia’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/hipathia/old/hipathia.Rcheck/hipathia’

```
# IMIFA

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/IMIFA
* URL: https://cran.r-project.org/package=IMIFA
* BugReports: https://github.com/Keefe-Murphy/IMIFA
* Date/Publication: 2019-12-11 11:50:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(,"IMIFA")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rfast’
    
    Packages suggested but not available for checking: 'gmp', 'Rmpfr'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ImpactEffectsize

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/ImpactEffectsize
* Date/Publication: 2020-02-03 10:00:05 UTC
* Number of recursive dependencies: 60

Run `revdep_details(,"ImpactEffectsize")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RcppAlgos’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# InfiniumPurify

<details>

* Version: 1.3.1
* Source code: https://github.com/cran/InfiniumPurify
* Date/Publication: 2017-01-14 12:12:25
* Number of recursive dependencies: 1

Run `revdep_details(,"InfiniumPurify")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘minfi’ in Rd xrefs
    ```

# kissDE

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/kissDE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 146

Run `revdep_details(,"kissDE")` for more info

</details>

## In both

*   checking whether package ‘kissDE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/new/kissDE.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘kissDE’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘kissDE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/new/kissDE.Rcheck/kissDE’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘kissDE’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘kissDE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/old/kissDE.Rcheck/kissDE’

```
# loo

<details>

* Version: 2.2.0
* Source code: https://github.com/cran/loo
* URL: https://mc-stan.org/loo, https://discourse.mc-stan.org
* BugReports: https://github.com/stan-dev/loo/issues
* Date/Publication: 2019-12-19 09:40:05 UTC
* Number of recursive dependencies: 137

Run `revdep_details(,"loo")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rstanarm’
    ```

# LS2Wstat

<details>

* Version: 2.1-2
* Source code: https://github.com/cran/LS2Wstat
* Date/Publication: 2020-02-03 20:40:11 UTC
* Number of recursive dependencies: 30

Run `revdep_details(,"LS2Wstat")` for more info

</details>

## In both

*   checking whether package ‘LS2Wstat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/LS2Wstat/new/LS2Wstat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘LS2Wstat’ ...
** package ‘LS2Wstat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package ‘sf’ required by ‘spdep’ could not be found
Execution halted
ERROR: lazy loading failed for package ‘LS2Wstat’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/LS2Wstat/new/LS2Wstat.Rcheck/LS2Wstat’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘LS2Wstat’ ...
** package ‘LS2Wstat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package ‘sf’ required by ‘spdep’ could not be found
Execution halted
ERROR: lazy loading failed for package ‘LS2Wstat’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/LS2Wstat/old/LS2Wstat.Rcheck/LS2Wstat’

```
# LSAmitR

<details>

* Version: 1.0-2
* Source code: https://github.com/cran/LSAmitR
* URL: https://www.bifie.at/node/3770
* Date/Publication: 2018-06-08 13:23:05 UTC
* Number of recursive dependencies: 153

Run `revdep_details(,"LSAmitR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# ltmle

<details>

* Version: 1.1-0
* Source code: https://github.com/cran/ltmle
* URL: https://github.com/joshuaschwab/ltmle
* BugReports: https://github.com/joshuaschwab/ltmle/issues
* Date/Publication: 2018-08-20 20:30:03 UTC
* Number of recursive dependencies: 46

Run `revdep_details(,"ltmle")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Call:
      ltmle(data = data.frame(W, A, Y), Anodes = "A", Ynodes = "Y", 
          abar = 1, estimate.time = F, gcomp = T)
      
         Parameter Estimate:  0.77581 
          Estimated Std Err:  0.12907 
                    p-value:  1.5474e-06 
          95% Conf Interval: (0.51182, 1) 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 165 | SKIPPED: 4 | WARNINGS: 7 | FAILED: 1 ]
      1. Error: invalid inputs throw errors 2 (@test-ErrorHandling.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# Luminescence

<details>

* Version: 0.9.7
* Source code: https://github.com/cran/Luminescence
* URL: https://CRAN.R-project.org/package=Luminescence
* BugReports: https://github.com/R-Lum/Luminescence/issues
* Date/Publication: 2020-01-08 23:02:25 UTC
* Number of recursive dependencies: 142

Run `revdep_details(,"Luminescence")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    Package suggested but not available for checking: ‘RLumShiny’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# M3Drop

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/M3Drop
* URL: https://github.com/tallulandrews/M3Drop
* BugReports: https://github.com/tallulandrews/M3Drop/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 202

Run `revdep_details(,"M3Drop")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Loading required package: S4Vectors
    
    Attaching package: ‘S4Vectors’
    
    The following object is masked from ‘package:Matrix’:
    
        expand
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘RCurl’
    Failed with error:  ‘package ‘GenomeInfoDb’ could not be loaded’
    > 	SCE <- SingleCellExperiment(assays=list(counts=counts))
    Error in SingleCellExperiment(assays = list(counts = counts)) : 
      could not find function "SingleCellExperiment"
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘numDeriv’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    M3DropConvertData: no visible global function definition for ‘assays’
    NBumiConvertData: no visible global function definition for ‘assays’
    bg__filter_cells: no visible binding for global variable ‘x’
    bg__get_extreme_residuals: no visible binding for global variable ‘x’
    Undefined global functions or variables:
      assays x
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: NBumi_FSOther.Rd:8-10: Dropping empty section \usage
    prepare_Rd: NBumi_TradDE.Rd:7-8: Dropping empty section \usage
    ```

# MEAL

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2019-11-07
* Number of recursive dependencies: 221

Run `revdep_details(,"MEAL")` for more info

</details>

## In both

*   checking whether package ‘MEAL’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MEAL’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘MultiDataSet’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘MultiDataSet’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MEAL’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/MEAL’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MEAL’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘MultiDataSet’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘MultiDataSet’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MEAL’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/old/MEAL.Rcheck/MEAL’

```
# metagene

<details>

* Version: 2.18.0
* Source code: https://github.com/cran/metagene
* BugReports: https://github.com/CharlesJB/metagene/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 126

Run `revdep_details(,"metagene")` for more info

</details>

## In both

*   checking whether package ‘metagene’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/metagene’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metagene/old/metagene.Rcheck/metagene’

```
# metagenomeSeq

<details>

* Version: 1.28.2
* Source code: https://github.com/cran/metagenomeSeq
* URL: https://github.com/nosson/metagenomeSeq/
* BugReports: https://github.com/nosson/metagenomeSeq/issues
* Date/Publication: 2020-02-03
* Number of recursive dependencies: 116

Run `revdep_details(,"metagenomeSeq")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'MRihw-fitFeatureModelResults.Rd':
      ‘fitFeatureModelResults’ ‘fitZigResults’
    
    Missing link or links in documentation object 'MRihw-fitZigResults.Rd':
      ‘fitFeatureModelResults’ ‘fitZigResults’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'MRcoefs':
      ‘IHWcov’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# metamicrobiomeR

<details>

* Version: 1.1
* Source code: https://github.com/cran/metamicrobiomeR
* URL: https://github.com/nhanhocu/metamicrobiomeR
* BugReports: https://github.com/nhanhocu/metamicrobiomeR/issues
* Date/Publication: 2019-09-03 07:20:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"metamicrobiomeR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RCurl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MetaNeighbor

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 68

Run `revdep_details(,"MetaNeighbor")` for more info

</details>

## In both

*   checking for missing documentation entries ... ERROR
    ```
    Failed with error:  ‘package ‘GenomeInfoDb’ could not be loaded’
    Error in .requirePackage(package) : 
      unable to find required package ‘SummarizedExperiment’
    Calls: <Anonymous> ... withCallingHandlers -> is -> getClassDef -> .requirePackage
    Execution halted
    ```

*   checking examples ... ERROR
    ```
    ...
        Filter, Find, Map, Position, Reduce, anyDuplicated, append,
        as.data.frame, basename, cbind, colnames, dirname, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
        lapply, mapply, match, mget, order, paste, pmax, pmax.int, pmin,
        pmin.int, rank, rbind, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    Loading required package: S4Vectors
    
    Attaching package: ‘S4Vectors’
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘RCurl’
    Error: package ‘GenomeInfoDb’ could not be loaded
    Execution halted
    ```

*   checking whether package ‘MetaNeighbor’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MetaNeighbor/new/MetaNeighbor.Rcheck/00install.out’ for details.
    ```

*   checking data for non-ASCII characters ... WARNING
    ```
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error loading dataset 'mn_data':
       Error in .requirePackage(package) : 
        unable to find required package 'SummarizedExperiment'
      
      The dataset(s) may use package(s) not declared in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenomicRanges’ ‘RColorBrewer’ ‘gplots’
      All declared Imports should be used.
    ```

# MethylAid

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 153

Run `revdep_details(,"MethylAid")` for more info

</details>

## In both

*   checking whether package ‘MethylAid’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MethylAid’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: multiple methods tables found for ‘splitAsList’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MethylAid’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/MethylAid’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MethylAid’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Warning: multiple methods tables found for ‘splitAsList’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MethylAid’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/old/MethylAid.Rcheck/MethylAid’

```
# methylationArrayAnalysis

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 197

Run `revdep_details(,"methylationArrayAnalysis")` for more info

</details>

## In both

*   checking whether package ‘methylationArrayAnalysis’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'knitr', 'rmarkdown', 'BiocStyle', 'limma', 'minfi',
      'IlluminaHumanMethylation450kanno.ilmn12.hg19',
      'IlluminaHumanMethylation450kmanifest', 'RColorBrewer', 'missMethyl',
      'matrixStats', 'minfiData', 'Gviz', 'DMRcate', 'stringr',
      'FlowSorted.Blood.450k'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘methylationArrayAnalysis’ ...
** using staged installation
** inst
** help
No man pages found in package  ‘methylationArrayAnalysis’ 
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/methylationArrayAnalysis’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘methylationArrayAnalysis’ ...
** using staged installation
** inst
** help
No man pages found in package  ‘methylationArrayAnalysis’ 
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/old/methylationArrayAnalysis.Rcheck/methylationArrayAnalysis’

```
# methylumi

<details>

* Version: 2.32.0
* Source code: https://github.com/cran/methylumi
* BugReports: https://github.com/seandavi/methylumi/issues/new
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 178

Run `revdep_details(,"methylumi")` for more info

</details>

## In both

*   checking whether package ‘methylumi’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/new/methylumi.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'lumi', 'methyAnalysis'
    
    Depends: includes the non-default packages:
      'Biobase', 'scales', 'reshape2', 'ggplot2', 'matrixStats',
      'FDb.InfiniumMethylation.hg19', 'minfi'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘methylumi’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘methylumi’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/new/methylumi.Rcheck/methylumi’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘methylumi’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘methylumi’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/old/methylumi.Rcheck/methylumi’

```
# MFHD

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/MFHD
* Date/Publication: 2013-10-23 23:50:20
* Number of recursive dependencies: 78

Run `revdep_details(,"MFHD")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘plot’
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      ‘points’
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      ‘lines’
    plot.bagplot: no visible global function definition for ‘boxplot’
    plot.bagplot: no visible global function definition for ‘plot’
    plot.bagplot: no visible global function definition for ‘points’
    plot.bagplot: no visible global function definition for ‘segments’
    plot.bagplot: no visible global function definition for ‘text’
    plot.bagplot: no visible global function definition for ‘lines’
    plot.bagplot: no visible global function definition for ‘polygon’
    Undefined global functions or variables:
      boxplot chull complete.cases identify lines plot points polygon
      prcomp quantile sd segments text xy.coords
    Consider adding
      importFrom("grDevices", "chull", "xy.coords")
      importFrom("graphics", "boxplot", "identify", "lines", "plot",
                 "points", "polygon", "segments", "text")
      importFrom("stats", "complete.cases", "prcomp", "quantile", "sd")
    to your NAMESPACE file.
    ```

# MHTcop

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/MHTcop
* Date/Publication: 2019-01-21 16:10:03 UTC
* Number of recursive dependencies: 39

Run `revdep_details(,"MHTcop")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MCMCpack’ ‘copula’
      All declared Imports should be used.
    ```

# microsamplingDesign

<details>

* Version: 1.0.6
* Source code: https://github.com/cran/microsamplingDesign
* URL: http://www.openanalytics.eu
* Date/Publication: 2019-03-20 15:50:03 UTC
* Number of recursive dependencies: 120

Run `revdep_details(,"microsamplingDesign")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    where 8: rankObject(object, pkData, nGrid = 20, nSamplesAvCurve = 25)
    
     --- value of length: 11 type: integer ---
     [1]  0  1  2  3  4  5  6  7  8  9 10
     --- function from context --- 
    function (x, arr.ind = FALSE, useNames = TRUE) 
    {
        wh <- .Internal(which(x))
        if (arr.ind && !is.null(d <- dim(x))) 
            arrayInd(wh, d, dimnames(x), useNames = useNames)
        else wh
    }
    <bytecode: 0xfd2ad8>
    <environment: namespace:base>
     --- function search by body ---
    Function which in namespace base has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in arr.ind && !is.null(d <- dim(x)) : 
      'length(x) = 11 > 1' in coercion to 'logical(1)'
    Calls: rankObject ... rankObject.SetOfTimePoints -> t -> apply -> FUN -> which
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
       1. microsamplingDesign::rankObject(...)
       2. microsamplingDesign::rankObject(...)
       3. microsamplingDesign:::.local(object, ...)
       4. microsamplingDesign:::rankObject.SetOfTimePoints(...)
       6. base::apply(dataTimeOptionsWithZero, 1, convertToIndices)
       7. microsamplingDesign:::FUN(newX[, i], ...)
       8. base::which(fullTimes %in% times, fullTimes)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 19 | SKIPPED: 3 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@testRankTimePoints.R#33) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# MIGSA

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/MIGSA
* URL: https://jcrodriguez.rbind.io/
* Date/Publication: 2020-01-07
* Number of recursive dependencies: 92

Run `revdep_details(,"MIGSA")` for more info

</details>

## In both

*   checking whether package ‘MIGSA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/new/MIGSA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MIGSA’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MIGSA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/new/MIGSA.Rcheck/MIGSA’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MIGSA’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MIGSA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/old/MIGSA.Rcheck/MIGSA’

```
# MinimumDistance

<details>

* Version: 1.30.0
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 72

Run `revdep_details(,"MinimumDistance")` for more info

</details>

## In both

*   checking whether package ‘MinimumDistance’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MinimumDistance/new/MinimumDistance.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doSNOW’
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MinimumDistance’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MinimumDistance’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MinimumDistance/new/MinimumDistance.Rcheck/MinimumDistance’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘MinimumDistance’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MinimumDistance’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MinimumDistance/old/MinimumDistance.Rcheck/MinimumDistance’

```
# mixOmics

<details>

* Version: 6.10.8
* Source code: https://github.com/cran/mixOmics
* URL: http://www.mixOmics.org
* BugReports: https://github.com/mixOmicsTeam/mixOmics/issues/
* Date/Publication: 2020-01-29
* Number of recursive dependencies: 92

Run `revdep_details(,"mixOmics")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        3. snow::makeSOCKcluster
        4. base::getExportedValue(pkg, name)
        5. base::asNamespace(ns)
        6. base::getNamespace(ns)
        7. base::loadNamespace(name)
        8. base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
        9. base:::withOneRestart(expr, restarts[[1L]])
       10. base:::doWithOneRestart(return(expr), restart)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 85 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: perf.diablo works with and without parallel processing and with auroc (@test-perf.diablo.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mnem

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/mnem
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 163

Run `revdep_details(,"mnem")` for more info

</details>

## In both

*   checking whether package ‘mnem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/mnem/new/mnem.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘mnem’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/RcppEigen/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/RcppEigen/include" -I/usr/local/include  -fpic  -g -O2  -c mm.cpp -o mm.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o mnem.so RcppExports.o mm.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/mnem/new/mnem.Rcheck/00LOCK-mnem/00new/mnem/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘mnem’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/mnem/new/mnem.Rcheck/mnem’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘mnem’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/RcppEigen/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/mnem/RcppEigen/include" -I/usr/local/include  -fpic  -g -O2  -c mm.cpp -o mm.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o mnem.so RcppExports.o mm.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/mnem/old/mnem.Rcheck/00LOCK-mnem/00new/mnem/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘mnem’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/mnem/old/mnem.Rcheck/mnem’

```
# moc.gapbk

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/moc.gapbk
* Date/Publication: 2019-03-07 17:20:03 UTC
* Number of recursive dependencies: 40

Run `revdep_details(,"moc.gapbk")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘doMPI’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# monocle

<details>

* Version: 2.14.0
* Source code: https://github.com/cran/monocle
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 248

Run `revdep_details(,"monocle")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘biocViews’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
    get_next_node_id: no visible binding for '<<-' assignment to
      ‘next_node’
    get_next_node_id: no visible binding for global variable ‘next_node’
    make_canonical: no visible global function definition for ‘nei’
    measure_diameter_path: no visible global function definition for ‘nei’
    orderCells: no visible binding for '<<-' assignment to ‘next_node’
    plot_multiple_branches_pseudotime: no visible binding for global
      variable ‘pseudocount’
    plot_multiple_branches_pseudotime: no visible binding for global
      variable ‘Branch’
    project2MST: no visible global function definition for ‘nei’
    reverseEmbeddingCDS : <anonymous>: no visible global function
      definition for ‘quantile’
    Undefined global functions or variables:
      Branch Size_Factor nei next_node pseudocount quantile
      use_for_ordering
    Consider adding
      importFrom("stats", "quantile")
    to your NAMESPACE file.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# motifbreakR

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/motifbreakR
* BugReports: https://github.com/Simon-Coetzee/motifbreakR/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 144

Run `revdep_details(,"motifbreakR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'VariantAnnotation', 'motifStack'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mrfDepth

<details>

* Version: 1.0.11
* Source code: https://github.com/cran/mrfDepth
* URL: https://github.com/PSegaert/mrfDepth
* BugReports: https://github.com/PSegaert/mrfDepth/issues
* Date/Publication: 2019-05-15 10:00:03 UTC
* Number of recursive dependencies: 48

Run `revdep_details(,"mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# muscat

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/muscat
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 195

Run `revdep_details(,"muscat")` for more info

</details>

## In both

*   checking whether package ‘muscat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/muscat/new/muscat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘muscat’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘muscat’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/muscat/new/muscat.Rcheck/muscat’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘muscat’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘muscat’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/muscat/old/muscat.Rcheck/muscat’

```
# nandb

<details>

* Version: 2.0.5
* Source code: https://github.com/cran/nandb
* URL: https://rorynolan.github.io/nandb, https://github.com/rorynolan/nandb
* BugReports: https://github.com/rorynolan/nandb/issues
* Date/Publication: 2019-08-22 09:40:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"nandb")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ijtiff’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# NanoStringDiff

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 44

Run `revdep_details(,"NanoStringDiff")` for more info

</details>

## Newly fixed

*   checking running R code from vignettes ...
    ```
      ‘NanoStringDiff.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘NanoStringDiff.Rnw’
      ...
    
    
    > contrast = c(-1, 1)
    
    > NanoStringData1 = estNormalizationFactors(NanoStringData1)
    Warning in log(y/mu) : NaNs produced
    
      When sourcing ‘NanoStringDiff.R’:
    Error: no valid set of coefficients has been found: please supply starting values
    Execution halted
    ```

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘compute.baseSigma’ ‘est.dispersion’ ‘fun5’ ‘glmfit.OneGroup’
      ‘glmfit.full’ ‘glmfit.reduce’ ‘rnegbinom’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    glmfit.full: no visible global function definition for ‘lm’
    glmfit.full: no visible global function definition for ‘median’
    glmfit.full: no visible global function definition for ‘IQR’
    glmfit.full : get.phi: no visible global function definition for
      ‘optimize’
    glmfit.full : get.beta.full: no visible global function definition for
      ‘optim’
    glmfit.reduce: no visible global function definition for ‘lm’
    glmfit.reduce : get.beta.reduce: no visible global function definition
      for ‘optim’
    rnegbinom: no visible global function definition for ‘rpois’
    rnegbinom: no visible global function definition for ‘rgamma’
    Undefined global functions or variables:
      IQR abline glm lm median optim optimize p.adjust par pchisq plot
      poisson read.table rgamma rowVars rpois textxy title
    Consider adding
      importFrom("graphics", "abline", "par", "plot", "title")
      importFrom("stats", "IQR", "glm", "lm", "median", "optim", "optimize",
                 "p.adjust", "pchisq", "poisson", "rgamma", "rpois")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

*   checking installed files from ‘inst/doc’ ... NOTE
    ```
    The following files look like leftovers/mistakes:
      ‘NanoStringDiff.log’
    Please remove them from your package.
    ```

# NetLogoR

<details>

* Version: 0.3.6
* Source code: https://github.com/cran/NetLogoR
* URL: http://netlogor.predictiveecology.org, https://github.com/PredictiveEcology/NetLogoR/
* BugReports: https://github.com/PredictiveEcology/NetLogoR/issues
* Date/Publication: 2019-11-27 12:00:02 UTC
* Number of recursive dependencies: 174

Run `revdep_details(,"NetLogoR")` for more info

</details>

## In both

*   checking whether package ‘NetLogoR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NetLogoR/new/NetLogoR.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'fastshp', 'sf'
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘NetLogoR’ ...
** package ‘NetLogoR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NetLogoR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NetLogoR/new/NetLogoR.Rcheck/NetLogoR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘NetLogoR’ ...
** package ‘NetLogoR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NetLogoR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NetLogoR/old/NetLogoR.Rcheck/NetLogoR’

```
# NormalyzerDE

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/NormalyzerDE
* URL: https://github.com/ComputationalProteomics/NormalyzerDE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 153

Run `revdep_details(,"NormalyzerDE")` for more info

</details>

## In both

*   checking whether package ‘NormalyzerDE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NormalyzerDE/new/NormalyzerDE.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘NormalyzerDE’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NormalyzerDE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NormalyzerDE/new/NormalyzerDE.Rcheck/NormalyzerDE’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘NormalyzerDE’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NormalyzerDE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NormalyzerDE/old/NormalyzerDE.Rcheck/NormalyzerDE’

```
# obfuscatoR

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/obfuscatoR
* Date/Publication: 2019-08-01 14:00:06 UTC
* Number of recursive dependencies: 52

Run `revdep_details(,"obfuscatoR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rfast’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# omicplotR

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2019-11-13
* Number of recursive dependencies: 95

Run `revdep_details(,"omicplotR")` for more info

</details>

## In both

*   checking whether package ‘omicplotR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicplotR/new/omicplotR.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .github
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘omicplotR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘ALDEx2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘ALDEx2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘omicplotR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicplotR/new/omicplotR.Rcheck/omicplotR’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘omicplotR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘ALDEx2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘ALDEx2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘omicplotR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicplotR/old/omicplotR.Rcheck/omicplotR’

```
# omicsPrint

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 115

Run `revdep_details(,"omicsPrint")` for more info

</details>

## In both

*   checking whether package ‘omicsPrint’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicsPrint/new/omicsPrint.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘VariantAnnotation’
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘omicsPrint’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘omicsPrint’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicsPrint/new/omicsPrint.Rcheck/omicsPrint’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘omicsPrint’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘omicsPrint’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/omicsPrint/old/omicsPrint.Rcheck/omicsPrint’

```
# OptimalDesign

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/OptimalDesign
* URL: < http://www.iam.fmph.uniba.sk/design/ >
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 69

Run `revdep_details(,"OptimalDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'gurobi', 'slam'
    ```

# OUTRIDER

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/OUTRIDER
* URL: https://github.com/gagneurlab/OUTRIDER
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 175

Run `revdep_details(,"OUTRIDER")` for more info

</details>

## In both

*   checking whether package ‘OUTRIDER’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘OUTRIDER’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/OUTRIDER’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/old/OUTRIDER.Rcheck/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘OUTRIDER’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/old/OUTRIDER.Rcheck/OUTRIDER’

```
# pandaR

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 51

Run `revdep_details(,"pandaR")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      plot.panda
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    dFunction: no visible global function definition for ‘cor’
    importPandaMatlab: no visible global function definition for
      ‘read.delim’
    panda: no visible global function definition for ‘cor’
    panda: no visible global function definition for ‘aggregate’
    plot.panda: no visible global function definition for ‘hist’
    plotCommunityDetection: no visible global function definition for
      ‘title’
    plotZbyTF: no visible global function definition for ‘aggregate’
    prepResult: no visible global function definition for ‘pnorm’
    Undefined global functions or variables:
      aggregate cor hist pnorm read.delim title
    Consider adding
      importFrom("graphics", "hist", "title")
      importFrom("stats", "aggregate", "cor", "pnorm")
      importFrom("utils", "read.delim")
    to your NAMESPACE file.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'plot.panda':
      ‘plot.panda’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# PathoStat

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/PathoStat
* URL: https://github.com/mani2012/PathoStat
* BugReports: https://github.com/mani2012/PathoStat/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 192

Run `revdep_details(,"PathoStat")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# pcaMethods

<details>

* Version: 1.78.0
* Source code: https://github.com/cran/pcaMethods
* URL: https://github.com/hredestig/pcamethods
* BugReports: https://github.com/hredestig/pcamethods/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 40

Run `revdep_details(,"pcaMethods")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘ade4’ in Rd xrefs
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    svdImpute: no visible global function definition for ‘prcomp’
    svdPca: no visible global function definition for ‘prcomp’
    plot,pcaRes: no visible global function definition for ‘gray’
    plot,pcaRes: no visible global function definition for ‘barplot’
    plot,pcaRes: no visible global function definition for ‘legend’
    slplot,pcaRes: no visible global function definition for ‘par’
    slplot,pcaRes: no visible global function definition for ‘layout’
    slplot,pcaRes: no visible global function definition for ‘abline’
    slplot,pcaRes: no visible global function definition for ‘lines’
    Undefined global functions or variables:
      abline barplot cor cov gray layout legend lines median na.omit pairs
      par points prcomp qf rnorm runif setTxtProgressBar text
      txtProgressBar
    Consider adding
      importFrom("grDevices", "gray")
      importFrom("graphics", "abline", "barplot", "layout", "legend",
                 "lines", "pairs", "par", "points", "text")
      importFrom("stats", "cor", "cov", "median", "na.omit", "prcomp", "qf",
                 "rnorm", "runif")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# phosphonormalizer

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 40

Run `revdep_details(,"phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 141

Run `revdep_details(,"Pigengene")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    'select()' returned 1:1 mapping between keys and columns
    >      print(g1)
                 input          output1 output2
    NM_001159995 "NM_001159995" "NRG1"  "NRG1" 
    > 
    >      ## Mapping to multiple convention
    >      library(org.Mm.eg.db)
    >      g2 <- gene.mapping(ids=c("NM_170730", "NM_001013580"),
    +         inputType="REFSEQ", inputDb=org.Mm.eg.db,
    +         outputType=c("SYMBOL","ENTREZID"),
    +         outputDb=list(org.Hs.eg.db,org.Mm.eg.db), verbose=1)
    [1] "Mapping to:"
    [1] "org.Hs.eg.db-SYMBOL"
    'select()' returned 1:1 mapping between keys and columns
    Loading required package: biomaRt
    Error: package or namespace load failed for ‘biomaRt’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
     there is no package called ‘XML’
    Error in hu.mouse(verbose = verbose) : 
      biomaRt package is required by hu.mouse()!
    Calls: gene.mapping -> gene.mapping -> hu.mouse
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘AnnotationDbi’ ‘biomaRt’ ‘energy’ ‘org.Hs.eg.db’ ‘org.Mm.eg.db’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘Pigengene/R/bn.calculation.R’:
      assignInNamespace("supported.clusters", fixArgs, "bnlearn")
    ```

*   checking contents of ‘data’ directory ... NOTE
    ```
    Output for data("pigengene", package = "Pigengene"):
      
    ```

# PrecisionTrialDrawer

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/PrecisionTrialDrawer
* Date/Publication: 2020-01-06
* Number of recursive dependencies: 115

Run `revdep_details(,"PrecisionTrialDrawer")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ProteoMM

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 85

Run `revdep_details(,"ProteoMM")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# QDNAseq

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 70

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking whether package ‘QDNAseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/QDNAseq/new/QDNAseq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘QDNAseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘QDNAseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/QDNAseq/new/QDNAseq.Rcheck/QDNAseq’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘QDNAseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘QDNAseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/QDNAseq/old/QDNAseq.Rcheck/QDNAseq’

```
# r2dRue

<details>

* Version: 1.0.4
* Source code: https://github.com/cran/r2dRue
* Date/Publication: 2013-06-28 12:22:19
* Number of recursive dependencies: 4

Run `revdep_details(,"r2dRue")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘rgdal’ which was already attached by Depends.
      Please remove these calls from your code.
    Packages in Depends field not imported from:
      ‘matrixStats’ ‘rgdal’ ‘sp’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    rueObsMe: no visible global function definition for ‘readGDAL’
    rueObsMe: no visible global function definition for ‘setTxtProgressBar’
    showInfo: no visible global function definition for ‘head’
    solarRad: no visible global function definition for ‘is.projected’
    solarRad: no visible global function definition for ‘coordinates’
    solarRad12M: no visible global function definition for ‘writeGDAL’
    summarize: no visible global function definition for ‘writeGDAL’
    Undefined global functions or variables:
      GDAL.close GDAL.open GDALinfo abline axis.Date barplot boxplot
      coordinates cor density gdalDrivers head hist image is.projected
      layout layout.show lines na.omit pf plot pt read.table readGDAL rect
      rowCounts rowMedians rowRanges rowSds rowVars setTxtProgressBar
      spplot title txtProgressBar write.table writeGDAL
    Consider adding
      importFrom("graphics", "abline", "axis.Date", "barplot", "boxplot",
                 "hist", "image", "layout", "layout.show", "lines", "plot",
                 "rect", "title")
      importFrom("stats", "cor", "density", "na.omit", "pf", "pt")
      importFrom("utils", "head", "read.table", "setTxtProgressBar",
                 "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# randomizationInference

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/randomizationInference
* Date/Publication: 2015-01-09 07:58:52
* Number of recursive dependencies: 2

Run `revdep_details(,"randomizationInference")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    anovaF: no visible global function definition for ‘anova’
    anovaF: no visible global function definition for ‘lm’
    randInterval: no visible global function definition for ‘quantile’
    randInterval : <anonymous>: no visible global function definition for
      ‘quantile’
    randPlot: no visible global function definition for ‘par’
    randPlot: no visible global function definition for ‘hist’
    randPlot: no visible global function definition for ‘abline’
    Undefined global functions or variables:
      abline anova hist lm par quantile
    Consider adding
      importFrom("graphics", "abline", "hist", "par")
      importFrom("stats", "anova", "lm", "quantile")
    to your NAMESPACE file.
    ```

# RNAmodR

<details>

* Version: 1.0.2
* Source code: https://github.com/cran/RNAmodR
* URL: https://github.com/FelixErnst/RNAmodR
* BugReports: https://github.com/FelixErnst/RNAmodR/issues
* Date/Publication: 2020-01-12
* Number of recursive dependencies: 189

Run `revdep_details(,"RNAmodR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘biovizBase’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RnBeads

<details>

* Version: 2.4.0
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 233

Run `revdep_details(,"RnBeads")` for more info

</details>

## In both

*   checking whether package ‘RnBeads’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'XML', 'ggbio', 'GLAD'
    
    Depends: includes the non-default packages:
      'BiocGenerics', 'S4Vectors', 'GenomicRanges', 'MASS', 'cluster',
      'ff', 'fields', 'ggplot2', 'gplots', 'gridExtra', 'limma',
      'matrixStats', 'illuminaio', 'methylumi', 'plyr'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘RnBeads’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘RnBeads’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘RnBeads’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘RnBeads’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/old/RnBeads.Rcheck/RnBeads’

```
# RTransProb

<details>

* Version: 0.3.3
* Source code: https://github.com/cran/RTransProb
* Date/Publication: 2018-07-17 17:10:11 UTC
* Number of recursive dependencies: 74

Run `revdep_details(,"RTransProb")` for more info

</details>

## In both

*   checking whether package ‘RTransProb’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RTransProb/new/RTransProb.Rcheck/00install.out’ for details.
    ```

# scDblFinder

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/scDblFinder
* URL: https://github.com/plger/scDblFinder
* BugReports: https://github.com/plger/scDblFinder/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 105

Run `revdep_details(,"scDblFinder")` for more info

</details>

## In both

*   checking whether package ‘scDblFinder’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scDblFinder/new/scDblFinder.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scDblFinder’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘scDblFinder’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scDblFinder/new/scDblFinder.Rcheck/scDblFinder’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scDblFinder’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘scDblFinder’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scDblFinder/old/scDblFinder.Rcheck/scDblFinder’

```
# scmap

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/scmap
* URL: https://github.com/hemberg-lab/scmap
* BugReports: https://support.bioconductor.org/t/scmap/
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 81

Run `revdep_details(,"scmap")` for more info

</details>

## In both

*   checking whether package ‘scmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scmap’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c scmap.cpp -o scmap.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o scmap.so RcppExports.o scmap.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/00LOCK-scmap/00new/scmap/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘scmap’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/scmap’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scmap’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c scmap.cpp -o scmap.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o scmap.so RcppExports.o scmap.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scmap/old/scmap.Rcheck/00LOCK-scmap/00new/scmap/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘scmap’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scmap/old/scmap.Rcheck/scmap’

```
# scone

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/scone
* BugReports: https://github.com/YosefLab/scone/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 219

Run `revdep_details(,"scone")` for more info

</details>

## In both

*   checking whether package ‘scone’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/new/scone.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scone’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘scone’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/new/scone.Rcheck/scone’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘scone’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘scone’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/old/scone.Rcheck/scone’

```
# semtree

<details>

* Version: 0.9.14
* Source code: https://github.com/cran/semtree
* Date/Publication: 2020-01-07 22:00:02 UTC
* Number of recursive dependencies: 73

Run `revdep_details(,"semtree")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘OpenMx’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sesame

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/sesame
* URL: https://github.com/zwdzwd/sesame
* BugReports: https://github.com/zwdzwd/sesame/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 164

Run `revdep_details(,"sesame")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘sesame-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: DML
    > ### Title: Test differential methylation on each locus
    > ### Aliases: DML
    > 
    > ### ** Examples
    > 
    > data <- sesameDataGet('HM450.76.TCGA.matched')
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: sesameDataGet ... ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
       1. base::library(minfi)
       2. base::.getRequiredPackages2(pkgInfo, quietly = quietly)
       3. base::library(...)
       4. base::.getRequiredPackages2(pkgInfo, quietly = quietly)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 4 ]
      1. Error: test=background subtraction gives correct warning (@test_background.R#4) 
      2. Error: test='detectionP' gives correct errors (@test_detectionP.R#3) 
      3. Error: RGChannelSetToSigSet gives correct results (@test_sesamize.R#4) 
      4. Error: SigSetToRGChannelSet gives correct results (@test_sesamize.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# shinyMethyl

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 136

Run `revdep_details(,"shinyMethyl")` for more info

</details>

## In both

*   checking whether package ‘shinyMethyl’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘shinyMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/shinyMethyl’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘shinyMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/old/shinyMethyl.Rcheck/shinyMethyl’

```
# SIAMCAT

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 109

Run `revdep_details(,"SIAMCAT")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
            if (verbose > 0) 
                message("+++ Not adding any of the meta-variables as predictor", 
                    " to the feature matrix")
        }
        e.time <- proc.time()[3]
        if (verbose > 1) 
            message(paste("+ finished add.meta.pred in", formatC(e.time - 
                s.time, digits = 3), "s"))
        if (verbose == 1) 
            message("Adding metadata as predictor finished")
        return(siamcat)
    }
    <bytecode: 0x126dd4d8>
    <environment: namespace:SIAMCAT>
     --- function search by body ---
    Function add.meta.pred in namespace SIAMCAT has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in pred.names != "" && !is.null(pred.names) : 
      'length(x) = 2 > 1' in coercion to 'logical(1)'
    Calls: add.meta.pred
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 10 marked UTF-8 strings
    ```

# SICtools

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 39

Run `revdep_details(,"SICtools")` for more info

</details>

## In both

*   checking whether package ‘SICtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Rsamtools', 'doParallel', 'Biostrings', 'stringr', 'matrixStats',
      'plyr', 'GenomicRanges', 'IRanges'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf:168: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function ‘worker_aux’:
bgzf.c:392:9: warning: variable ‘tmp’ set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function ‘bgzf_close’:
bgzf.c:572:11: warning: variable ‘count’ set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function ‘resolve_cigar2’:
bam_pileup.c:75:9: warning: variable ‘is_head’ set but not used [-Wunused-but-set-variable]
  int k, is_head = 0;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_lpileup.c -o bam_lpileup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_md.c -o bam_md.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. razf.c -o razf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. faidx.c -o faidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedidx.c -o bedidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. knetfile.c -o knetfile.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_sort.c -o bam_sort.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_header.c -o sam_header.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_reheader.c -o bam_reheader.o
bam_reheader.c: In function ‘bam_reheader’:
bam_reheader.c:12:16: warning: variable ‘old’ set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function ‘kpa_glocal’:
kprobaln.c:78:21: warning: variable ‘is_diff’ set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function ‘bcf_fmt_core’:
bcf.c:233:9: warning: variable ‘iPL’ set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function ‘bcf_fit_alt’:
bcfutils.c:119:9: warning: variable ‘ipl’ set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function ‘bcf_em1’:
em.c:174:12: warning: variable ‘n2’ set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function ‘mpileup’:
bam_plcmd.c:333:28: warning: variable ‘ref16’ set but not used [-Wunused-but-set-variable]
    int total_depth, _ref0, ref16;
                            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_view.c -o sam_view.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdup.c -o bam_rmdup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdupse.c -o bam_rmdupse.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_mate.c -o bam_mate.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_stat.c -o bam_stat.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_color.c -o bam_color.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamtk.c -o bamtk.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kaln.c -o kaln.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf.c -o bam2bcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf_indel.c -o bam2bcf_indel.o
bam2bcf_indel.c: In function ‘bcf_call_gap_prep’:
bam2bcf_indel.c:121:28: warning: variable ‘query’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable ‘ref2’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable ‘ref_type’ set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable ‘score2’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable ‘score1’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function ‘main_cut_target’:
cut_target.c:137:36: warning: variable ‘lastpos’ set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
bam_tview_curses.c:5:20: fatal error: curses.h: No such file or directory
 #include <curses.h>
                    ^
compilation terminated.
make[1]: *** [bam_tview_curses.o] Error 1
make[1]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/SICtools’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf:168: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function ‘worker_aux’:
bgzf.c:392:9: warning: variable ‘tmp’ set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function ‘bgzf_close’:
bgzf.c:572:11: warning: variable ‘count’ set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function ‘resolve_cigar2’:
bam_pileup.c:75:9: warning: variable ‘is_head’ set but not used [-Wunused-but-set-variable]
  int k, is_head = 0;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_lpileup.c -o bam_lpileup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_md.c -o bam_md.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. razf.c -o razf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. faidx.c -o faidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedidx.c -o bedidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. knetfile.c -o knetfile.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_sort.c -o bam_sort.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_header.c -o sam_header.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_reheader.c -o bam_reheader.o
bam_reheader.c: In function ‘bam_reheader’:
bam_reheader.c:12:16: warning: variable ‘old’ set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function ‘kpa_glocal’:
kprobaln.c:78:21: warning: variable ‘is_diff’ set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function ‘bcf_fmt_core’:
bcf.c:233:9: warning: variable ‘iPL’ set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function ‘bcf_fit_alt’:
bcfutils.c:119:9: warning: variable ‘ipl’ set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function ‘bcf_em1’:
em.c:174:12: warning: variable ‘n2’ set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function ‘mpileup’:
bam_plcmd.c:333:28: warning: variable ‘ref16’ set but not used [-Wunused-but-set-variable]
    int total_depth, _ref0, ref16;
                            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_view.c -o sam_view.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdup.c -o bam_rmdup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdupse.c -o bam_rmdupse.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_mate.c -o bam_mate.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_stat.c -o bam_stat.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_color.c -o bam_color.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamtk.c -o bamtk.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kaln.c -o kaln.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf.c -o bam2bcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf_indel.c -o bam2bcf_indel.o
bam2bcf_indel.c: In function ‘bcf_call_gap_prep’:
bam2bcf_indel.c:121:28: warning: variable ‘query’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable ‘ref2’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable ‘ref_type’ set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable ‘score2’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable ‘score1’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function ‘main_cut_target’:
cut_target.c:137:36: warning: variable ‘lastpos’ set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
bam_tview_curses.c:5:20: fatal error: curses.h: No such file or directory
 #include <curses.h>
                    ^
compilation terminated.
make[1]: *** [bam_tview_curses.o] Error 1
make[1]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/SICtools’

```
# sindyr

<details>

* Version: 0.2.2
* Source code: https://github.com/cran/sindyr
* Date/Publication: 2019-08-07 21:10:02 UTC
* Number of recursive dependencies: 19

Run `revdep_details(,"sindyr")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘arrangements’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Single.mTEC.Transcriptomes

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2019-11-05
* Number of recursive dependencies: 151

Run `revdep_details(,"Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("dxdATAC", package = "Single.mTEC.Transcriptomes"):
      Warning: namespace ‘GenomicRanges’ is not available and has been replaced
      by .GlobalEnv when processing object ‘dxdATAC’
    Output for data("fantom", package = "Single.mTEC.Transcriptomes"):
      Warning: namespace ‘DESeq2’ is not available and has been replaced
      by .GlobalEnv when processing object ‘dxdFANTOM’
      Warning: namespace ‘GenomicRanges’ is not available and has been replaced
      by .GlobalEnv when processing object ‘dxdFANTOM’
    Output for data("mTECdxd", package = "Single.mTEC.Transcriptomes"):
      Warning: namespace ‘GenomicRanges’ is not available and has been replaced
      by .GlobalEnv when processing object ‘dxd’
    ```

*   checking data for non-ASCII characters ... WARNING
    ```
    ...
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error loading dataset 'dxd':
       Error in .requirePackage(package) : 
        unable to find required package 'DESeq2'
      
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error loading dataset 'dxdATAC':
       Error in .requirePackage(package) : 
        unable to find required package 'DESeq2'
      
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error loading dataset 'dxdFANTOM':
       Error in .requirePackage(package) : 
        unable to find required package 'DESeq2'
      
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error loading dataset 'geneRanges':
       Error in .requirePackage(package) : 
        unable to find required package 'GenomicRanges'
      
      The dataset(s) may use package(s) not declared in the DESCRIPTION file.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ggbio’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 764.7Mb
      sub-directories of 1Mb or more:
        data  764.6Mb
    ```

# singleCellTK

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/singleCellTK
* URL: https://compbiomed.github.io/sctk_docs/
* BugReports: https://github.com/compbiomed/singleCellTK/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 216

Run `revdep_details(,"singleCellTK")` for more info

</details>

## In both

*   checking whether package ‘singleCellTK’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singleCellTK/new/singleCellTK.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘singleCellTK’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘mouseBrainSubsetSCE’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘mouseBrainSubsetSCE’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘singleCellTK’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singleCellTK/new/singleCellTK.Rcheck/singleCellTK’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘singleCellTK’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘mouseBrainSubsetSCE’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘mouseBrainSubsetSCE’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘singleCellTK’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singleCellTK/old/singleCellTK.Rcheck/singleCellTK’

```
# singscore

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/singscore
* URL: https://davislaboratory.github.io/singscore
* BugReports: https://github.com/DavisLaboratory/singscore/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 120

Run `revdep_details(,"singscore")` for more info

</details>

## In both

*   checking whether package ‘singscore’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singscore/new/singscore.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘singscore’ ...
** using staged installation
It is recommended to use ‘given’ instead of ‘middle’.
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘tgfb_expr_10_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘tgfb_expr_10_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘toy_expr_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘toy_expr_se’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package ‘XML’ required by ‘annotate’ could not be found
Execution halted
ERROR: lazy loading failed for package ‘singscore’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singscore/new/singscore.Rcheck/singscore’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘singscore’ ...
** using staged installation
It is recommended to use ‘given’ instead of ‘middle’.
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘tgfb_expr_10_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘tgfb_expr_10_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘toy_expr_se’
Warning: namespace ‘SummarizedExperiment’ is not available and has been replaced
by .GlobalEnv when processing object ‘toy_expr_se’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package ‘XML’ required by ‘annotate’ could not be found
Execution halted
ERROR: lazy loading failed for package ‘singscore’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/singscore/old/singscore.Rcheck/singscore’

```
# slingshot

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/slingshot
* BugReports: https://github.com/kstreet13/slingshot/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 210

Run `revdep_details(,"slingshot")` for more info

</details>

## In both

*   checking whether package ‘slingshot’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/slingshot/new/slingshot.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘slingshot’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘slingshot’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/slingshot/new/slingshot.Rcheck/slingshot’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘slingshot’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘slingshot’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/slingshot/old/slingshot.Rcheck/slingshot’

```
# SMAD

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/SMAD
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 54

Run `revdep_details(,"SMAD")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘matrixStats’
      All declared Imports should be used.
    ```

# smerc

<details>

* Version: 1.1
* Source code: https://github.com/cran/smerc
* Date/Publication: 2019-09-19 09:00:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(,"smerc")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
        3. base::asNamespace(ns)
        4. base::getNamespace(ns)
        5. base::loadNamespace(name)
        8. base::loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]])
       10. base::loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]])
       11. base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       12. base:::withOneRestart(expr, restarts[[1L]])
       13. base:::doWithOneRestart(return(expr), restart)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 523 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test-bn.test.R#44) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# splatter

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/splatter
* URL: https://github.com/Oshlack/splatter
* BugReports: https://github.com/Oshlack/splatter/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 216

Run `revdep_details(,"splatter")` for more info

</details>

## In both

*   checking whether package ‘splatter’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/splatter/new/splatter.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘splatter’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘splatter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/splatter/new/splatter.Rcheck/splatter’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘splatter’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘splatter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/splatter/old/splatter.Rcheck/splatter’

```
# SRGnet

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/SRGnet
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 94

Run `revdep_details(,"SRGnet")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'EBcoexpress', 'MASS', 'igraph', 'pvclust', 'gbm', 'limma', 'DMwR',
      'matrixStats', 'Hmisc'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    SRGnet: no visible binding for global variable
      ‘Differentially_expressed_genes’
    SRGnet: no visible binding for global variable ‘Transcriptomics’
    SRGnet: no visible binding for global variable ‘PLCRG’
    SRGnet: no visible global function definition for ‘ebPatterns’
    SRGnet: no visible global function definition for ‘par’
    SRGnet: no visible global function definition for ‘boxplot’
    SRGnet: no visible global function definition for ‘plot’
    SRGnet: no visible global function definition for ‘predict’
    SRGnet: no visible global function definition for ‘terrain.colors’
    SRGnet: no visible global function definition for ‘na.omit’
    SRGnet: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      Differentially_expressed_genes PLCRG Transcriptomics boxplot
      ebPatterns na.omit par plot predict terrain.colors write.table
    Consider adding
      importFrom("grDevices", "terrain.colors")
      importFrom("graphics", "boxplot", "par", "plot")
      importFrom("stats", "na.omit", "predict")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

# staRdom

<details>

* Version: 1.1.3
* Source code: https://github.com/cran/staRdom
* URL: https://cran.r-project.org/package=staRdom
* BugReports: https://github.com/MatthiasPucher/staRdom/issues
* Date/Publication: 2020-01-28 11:20:02 UTC
* Number of recursive dependencies: 152

Run `revdep_details(,"staRdom")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘xlsx’
    ```

# stm

<details>

* Version: 1.3.5
* Source code: https://github.com/cran/stm
* URL: http://structuraltopicmodel.com
* BugReports: https://github.com/bstewart/stm/issues
* Date/Publication: 2019-12-17 12:50:02 UTC
* Number of recursive dependencies: 113

Run `revdep_details(,"stm")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ....................................................................................................
      Completed Group 2 E-Step (1 seconds). 
      Completed M-Step. 
      Model Terminated Before Convergence Reached 
      ── 1. Error: plot.STM doesn't throw error  (@test-visualize.R#4)  ──────────────
      cannot open the connection to 'http://goo.gl/VPdxlS'
      Backtrace:
       1. base::load(url("http://goo.gl/VPdxlS"))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 9 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: plot.STM doesn't throw error  (@test-visualize.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘stmVignette.Rnw’using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘stmVignette.Rnw’
      ...
    [2,]    1    1    1
    
    
    > load(url("http://goo.gl/VPdxlS"))
    Warning in load(url("http://goo.gl/VPdxlS")) :
      URL 'http://goo.gl/VPdxlS': status was 'Couldn't resolve host name'
    
      When sourcing 'stmVignette.R':
    Error: cannot open the connection to 'http://goo.gl/VPdxlS'
    Execution halted
    ```

# STROMA4

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 12

Run `revdep_details(,"STROMA4")` for more info

</details>

## Newly fixed

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: assign.properties
    > ### Title: Function to assign properties to an expression matrix
    > ### Aliases: assign.properties
    > 
    > ### ** Examples
    > 
    > library(breastCancerMAINZ)
    > data(mainz, package='breastCancerMAINZ')
    > all.properties <- assign.properties(ESet=mainz, geneID.column='Gene.symbol',
    + 	genelists=c('Stroma4', 'TNBCType'), n=10)
    --Assigning properties to expression data--
    --There are duplicated genes. Using most variable to collapse--
    ----206 out of 297 total genes matching for D.stroma.property----
    ----1064 out of 1105 total genes matching for MSL.property----
    Warning in socketConnection(port = port, server = TRUE, blocking = TRUE,  :
      port 11347 cannot be opened
    Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Calls: assign.properties ... <Anonymous> -> <Anonymous> -> newSOCKnode -> socketConnection
    Execution halted
    ```

## In both

*   checking running R code from vignettes ...
    ```
      ‘STROMA4-vignette.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘STROMA4-vignette.Rnw’
      ...
    
    > if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
    Installing package into ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
    (as ‘lib’ is unspecified)
    
      When sourcing ‘STROMA4-vignette.R’:
    Error: trying to use CRAN without setting a mirror
    Execution halted
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘BiocManager’
    ```

# summarytools

<details>

* Version: 0.9.5
* Source code: https://github.com/cran/summarytools
* URL: https://github.com/dcomtois/summarytools
* BugReports: https://github.com/dcomtois/summarytools/issues
* Date/Publication: 2020-02-10 18:50:03 UTC
* Number of recursive dependencies: 73

Run `revdep_details(,"summarytools")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘magick’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# SuperPCA

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/SuperPCA
* Date/Publication: 2019-05-24 14:10:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"SuperPCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.matlab’ ‘fBasics’ ‘spls’
      All declared Imports should be used.
    ```

# sva

<details>

* Version: 3.34.0
* Source code: https://github.com/cran/sva
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 79

Run `revdep_details(,"sva")` for more info

</details>

## In both

*   checking whether package ‘sva’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘sva’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c sva.c -o sva.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o sva.so sva.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/00LOCK-sva/00new/sva/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘genefilter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘sva’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/sva’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘sva’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c sva.c -o sva.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o sva.so sva.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/sva/old/sva.Rcheck/00LOCK-sva/00new/sva/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘genefilter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘sva’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/sva/old/sva.Rcheck/sva’

```
# target

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/target
* URL: https://github.com/MahShaaban/target
* BugReports: https://github.com/MahShaaban/target/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 81

Run `revdep_details(,"target")` for more info

</details>

## In both

*   checking whether package ‘target’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/target/new/target.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘target’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘target’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/target/new/target.Rcheck/target’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘target’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘target’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/target/old/target.Rcheck/target’

```
# TCA

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/TCA
* URL: https://www.nature.com/articles/s41467-019-11052-9
* BugReports: https://github.com/cozygene/TCA/issues
* Date/Publication: 2019-11-16 17:10:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(,"TCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘glmnet’ ‘quadprog’
      All declared Imports should be used.
    ```

# tenXplore

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/tenXplore
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 114

Run `revdep_details(,"tenXplore")` for more info

</details>

## In both

*   checking whether package ‘tenXplore’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/tenXplore/new/tenXplore.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘tenXplore’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘tenXplore’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/tenXplore/new/tenXplore.Rcheck/tenXplore’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘tenXplore’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘tenXplore’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/tenXplore/old/tenXplore.Rcheck/tenXplore’

```
# TOAST

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/TOAST
* BugReports: https://github.com/ziyili20/TOAST/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 57

Run `revdep_details(,"TOAST")` for more info

</details>

## In both

*   checking whether package ‘TOAST’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TOAST/new/TOAST.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘TOAST’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TOAST’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TOAST/new/TOAST.Rcheck/TOAST’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘TOAST’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TOAST’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TOAST/old/TOAST.Rcheck/TOAST’

```
# topGO

<details>

* Version: 2.38.1
* Source code: https://github.com/cran/topGO
* Date/Publication: 2019-12-16
* Number of recursive dependencies: 41

Run `revdep_details(,"topGO")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
        nd <- nodes(object)
        if (is.character(index)) 
            index <- match(index, nd)
        if (is.na(index) || index < 0 || index > length(nd)) 
            stop("vertex is not in graph: ", sQuote(initI))
        edges(object)[index]
    }
    <bytecode: 0x333dd30>
    <environment: namespace:graph>
    
    Signatures:
            object     index      
    target  "graphNEL" "character"
    defined "graphNEL" "ANY"      
     --- function search by body ---
    S4 Method adj:graph defined in namespace graph with signature graphNEL#ANY has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in is.na(index) || index < 0 : 
      'length(x) = 590 > 1' in coercion to 'logical(1)'
    Calls: runTest ... buildLevels -> getGraphRoot -> sapply -> adj -> adj
    Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘topGO.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘topGO.Rnw’
      ...
            object     index      
    target  "graphNEL" "character"
    defined "graphNEL" "ANY"      
     --- function search by body ---
    S4 Method adj:graph defined in namespace graph with signature graphNEL#ANY has this body.
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘topGO.R’:
    Error: 'length(x) = 4545 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics', 'graph', 'Biobase', 'GO.db', 'AnnotationDbi',
      'SparseM'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘Rgraphviz’ ‘multtest’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unavailable namespace imported from by a ':::' call: ‘globaltest’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    GOplot.counts : plotSigChart: no visible global function definition for
      ‘getY’
    GOplot.counts: no visible global function definition for
      ‘getDefaultAttrs’
    GOplot.counts: no visible global function definition for ‘agopen’
    getPvalues: no visible global function definition for ‘mt.teststat’
    getPvalues: no visible global function definition for ‘mt.rawp2adjp’
    printDOT: no visible global function definition for ‘getDefaultAttrs’
    printDOT: no visible global function definition for ‘toDot’
    GOSumTest,classicScore: no visible binding for global variable
      ‘.PERMSUM.MAT’
    GOSumTest,classicScore: no visible binding for global variable
      ‘.PERMSUM.LOOKUP’
    initialize,classicExpr: no visible global function definition for
      ‘error’
    scoresInTerm,topGOdata-missing: no visible global function definition
      for ‘scoreInNode’
    Undefined global functions or variables:
      .PERMSUM.LOOKUP .PERMSUM.MAT AgNode agopen drawTxtLabel error
      getDefaultAttrs getNodeCenter getNodeLW getNodeXY getX getY
      mt.rawp2adjp mt.teststat name pieGlyph scoreInNode toDot txtLabel
    ```

# treeHMM

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 10

Run `revdep_details(,"treeHMM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# ttScreening

<details>

* Version: 1.6
* Source code: https://github.com/cran/ttScreening
* Date/Publication: 2018-10-11 22:00:02 UTC
* Number of recursive dependencies: 47

Run `revdep_details(,"ttScreening")` for more info

</details>

## In both

*   checking whether package ‘ttScreening’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ttScreening/new/ttScreening.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ttScreening’ ...
** package ‘ttScreening’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘genefilter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ttScreening’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ttScreening/new/ttScreening.Rcheck/ttScreening’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘ttScreening’ ...
** package ‘ttScreening’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘genefilter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ttScreening’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ttScreening/old/ttScreening.Rcheck/ttScreening’

```
# tximport

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/tximport
* URL: https://github.com/mikelove/tximport
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 149

Run `revdep_details(,"tximport")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘csaw’
    ```

# VanillaICE

<details>

* Version: 1.48.0
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 71

Run `revdep_details(,"VanillaICE")` for more info

</details>

## In both

*   checking whether package ‘VanillaICE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/VanillaICE/new/VanillaICE.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘VanillaICE’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c rinit.c -o rinit.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c viterbi.c -o viterbi.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o VanillaICE.so rinit.o viterbi.o -lm -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/VanillaICE/new/VanillaICE.Rcheck/00LOCK-VanillaICE/00new/VanillaICE/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘VanillaICE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/VanillaICE/new/VanillaICE.Rcheck/VanillaICE’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘VanillaICE’ ...
** using staged installation
** libs
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c rinit.c -o rinit.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c viterbi.c -o viterbi.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o VanillaICE.so rinit.o viterbi.o -lm -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/VanillaICE/old/VanillaICE.Rcheck/00LOCK-VanillaICE/00new/VanillaICE/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘VanillaICE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/VanillaICE/old/VanillaICE.Rcheck/VanillaICE’

```
# wateRmelon

<details>

* Version: 1.30.0
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 147

Run `revdep_details(,"wateRmelon")` for more info

</details>

## In both

*   checking whether package ‘wateRmelon’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/new/wateRmelon.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase', 'limma', 'matrixStats', 'methylumi', 'lumi', 'ROC',
      'IlluminaHumanMethylation450kanno.ilmn12.hg19', 'illuminaio'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘wateRmelon’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘wateRmelon’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/new/wateRmelon.Rcheck/wateRmelon’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘wateRmelon’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘wateRmelon’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/old/wateRmelon.Rcheck/wateRmelon’

```
# Wrench

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/Wrench
* URL: https://github.com/HCBravoLab/Wrench
* BugReports: https://github.com/HCBravoLab/Wrench/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 122

Run `revdep_details(,"Wrench")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    The following object is masked from ‘package:Matrix’:
    
        expand
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomicRanges
    Loading required package: GenomeInfoDb
    Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘RCurl’
    Failed with error:  ‘package ‘GenomeInfoDb’ could not be loaded’
    > deseq.obj <- DESeqDataSetFromMatrix(countData = cntsMatrix,
    +                                    DataFrame(group),
    +                                    ~ group )
    Error in DESeqDataSetFromMatrix(countData = cntsMatrix, DataFrame(group),  : 
      could not find function "DESeqDataSetFromMatrix"
    Execution halted
    ```

# XBSeq

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/XBSeq
* URL: https://github.com/Liuy12/XBSeq
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 129

Run `revdep_details(,"XBSeq")` for more info

</details>

## In both

*   checking whether package ‘XBSeq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘XBSeq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘XBSeq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/XBSeq’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘XBSeq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘XBSeq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/old/XBSeq.Rcheck/XBSeq’

```
# yarn

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/yarn
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 154

Run `revdep_details(,"yarn")` for more info

</details>

## In both

*   checking whether package ‘yarn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘yarn’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/yarn’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘yarn’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/old/yarn.Rcheck/yarn’

```
# zinbwave

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/zinbwave
* BugReports: https://github.com/drisso/zinbwave/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 207

Run `revdep_details(,"zinbwave")` for more info

</details>

## In both

*   checking whether package ‘zinbwave’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/zinbwave/new/zinbwave.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘zinbwave’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘zinbwave’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/zinbwave/new/zinbwave.Rcheck/zinbwave’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘zinbwave’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error: package ‘GenomeInfoDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘zinbwave’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/zinbwave/old/zinbwave.Rcheck/zinbwave’

```
