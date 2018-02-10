# abcrf

Version: 1.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   2.5Mb
    ```

# amplican

Version: 1.0.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘CrispRVariants’ in Rd xrefs
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        doc  13.6Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# antiProfiles

Version: 1.18.0

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

# aroma.core

Version: 3.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.8.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# BASiCS

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        libs   4.4Mb
    ```

# BatchQC

Version: 1.6.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Found3batches
    Adjusting for1covariate(s) or covariate level(s)
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    gene_plot: no visible global function definition for ‘boxplot’
    gene_plot: no visible binding for global variable ‘batch’
    gls.series.C: no visible global function definition for ‘lm.fit’
    sample_plot: no visible global function definition for ‘boxplot’
    sample_plot: no visible binding for global variable ‘batch’
    Undefined global functions or variables:
      batch boxplot lm.fit
    Consider adding
      importFrom("graphics", "boxplot")
      importFrom("stats", "lm.fit")
    to your NAMESPACE file.
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

# bdynsys

Version: 1.3

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

Version: 1.3

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘genalg’ in Rd xrefs
    ```

# bnbc

Version: 1.0.0

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
g++  -I/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/include -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/include -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -shared -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/bnbc/libs
** R
** data
** inst
** preparing package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tiff’
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/bnbc’

```
### CRAN

```
* installing *source* package ‘bnbc’ ...
** libs
g++  -I/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/include -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++  -I/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/include -DNDEBUG  -I"/netapp/home/hb/repositories/matrixStats/revdep/library/bnbc/Rcpp/include" -I/usr/local/include   -fpic  -g -O2  -c update_bands.cpp -o update_bands.o
g++ -shared -L/usr/local/lib64 -o bnbc.so RcppExports.o update_bands.o
installing to /netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/bnbc/libs
** R
** data
** inst
** preparing package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tiff’
ERROR: lazy loading failed for package ‘bnbc’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/bnbc/old/bnbc.Rcheck/bnbc’

```
# bnclassify

Version: 0.3.4

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘memoise’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

# brms

Version: 2.1.0

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
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.3Mb
    ```

# bsseq

Version: 1.14.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘bsseqData’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'matrixStats'
    
    The following objects are masked from 'package:Biobase':
    
        anyMissing, rowMedians
    
    
    Attaching package: 'DelayedArray'
    
    The following objects are masked from 'package:matrixStats':
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following object is masked from 'package:base':
    
        apply
    
    Quitting from lines 29-31 (bsseq_analysis.Rmd) 
    Error: processing vignette 'bsseq_analysis.Rmd' failed with diagnostics:
    there is no package called 'bsseqData'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bsseqData’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    2.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘HDF5Array’
      All declared Imports should be used.
    ```

# bumphunter

Version: 1.20.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
             }
             typeName = gsub("^CURLE_", "", typeName)
             fun = (if (asError) 
                 stop
             else warning)
             fun(structure(list(message = msg, call = sys.call()), class = c(typeName, "GenericCurlError", 
                 "error", "condition")))
         }(6L, "Could not resolve host: genome.ucsc.edu; Name or service not known", TRUE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 10 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_annotation.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘foreach’
      ‘iterators’ ‘parallel’ ‘locfit’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘doParallel:::.options’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    bumphunterEngine: no visible binding for global variable ‘bootstraps’
    smarterNearest: no visible global function definition for
      ‘PartitioningByEnd’
    Undefined global functions or variables:
      PartitioningByEnd bootstraps
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    The following object is masked from ‘package:base’:
    
        isNamespaceLoaded
    
    [bumphunterEngine] Estimating p-values and FWER.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'bumphunter.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    [numbers]{natbib}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# CATALYST

Version: 1.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    9.2Mb
    ```

# cellWise

Version: 2.0.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        libs   4.4Mb
    ```

# CEMiTool

Version: 1.0.1

## In both

*   checking examples ... ERROR
    ```
    ...
    List of 2
     $ echo : logi FALSE
     $ cache: logi FALSE
    
    output file: /netapp/home/hb/repositories/matrixStats/revdep/checks/CEMiTool/new/CEMiTool.Rcheck/Reports/Report/report.knit.md
    
    /netapp/home/hb/apps/local/bin/pandoc +RTS -K512m -RTS /netapp/home/hb/repositories/matrixStats/revdep/checks/CEMiTool/new/CEMiTool.Rcheck/Reports/Report/report.utf8.md --to latex --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output /netapp/home/hb/repositories/matrixStats/revdep/checks/CEMiTool/new/CEMiTool.Rcheck/Reports/Report/report.pdf --table-of-contents --toc-depth 2 --template /netapp/home/hb/repositories/matrixStats/revdep/library/CEMiTool/rmarkdown/rmd/latex/default-1.17.0.2.tex --number-sections --highlight-style tango --latex-engine pdflatex --variable graphics=yes --variable 'geometry:margin=1in' 
    ! LaTeX Error: File `titling.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.66 ^^M
    
    pandoc: Error producing PDF
    Error: pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        data      3.1Mb
        doc       2.3Mb
        extdata   2.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_qq,CEMiTool: no visible binding for global variable ‘data’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘hclust’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘dist’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘png’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘dev.off’
    save_plots,CEMiTool : <anonymous>: no visible global function
      definition for ‘dev.off’
    save_plots,CEMiTool: no visible global function definition for
      ‘dev.off’
    Undefined global functions or variables:
      ..eq.label.. ..rr.label.. Mean Variance as.dist cem data dev.off dist
      hclust head png tail var
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("stats", "as.dist", "dist", "hclust", "var")
      importFrom("utils", "data", "head", "tail")
    to your NAMESPACE file.
    ```

# ChAMP

Version: 2.9.10

## In both

*   checking package subdirectories ... WARNING
    ```
    Problems with news in ‘inst/NEWS.Rd’:
      inst/NEWS.Rd:74: unexpected END_OF_INPUT '
      '
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      You have found 4058 significant MVPs with a BH adjusted P-value below 0.05.
      Calculate DMP for C and T done.
    
    [ Section 2:  Find Numeric Vector Related CpGs Done ]
    
    
    [ Section 3:  Match Annotation Start ]
    
    
    [ Section 3:  Match Annotation Done ]
    
    [<<<<<< ChAMP.DMP END >>>>>>]
    [===========================]
    [You may want to process DMP.GUI() or champ.GSEA() next.]
    
    pandoc-citeproc: Error parsing XML file academic-medicine.csl: FailedConnectionException2 "www.zotero.org" 80 False getAddrInfo: does not exist (Name or service not known)
    pandoc: Error running filter /netapp/home/hb/apps/local/bin/pandoc-citeproc
    Filter returned error status 1
    Error: processing vignette 'ChAMP.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 83
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘minfi’ ‘ChAMPdata’ ‘FEM’ ‘DMRcate’ ‘Illumina450ProbeVariants.db’
      ‘IlluminaHumanMethylationEPICmanifest’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        doc       9.6Mb
        extdata   2.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘rmarkdown’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'prettydoc'
      All declared Imports should be used.
    ```

# Chicago

Version: 1.6.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘PCHiCdata’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: data.table
    
    Welcome to CHiCAGO - version 1.6.0
    If you are new to CHiCAGO, please consider reading the vignette through the command: vignette("Chicago").
    NOTE: Default values of tlb.minProxOEPerBin and tlb.minProxB2BPerBin changed as of Version 1.1.5. No action is required unless you specified non-default values, or wish to re-run the pipeline on old chicagoData objects. See news(package="Chicago")
    Quitting from lines 44-46 (Chicago.Rmd) 
    Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
    there is no package called 'PCHiCdata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘PCHiCdata’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# ChIPpeakAnno

Version: 3.12.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      GRanges object contains 5 out-of-bound ranges located on sequences
      GL000199.1 and chrM. Note that only ranges located on a non-circular
      sequence whose length is not NA can be considered out-of-bound (use
      seqlengths() and isCircular() to get the lengths and circularity
      flags of the underlying sequences). You can use trim() to trim these
      ranges. See ?`trim,GenomicRanges-method` for more information.
    8: In valid.GenomicRanges.seqinfo(x, suggest.trim = TRUE) :
      GRanges object contains 8 out-of-bound ranges located on sequences
      GL000199.1 and chrM. Note that only ranges located on a non-circular
      sequence whose length is not NA can be considered out-of-bound (use
      seqlengths() and isCircular() to get the lengths and circularity
      flags of the underlying sequences). You can use trim() to trim these
      ranges. See ?`trim,GenomicRanges-method` for more information.
    9: In valid.GenomicRanges.seqinfo(x, suggest.trim = TRUE) :
      GRanges object contains 8 out-of-bound ranges located on sequences
      GL000199.1 and chrM. Note that only ranges located on a non-circular
      sequence whose length is not NA can be considered out-of-bound (use
      seqlengths() and isCircular() to get the lengths and circularity
      flags of the underlying sequences). You can use trim() to trim these
      ranges. See ?`trim,GenomicRanges-method` for more information.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘motifStack’
    
    Depends: includes the non-default packages:
      ‘grid’ ‘IRanges’ ‘Biostrings’ ‘GenomicRanges’ ‘S4Vectors’
      ‘VennDiagram’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.7Mb
      sub-directories of 1Mb or more:
        data     12.7Mb
        doc       4.0Mb
        extdata   5.3Mb
    ```

# cifti

Version: 0.4.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 21-92 (cifti_work.Rmd) 
    Error: processing vignette 'cifti_work.Rmd' failed with diagnostics:
    there is no package called 'rgl'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
    ```

# Clomial

Version: 1.14.0

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

Version: 1.4.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘ConsensusClusterPlus’ in Rd xrefs
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc   10.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': ‘ape:::.PlotPhyloEnv’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘ape:::.matchDataPhylo’
      See the note in ?`:::` about the use of this operator.
    ```

# CNPBayes

Version: 1.8.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in has_utility("pdfcrop") :
      pdfcrop not installed or not in PATH
    This is pdfTeX, Version 3.1415926-2.5-1.40.14 (TeX Live 2013)
     restricted \write18 enabled.
    entering extended mode
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'Convergence.Rmd' failed with diagnostics:
    Failed to compile Convergence.tex. See Convergence.log for more info.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.1Mb
      sub-directories of 1Mb or more:
        doc    2.9Mb
        libs  12.6Mb
    ```

# CopywriteR

Version: 2.10.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for ‘text’
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for ‘axis’
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for ‘abline’
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for ‘dev.off’
    preCopywriteR: no visible global function definition for ‘as’
    Undefined global functions or variables:
      abline as axis dev.off dpois ecdf getClass lines loess packageVersion
      par pdf plot png points ppois predict read.table rgb segments text
      write.table
    Consider adding
      importFrom("grDevices", "dev.off", "pdf", "png", "rgb")
      importFrom("graphics", "abline", "axis", "lines", "par", "plot",
                 "points", "segments", "text")
      importFrom("methods", "as", "getClass")
      importFrom("stats", "dpois", "ecdf", "loess", "ppois", "predict")
      importFrom("utils", "packageVersion", "read.table", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
      neighborhood radius 0.001
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      reciprocal condition number  0
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      There are other near singularities as well. 1e-06
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'CopywriteR.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# crlmm

Version: 1.36.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘preprocessCore’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘RUnit’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespaces in Imports field not imported from:
      ‘SNPchip’ ‘splines’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘Biobase:::assayDataEnvLock’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .test: no visible global function definition for ‘defineTestSuite’
    .test: no visible global function definition for ‘runTestSuite’
    .test: no visible global function definition for ‘printTextProtocol’
    calculateRBafCNSet : processByChromosome: no visible global function
      definition for ‘position’
    genotypeInf: no visible binding for global variable ‘anno’
    krlmm: no visible binding for global variable ‘VGLMparameters’
    Undefined global functions or variables:
      VGLMparameters anno defineTestSuite position printTextProtocol
      runTestSuite
    ```

# crossmeta

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Name: symbol_annot
    > ### Title: Add hgnc symbol to expression set.
    > ### Aliases: symbol_annot
    > 
    > ### ** Examples
    > 
    > library(lydata)
    > 
    > # location of raw data
    > data_dir <- system.file("extdata", package = "lydata")
    > 
    > # load eset
    > eset <- load_raw("GSE9601", data_dir)[[1]]
    > 
    > # annotate eset (need if load_raw failed to annotate)
    > eset <- symbol_annot(eset)
    AnnotatingWarning in read.dcf(con) :
      URL 'http://bioconductor.org/BiocInstaller.dcf': status was 'Couldn't resolve host name'
    Error: 'no packages in repository (no internet connection?)' while trying
      http://bioconductor.org/packages/3.6/bioc
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘PADOG’, ‘GeneMeta’ in Rd xrefs
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Data with usage in documentation object 'gs.names' but not in code:
      gs.names
    
    Data with usage in documentation object 'gslist' but not in code:
      gslist
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported objects:
      ‘crossmeta::gs.names’ ‘crossmeta::gslist’
    ```

*   checking R code for possible problems ... NOTE
    ```
    explore_paths : server: no visible binding for global variable ‘gslist’
    explore_paths : server: no visible binding for global variable
      ‘gs.names’
    Undefined global functions or variables:
      gs.names gslist
    ```

# DAMOCLES

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘cophenetic’
    DAMOCLES_bootstrap: no visible global function definition for ‘sd’
    DAMOCLES_bootstrap: no visible global function definition for
      ‘quantile’
    DAMOCLES_sim: no visible global function definition for ‘na.omit’
    DAMOCLES_sim: no visible global function definition for ‘runif’
    DAMOCLES_sim: no visible global function definition for ‘lines’
    DAMOCLES_sim: no visible global function definition for ‘rnorm’
    DAMOCLES_sim: no visible global function definition for ‘dexp’
    DAMOCLES_sim: no visible global function definition for ‘dist’
    DAMOCLES_simplex: no visible global function definition for
      ‘flush.console’
    Undefined global functions or variables:
      cophenetic dexp dist flush.console lines na.omit quantile rnorm runif
      sd
    Consider adding
      importFrom("graphics", "lines")
      importFrom("stats", "cophenetic", "dexp", "dist", "na.omit",
                 "quantile", "rnorm", "runif", "sd")
      importFrom("utils", "flush.console")
    to your NAMESPACE file.
    ```

# DatabionicSwarm

Version: 1.0.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# DeepBlueR

Version: 1.4.1

## In both

*   checking whether package ‘DeepBlueR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** preparing package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/DeepBlueR’

```
### CRAN

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** preparing package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

```
# DelayedArray

Version: 0.4.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run_unitTests.R’ failed.
    Last 13 lines of output:
      
          colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
      
      The following object is masked from 'package:base':
      
          apply
      
      [1] TRUE
      > DelayedArray:::.test()
      ------------------------------------------------------------------
      Running tests with realization backend set to "RleArray" ...
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> <Anonymous> -> library
      Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic '[<-' and siglist 'DelayedArray'
      generic 'dbinom' and siglist 'DelayedArray'
      generic 'dlogis' and siglist 'DelayedArray'
      generic 'dpois' and siglist 'DelayedArray'
      generic 'pbinom' and siglist 'DelayedArray'
      generic 'plogis' and siglist 'DelayedArray'
      generic 'ppois' and siglist 'DelayedArray'
      generic 'qbinom' and siglist 'DelayedArray'
      generic 'qlogis' and siglist 'DelayedArray'
      generic 'qpois' and siglist 'DelayedArray'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::testPackage’ ‘S4Vectors:::anyMissing’
      ‘S4Vectors:::anyMissingOrOutside’ ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::extract_positions_from_Rle’ ‘S4Vectors:::sapply_isNULL’
      See the note in ?`:::` about the use of this operator.
    ```

# DelayedMatrixStats

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── 2. Failure: Formals of S4 generic matches matrixStats function (@test_S4_gene
      formals(dms_generic) not identical to formals(ms_fun).
      Names: 1 string mismatch
      Length mismatch: comparison on first 4 components
      Component 4: Modes of target, current: name, logical
      Component 4: target, current do not match when deparsed
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 8853 SKIPPED: 0 FAILED: 2
      1. Failure: Formals of S4 generic matches matrixStats function (@test_S4_generics.R#10) 
      2. Failure: Formals of S4 generic matches matrixStats function (@test_S4_generics.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.as_array_or_matrix’
      ‘DelayedArray:::.execute_delayed_ops’
      ‘DelayedArray:::.get_DelayedArray_dim_before_transpose’
      ‘DelayedArray:::.get_DelayedArray_dimnames_before_transpose’
      ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::extract_block’ ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_Nindex_names_along’
      ‘DelayedArray:::get_max_block_length’
      ‘DelayedArray:::get_max_spacings_for_linear_blocks’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# diffloop

Version: 1.6.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# Doscheda

Version: 1.0.0

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
    Calls: runNormalisation ... request_fetch -> request_fetch.write_memory -> <Anonymous> -> .Call
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             modelType = "linear", accessionID = "Accession", uniquePeptides = "UniquePeps") at testthat/test-normal.R:8
      2: uniprotGene(organism)
      3: httr::POST("http://www.humanmine.org/humanmine/service/query/results", body = list(query = query, 
             format = "json"), encode = "form")
      4: request_perform(req, hu$handle$handle)
      5: request_fetch(req$output, req$url, handle)
      6: request_fetch.write_memory(req$output, req$url, handle)
      7: curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: normalize_data med works (@test-normal.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning: 'html_document2' is deprecated.
    Use 'html_document' instead.
    See help("Deprecated")
    Quitting from lines 148-150 (Doscheda.Rmd) 
    Error: processing vignette 'Doscheda.Rmd' failed with diagnostics:
    Could not resolve host: www.humanmine.org; Name or service not known
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              1.7Mb
        shiny-examples   2.0Mb
    ```

# dplR

Version: 1.6.7

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘gmp’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gmp’
    ```

# EasyqpcR

Version: 1.20.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

# EMDomics

Version: 2.8.0

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

Version: 1.9.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    trying URL 'https://jokergoo.github.io/supplementary/EnrichedHeatmap-supplementary/roadmap_normalized_matrices.RData'
    Warning in download.file("https://jokergoo.github.io/supplementary/EnrichedHeatmap-supplementary/roadmap_normalized_matrices.RData",  :
      URL 'https://jokergoo.github.io/supplementary/EnrichedHeatmap-supplementary/roadmap_normalized_matrices.RData': status was 'Couldn't resolve host name'
    Quitting from lines 41-50 (roadmap.Rmd) 
    Error: processing vignette 'roadmap.Rmd' failed with diagnostics:
    cannot open URL 'https://jokergoo.github.io/supplementary/EnrichedHeatmap-supplementary/roadmap_normalized_matrices.RData'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        doc       7.0Mb
        extdata   2.5Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'rbind.normalizedMatrix':
      ‘rbind.normalizedMatrix’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# EventPointer

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘SGSeq:::edges’ ‘SGSeq:::exonGraph’ ‘SGSeq:::nodes’
      See the note in ?`:::` about the use of this operator.
    ```

# FastHCS

Version: 0.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.3Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  14.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FHCSpsdo: no visible global function definition for ‘is’
    FastHCS: no visible global function definition for ‘complete.cases’
    compPcaParams: no visible global function definition for ‘quantile’
    compPcaParams: no visible global function definition for ‘qchisq’
    compPcaParams: no visible global function definition for ‘qnorm’
    compPcaParams: no visible global function definition for ‘sd’
    plot.FastHCS: no visible global function definition for ‘plot’
    plot.FastHCS: no visible global function definition for ‘abline’
    Undefined global functions or variables:
      abline complete.cases is plot qchisq qnorm quantile sd
    Consider adding
      importFrom("graphics", "abline", "plot")
      importFrom("methods", "is")
      importFrom("stats", "complete.cases", "qchisq", "qnorm", "quantile",
                 "sd")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# FastPCS

Version: 0.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FastPCS: no visible global function definition for ‘complete.cases’
    FastPCS: no visible global function definition for ‘cov’
    FastPCS: no visible global function definition for ‘mahalanobis’
    FastPCS: no visible global function definition for ‘qchisq’
    FastPCS: no visible global function definition for ‘quantile’
    plot.FastPCS: no visible global function definition for ‘plot’
    plot.FastPCS: no visible global function definition for ‘abline’
    plot.FastPCS: no visible global function definition for ‘qchisq’
    Undefined global functions or variables:
      abline complete.cases cov mahalanobis plot qchisq quantile
    Consider adding
      importFrom("graphics", "abline", "plot")
      importFrom("stats", "complete.cases", "cov", "mahalanobis", "qchisq",
                 "quantile")
    to your NAMESPACE file.
    ```

# FastRCS

Version: 0.0.7

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

*   checking package subdirectories ... WARNING
    ```
    Found the following non-empty subdirectories of ‘inst’ also used by R:
      inst/build
    It is recommended not to interfere with package subdirectories used by
    R.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘GenomicFeatures’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘matrixStats’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Package in Depends field not imported from: ‘Biostrings’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' call which should be '::': ‘matrixStats:::rowProds’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    oecg: no visible global function definition for ‘seqlengths’
    oecg: no visible binding for global variable ‘Hsapiens’
    oecg: no visible global function definition for ‘seqlevels’
    oecg: no visible global function definition for ‘seqnames’
    oecg: no visible global function definition for ‘resize’
    oecg: no visible global function definition for ‘start’
    oecg: no visible global function definition for ‘start<-’
    oecg: no visible global function definition for ‘end’
    oecg: no visible global function definition for ‘end<-’
    oecg: no visible global function definition for ‘getSeq’
    oecg: no visible global function definition for ‘width’
    oecg: no visible global function definition for ‘letterFrequency’
    oecg: no visible global function definition for ‘dinucleotideFrequency’
    Undefined global functions or variables:
      Hsapiens dinucleotideFrequency end end<- getSeq is letterFrequency
      resize seqlengths seqlevels seqnames start start<- width
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "end", "start")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# filesstrings

Version: 2.0.4

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘dplyr’ in Rd xrefs
    ```

# flowCore

Version: 1.44.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘flowViz’, ‘flowStats’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Quitting from lines 309-311 (HowTo-flowCore.Rnw) 
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘flowViz’ ‘flowStats’ ‘flowWorkspace’ ‘openCyto’ ‘ggcyto’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
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

# fslr

Version: 2.17.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    trying URL 'http://cmic.cs.ucl.ac.uk/camino//uploads/Tutorials/example_dwi.zip'
    Quitting from lines 28-32 (dti_data.Rmd) 
    Error: processing vignette 'dti_data.Rmd' failed with diagnostics:
    cannot open URL 'http://cmic.cs.ucl.ac.uk/camino//uploads/Tutorials/example_dwi.zip'
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘grDevices’ ‘graphics’ ‘matrixStats’ ‘stats’
      All declared Imports should be used.
    ```

# GeneralizedUmatrix

Version: 1.0.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘DatabionicSwarm’ ‘rgl’
    ```

# genomation

Version: 1.11.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in block_exec(params) :
      failed to tidy R code in chunk <eadAllPeaks>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <findFeatureComb>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <visualizeFeatureComb>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <annotationHubExample1>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    pandoc: Could not fetch https://raw.githubusercontent.com/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png
    FailedConnectionException2 "raw.githubusercontent.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'GenomationManual.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   1.2Mb
        libs      1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RUnit’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ScoreMatrixBin,RleList-GRangesList: no visible binding for global
      variable ‘cvg’
    ScoreMatrixBin,RleList-GRangesList: no visible binding for global
      variable ‘id’
    ScoreMatrixBin,RleList-GRangesList: no visible global function
      definition for ‘:=’
    Undefined global functions or variables:
      := cvg id
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘cache’
    Please remove from your package.
    ```

# GenRank

Version: 1.6.0

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

Version: 1.8.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        extdata  10.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    annotateOffTargets: no visible global function definition for 'toTable'
    getPeaks: no visible binding for global variable 'adjusted.p.value'
    getPeaks: no visible binding for global variable 'SNratio'
    getUniqueCleavageEvents: no visible binding for global variable
      'qwidth.first'
    getUniqueCleavageEvents: no visible binding for global variable
      'qwidth.last'
    getUniqueCleavageEvents: no visible binding for global variable
      'strand.last'
    getUniqueCleavageEvents: no visible binding for global variable
      'strand.first'
    getUniqueCleavageEvents: no visible binding for global variable
      'readName'
    offTargetAnalysisOfPeakRegions: no visible binding for global variable
      'gRNAPlusPAM'
    offTargetAnalysisOfPeakRegions: no visible binding for global variable
      'offTarget'
    Undefined global functions or variables:
      SNratio adjusted.p.value exons gRNAPlusPAM genes offTarget
      offTarget_Start qwidth.first qwidth.last readName seqlevelsStyle<-
      strand.first strand.last toTable
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: annotateOffTargets.Rd:33-35: Dropping empty section \details
    prepare_Rd: annotateOffTargets.Rd:43-45: Dropping empty section \references
    prepare_Rd: createBarcodeFasta.Rd:42-43: Dropping empty section \value
    prepare_Rd: createBarcodeFasta.Rd:44-46: Dropping empty section \references
    prepare_Rd: getUsedBarcodes.Rd:39-41: Dropping empty section \references
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
      No matching found, please check your input sequence, and make
                sure you are using the right genome. You can also alter your 
                search criteria such as increasing max.mismatch!
    Please check output file in directory gRNAmin1window20step20distance40
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'GUIDEseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# Gviz

Version: 1.22.2

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic '[' and siglist 'GenomeAxisTrack,ANY,ANY,ANY'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc       1.7Mb
        extdata   2.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
      'cdsBy'
    .buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
      'fiveUTRsByTranscript'
    .buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
      'threeUTRsByTranscript'
    Undefined global functions or variables:
      cdsBy fiveUTRsByTranscript threeUTRsByTranscript
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
    The following object is masked from 'package:base':
    
        strsplit
    
    Loading required package: rtracklayer
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages
        'citation("pkgname")'.
    
    
    Error: processing vignette 'Gviz.Rnw' failed with diagnostics:
     chunk 94 (label = BiomartGeneRegionTrackDo) 
    Error in base::serialize(object, connection = NULL, ascii = ascii, version = serializeVersion) : 
      trying to get slot "host" from an object of a basic class ("NULL") with no slots
    Execution halted
    ```

# haploReconstruct

Version: 0.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        data   9.5Mb
    ```

# IMIFA

Version: 1.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rfast’
    
    Packages suggested but not available for checking: ‘Rmpfr’ ‘gmp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# kernDeepStackNet

Version: 2.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
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

# LS2Wstat

Version: 2.0-3

## In both

*   checking whether package ‘LS2Wstat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/LS2Wstat/new/LS2Wstat.Rcheck/00install.out’ for details.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    TOS2D: no visible global function definition for ‘medpolish’
    countTextures: no visible global function definition for ‘medpolish’
    plot.imageQT: no visible global function definition for ‘segments’
    simTexture: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      medpolish rnorm segments
    Consider adding
      importFrom("graphics", "segments")
      importFrom("stats", "medpolish", "rnorm")
    to your NAMESPACE file.
    ```

# LSAmitR

Version: 1.0-1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

Version: 0.7.5

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘rjags’, ‘RLumShiny’, ‘RLumModel’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘RLumShiny’ ‘RLumModel’ ‘rjags’
    ```

# MEAL

Version: 1.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
         })(object = <S4 object of class structure("GenomicRatioSet", package = "minfi")>, 
             design = structure(c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0), .Dim = c(6L, 2L), .Dimnames = list(
                 c("5723646052_R02C02", "5723646052_R04C01", "5723646052_R05C02", "5723646053_R04C02", 
                 "5723646053_R05C02", "5723646053_R06C02"), c("(Intercept)", "statusnormal"
                 )), assign = 0:1, contrasts = structure(list(status = "contr.treatment"), .Names = "status")), 
             what = "M", coef = 2, datatype = c("array", "sequencing"), arraytype = c("EPIC", 
                 "450K"), analysis.type = c("differential", "variability", "ANOVA", "diffVar"), 
             contrasts = FALSE, cont.matrix = NULL, fdr = 0.05, ... = )
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 55 SKIPPED: 0 FAILED: 1
      1. Error: DMRcate (@test_06regionAnalysis.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'DAPipeline' is deprecated.
      Warning: 'DAProbe' is deprecated.
      Warning: 'DARegion' is deprecated.
      Warning: 'RDAset' is deprecated.
      Warning: 'filterSet' is deprecated.
      Warning: 'plotBestFeatures' is deprecated.
      Warning: 'preparePhenotype' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: pkgmaker
    Loading required package: registry
    
    Attaching package: 'pkgmaker'
    
    The following object is masked from 'package:S4Vectors':
    
        new2
    
    The following object is masked from 'package:base':
    
        isNamespaceLoaded
    
    Warning in as.data.frame(mcols(x), ...) : Arguments in '...' ignored
    Warning in as.data.frame(mcols(x), ...) : Arguments in '...' ignored
    Warning: Ignoring unknown aesthetics: y
    Warning: Ignoring unknown aesthetics: y
    Quitting from lines 206-208 (MEAL.Rmd) 
    Error: processing vignette 'MEAL.Rmd' failed with diagnostics:
    failed to load external entity "http://genome.ucsc.edu/FAQ/FAQreleases"
    Execution halted
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: 'Biobase::assays'
    Missing object imported by a ':::' call: 'MultiDataSet:::nrows'
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      'betas'
    correlationMethSNPs: no visible binding for global variable 'num_cores'
    plotRegion: no visible global function definition for 'data'
    plotRegion: no visible binding for global variable 'dmrcatedata'
    plotRegion: no visible binding for global variable 'tx.hg19'
    plotRegion: no visible binding for global variable 'tx.hg38'
    plotRegion: no visible binding for global variable 'tx.mm10'
    plotRegion: no visible global function definition for
      'subsetByOverlaps'
    plotRegion: no visible global function definition for 'mcols<-'
    runBlockFinder: no visible global function definition for 'assays'
    runBlockFinder: no visible global function definition for 'colData'
    runRDA: no visible global function definition for 'rowData'
    runSVA: no visible global function definition for 'resid'
    Undefined global functions or variables:
      assays betas colData data dmrcatedata mcols<- num_cores resid rowData
      subsetByOverlaps tx.hg19 tx.hg38 tx.mm10
    Consider adding
      importFrom("stats", "resid")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# metagene

Version: 2.10.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   5.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    avoid_gaps_update: no visible binding for global variable 'value'
    avoid_gaps_update: no visible binding for global variable 'bam'
    avoid_gaps_update: no visible binding for global variable '.N'
    avoid_gaps_update: no visible binding for global variable 'tab'
    avoid_gaps_update: no visible binding for global variable 'nuc'
    permutation_test: no visible global function definition for '.'
    permutation_test: no visible binding for global variable 'value'
    plot_metagene: no visible binding for global variable 'bin'
    plot_metagene: no visible binding for global variable 'value'
    plot_metagene: no visible binding for global variable 'qinf'
    plot_metagene: no visible binding for global variable 'qsup'
    plot_metagene: no visible binding for global variable 'group'
    plot_metagene: no visible binding for global variable 'nuc'
    plot_metagene: no visible binding for global variable 'design'
    plot_metagene: no visible binding for global variable 'nuctot'
    Undefined global functions or variables:
      . .N bam bin design group nuc nuctot qinf qsup tab value
    ```

# metagenomeSeq

Version: 1.20.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘interactiveDisplay’
    ```

# MetaQC

Version: 0.1.13

## In both

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

# MethylAid

Version: 1.12.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: locfit
    locfit 1.5-9.1 	 2013-03-22
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    [read.metharray.sheet] Found the following CSV files:
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'MethylAid.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

# methylumi

Version: 2.24.1

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘IDATsToMatrices’ ‘IDATtoMatrix’ ‘tcgaPipeline’
    Undocumented S4 methods:
      generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
      generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking contents of ‘data’ directory ... WARNING
    ```
    Files not of a type allowed in a ‘data’ directory:
      ‘5318317007_A_Grn.idat’ ‘5318317007_A_Red.idat’
      ‘5318317007_B_Grn.idat’ ‘5318317007_B_Red.idat’
      ‘5318317007_C_Grn.idat’ ‘5318317007_C_Red.idat’
    Please use e.g. ‘inst/extdata’ for non-R data files
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'methylumi.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.58 \usepackage
                    {hyperref}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘methyAnalysis’
    
    Depends: includes the non-default packages:
      ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
      ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
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

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        data      6.8Mb
        extdata   1.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘Biobase’ ‘minfi’ ‘lattice’ ‘matrixStats’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls to packages already attached by Depends:
      ‘FDb.InfiniumMethylation.hg19’ ‘ggplot2’ ‘matrixStats’ ‘minfi’
      ‘reshape2’ ‘scales’
      Please remove these calls from your code.
    'library' or 'require' calls in package code:
      ‘Biostrings’ ‘MASS’ ‘lumi’ ‘parallel’ ‘rtracklayer’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘graphics’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘FDb.InfiniumMethylation.hg19’ ‘ggplot2’ ‘matrixStats’ ‘methods’
      ‘reshape2’ ‘scales’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' call which should be '::': ‘lumi:::produceMethylationGEOSubmissionFile’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘Biobase:::unsafeSetSlot’ ‘genefilter:::.findCentralMap’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      IlluminaHumanMethylation450kCOLORCHANNEL MethylSet RGChannelSet
      abline addColorChannelInfo aes allele as.dist axis box capture.output
      channel.probes colMedians colQuantiles colSds colorRampPalette
      coord_flip data dnorm dropouts drops ecdf facet_grid features
      gamma.integral gamma.mle gamma.mode geom_histogram ggplot hclust
      hm27.controls hm27.ordering hm450.controls hm450.ordering huber index
      intensity lines log_trans mclapply melt mu offset opts p.adjust
      packageDescription packageVersion par plot.density pnorm points
      position_identity read.csv read.delim read.table rect rowMins
      scale_colour_manual scale_fill_manual scale_shape_manual
      scale_x_continuous scale_y_continuous scale_y_discrete
      subsetCommonProbes text theme_bw title value variable weighted.mean
    Consider adding
      importFrom("grDevices", "colorRampPalette")
      importFrom("graphics", "abline", "axis", "box", "lines", "par",
                 "points", "rect", "text", "title")
      importFrom("stats", "as.dist", "dnorm", "ecdf", "hclust", "offset",
                 "p.adjust", "pnorm", "weighted.mean")
      importFrom("utils", "capture.output", "data", "packageDescription",
                 "packageVersion", "read.csv", "read.delim", "read.table")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: estimateM.Rd:34-36: Dropping empty section \seealso
    prepare_Rd: estimateM.Rd:37-39: Dropping empty section \examples
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

# MFHD

Version: 0.0.1

## In both

*   checking whether package ‘MFHD’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MFHD/new/MFHD.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MFHD’ ...
** package ‘MFHD’ successfully unpacked and MD5 sums checked
** R
** preparing package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rgl’
ERROR: lazy loading failed for package ‘MFHD’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MFHD/new/MFHD.Rcheck/MFHD’

```
### CRAN

```
* installing *source* package ‘MFHD’ ...
** package ‘MFHD’ successfully unpacked and MD5 sums checked
** R
** preparing package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rgl’
ERROR: lazy loading failed for package ‘MFHD’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/MFHD/old/MFHD.Rcheck/MFHD’

```
# MIGSA

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MIGSA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: Genesets-enrichr
    > ### Title: List and download gene sets from enrichr database
    > ### Aliases: Genesets-enrichr enrichrGeneSets
    > ###   enrichrGeneSets,character-method enrichrGeneSets,ANY-method
    > ###   downloadEnrichrGeneSets downloadEnrichrGeneSets,character-method
    > ###   downloadEnrichrGeneSets,ANY-method
    > 
    > ### ** Examples
    > 
    > ## Lets list all the gene sets that can be downloaded from Enichr website.
    > enrichrGeneSets();
    Warning in readLines(biocURL) :
      URL 'http://www.bioconductor.org/main.html': status was 'Couldn't resolve host name'
    Error in enrichrGeneSets() : You must have internet connection.
    Calls: enrichrGeneSets -> enrichrGeneSets
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      
          Filter, Find, Map, Position, Reduce, anyDuplicated, append,
          as.data.frame, cbind, colMeans, colSums, colnames, do.call,
          duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
          lapply, lengths, mapply, match, mget, order, paste, pmax, pmax.int,
          pmin, pmin.int, rank, rbind, rowMeans, rowSums, rownames, sapply,
          setdiff, sort, table, tapply, union, unique, unsplit, which,
          which.max, which.min
      
      
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Scale for 'x' is already present. Adding another scale for 'x', which will
    replace the existing scale.
    Scale for 'y' is already present. Adding another scale for 'y', which will
    replace the existing scale.
    Loading required package: GO.db
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'MIGSA.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `multirow.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.7 \DeclareMathOperator
                            *{\argmax}{arg\,max}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# minfi

Version: 1.24.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Loading required package: bumphunter
    Loading required package: foreach
    Loading required package: iterators
    Loading required package: locfit
    locfit 1.5-9.1 	 2013-03-22
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    This is pdfTeX, Version 3.1415926-2.5-1.40.14 (TeX Live 2013)
     restricted \write18 enabled.
    entering extended mode
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'minfi.Rmd' failed with diagnostics:
    Failed to compile minfi.tex. See minfi.log for more info.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘bumphunter:::.getEstimate’
      See the note in ?`:::` about the use of this operator.
    ```

# MinimumDistance

Version: 1.22.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doSNOW’
    ```

*   checking R code for possible problems ... NOTE
    ```
    callDenovoSegments: no visible global function definition for
      ‘read.bsfiles’
    pruneTrioSet: no visible global function definition for
      ‘RangedDataList’
    read.bsfiles2: no visible binding for global variable ‘read.bsfiles’
    GenomeAnnotatedDataFrameFrom,character: no visible global function
      definition for ‘read.bsfiles’
    calculateMindist,list: no visible binding for global variable ‘elt’
    Undefined global functions or variables:
      RangedDataList elt read.bsfiles
    ```

# mixOmics

Version: 6.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mmtfa

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot.mmtfa: no visible global function definition for ‘plot’
    plot.mmtfa: no visible global function definition for ‘title’
    plot.mmtfa: no visible global function definition for ‘contour’
    plot.mmtfa: no visible global function definition for ‘rgb’
    plot.mmtfa : dunivt: no visible global function definition for
      ‘mahalanobis’
    plot.mmtfa : dunivt: no visible global function definition for ‘dnorm’
    plot.mmtfa: no visible global function definition for ‘density’
    plot.mmtfa: no visible global function definition for ‘curve’
    sginit: no visible global function definition for ‘cov.wt’
    sgupdate: no visible global function definition for ‘cov.wt’
    winit: no visible global function definition for ‘mahalanobis’
    Undefined global functions or variables:
      contour cov.wt curve density dnorm kmeans mahalanobis par plot
      rainbow rgb runif title uniroot
    Consider adding
      importFrom("grDevices", "rainbow", "rgb")
      importFrom("graphics", "contour", "curve", "par", "plot", "title")
      importFrom("stats", "cov.wt", "density", "dnorm", "kmeans",
                 "mahalanobis", "runif", "uniroot")
    to your NAMESPACE file.
    ```

# monocle

Version: 2.6.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'monocle-vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.36 \sectionfont
                     {\sffamily\bfseries\color{RoyalBlue}\sectionrule{0pt}{0pt}{...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘biocViews’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    exportCDS: no visible binding for global variable ‘use_for_ordering’
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
    get_next_node_id: no visible binding for '<<-' assignment to
      ‘next_node’
    get_next_node_id: no visible binding for global variable ‘next_node’
    make_canonical: no visible global function definition for ‘nei’
    measure_diameter_path: no visible global function definition for ‘nei’
    orderCells: no visible binding for '<<-' assignment to ‘next_node’
    plot_multiple_branches_pseudotime: no visible global function
      definition for ‘exprs<-’
    plot_multiple_branches_pseudotime: no visible binding for global
      variable ‘pseudocount’
    plot_multiple_branches_pseudotime: no visible binding for global
      variable ‘Branch’
    plot_multiple_branches_pseudotime: no visible binding for global
      variable ‘mutate’
    project2MST: no visible global function definition for ‘nei’
    Undefined global functions or variables:
      Branch Size_Factor exprs<- jaccard_coeff mutate nei next_node
      pseudocount use_for_ordering
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# motifbreakR

Version: 1.8.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘motifStack’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mrfDepth

Version: 1.0.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.4Mb
      sub-directories of 1Mb or more:
        libs  14.6Mb
    ```

# MultiBD

Version: 0.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'SIR-MCMC.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        libs   8.9Mb
    ```

# NanoStringDiff

Version: 1.9.2

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

Version: 0.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘quickPlot’ ‘SpaDES.tools’ ‘rgeos’
    
    Packages suggested but not available for checking: ‘fastshp’ ‘SpaDES.core’
    
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

# pandaR

Version: 1.10.0

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

Version: 1.4.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘PathoStat-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: createPathoStat
    > ### Title: Generates a PathoStat object from the PathoScope reports for
    > ###   further analysis using the interactive shiny app
    > ### Aliases: createPathoStat
    > 
    > ### ** Examples
    > 
    > example_data_dir <- system.file("example/data", package = "PathoStat")
    > pstat <- createPathoStat(input_dir=example_data_dir, 
    +     sample_data_file="sample_data.tsv")
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: eutils.ncbi.nlm.nih.gov; Name or service not known
    Calls: createPathoStat ... request_fetch -> request_fetch.write_memory -> <Anonymous> -> .Call
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      7: httr::GET(uri, query = args, config = config)
      8: request_perform(req, hu$handle$handle)
      9: request_fetch(req$output, req$url, handle)
      10: request_fetch.write_memory(req$output, req$url, handle)
      11: curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 13 SKIPPED: 0 FAILED: 4
      1. Error: createPathoStat (@test_PathoStat.R#6) 
      2. Error: findTaxonLevel (@test_PathoStat.R#79) 
      3. Error: findTaxonomy (@test_PathoStat.R#90) 
      4. Error: findTaxonMat (@test_PathoStat.R#101) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 36-38 (PathoStatAdvanced.Rmd) 
    Error: processing vignette 'PathoStatAdvanced.Rmd' failed with diagnostics:
    Could not resolve host: eutils.ncbi.nlm.nih.gov; Name or service not known
    Execution halted
    ```

# pcaMethods

Version: 1.70.0

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

Version: 1.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

Version: 1.4.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Warning in has_utility("pdfcrop") :
      pdfcrop not installed or not in PATH
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Pigengene_inference.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘AnnotationDbi’ ‘biomaRt’ ‘energy’ ‘org.Hs.eg.db’ ‘org.Mm.eg.db’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported object imported by a ':::' call: ‘C50:::as.party.C5.0’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘Pigengene/R/bn.calculation.R’:
      assignInNamespace("supported.clusters", fixArgs, "bnlearn")
    
    check.pigengene.input: no visible global function definition for
      ‘setNames’
    welch.pvalue: no visible global function definition for ‘as.formula’
    welch.pvalue: no visible global function definition for ‘oneway.test’
    Undefined global functions or variables:
      as.formula oneway.test setNames
    Consider adding
      importFrom("stats", "as.formula", "oneway.test", "setNames")
    to your NAMESPACE file.
    ```

# QDNAseq

Version: 1.14.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    25324334808544135.336.738865427951103207.660.738865426552955207.650
    FINISHED!
    
    Total time:0minutes
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'QDNAseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
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

# RnBeads

Version: 1.10.7

## In both

*   checking whether package ‘RnBeads’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘combine’
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/00install.out’ for details.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘combine’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘cluster’ ‘ff’
      ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’ ‘matrixStats’
      ‘illuminaio’ ‘methylumi’ ‘plyr’
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

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        bin   1.0Mb
        doc   3.2Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘RnBeads’ for: ‘samples’
    Warning: multiple methods tables found for ‘combine’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
      'grDevices:::.smoothScatterCalcDensity'
      'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
      'minfi:::.normalizeFunnorm450k'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      IdeogramTrack IlluminaHumanMethylation450kmanifest
      IlluminaHumanMethylationEPICmanifest Index Intensity Measure
      PairsBootRefFreeEwasModel Probe RGChannelSet Rd2HTML RefFreeEwasModel
      SNP Sample Slide Target Term UcscTrack Value addSex as.profileCGH
      assayDataElement assayDataElementNames barcode bv chrom combinedRank
      combinedRank.var comma covgMedian covgPercLow covgPercUp cv.glmnet
      daglad diffmeth diffmeth.p.adj.fdr diffmeth.p.val
      dinucleotideFrequency eps expectedCounts featureData featureData<-
      featureNames featureNames<- foreach geneCounts genome<- getCN
      getDoParWorkers getGreen getManifest getMeth getRed getSex getUnmeth
      getVarCov glmnet grid.draw grid.newpage group group1 group2 i
      impute.knn intensities is.subsegmentation k letterFrequency lme
      loadRegionDB log10FDR log10P mapToGenome mean.diff mean.quot.log2
      melt mergeRegionDBs muted n.sites ng.2 num.sites numSites
      numeric.names oddsRatios p.vals.t.na.adj p.valsvar..na.adj pData
      percent_format phenoData phenoData<- plotTracks preprocessSWAN
      pvalues qvalue refText reg.type region.size registerDoParallel
      relative.coord report rnb.logger.info rnb.logger.status runLOLA
      samples seqlengths seqlevels<- sigCategories sites2ignore size
      solve.QP stopCluster sva target tsne type types universeCounts
      useMart v var.diff varFit varLabels x xmlValue y yint
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Warning: multiple methods tables found for ‘combine’
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'RnBeads.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `vmargin.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    [american]{babel}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# RTransProb

Version: 0.2.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Aliases: fromThresholds
    > 
    > ### ** Examples
    > 
    > 
    > rc <- c("AAA", "AA", "A", "BBB", "BB", "B", "CCC", "D")
    > t<- matrix(c(Inf,-1.3656,-2.1806,-3.0781,-3.5482,-4.1612,-4.2591,-4.8399,
    +              Inf, 1.5712,-1.5217,-2.3028,-2.6872,-3.5256,-3.7324,-4.1972,
    +              Inf, 2.6895, 1.3806,-1.2901,-2.3422,-2.8928,-3.0063,-3.7861,
    +              Inf, 3.1004, 2.5623, 1.4479,-1.5211,-2.1407,-2.434,	-3.2814,
    +              Inf, 3.4339, 2.6156, 2.4434, 1.4561,-1.4573,-1.9742,-2.4668,
    +              Inf, 2.5852, 2.5586, 2.4218, 2.268,	 1.6737,-1.6194,-2.252,
    +              Inf, 3.6953, 3.6362, 3.3406, 2.5019, 2.2394, 1.6263,-1.3853,
    +              Inf, Inf,	   Inf,	   Inf,	   Inf,	   Inf,	   Inf,	   Inf
    + ), 8,8, dimnames = list(rc,rc), byrow=TRUE)
    > 
    > 
    > transmatrix <- fromThresholds(t)
    Error in if (!(thresh[, 1] %in% Inf)) { : the condition has length > 1
    Calls: fromThresholds
    Execution halted
    ```

*   checking whether package ‘RTransProb’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/RTransProb/new/RTransProb.Rcheck/00install.out’ for details.
    ```

# samr

Version: 2.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls to packages already attached by Depends:
      ‘impute’ ‘matrixStats’
      Please remove these calls from your code.
    Packages in Depends field not imported from:
      ‘impute’ ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    samr.plot: no visible global function definition for ‘abline’
    samr.tail.strength: no visible global function definition for ‘var’
    samr.xl.compute.plot.xy: no visible global function definition for
      ‘points’
    samr.xl.compute.plot.xy: no visible global function definition for
      ‘abline’
    samr.xl.impute.data: no visible global function definition for
      ‘impute.knn’
    samr.xl.impute.data: no visible binding for global variable
      ‘samr.xl.var.knn.neighbors’
    Undefined global functions or variables:
      abline dev.off impute.knn lines mad median mtext par plot points
      predict quantile rowMedians rpois runif samr.xl.var.knn.neighbors
      smooth.spline title var
    Consider adding
      importFrom("grDevices", "dev.off")
      importFrom("graphics", "abline", "lines", "mtext", "par", "plot",
                 "points", "title")
      importFrom("stats", "mad", "median", "predict", "quantile", "rpois",
                 "runif", "smooth.spline", "var")
    to your NAMESPACE file.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'samr-internal':
      ‘plot.SAMoutput’ ‘print.SAMoutput’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# scater

Version: 1.6.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        doc       5.1Mb
        extdata   2.9Mb
        libs      2.9Mb
    ```

# scmap

Version: 1.1.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'scmap.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    1.3Mb
        libs   1.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Biobase’
      All declared Imports should be used.
    ```

# scone

Version: 1.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5: bplapply(seq_len(NROW(sc_params)), function(i) scaling[[sc_params[i, 2]]](imputed[[sc_params[i, 
             1]]]), BPPARAM = bpparam)
      6: bpstart(BPPARAM, length(X))
      7: bpstart(BPPARAM, length(X))
      8: .local(x, ...)
      9: .bpfork(nnodes, bptimeout(x), .hostname(x), .port(x))
      10: .bpforkConnect(host, port, rank, timeout)
      11: socketConnection(host, port, TRUE, TRUE, "a+b", timeout = timeout)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 58 SKIPPED: 0 FAILED: 1
      1. Error: all back-ends work (@test_bpparam.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘scone-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: SCRAN_FN
    > ### Title: Simple deconvolution normalization wrapper
    > ### Aliases: SCRAN_FN
    > 
    > ### ** Examples
    > 
    > ei <- matrix(0:76,nrow = 7)
    > eo <- SCRAN_FN(ei)
    Error in SCRAN_FN(ei) : scran package needed for SCRAN_FN()
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    sconeReport : server: no visible global function definition for ‘theme’
    sconeReport : server: no visible global function definition for
      ‘element_blank’
    sconeReport : server: no visible global function definition for
      ‘ggplotly’
    sconeReport : server: no visible global function definition for
      ‘geom_violin’
    sconeReport : server: no visible global function definition for
      ‘coord_cartesian’
    sconeReport : server: no visible global function definition for
      ‘scale_fill_manual’
    sconeReport : server: no visible global function definition for
      ‘geom_point’
    sconeReport : server: no visible global function definition for
      ‘guides’
    Undefined global functions or variables:
      %>% aes coord_cartesian element_blank geom_bar geom_point geom_violin
      ggplot ggplotly guides labs plot_ly plotlyOutput renderVisNetwork
      scale_fill_manual theme visEdges visGroups visHierarchicalLayout
      visLegend visNetwork visNetworkOutput visNetworkProxy visOptions
      visSelectNodes ylim
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

# shinyMethyl

Version: 1.14.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    Loading required package: shiny
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'shinyMethyl.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    server.shinyMethyl : <anonymous>: no visible global function definition
      for ‘lines’
    server.shinyMethyl : <anonymous>: no visible global function definition
      for ‘legend’
    ui.shinyMethyl: no visible binding for '<<-' assignment to
      ‘sampleColors’
    shinySummarize,GenomicRatioSet: no visible global function definition
      for ‘prcomp’
    shinySummarize,RGChannelSet: no visible global function definition for
      ‘prcomp’
    Undefined global functions or variables:
      abline complete.cases current.control.type current.density.type
      current.probe.type genderCutoff grid legend lines lm
      mouse.click.indices palette par plot points prcomp rect write.csv
    Consider adding
      importFrom("grDevices", "palette")
      importFrom("graphics", "abline", "grid", "legend", "lines", "par",
                 "plot", "points", "rect")
      importFrom("stats", "complete.cases", "lm", "prcomp")
      importFrom("utils", "write.csv")
    to your NAMESPACE file.
    ```

# SICtools

Version: 1.8.0

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
/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/etc/Makeconf:159: warning: ignoring old recipe for target `.c.o'
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
/netapp/home/hb/shared/apps/manual/r/R-3.4.3-20180109/lib64/R/etc/Makeconf:159: warning: ignoring old recipe for target `.c.o'
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

Version: 1.6.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    final dispersion estimates
    Warning: Removed 1634 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1634 rows containing non-finite values (stat_boxplot).
    Warning: Removed 1454 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1454 rows containing non-finite values (stat_boxplot).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mTECs.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 908.2Mb
      sub-directories of 1Mb or more:
        data  898.7Mb
        doc     9.4Mb
    ```

# sizeMat

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mcmc’
      All declared Imports should be used.
    ```

# splatter

Version: 1.2.1

## In both

*   checking whether package ‘splatter’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/splatter/new/splatter.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘scDD’ ‘zinbwave’ ‘BASiCS’
    ```

## Installation

### Devel

```
* installing *source* package ‘splatter’ ...
** R
** inst
** preparing package for lazy loading
Error: package or namespace load failed for ‘scater’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/netapp/home/hb/repositories/matrixStats/revdep/library/splatter/scater/libs/scater.so':
  libbeachmat.so: cannot open shared object file: No such file or directory
Error : package ‘scater’ could not be loaded
ERROR: lazy loading failed for package ‘splatter’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/splatter/new/splatter.Rcheck/splatter’

```
### CRAN

```
* installing *source* package ‘splatter’ ...
** R
** inst
** preparing package for lazy loading
Error: package or namespace load failed for ‘scater’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/netapp/home/hb/repositories/matrixStats/revdep/library/splatter/scater/libs/scater.so':
  libbeachmat.so: cannot open shared object file: No such file or directory
Error : package ‘scater’ could not be loaded
ERROR: lazy loading failed for package ‘splatter’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/splatter/old/splatter.Rcheck/splatter’

```
# SRGnet

Version: 1.4.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘EBcoexpress’ ‘MASS’ ‘igraph’ ‘pvclust’ ‘gbm’ ‘limma’ ‘DMwR’
      ‘matrixStats’ ‘Hmisc’
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

# stm

Version: 1.3.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Completed M-Step. 
      ....................................................................................................
      Completed Group 1 E-Step (0 seconds). 
      Completed M-Step. 
      Model Terminated Before Convergence Reached 
      ── 1. Error: plot.STM doesn't throw error  (@test-visualize.R#4)  ──────────────
      cannot open the connection to 'http://goo.gl/VPdxlS'
      1: load(url("http://goo.gl/VPdxlS")) at testthat/test-visualize.R:4
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 10 SKIPPED: 0 FAILED: 1
      1. Error: plot.STM doesn't throw error  (@test-visualize.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    stm v1.3.3 (2018-1-26) successfully loaded. See ?stm for help. 
     Papers, resources, and other materials at structuraltopicmodel.com
    Warning in load(url("http://goo.gl/VPdxlS")) :
      URL 'http://goo.gl/VPdxlS': status was 'Couldn't resolve host name'
    
    Error: processing vignette 'stmVignette.Rnw' failed with diagnostics:
     chunk 7 
    Error in load(url("http://goo.gl/VPdxlS")) : 
      cannot open the connection to 'http://goo.gl/VPdxlS'
    Execution halted
    ```

# STROMA4

Version: 1.2.0

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

# StructFDR

Version: 1.2

## In both

*   checking examples ... ERROR
    ```
    ...
    + 	obj <- apply(X, 1, function(x) {
    + 				ttest.obj <- t.test(x ~ Y)
    + 				c(ttest.obj$p.value, sign(ttest.obj$statistic))
    + 			})
    +     return(list(p.value=obj[1, ], e.sign=obj[2, ]))
    + }
    > 
    > perm.func <- function (X, Y) {
    + 	return(list(X=X, Y=sample(Y)))
    + }
    > 
    > # Call StructFDR
    > tree.fdr.obj <- StructFDR(X, Y, D, test.func, perm.func)
    Warning in StructFDR(X, Y, D, test.func, perm.func) :
      Both the data matrix and the distance matrix should have labels (rownames) to avoid potential errors!
    
    Test on original data sets  ...
    Test on permuted data sets  ...
    Error in if (alt.FDR == "Permutation") { : the condition has length > 1
    Calls: StructFDR
    Execution halted
    ```

# summarytools

Version: 0.8.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘Hmisc’ in Rd xrefs
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked Latin-1 strings
    ```

# sva

Version: 3.26.0

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Adjusting for0covariate(s) or covariate level(s)
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'sva.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# tenXplore

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 30-61 (tenXplore.Rmd) 
    Error: processing vignette 'tenXplore.Rmd' failed with diagnostics:
    could not find function "Biocpkg"
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    tenXplore: no visible binding for global variable ‘CellTypes’
    Undefined global functions or variables:
      CellTypes
    ```

# topGO

Version: 2.30.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ## GenTable
    > ########################################
    > 
    > ## load two topGOresult sample objects: resultFisher and resultKS
    > data(results.tGO)
    > 
    > ## generate the result of Fisher's exact test
    > sig.tab <- GenTable(GOdata, Fis = resultFisher, topNodes = 20)
    > 
    > ## results of both test
    > sig.tab <- GenTable(GOdata, resultFisher, resultKS, topNodes = 20)
    > 
    > ## results of both test with specified names
    > sig.tab <- GenTable(GOdata, Fis = resultFisher, KS = resultKS, topNodes = 20)
    > 
    > ## results of both test with specified names and specified ordering
    > sig.tab <- GenTable(GOdata, Fis = resultFisher, KS = resultKS, orderBy = "KS", ranksOf = "Fis", topNodes = 20)
    Error in data.frame(`GO ID` = whichTerms, Term = shortNames, stringsAsFactors = FALSE) : 
      row names contain missing values
    Calls: GenTable -> GenTable -> .local -> data.frame
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
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
    Missing object imported by a ':::' call: ‘globaltest:::globaltest’
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
    			 -- Classic Algorithm -- 
    
    		 the algorithm is scoring 4040 nontrivial nodes
    		 parameters: 
    			 test statistic: fisher
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'topGO.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.11 \usepackage
                    {caption}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ttScreening

Version: 1.5

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    ttScreening: no visible global function definition for ‘gaussian’
    ttScreening: no visible global function definition for ‘glm.control’
    ttScreening: no visible global function definition for ‘model.response’
    ttScreening: no visible global function definition for ‘is.empty.model’
    ttScreening: no visible global function definition for ‘model.matrix’
    ttScreening: no visible global function definition for ‘na.omit’
    ttScreening: no visible global function definition for ‘terms’
    ttScreening: no visible global function definition for ‘capture.output’
    ttScreening: no visible global function definition for ‘glm’
    ttScreening: no visible binding for global variable ‘gaussian’
    ttScreening: no visible global function definition for ‘pt’
    ttScreening: no visible global function definition for ‘p.adjust’
    Undefined global functions or variables:
      capture.output gaussian glm glm.control is.empty.model model.matrix
      model.response na.omit p.adjust pt terms
    Consider adding
      importFrom("stats", "gaussian", "glm", "glm.control", "is.empty.model",
                 "model.matrix", "model.response", "na.omit", "p.adjust",
                 "pt", "terms")
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
    ```

# VanillaICE

Version: 1.40.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘doMC’ ‘doMPI’ ‘doSNOW’ ‘doParallel’ ‘doRedis’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BSgenome.Hsapiens.UCSC.hg18’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘SummarizedExperiment:::.ShallowSimpleListAssays0’
      See the note in ?`:::` about the use of this operator.
    ```

# wateRmelon

Version: 1.22.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Biobase’ ‘limma’ ‘matrixStats’ ‘methylumi’ ‘lumi’ ‘ROC’
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘illuminaio’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘Biobase’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘ROC’ ‘illuminaio’
      ‘limma’ ‘lumi’ ‘matrixStats’ ‘methods’ ‘methylumi’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘minfi:::.isRGOrStop’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      .mclapply IlluminaHumanMethylation450kanno.ilmn12.hg19 MethylSet
      PATH_RES QCdata QCdata<- RGChannelSetExtended addAnnotationInfo
      addControlData2methyLumiM as betas betas<- colData colMedians
      controlData<- data density detectionP epic.controls epic.ordering
      getAnnotation getBeta getControlAddress getGreen getManifestInfo
      getMeth getNBeads getProbeInfo getRed getSnpBeta getUnmeth
      hm27.controls hm27.ordering hm450.controls hm450.ordering
      intensitiesByChannel is kmeans lm lumiMethyB mad median metadata
      methylated methylated<- methylumiR n.sd na.exclude new
      normalizeQuantiles pAUC packageVersion preprocessRaw preprocessSWAN
      probeAnnotationsCategory projectName pval.detect<- pvals qchisq
      quantile read.csv read.table readIDAT rocdemo.sca sd t.test
      unmethylated unmethylated<- warn write.csv write.table
    Consider adding
      importFrom("methods", "as", "is", "new")
      importFrom("stats", "density", "kmeans", "lm", "mad", "median",
                 "na.exclude", "qchisq", "quantile", "sd", "t.test")
      importFrom("utils", "data", "packageVersion", "read.csv", "read.table",
                 "write.csv", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# XBSeq

Version: 1.8.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following objects are masked from 'package:Biobase':
    
        anyMissing, rowMedians
    
    
    Attaching package: 'DelayedArray'
    
    The following objects are masked from 'package:matrixStats':
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following object is masked from 'package:base':
    
        apply
    
        Welcome to 'XBSeq'.
    Warning: The 'python' engine in knitr requires the reticulate package. If you do not want to use the reticulate package, set the chunk option python.reticulate = FALSE.
    Quitting from lines 58-60 (XBSeq.Rmd) 
    Error: processing vignette 'XBSeq.Rmd' failed with diagnostics:
    there is no package called 'reticulate'
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘XBSeq’ for: ‘conditions’, ‘conditions<-’, ‘dispTable’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for ‘assay’
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for ‘assay<-’
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘conditions’
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘dispTable<-’
    Undefined global functions or variables:
      ..count.. DataFrame Gamma Group Sample SummarizedExperiment assay
      assay<- assays baseMean coefficients complete.cases conditions cor
      data ddelap dispTable dispTable<- dnbinom dpois formula glm
      log2FoldChange median optim p.adjust pbeta predict qbeta quantile
      rnbinom scvBiasCorrectionFits
    Consider adding
      importFrom("stats", "Gamma", "coefficients", "complete.cases", "cor",
                 "dnbinom", "dpois", "formula", "glm", "median", "optim",
                 "p.adjust", "pbeta", "predict", "qbeta", "quantile",
                 "rnbinom")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# yarn

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Title: Annotate your Expression Set with biomaRt
    > ### Aliases: annotateFromBiomart
    > 
    > ### ** Examples
    > 
    > 
    > data(skin)
    > # subsetting and changing column name just for a silly example
    > skin <- skin[1:10,]
    > colnames(fData(skin)) = paste("names",1:6)
    > host<-"dec2013.archive.ensembl.org"; biomart<-"ENSEMBL_MART_ENSEMBL";
    > genes <- sapply(strsplit(rownames(skin),split="\\."),function(i)i[1])
    > newskin <-annotateFromBiomart(skin,genes=genes,biomar=biomart,host=host)
    Request to BioMart web service failed.
    The BioMart web service you're accessing may be down.
    Check the following URL and see if this website is available:
    http://dec2013.archive.ensembl.org:80/biomart/martservice?type=registry&requestid=biomaRt
    Error in if (!grepl(x = registry, pattern = "^\n*<MartRegistry>")) { : 
      argument is of length zero
    Calls: annotateFromBiomart -> useMart -> listMarts
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'yarn.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

# zinbwave

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

