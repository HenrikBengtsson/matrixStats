# clusterExperiment

<details>

* Version: 2.6.1
* Source code: https://github.com/cran/clusterExperiment
* BugReports: https://github.com/epurdom/clusterExperiment/issues
* Date/Publication: 2019-11-06
* Number of recursive dependencies: 182

Run `revdep_details(,"clusterExperiment")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc   6.4Mb
    ```

## In both

*   R CMD check timed out
    

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
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
    Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
    ```

# DeepBlueR

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 154

Run `revdep_details(,"DeepBlueR")` for more info

</details>

## In both

*   checking whether package ‘DeepBlueR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DeepBlueR’ ...
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00_pkg_src/DeepBlueR: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Called method: deepblue_list_column_types
Reported status was: okay
status 
 "417" 
Error in xml.rpc(deepblue_options("url"), "info", id, user_key) : 
  Problems
Error: unable to load R code in package ‘DeepBlueR’
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/DeepBlueR’

```
### CRAN

```
* installing *source* package ‘DeepBlueR’ ...
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/00_pkg_src/DeepBlueR: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Called method: deepblue_list_column_types
Reported status was: okay
status 
 "417" 
Error in xml.rpc(deepblue_options("url"), "info", id, user_key) : 
  Problems
Error: unable to load R code in package ‘DeepBlueR’
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

```
# MethylAid

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 163

Run `revdep_details(,"MethylAid")` for more info

</details>

## In both

*   R CMD check timed out
    

# regsem

<details>

* Version: 1.5.2
* Source code: https://github.com/cran/regsem
* Date/Publication: 2020-02-19 12:00:03 UTC
* Number of recursive dependencies: 162

Run `revdep_details(,"regsem")` for more info

</details>

## In both

*   checking whether package ‘regsem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘regsem’ ...
** package ‘regsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -I/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -L/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/lib -o regsem.so RcppExports.o regsem_init.o regsem_rcpp_RAMmult.o regsem_rcpp_fit_fun.o regsem_rcpp_grad_ram.o regsem_rcpp_quasi_calc.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00_pkg_src/regsem: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00_pkg_src/regsem: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘regsem’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so':
  /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so: undefined symbol: regsem_rcpp_fit_fun
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/new/regsem.Rcheck/regsem’

```
### CRAN

```
* installing *source* package ‘regsem’ ...
** package ‘regsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -I/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/Rcpp/include" -I"/scratch/788857.1.long.q/tmp.xGo5yP0ank/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -L/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/lib -o regsem.so RcppExports.o regsem_init.o regsem_rcpp_RAMmult.o regsem_rcpp_fit_fun.o regsem_rcpp_grad_ram.o regsem_rcpp_quasi_calc.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00_pkg_src/regsem: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00_pkg_src/regsem: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘regsem’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so':
  /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/00LOCK-regsem/00new/regsem/libs/regsem.so: undefined symbol: regsem_rcpp_fit_fun
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/regsem/old/regsem.Rcheck/regsem’

```
# RNAmodR

<details>

* Version: 1.0.2
* Source code: https://github.com/cran/RNAmodR
* URL: https://github.com/FelixErnst/RNAmodR
* BugReports: https://github.com/FelixErnst/RNAmodR/issues
* Date/Publication: 2020-01-12
* Number of recursive dependencies: 190

Run `revdep_details(,"RNAmodR")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'BiocGenerics:::replaceSlots' 'IRanges:::.valid.CompressedList'
      'IRanges:::coerceToCompressedList' 'S4Vectors:::.valid.DataFrame'
      'S4Vectors:::labeledLine' 'S4Vectors:::make_zero_col_DataFrame'
      'S4Vectors:::prepare_objects_to_bind'
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      '.get_inosine_score'
    ```

