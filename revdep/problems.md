# abcrf

Version: 1.7.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   2.5Mb
    ```

# adjclust

Version: 0.5.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rioja’
    ```

# amplican

Version: 1.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ggforce’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# antiProfiles

Version: 1.20.0

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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Computing sds
    Computing ranges
    Computing tissue specificity
    Computing normal tissue outside ranges
    Making probe data frame
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'antiProfiles.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.13 \usepackage
                    [numbers]{natbib}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.10.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# BASiCS

Version: 1.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘scran’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# BatchQC

Version: 1.8.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘MCMCpack’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# BayesTwin

Version: 1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# baystability

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggfortify’ ‘ggplot2’ ‘matrixStats’ ‘reshape2’ ‘scales’
      All declared Imports should be used.
    ```

# bdynsys

Version: 1.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘plm’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# bingat

Version: 1.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘vegan’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# bnbc

Version: 1.2.0

## In both

*   checking whether package ‘bnbc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bnbc’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -shared -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/bnbc/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/bnbc’

```
### CRAN

```
* installing *source* package ‘bnbc’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -shared -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/bnbc/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/bnbc’

```
# brms

Version: 2.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'brms_multilevel.ltx' failed with diagnostics:
    Running 'texi2dvi' on 'brms_multilevel.ltx' failed.
    LaTeX errors:
    ! LaTeX Error: File `inconsolata.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.47 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R     3.5Mb
        doc   2.4Mb
    ```

# bumphunter

Version: 1.22.0

## In both

*   checking whether package ‘bumphunter’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘foreach’
      ‘iterators’ ‘parallel’ ‘locfit’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
* installing *source* package ‘bumphunter’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/bumphunter’

```
### CRAN

```
* installing *source* package ‘bumphunter’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bumphunter/old/bumphunter.Rcheck/bumphunter’

```
# carx

Version: 0.7.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘tmvtnorm’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# cellWise

Version: 2.0.10

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 120-122 (DDC_examples.Rmd) 
    Error: processing vignette 'DDC_examples.Rmd' failed with diagnostics:
    there is no package called 'robustHD'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘robustHD’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        libs   5.5Mb
    ```

# CHARGE

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘FactoMineR’ ‘factoextra’
    
    Package suggested but not available for checking: ‘EnsDb.Hsapiens.v86’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Chicago

Version: 1.8.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ##create a temporary directory, export output there
    > tempDirectory <- tempdir()
    > print(tempDirectory)
    [1] "/scratch/hb/RtmpUQjstJ"
    > exportResults(cdUnitTest, outfileprefix = file.path(tempDirectory, "unitTestOutput"))
    Reading the restriction map file...
    Reading the bait map file...
    Preparing the output table...
    Writing out for seqMonk...
    Writing out interBed...
    Preprocessing for WashU outputs...
    Writing out text file for WashU browser upload...
    > 
    > GI <- exportToGI(cdUnitTest)
    Reading the restriction map file...
    Reading the bait map file...
    Preparing the output table...
    Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
      there is no package called ‘RCurl’
    Calls: exportToGI ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘PCHiCdata’, ‘GenomicInteractions’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: data.table
    
    Welcome to CHiCAGO - version 1.8.0
    If you are new to CHiCAGO, please consider reading the vignette through the command: vignette("Chicago").
    NOTE: Default values of tlb.minProxOEPerBin and tlb.minProxB2BPerBin changed as of Version 1.1.5. No action is required unless you specified non-default values, or wish to re-run the pipeline on old chicagoData objects. See news(package="Chicago")
    Quitting from lines 44-46 (Chicago.Rmd) 
    Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
    there is no package called 'PCHiCdata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘PCHiCdata’ ‘GenomicInteractions’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# chromswitch

Version: 1.2.1

## In both

*   checking whether package ‘chromswitch’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘chromswitch’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/chromswitch’

```
### CRAN

```
* installing *source* package ‘chromswitch’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/chromswitch/old/chromswitch.Rcheck/chromswitch’

```
# cifti

Version: 0.4.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘covr’
    ```

# Clomial

Version: 1.16.0

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

Version: 2.0.2

## In both

*   checking whether package ‘clusterExperiment’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MAST’
    ```

## Installation

### Devel

```
* installing *source* package ‘clusterExperiment’ ...
** libs
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c search_pairs.cpp -o search_pairs.o
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c subsampleLoop.cpp -o subsampleLoop.o
g++ -std=gnu++11 -shared -L/usr/local/lib64 -o clusterExperiment.so RcppExports.o search_pairs.o subsampleLoop.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/clusterExperiment/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘clusterExperiment’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/clusterExperiment’

```
### CRAN

```
* installing *source* package ‘clusterExperiment’ ...
** libs
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c search_pairs.cpp -o search_pairs.o
g++ -std=gnu++11 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/clusterExperiment/Rcpp/include" -I/usr/local/include   -fpic  -g -O2 -c subsampleLoop.cpp -o subsampleLoop.o
g++ -std=gnu++11 -shared -L/usr/local/lib64 -o clusterExperiment.so RcppExports.o search_pairs.o subsampleLoop.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/clusterExperiment/old/clusterExperiment.Rcheck/clusterExperiment/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘clusterExperiment’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/clusterExperiment/old/clusterExperiment.Rcheck/clusterExperiment’

```
# cna

Version: 2.1.1

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'cna_vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `nicefrac.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.12 \usepackage
                    {float}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# CNPBayes

Version: 1.10.0

## In both

*   checking whether package ‘CNPBayes’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BiocCheck’
    ```

## Installation

### Devel

```
* installing *source* package ‘CNPBayes’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c miscfunctions.cpp -o miscfunctions.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch.cpp -o multibatch.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_pooledvar.cpp -o multibatch_pooledvar.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_pooledvar_reduced.cpp -o multibatch_pooledvar_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_reduced.cpp -o multibatch_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch.cpp -o singlebatch.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_pooledvar.cpp -o singlebatch_pooledvar.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_pooledvar_reduced.cpp -o singlebatch_pooledvar_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_reduced.cpp -o singlebatch_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update.cpp -o update.o
g++ -shared -L/usr/local/lib64 -o CNPBayes.so RcppExports.o miscfunctions.o multibatch.o multibatch_pooledvar.o multibatch_pooledvar_reduced.o multibatch_reduced.o singlebatch.o singlebatch_pooledvar.o singlebatch_pooledvar_reduced.o singlebatch_reduced.o update.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/CNPBayes/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘CNPBayes’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/CNPBayes/new/CNPBayes.Rcheck/CNPBayes’

```
### CRAN

```
* installing *source* package ‘CNPBayes’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c miscfunctions.cpp -o miscfunctions.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch.cpp -o multibatch.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_pooledvar.cpp -o multibatch_pooledvar.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_pooledvar_reduced.cpp -o multibatch_pooledvar_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c multibatch_reduced.cpp -o multibatch_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch.cpp -o singlebatch.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_pooledvar.cpp -o singlebatch_pooledvar.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_pooledvar_reduced.cpp -o singlebatch_pooledvar_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c singlebatch_reduced.cpp -o singlebatch_reduced.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/CNPBayes/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update.cpp -o update.o
g++ -shared -L/usr/local/lib64 -o CNPBayes.so RcppExports.o miscfunctions.o multibatch.o multibatch_pooledvar.o multibatch_pooledvar_reduced.o multibatch_reduced.o singlebatch.o singlebatch_pooledvar.o singlebatch_pooledvar_reduced.o singlebatch_reduced.o update.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/CNPBayes/old/CNPBayes.Rcheck/CNPBayes/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘CNPBayes’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/CNPBayes/old/CNPBayes.Rcheck/CNPBayes’

```
# consensusOV

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘GSVA’ ‘genefu’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# CopywriteR

Version: 2.12.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘chipseq’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# cosinor2

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    ...
           25        26        27        28        29        30 
    1.6250000 1.3815789 1.2894737 1.3333333 1.1710526 0.8088235 
    
    $cosinors[[17]]$fitted.values
     [1] 0.9751600 1.3201375 1.6020512 1.6086144 1.3348849 0.9869865 0.8268939
     [8] 0.9751600 1.3201375 1.6020512 1.6086144 1.3348849 0.9869865 0.8268939
    
    $cosinors[[17]]$residuals
              17           18           19           20           21           22 
     0.372062185 -0.099549245 -0.129828980  0.030274467  0.408536153  0.061624562 
              23           24           25           26           27           28 
    -0.368560591 -0.113317932  0.304862520 -0.220472255 -0.319140737 -0.001551566 
              29           30 
     0.184066083 -0.018070395 
    
    
    
    $plots
    $plots[[1]]
    Error: Column `y` must be a 1d atomic vector or a list
    Execution halted
    ```

# crlmm

Version: 1.38.0

## In both

*   checking whether package ‘crlmm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GGdata’
    ```

## Installation

### Devel

```
* installing *source* package ‘crlmm’ ...
** libs
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c gtypeCaller.c -o gtypeCaller.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c trimmed.c -o trimmed.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c utils.c -o utils.o
gcc -std=gnu99 -shared -L/usr/local/lib64 -o crlmm.so gtypeCaller.o init.o trimmed.o utils.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/crlmm/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘oligoClasses’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘oligoClasses’ could not be loaded
ERROR: lazy loading failed for package ‘crlmm’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/crlmm/new/crlmm.Rcheck/crlmm’

```
### CRAN

```
* installing *source* package ‘crlmm’ ...
** libs
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c gtypeCaller.c -o gtypeCaller.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c trimmed.c -o trimmed.o
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/crlmm/preprocessCore/include" -I/usr/local/include   -fpic  -g -O2  -c utils.c -o utils.o
gcc -std=gnu99 -shared -L/usr/local/lib64 -o crlmm.so gtypeCaller.o init.o trimmed.o utils.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/crlmm/old/crlmm.Rcheck/crlmm/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘oligoClasses’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘oligoClasses’ could not be loaded
ERROR: lazy loading failed for package ‘crlmm’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/crlmm/old/crlmm.Rcheck/crlmm’

```
# crossmeta

Version: 1.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ccmap’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DAMOCLES

Version: 1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘picante’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DatabionicSwarm

Version: 1.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ProjectionBasedClustering’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        doc    4.5Mb
        libs   5.7Mb
    ```

# DeepBlueR

Version: 1.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘XML’ ‘RCurl’
    
    Package suggested but not available for checking: ‘Gviz’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DelayedArray

Version: 0.6.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run_unitTests.R’ failed.
    Last 13 lines of output:
      
      The following objects are masked from 'package:matrixStats':
      
          colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
      
      The following objects are masked from 'package:base':
      
          aperm, apply
      
      [1] TRUE
      > DelayedArray:::.test()
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> <Anonymous> -> library
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

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘blockApply’ ‘currentBlockId’ ‘currentViewport’ ‘defaultGrid’
      ‘effectiveGrid’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in system(sprintf("%s %s.sty", kpsewhich(), name), intern = TRUE) :
      running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Quitting from lines 35-45 (01-Working_with_large_arrays.Rnw) 
    Error: processing vignette '01-Working_with_large_arrays.Rnw' failed with diagnostics:
    package 'GenomeInfoDb' could not be loaded
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘stats4’ ‘matrixStats’ ‘BiocGenerics’ ‘S4Vectors’ ‘IRanges’
      ‘BiocParallel’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘BiocGenerics:::testPackage’
      ‘S4Vectors:::anyMissing’ ‘S4Vectors:::anyMissingOrOutside’
      ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::extract_positions_from_Rle’ ‘S4Vectors:::sapply_isNULL’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    block_MAPPLY: no visible binding for global variable ‘x’
    Undefined global functions or variables:
      x
    ```

# DelayedMatrixStats

Version: 1.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘covr’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing objects imported by ':::' calls:
      ‘DelayedArray:::.execute_delayed_ops’
      ‘DelayedArray:::get_Nindex_names_along’
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.as_array_or_matrix’ ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::extract_block’ ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_max_block_length’
      ‘DelayedArray:::get_spacings_for_capped_length_blocks’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::set_dim’ ‘DelayedArray:::set_dimnames’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# detrendr

Version: 0.5.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘ijtiff’ ‘autothresholdr’
    
    Package suggested but not available for checking: ‘covr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DGCA

Version: 1.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘WGCNA’
    
    Packages suggested but not available for checking: ‘GOstats’ ‘MEGENA’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# diffloop

Version: 1.8.0

## In both

*   checking whether package ‘diffloop’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/00install.out’ for details.
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
* installing *source* package ‘diffloop’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘diffloop’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/diffloop’

```
### CRAN

```
* installing *source* package ‘diffloop’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘diffloop’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/diffloop/old/diffloop.Rcheck/diffloop’

```
# dmrseq

Version: 1.0.13

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘annotatr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Doscheda

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘drc’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# dplR

Version: 1.6.8

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    Package suggested but not available for checking: ‘gmp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DPWeibull

Version: 1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘truncdist’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# dtree

Version: 0.4.2

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘party’ ‘evtree’ ‘partykit’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# EasyqpcR

Version: 1.21.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    Packages suggested but not available for checking: ‘qpcrNorm’ ‘qpcR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

# EMDomics

Version: 2.10.0

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

# EnrichedHeatmap

Version: 1.10.0

## In both

*   checking whether package ‘EnrichedHeatmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EnrichedHeatmap’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c dist_by_closeness.cpp -o dist_by_closeness.o
g++ -shared -L/usr/local/lib64 -o EnrichedHeatmap.so RcppExports.o dist_by_closeness.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/EnrichedHeatmap/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘EnrichedHeatmap’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/new/EnrichedHeatmap.Rcheck/EnrichedHeatmap’

```
### CRAN

```
* installing *source* package ‘EnrichedHeatmap’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/EnrichedHeatmap/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c dist_by_closeness.cpp -o dist_by_closeness.o
g++ -shared -L/usr/local/lib64 -o EnrichedHeatmap.so RcppExports.o dist_by_closeness.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/old/EnrichedHeatmap.Rcheck/EnrichedHeatmap/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘EnrichedHeatmap’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/EnrichedHeatmap/old/EnrichedHeatmap.Rcheck/EnrichedHeatmap’

```
# eseis

Version: 0.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgdal’ ‘fftw’ ‘XML’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# estudy2

Version: 0.8.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    'getSymbols' currently uses auto.assign=TRUE by default, but will
    use auto.assign=FALSE in 0.5-0. You will still be able to use
    'loadSymbols' to automatically load data. getOption("getSymbols.env")
    and getOption("getSymbols.auto.assign") will still be checked for
    alternate defaults.
    
    This message is shown once per session and may be disabled by setting 
    options("getSymbols.warning4.0"=FALSE). See ?getSymbols for details.
    
    
    WARNING: There have been significant changes to Yahoo Finance data.
    Please see the Warning section of '?getSymbols.yahoo' for details.
    
    This message is shown once per session and may be disabled by setting
    options("getSymbols.yahoo.warning"=FALSE).
    Quitting from lines 56-64 (estudy2-intro.Rmd) 
    Error: processing vignette 'estudy2-intro.Rmd' failed with diagnostics:
    Could not resolve host: finance.yahoo.com; Name or service not known
    Execution halted
    ```

# EventPointer

Version: 1.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RBGL’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# FADA

Version: 1.3.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘sda’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# FastHCS

Version: 0.0.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  15.0Mb
    ```

# FastPCS

Version: 0.1.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

# FastRCS

Version: 0.0.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.7Mb
      sub-directories of 1Mb or more:
        libs  16.6Mb
    ```

# FDb.FANTOM4.promoters.hg19

Version: 1.0.0

## In both

*   checking whether package ‘FDb.FANTOM4.promoters.hg19’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    ```

## Installation

### Devel

```
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘FDb.FANTOM4.promoters.hg19’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/FDb.FANTOM4.promoters.hg19’

```
### CRAN

```
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘FDb.FANTOM4.promoters.hg19’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/old/FDb.FANTOM4.promoters.hg19.Rcheck/FDb.FANTOM4.promoters.hg19’

```
# fergm

Version: 1.1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘statnet’ ‘ergm’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# filesstrings

Version: 2.5.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘covr’
    ```

# flowCore

Version: 1.46.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘flowViz’, ‘flowStats’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in system(sprintf("%s %s.sty", kpsewhich(), name), intern = TRUE) :
      running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Quitting from lines 317-319 (HowTo-flowCore.Rnw) 
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘Rgraphviz’ ‘flowViz’ ‘flowStats’ ‘flowWorkspace’ ‘openCyto’ ‘ggcyto’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        R         1.3Mb
        data      5.0Mb
        extdata   1.2Mb
        libs      3.4Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot,workFlow-missing: no visible binding for global variable
      ‘Rgraphviz’
    spillover,flowSet: no visible global function definition for
      ‘devAskNewPage’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘rangeGate’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘density’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘abline’
    spillover,flowSet : <anonymous> : <anonymous>: no visible global
      function definition for ‘density’
    split,flowFrame-factor: no visible binding for global variable ‘i’
    summary,workFlow: no visible binding for global variable ‘wf’
    Undefined global functions or variables:
      Rgraphviz abline cov.rob density devAskNewPage i rangeGate wf
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "abline")
      importFrom("stats", "density")
    to your NAMESPACE file.
    ```

# flowWorkspace

Version: 3.28.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘ncdfFlow’ ‘RBGL’ ‘XML’ ‘Rgraphviz’ ‘flowViz’
    
    Package suggested but not available for checking: ‘ggcyto’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# fslr

Version: 2.17.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘neurobase’
    
    Package suggested but not available for checking: ‘covr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# funtooNorm

Version: 1.4.0

## In both

*   checking whether package ‘funtooNorm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘funtooNorm’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘funtooNorm’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/funtooNorm’

```
### CRAN

```
* installing *source* package ‘funtooNorm’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘funtooNorm’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/funtooNorm/old/funtooNorm.Rcheck/funtooNorm’

```
# gcapc

Version: 1.4.0

## In both

*   checking whether package ‘gcapc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/gcapc/new/gcapc.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘BSgenome.Mmusculus.UCSC.mm10’
    ```

## Installation

### Devel

```
* installing *source* package ‘gcapc’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘gcapc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/gcapc/new/gcapc.Rcheck/gcapc’

```
### CRAN

```
* installing *source* package ‘gcapc’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘gcapc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/gcapc/old/gcapc.Rcheck/gcapc’

```
# GeneralizedUmatrix

Version: 1.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘DatabionicSwarm’ ‘ProjectionBasedClustering’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc    4.7Mb
        libs   2.2Mb
    ```

# genomation

Version: 1.12.0

## In both

*   checking whether package ‘genomation’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘genomation’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c binSum.cpp -o binSum.o
g++ -shared -L/usr/local/lib64 -o genomation.so RcppExports.o binSum.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/genomation/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘genomation’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/genomation’

```
### CRAN

```
* installing *source* package ‘genomation’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/genomation/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c binSum.cpp -o binSum.o
g++ -shared -L/usr/local/lib64 -o genomation.so RcppExports.o binSum.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/genomation/old/genomation.Rcheck/genomation/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘genomation’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/genomation/old/genomation.Rcheck/genomation’

```
# GenRank

Version: 1.8.0

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

Version: 0.1-4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘VineCopula’ ‘Rmpfr’ ‘copula’
    
    Package which this enhances but not available for checking: ‘sp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GUIDEseq

Version: 1.10.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ChIPpeakAnno’
    
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GUniFrac

Version: 1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘vegan’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Gviz

Version: 1.24.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘biovizBase’
    
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# haploReconstruct

Version: 0.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        data   9.5Mb
    ```

# hipathia

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘coin’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# IMIFA

Version: 2.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rfast’
    
    Packages suggested but not available for checking: ‘gmp’ ‘mcclust’ ‘Rmpfr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# InfiniumPurify

Version: 1.3.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘minfi’ in Rd xrefs
    ```

# kernDeepStackNet

Version: 2.0.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘DiceOptim’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# kissDE

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘DSS’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# LFDREmpiricalBayes

Version: 1.0

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'LFDREmpiricalBayes.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `changepage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    {url}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# liger

Version: 0.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'gsea.Rmd' failed with diagnostics:
    Failed to compile gsea.tex. See gsea.log for more info.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    1.2Mb
        libs   1.1Mb
    ```

# loo

Version: 2.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > Sys.setenv("R_TESTS" = "")
      > test_check("loo")
      ── 1. Error: (unknown) (@test_psis.R#2)  ───────────────────────────────────────
      there is no package called 'rstanarm'
      1: suppressPackageStartupMessages(library(rstanarm)) at testthat/test_psis.R:2
      2: withCallingHandlers(expr, packageStartupMessage = function(c) invokeRestart("muffleMessage"))
      3: library(rstanarm)
      4: stop(txt, domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 341 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_psis.R#2) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rstanarm’
    ```

# LS2Wstat

Version: 2.1-1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘LS2W’ ‘geoR’ ‘RandomFields’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# LSAmitR

Version: 1.0-2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘LSAmitR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Encoding: UTF-8
    > 
    > ### Name: Kapitel  1
    > ### Title: Kapitel 1: Testkonstruktion
    > ### Aliases: 'Kapitel 1'
    > 
    > ### ** Examples
    > 
    > library(TAM)
    Error in library(TAM) : there is no package called ‘TAM’
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘TAM’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BIFIEsurvey’ ‘TAM’ ‘miceadds’ ‘sirt’ ‘irr’ ‘difR’ ‘kerdiest’ ‘mirt’
      ‘car’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

Version: 0.8.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    Packages suggested but not available for checking:
      ‘RLumShiny’ ‘RLumModel’ ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# metagene

Version: 2.12.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘DBChIP’ ‘ensembldb’ ‘EnsDb.Hsapiens.v86’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# metagenomeSeq

Version: 1.22.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘vegan’ ‘interactiveDisplay’
    ```

# MetaQC

Version: 0.1.13

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘FactoMineR’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘survival’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘foreach’ ‘iterators’ ‘proto’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘as.dist’
    requireAll: no visible global function definition for
      ‘installed.packages’
    requireAll: no visible binding for global variable ‘biocLite’
    requireAll: no visible global function definition for ‘biocLite’
    Undefined global functions or variables:
      %do% %dopar% abline arrows as.dist axis b biocLite box cor cor.test
      coxph d dat download.file fisher.test foreach g gray i ii
      installed.packages iter j jj ks.test lm makeCluster median na.omit
      p.adjust pchisq plot pnorm points prcomp proto pt pv qnorm
      registerDoMC registerDoSNOW sd t.test text w wilcox.test x
    Consider adding
      importFrom("grDevices", "gray")
      importFrom("graphics", "abline", "arrows", "axis", "box", "plot",
                 "points", "text")
      importFrom("stats", "as.dist", "cor", "cor.test", "fisher.test",
                 "ks.test", "lm", "median", "na.omit", "p.adjust", "pchisq",
                 "pnorm", "prcomp", "pt", "qnorm", "sd", "t.test",
                 "wilcox.test")
      importFrom("utils", "download.file", "installed.packages")
    to your NAMESPACE file.
    ```

# metavizr

Version: 1.4.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘metagenomeSeq’ ‘epivizr’ ‘epivizrData’ ‘epivizrStandalone’ ‘vegan’
      ‘phyloseq’
    
    Packages suggested but not available for checking:
      ‘msd16s’ ‘etec16s’ ‘curatedMetagenomicData’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MethylAid

Version: 1.14.0

## In both

*   checking whether package ‘MethylAid’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘MethylAidData’ ‘minfiDataEPIC’
    ```

## Installation

### Devel

```
* installing *source* package ‘MethylAid’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘MethylAid’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/MethylAid’

```
### CRAN

```
* installing *source* package ‘MethylAid’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘MethylAid’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MethylAid/old/MethylAid.Rcheck/MethylAid’

```
# methylumi

Version: 2.26.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘FDb.InfiniumMethylation.hg19’
    
    Packages suggested but not available for checking:
      ‘lumi’ ‘methyAnalysis’ ‘FDb.InfiniumMethylation.hg18’ ‘Homo.sapiens’
    
    Depends: includes the non-default packages:
      ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
      ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MFHD

Version: 0.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘depth’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MHTcop

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘copula’ ‘MCMCpack’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# microsamplingDesign

Version: 1.0.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: Rcpp
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'microsamplingDesign.Rmd' failed with diagnostics:
    Failed to compile microsamplingDesign.tex. See microsamplingDesign.log for more info.
    Execution halted
    ```

# MIGSA

Version: 1.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘GOstats’ ‘GSEABase’ ‘RBGL’ ‘Rgraphviz’ ‘vegan’
    
    Packages suggested but not available for checking: ‘mGSZ’ ‘pbcmc’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MinimumDistance

Version: 1.24.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘VanillaICE’
    
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg18’ ‘BSgenome.Hsapiens.UCSC.hg19’
    
    Package which this enhances but not available for checking: ‘doSNOW’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mixOmics

Version: 6.3.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        data   4.1Mb
    ```

# motifbreakR

Version: 1.10.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘VariantAnnotation’ ‘motifStack’ ‘Gviz’
    
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘SNPlocs.Hsapiens.dbSNP.20120608’
      ‘SNPlocs.Hsapiens.dbSNP142.GRCh37’ ‘BSgenome.Drerio.UCSC.danRer7’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mrfDepth

Version: 1.0.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.1Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  15.0Mb
    ```

# MultiBD

Version: 0.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'SIR-MCMC.Rmd' failed with diagnostics:
    Failed to compile SIR-MCMC.tex. See SIR-MCMC.log for more info.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MCMCpack’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

# NanoStringDiff

Version: 1.10.0

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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'NanoStringDiff.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.37 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# NetLogoR

Version: 0.3.3

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘car’ ‘SpaDES.tools’ ‘rgeos’
    
    Packages suggested but not available for checking:
      ‘fastshp’ ‘sf’ ‘SpaDES.core’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# neurobase

Version: 1.26.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 189-219 (nifti_basics.Rmd) 
    Error: processing vignette 'nifti_basics.Rmd' failed with diagnostics:
    Could not resolve host: raw.githubusercontent.com; Name or service not known
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘covr’
    ```

# NSA

Version: 0.0.32

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
      ‘aroma.affymetrix’ ‘DNAcopy’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
      ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      ‘trim’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘throw’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘str’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘rowAlls’
    Undefined global functions or variables:
      AffymetrixCdfFile CNA Object approxfun aromaSettings byPath extend
      extractMatrix findUnitsTodo getAsteriskTags getChipType getFile
      getFullName getFullNames getGenomeInformation getName getNames
      getPath getPathname getPathnames getPositions getRam getRootPath
      getTags getUnitsOnChromosome hist median nbrOfFiles newInstance
      packageDescription rowAlls rowMedians segment setTags str throw trim
      verbose
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "approxfun", "median")
      importFrom("utils", "packageDescription", "str")
    to your NAMESPACE file.
    ```

# omicplotR

Version: 1.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘compositions’ ‘vegan’ ‘zCompositions’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# omicsPrint

Version: 1.0.0

## In both

*   checking whether package ‘omicsPrint’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/omicsPrint/new/omicsPrint.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘VariantAnnotation’ ‘FDb.InfiniumMethylation.hg19’
    ```

## Installation

### Devel

```
* installing *source* package ‘omicsPrint’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘omicsPrint’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/omicsPrint/new/omicsPrint.Rcheck/omicsPrint’

```
### CRAN

```
* installing *source* package ‘omicsPrint’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘omicsPrint’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/omicsPrint/old/omicsPrint.Rcheck/omicsPrint’

```
# pandaR

Version: 1.12.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        data   9.1Mb
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

Version: 1.6.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘phyloseq’ ‘XML’ ‘vegan’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# pcaMethods

Version: 1.72.0

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

Version: 1.4.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

Version: 1.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘C50’ ‘partykit’ ‘Rgraphviz’ ‘WGCNA’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# QDNAseq

Version: 1.16.0

## In both

*   checking whether package ‘QDNAseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/QDNAseq/new/QDNAseq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘QDNAseq’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘QDNAseq’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/QDNAseq/new/QDNAseq.Rcheck/QDNAseq’

```
### CRAN

```
* installing *source* package ‘QDNAseq’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘QDNAseq’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/QDNAseq/old/QDNAseq.Rcheck/QDNAseq’

```
# r2dRue

Version: 1.0.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgdal’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RAC

Version: 1.5

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgdal’ ‘rgeos’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# randomizationInference

Version: 1.0.3

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

# RTransProb

Version: 0.3.3

## In both

*   checking whether package ‘RTransProb’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/RTransProb/new/RTransProb.Rcheck/00install.out’ for details.
    ```

# scmap

Version: 1.2.0

## In both

*   checking whether package ‘scmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scmap’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include   -fpic  -g -O2  -c scmap.cpp -o scmap.o
g++ -shared -L/usr/local/lib64 -o scmap.so RcppExports.o scmap.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/scmap/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘scmap’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/scmap/new/scmap.Rcheck/scmap’

```
### CRAN

```
* installing *source* package ‘scmap’ ...
** libs
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/Rcpp/include" -I"/netapp/home/hb/repositories/matrixStats/revdep/library/scmap/RcppArmadillo/include" -I/usr/local/include   -fpic  -g -O2  -c scmap.cpp -o scmap.o
g++ -shared -L/usr/local/lib64 -o scmap.so RcppExports.o scmap.o -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRlapack -L/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/scmap/old/scmap.Rcheck/scmap/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘scmap’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/scmap/old/scmap.Rcheck/scmap’

```
# SemiParSampleSel

Version: 1.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# SGP

Version: 1.8-0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘quantreg’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# shinyMethyl

Version: 1.16.0

## In both

*   checking whether package ‘shinyMethyl’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/00install.out’ for details.
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
* installing *source* package ‘shinyMethyl’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/shinyMethyl’

```
### CRAN

```
* installing *source* package ‘shinyMethyl’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/shinyMethyl/old/shinyMethyl.Rcheck/shinyMethyl’

```
# SIAMCAT

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘mlr’ ‘phyloseq’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# SICtools

Version: 1.10.0

## In both

*   checking whether package ‘SICtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Rsamtools’ ‘doParallel’ ‘Biostrings’ ‘stringr’ ‘matrixStats’ ‘plyr’
      ‘GenomicRanges’ ‘IRanges’
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
* installing *source* package ‘SICtools’ ...
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/etc/Makeconf:159: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
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
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
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
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
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
make[1]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/SICtools’

```
### CRAN

```
* installing *source* package ‘SICtools’ ...
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/etc/Makeconf:159: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
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
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
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
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
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
make[1]: Leaving directory `/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/SICtools’

```
# Single.mTEC.Transcriptomes

Version: 1.8.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        intersect, is.unsorted, lapply, lengths, mapply, match, mget,
        order, paste, pmax, pmax.int, pmin, pmin.int, rank, rbind,
        rowMeans, rowSums, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomicRanges
    Loading required package: GenomeInfoDb
    Error: package or namespace load failed for 'GenomeInfoDb' in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called 'RCurl'
    Quitting from lines 64-79 (mTECs.Rnw) 
    Error: processing vignette 'mTECs.Rnw' failed with diagnostics:
    package 'GenomeInfoDb' could not be loaded
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘ggbio’ ‘Gviz’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 908.2Mb
      sub-directories of 1Mb or more:
        data  898.7Mb
        doc     9.4Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Failed with error:  'package 'GenomeInfoDb' could not be loaded'
      Error in .requirePackage(package) : 
        unable to find required package 'DESeq2'
      Calls: <Anonymous> ... getClass -> getClassDef -> .classEnv -> .requirePackage
      Execution halted
    ```

# singleCellTK

Version: 1.0.3

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘GSVA’ ‘GSVAdata’ ‘MAST’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# singscore

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘GSEABase’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sizeMat

Version: 0.3.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘MCMCpack’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# smerc

Version: 0.4.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘smacpod’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# SRGnet

Version: 1.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘EBcoexpress’
    
    Depends: includes the non-default packages:
      ‘EBcoexpress’ ‘MASS’ ‘igraph’ ‘pvclust’ ‘gbm’ ‘limma’ ‘DMwR’
      ‘matrixStats’ ‘Hmisc’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# stapler

Version: 0.6.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘covr’
    ```

# staRdom

Version: 1.0.8

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘multiway’ ‘drc’
    
    Package suggested but not available for checking: ‘xlsx’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# stm

Version: 1.3.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘quanteda’
    
    Package suggested but not available for checking: ‘tm’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# STROMA4

Version: 1.4.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
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
    Warning in socketConnection(port = port, server = TRUE, blocking = TRUE,  :
      port 11592 cannot be opened
    Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Calls: assign.properties ... <Anonymous> -> <Anonymous> -> newSOCKnode -> socketConnection
    Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Warning in file(filename, "r", encoding = encoding) :
      URL 'https://bioconductor.org/biocLite.R': status was 'Couldn't resolve host name'
    
    Error: processing vignette 'STROMA4-vignette.Rnw' failed with diagnostics:
     chunk 1 
    Error in file(filename, "r", encoding = encoding) : 
      cannot open the connection to 'https://bioconductor.org/biocLite.R'
    Execution halted
    ```

# summarytools

Version: 0.8.6

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RCurl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# support

Version: 0.1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘randtoolbox’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sva

Version: 3.28.0

## In both

*   checking whether package ‘sva’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘sva’ ...
** libs
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c sva.c -o sva.o
gcc -std=gnu99 -shared -L/usr/local/lib64 -o sva.so sva.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/sva/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘genefilter’ could not be loaded
ERROR: lazy loading failed for package ‘sva’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/sva/new/sva.Rcheck/sva’

```
### CRAN

```
* installing *source* package ‘sva’ ...
** libs
gcc -std=gnu99 -I"/netapp/home/hb/shared/apps/manual/r/R-3.5.1/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c sva.c -o sva.o
gcc -std=gnu99 -shared -L/usr/local/lib64 -o sva.so sva.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/sva/old/sva.Rcheck/sva/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘genefilter’ could not be loaded
ERROR: lazy loading failed for package ‘sva’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/sva/old/sva.Rcheck/sva’

```
# tenXplore

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘restfulSE’ ‘ontoProc’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# topGO

Version: 2.32.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘topGO-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annFUN
    > ### Title: Functions which map gene identifiers to GO terms
    > ### Aliases: annFUN.db annFUN annFUN.GO2genes annFUN.gene2GO annFUN.file
    > ###   annFUN.org inverseList readMappings
    > ### Keywords: misc
    > 
    > ### ** Examples
    > 
    > 
    > library(hgu133a.db)
    Error in library(hgu133a.db) : there is no package called ‘hgu133a.db’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘hgu95av2.db’ ‘hgu133a.db’ ‘Rgraphviz’
    
    Depends: includes the non-default packages:
      ‘BiocGenerics’ ‘graph’ ‘Biobase’ ‘GO.db’ ‘AnnotationDbi’ ‘SparseM’
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Attaching package: ‘SparseM’
    
    The following object is masked from ‘package:base’:
    
        backsolve
    
    
    groupGOTerms: 	GOBPTerm, GOMFTerm, GOCCTerm environments built.
    
    Attaching package: ‘topGO’
    
    The following object is masked from ‘package:IRanges’:
    
        members
    
    
    Error: processing vignette 'topGO.Rnw' failed with diagnostics:
     chunk 7 
    Error in library(package = affyLib, character.only = TRUE) : 
      there is no package called ‘hgu95av2.db’
    Execution halted
    ```

# ttScreening

Version: 1.5

## In both

*   checking whether package ‘ttScreening’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/ttScreening/new/ttScreening.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ttScreening’ ...
** package ‘ttScreening’ successfully unpacked and MD5 sums checked
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘genefilter’ could not be loaded
ERROR: lazy loading failed for package ‘ttScreening’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/ttScreening/new/ttScreening.Rcheck/ttScreening’

```
### CRAN

```
* installing *source* package ‘ttScreening’ ...
** package ‘ttScreening’ successfully unpacked and MD5 sums checked
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘genefilter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘genefilter’ could not be loaded
ERROR: lazy loading failed for package ‘ttScreening’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/ttScreening/old/ttScreening.Rcheck/ttScreening’

```
# VanillaICE

Version: 1.42.4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘crlmm’ ‘BSgenome.Hsapiens.UCSC.hg18’
    
    Packages which this enhances but not available for checking:
      ‘doMC’ ‘doMPI’ ‘doSNOW’ ‘doParallel’ ‘doRedis’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# visualFields

Version: 0.5.4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘flip’ ‘spatstat’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# wateRmelon

Version: 1.24.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘methylumi’ ‘lumi’
    
    Depends: includes the non-default packages:
      ‘Biobase’ ‘limma’ ‘matrixStats’ ‘methylumi’ ‘lumi’ ‘ROC’
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘illuminaio’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# WGCNA

Version: 1.63

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘robust’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# XBSeq

Version: 1.12.0

## In both

*   checking whether package ‘XBSeq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘XBSeq’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘XBSeq’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/XBSeq’

```
### CRAN

```
* installing *source* package ‘XBSeq’ ...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘GenomeInfoDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘RCurl’
Error : package ‘GenomeInfoDb’ could not be loaded
ERROR: lazy loading failed for package ‘XBSeq’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/XBSeq/old/XBSeq.Rcheck/XBSeq’

```
# yarn

Version: 1.6.0

## In both

*   checking whether package ‘yarn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘yarn’ ...
It is recommended to use ‘given’ instead of ‘middle’.
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/yarn’

```
### CRAN

```
* installing *source* package ‘yarn’ ...
It is recommended to use ‘given’ instead of ‘middle’.
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘RCurl’
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/yarn/old/yarn.Rcheck/yarn’

```
# zinbwave

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

