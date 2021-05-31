# clusterExperiment

<details>

* Version: 2.12.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 181

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.7Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   3.6Mb
        doc   10.4Mb
        libs   1.9Mb
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function calls to a different package:
      .C(ape::node_depth, ...)
      .C(ape::node_depth_edgelength, ...)
      .C(ape::node_height, ...)
      .C(ape::node_height_clado, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# GeneTonic

<details>

* Version: 1.4.0
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 198

Run `revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking whether package ‘GeneTonic’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/GeneTonic/new/GeneTonic.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GeneTonic’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘bs4TabPanel’ is not exported by 'namespace:bs4Dash'
Execution halted
ERROR: lazy loading failed for package ‘GeneTonic’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/GeneTonic/new/GeneTonic.Rcheck/GeneTonic’


```
### CRAN

```
* installing *source* package ‘GeneTonic’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘bs4TabPanel’ is not exported by 'namespace:bs4Dash'
Execution halted
ERROR: lazy loading failed for package ‘GeneTonic’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/GeneTonic/old/GeneTonic.Rcheck/GeneTonic’


```
# regsem

<details>

* Version: 1.6.2
* GitHub: NA
* Source code: https://github.com/cran/regsem
* Date/Publication: 2020-10-01 17:00:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "regsem")` for more info

</details>

## In both

*   checking whether package ‘regsem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘semPlot’
    ```

## Installation

### Devel

```
* installing *source* package ‘regsem’ ...
** package ‘regsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -I/software/c4/cbi/software/geos-3.9.1/include -I/software/c4/cbi/software/gdal-2.4.4/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘regsem’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so':
  /c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so: undefined symbol: regsem_rcpp_fit_fun
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/regsem’


```
### CRAN

```
* installing *source* package ‘regsem’ ...
** package ‘regsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -I/software/c4/cbi/software/geos-3.9.1/include -I/software/c4/cbi/software/gdal-2.4.4/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc7/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/regsem/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘regsem’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so':
  /c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so: undefined symbol: regsem_rcpp_fit_fun
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/regsem’


```
