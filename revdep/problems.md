# adjclust

Version: 0.5.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    Loading required package: S4Vectors
    Loading required package: stats4
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: GenomicRanges
    Loading required package: GenomeInfoDb
    minrange= 1  - maxrange= 10
    Bin size 'xgi' =501579 [1x501579]
    Bin size 'ygi' =501579 [1x501579]
    minrange= 12  - maxrange= 1022
    Error: processing vignette 'hicClust.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'Matrix'
      All declared Imports should be used.
    ```

# antiProfiles

Version: 1.16.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ev: no visible global function definition for 'predict'
    ev: no visible global function definition for 'smoothScatter'
    ev : f1: no visible global function definition for 'predict'
    ev: no visible global function definition for 'curve'
    Undefined global functions or variables:
      curve predict smoothScatter
    Consider adding
      importFrom("graphics", "curve", "smoothScatter")
      importFrom("stats", "predict")
    to your NAMESPACE file.
    ```

# aroma.core

Version: 3.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit' 'expectile' 'HaarSeg' 'mpcbs'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.6Mb
      sub-directories of 1Mb or more:
        R  1024.5Mb
    ```

# aroma.light

Version: 3.6.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'latin1'  in an ASCII locale
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

# BayesTwin

Version: 1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rjags'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# bdynsys

Version: 1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_data: no visible global function definition for 'dev.set'
    plot_data: no visible global function definition for 'postscript'
    plot_data: no visible global function definition for 'plot'
    plot_data: no visible global function definition for 'matplot'
    plot_data: no visible global function definition for 'points'
    plot_data: no visible global function definition for 'legend'
    plot_data: no visible global function definition for 'dev.off'
    polyfitbayes: no visible global function definition for 'runif'
    polyfitbayes: no visible global function definition for 'var'
    polyfitreg: no visible global function definition for 'lm'
    polyfitreg: no visible binding for global variable 'na.exclude'
    polyfitreg: no visible global function definition for 'var'
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

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'genalg'
    ```

# bnclassify

Version: 0.3.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'memoise'
    ```

# bsseq

Version: 1.12.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.9Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'HDF5Array'
      All declared Imports should be used.
    ```

# childhoodmortality

Version: 0.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# Clomial

Version: 1.12.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    Clomial: no visible global function definition for 'runif'
    Clomial.generate.data: no visible global function definition for
      'runif'
    Clomial.generate.data: no visible global function definition for
      'rbinom'
    Clomial.likelihood: no visible global function definition for 'dbinom'
    Phi: no visible global function definition for 'dbinom'
    choose.best: no visible global function definition for 'tail'
    compute.P.reparam : update.Wj: no visible global function definition
      for 'optim'
    compute.P.reparam : plot.obj: no visible global function definition for
      'plot'
    compute.q: no visible global function definition for 'dbinom'
    Undefined global functions or variables:
      dbinom optim plot rbinom runif tail
    Consider adding
      importFrom("graphics", "plot")
      importFrom("stats", "dbinom", "optim", "rbinom", "runif")
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# CopywriteR

Version: 2.8.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for 'text'
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for 'axis'
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for 'abline'
    plotCNA : <anonymous> : <anonymous>: no visible global function
      definition for 'dev.off'
    preCopywriteR: no visible global function definition for 'as'
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

# cosinor2

Version: 0.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# DAMOCLES

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      'cophenetic'
    DAMOCLES_bootstrap: no visible global function definition for 'sd'
    DAMOCLES_bootstrap: no visible global function definition for
      'quantile'
    DAMOCLES_sim: no visible global function definition for 'na.omit'
    DAMOCLES_sim: no visible global function definition for 'runif'
    DAMOCLES_sim: no visible global function definition for 'lines'
    DAMOCLES_sim: no visible global function definition for 'rnorm'
    DAMOCLES_sim: no visible global function definition for 'dexp'
    DAMOCLES_sim: no visible global function definition for 'dist'
    DAMOCLES_simplex: no visible global function definition for
      'flush.console'
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

Version: 0.9.8

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# DisHet

Version: 0.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        example  1024.0Mb
    ```

# dplR

Version: 1.6.6

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# DPWeibull

Version: 1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# EMDomics

Version: 2.6.0

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
      'median'
    calculate_cvm_gene: no visible global function definition for 'combn'
    calculate_emd: no visible global function definition for 'combn'
    calculate_emd : <anonymous>: no visible global function definition for
      'median'
    calculate_emd_gene: no visible global function definition for 'combn'
    calculate_ks: no visible global function definition for 'combn'
    calculate_ks : <anonymous>: no visible global function definition for
      'p.adjust'
    calculate_ks : <anonymous>: no visible global function definition for
      'median'
    calculate_ks_gene: no visible global function definition for 'combn'
    calculate_ks_gene: no visible global function definition for 'ks.test'
    Undefined global functions or variables:
      combn hist ks.test median p.adjust
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "ks.test", "median", "p.adjust")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

*   checking files in 'vignettes' ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      'figure'
    Please remove from your package.
    ```

# EnrichedHeatmap

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2049.5Mb
      sub-directories of 1Mb or more:
        doc      1024.1Mb
        extdata  1025.2Mb
    ```

# FADA

Version: 1.3.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        data  1024.1Mb
    ```

# FastHCS

Version: 0.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1025.4Mb
      sub-directories of 1Mb or more:
        data     1.3Mb
        libs  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FHCSpsdo: no visible global function definition for 'is'
    FastHCS: no visible global function definition for 'complete.cases'
    compPcaParams: no visible global function definition for 'quantile'
    compPcaParams: no visible global function definition for 'qchisq'
    compPcaParams: no visible global function definition for 'qnorm'
    compPcaParams: no visible global function definition for 'sd'
    plot.FastHCS: no visible global function definition for 'plot'
    plot.FastHCS: no visible global function definition for 'abline'
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
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FastPCS: no visible global function definition for 'complete.cases'
    FastPCS: no visible global function definition for 'cov'
    FastPCS: no visible global function definition for 'mahalanobis'
    FastPCS: no visible global function definition for 'qchisq'
    FastPCS: no visible global function definition for 'quantile'
    plot.FastPCS: no visible global function definition for 'plot'
    plot.FastPCS: no visible global function definition for 'abline'
    plot.FastPCS: no visible global function definition for 'qchisq'
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
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# filesstrings

Version: 2.0.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'dplyr'
    ```

# fslr

Version: 2.12

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'R.utils' 'grDevices' 'graphics' 'matrixStats' 'stats'
      All declared Imports should be used.
    ```

# gcapc

Version: 1.0.9

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    
    Attaching package: 'Biostrings'
    
    The following object is masked from 'package:base':
    
        strsplit
    
    Error: processing vignette 'gcapc.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

# GeneralizedUmatrix

Version: 0.9.5

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# GenRank

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.4Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    CombP: no visible global function definition for 'read.table'
    ComputeCE: no visible global function definition for 'read.table'
    ComputeCE: no visible global function definition for 'complete.cases'
    ComputeRP: no visible global function definition for 'read.table'
    ComputeRP: no visible global function definition for 'complete.cases'
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
    Package required but not available: 'Rmpfr'
    
    Package which this enhances but not available for checking: 'sp'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# haploReconstruct

Version: 0.1.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# kgschart

Version: 1.3.5

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
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

*   checking whether package 'LS2Wstat' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See '/cbc/henrik/repositories/matrixStats/revdep/checks/LS2Wstat/new/LS2Wstat.Rcheck/00install.out' for details.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    TOS2D: no visible global function definition for 'medpolish'
    countTextures: no visible global function definition for 'medpolish'
    plot.imageQT: no visible global function definition for 'segments'
    simTexture: no visible global function definition for 'rnorm'
    Undefined global functions or variables:
      medpolish rnorm segments
    Consider adding
      importFrom("graphics", "segments")
      importFrom("stats", "medpolish", "rnorm")
    to your NAMESPACE file.
    ```

# MetaQC

Version: 0.1.13

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to 'survival' in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      'foreach' 'iterators' 'proto'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      'as.dist'
    requireAll: no visible global function definition for
      'installed.packages'
    requireAll: no visible binding for global variable 'biocLite'
    requireAll: no visible global function definition for 'biocLite'
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

# MFHD

Version: 0.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      'plot'
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      'points'
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      'lines'
    plot.bagplot: no visible global function definition for 'boxplot'
    plot.bagplot: no visible global function definition for 'plot'
    plot.bagplot: no visible global function definition for 'points'
    plot.bagplot: no visible global function definition for 'segments'
    plot.bagplot: no visible global function definition for 'text'
    plot.bagplot: no visible global function definition for 'lines'
    plot.bagplot: no visible global function definition for 'polygon'
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

# mmtfa

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot.mmtfa: no visible global function definition for 'plot'
    plot.mmtfa: no visible global function definition for 'title'
    plot.mmtfa: no visible global function definition for 'contour'
    plot.mmtfa: no visible global function definition for 'rgb'
    plot.mmtfa : dunivt: no visible global function definition for
      'mahalanobis'
    plot.mmtfa : dunivt: no visible global function definition for 'dnorm'
    plot.mmtfa: no visible global function definition for 'density'
    plot.mmtfa: no visible global function definition for 'curve'
    sginit: no visible global function definition for 'cov.wt'
    sgupdate: no visible global function definition for 'cov.wt'
    winit: no visible global function definition for 'mahalanobis'
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

# MoEClust

Version: 1.0.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# MPAgenomics

Version: 1.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'R.devices' 'R.filesets' 'R.methodsS3' 'R.oo' 'aroma.affymetrix'
      'aroma.cn' 'aroma.core' 'aroma.light' 'matrixStats' 'snowfall'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported object imported by a ':::' call: 'cghseg:::segmeanCO'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    markerSelection: no visible global function definition for 'read.csv'
    postsegnormalize: no visible global function definition for 'median'
    segFracBSignal: no visible global function definition for 'read.csv'
    segFracBSignal : <anonymous>: no visible global function definition for
      'points'
    segFracBSignal : <anonymous>: no visible global function definition for
      'lines'
    segFracBSignal : <anonymous>: no visible global function definition for
      'write.table'
    tumorboostPlot: no visible global function definition for 'head'
    tumorboostPlot: no visible global function definition for 'par'
    tumorboostPlot: no visible global function definition for 'axis'
    tumorboostPlot: no visible global function definition for 'points'
    Undefined global functions or variables:
      axis head lines lm mad median optim par points read.csv sd var
      write.table
    Consider adding
      importFrom("graphics", "axis", "lines", "par", "points")
      importFrom("stats", "lm", "mad", "median", "optim", "sd", "var")
      importFrom("utils", "head", "read.csv", "write.table")
    to your NAMESPACE file.
    ```

# mrfDepth

Version: 1.0.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.8Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# NanoStringDiff

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      'optimize'
    glmfit.full: no visible global function definition for 'lm'
    glmfit.full: no visible global function definition for 'median'
    glmfit.full: no visible global function definition for 'IQR'
    glmfit.full : get.phi: no visible global function definition for
      'optimize'
    glmfit.full : get.beta.full: no visible global function definition for
      'optim'
    glmfit.reduce: no visible global function definition for 'lm'
    glmfit.reduce : get.beta.reduce: no visible global function definition
      for 'optim'
    rnegbinom: no visible global function definition for 'rpois'
    rnegbinom: no visible global function definition for 'rgamma'
    Undefined global functions or variables:
      IQR glm lm median optim optimize p.adjust pchisq poisson read.table
      rgamma rpois
    Consider adding
      importFrom("stats", "IQR", "glm", "lm", "median", "optim", "optimize",
                 "p.adjust", "pchisq", "poisson", "rgamma", "rpois")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

# NSA

Version: 0.0.32

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'R.methodsS3' 'MASS' 'matrixStats' 'R.oo' 'R.utils' 'aroma.core'
      'aroma.affymetrix' 'DNAcopy'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        exData  1024.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'DNAcopy' 'MASS' 'R.methodsS3' 'R.oo' 'aroma.affymetrix' 'aroma.core'
      'matrixStats'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      'trim'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'throw'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'str'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'rowAlls'
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

Version: 1.8.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    dFunction: no visible global function definition for 'cor'
    importPandaMatlab: no visible global function definition for
      'read.delim'
    panda: no visible global function definition for 'cor'
    panda: no visible global function definition for 'aggregate'
    plot.panda: no visible global function definition for 'hist'
    plotCommunityDetection: no visible global function definition for
      'title'
    plotZbyTF: no visible global function definition for 'aggregate'
    prepResult: no visible global function definition for 'pnorm'
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
      'plot.panda'
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# pcaMethods

Version: 1.68.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    svdImpute: no visible global function definition for 'prcomp'
    svdPca: no visible global function definition for 'prcomp'
    plot,pcaRes: no visible global function definition for 'gray'
    plot,pcaRes: no visible global function definition for 'barplot'
    plot,pcaRes: no visible global function definition for 'legend'
    slplot,pcaRes: no visible global function definition for 'par'
    slplot,pcaRes: no visible global function definition for 'layout'
    slplot,pcaRes: no visible global function definition for 'abline'
    slplot,pcaRes: no visible global function definition for 'lines'
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

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'ade4'
    ```

# phosphonormalizer

Version: 1.0.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: 'MSnbase'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# POMaSPU

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1025.9Mb
      sub-directories of 1Mb or more:
        data-ex  1024.0Mb
    ```

# QDNAseq

Version: 1.12.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'exportVCF'
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# r2dRue

Version: 1.0.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# randomizationInference

Version: 1.0.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    anovaF: no visible global function definition for 'anova'
    anovaF: no visible global function definition for 'lm'
    randInterval: no visible global function definition for 'quantile'
    randInterval : <anonymous>: no visible global function definition for
      'quantile'
    randPlot: no visible global function definition for 'par'
    randPlot: no visible global function definition for 'hist'
    randPlot: no visible global function definition for 'abline'
    Undefined global functions or variables:
      abline anova hist lm par quantile
    Consider adding
      importFrom("graphics", "abline", "hist", "par")
      importFrom("stats", "anova", "lm", "quantile")
    to your NAMESPACE file.
    ```

# RTransProb

Version: 0.2.0

## In both

*   checking whether package 'RTransProb' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See '/cbc/henrik/repositories/matrixStats/revdep/checks/RTransProb/new/RTransProb.Rcheck/00install.out' for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
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
      'impute' 'matrixStats'
      Please remove these calls from your code.
    Packages in Depends field not imported from:
      'impute' 'matrixStats'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    samr.plot: no visible global function definition for 'abline'
    samr.tail.strength: no visible global function definition for 'var'
    samr.xl.compute.plot.xy: no visible global function definition for
      'points'
    samr.xl.compute.plot.xy: no visible global function definition for
      'abline'
    samr.xl.impute.data: no visible global function definition for
      'impute.knn'
    samr.xl.impute.data: no visible binding for global variable
      'samr.xl.var.knn.neighbors'
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
      'plot.SAMoutput' 'print.SAMoutput'
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# SICtools

Version: 1.6.0

## In both

*   checking whether package 'SICtools' can be installed ... ERROR
    ```
    Installation failed.
    See '/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out' for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Rsamtools' 'doParallel' 'Biostrings' 'stringr' 'matrixStats' 'plyr'
      'GenomicRanges' 'IRanges'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

## Installation

### Devel

```
* installing *source* package 'SICtools' ...
** libs
** arch - 
Makefile:24: warning: overriding commands for target `.c.o'
/home/shared/cbc/software_cbc/R/R-3.4.3-20171130/lib64/R/etc/Makeconf:159: warning: ignoring old commands for target `.c.o'
make[1]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function 'worker_aux':
bgzf.c:392:9: warning: variable 'tmp' set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function 'bgzf_close':
bgzf.c:572:11: warning: variable 'count' set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function 'resolve_cigar2':
bam_pileup.c:75:9: warning: variable 'is_head' set but not used [-Wunused-but-set-variable]
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
bam_reheader.c: In function 'bam_reheader':
bam_reheader.c:12:16: warning: variable 'old' set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function 'kpa_glocal':
kprobaln.c:78:21: warning: variable 'is_diff' set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function 'bcf_fmt_core':
bcf.c:233:9: warning: variable 'iPL' set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function 'bcf_fit_alt':
bcfutils.c:119:9: warning: variable 'ipl' set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function 'bcf_em1':
em.c:174:12: warning: variable 'n2' set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function 'mpileup':
bam_plcmd.c:333:28: warning: variable 'ref16' set but not used [-Wunused-but-set-variable]
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
bam2bcf_indel.c: In function 'bcf_call_gap_prep':
bam2bcf_indel.c:121:28: warning: variable 'query' set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable 'ref2' set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable 'ref_type' set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable 'score2' set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable 'score1' set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function 'main_cut_target':
cut_target.c:137:36: warning: variable 'lastpos' set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_html.c -o bam_tview_html.o
gcc -g -Wall -O2 -o samtools2SIC bam_tview.o bam_plcmd.o sam_view.o bam_rmdup.o bam_rmdupse.o bam_mate.o bam_stat.o bam_color.o bamtk.o kaln.o bam2bcf.o bam2bcf_indel.o errmod.o sample.o cut_target.o phase.o bam2depth.o padding.o bedcov.o bamshuf.o bam_tview_curses.o bam_tview_html.o -L/home/shared/cbc/local/lib -L/home/shared/cbc/local/lib64 -L/opt/NetCDF/NetCDF-4.3.0/lib -L/opt/gcc/gcc-4.9.2/lib64 libbam.a -Lbcftools -lbcf  -lcurses  -lm -lz -lpthread
make[1]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[1]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. call1.c -o call1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. main.c -o main.o
gcc -g -Wall -O2 -o bcftools call1.o main.o ../kstring.o ../bgzf.o ../knetfile.o ../bedidx.o -L.  -lbcf -lm -lz -lpthread
call1.o: In function `bcfview':
call1.c:(.text+0x18ff): undefined reference to `gzopen64'
call1.c:(.text+0x1cad): undefined reference to `gzopen64'
main.o: In function `bcf_main_ldpair':
/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools/main.c:67: undefined reference to `gzopen64'
../bedidx.o: In function `bed_read':
bedidx.c:(.text+0x19b9): undefined reference to `gzopen64'
./libbcf.a(vcf.o): In function `vcf_open':
vcf.c:(.text+0x8c9): undefined reference to `gzopen64'
./libbcf.a(vcf.o):vcf.c:(.text+0x980): more undefined references to `gzopen64' follow
collect2: error: ld returned 1 exit status
make[1]: *** [bcftools] Error 1
make[1]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make: *** [all-recur] Error 1
ERROR: compilation failed for package 'SICtools'
* removing '/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/SICtools'

```
### CRAN

```
* installing *source* package 'SICtools' ...
** libs
** arch - 
Makefile:24: warning: overriding commands for target `.c.o'
/home/shared/cbc/software_cbc/R/R-3.4.3-20171130/lib64/R/etc/Makeconf:159: warning: ignoring old commands for target `.c.o'
make[1]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function 'worker_aux':
bgzf.c:392:9: warning: variable 'tmp' set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function 'bgzf_close':
bgzf.c:572:11: warning: variable 'count' set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function 'resolve_cigar2':
bam_pileup.c:75:9: warning: variable 'is_head' set but not used [-Wunused-but-set-variable]
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
bam_reheader.c: In function 'bam_reheader':
bam_reheader.c:12:16: warning: variable 'old' set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function 'kpa_glocal':
kprobaln.c:78:21: warning: variable 'is_diff' set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function 'bcf_fmt_core':
bcf.c:233:9: warning: variable 'iPL' set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function 'bcf_fit_alt':
bcfutils.c:119:9: warning: variable 'ipl' set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function 'bcf_em1':
em.c:174:12: warning: variable 'n2' set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function 'mpileup':
bam_plcmd.c:333:28: warning: variable 'ref16' set but not used [-Wunused-but-set-variable]
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
bam2bcf_indel.c: In function 'bcf_call_gap_prep':
bam2bcf_indel.c:121:28: warning: variable 'query' set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable 'ref2' set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable 'ref_type' set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable 'score2' set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable 'score1' set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function 'main_cut_target':
cut_target.c:137:36: warning: variable 'lastpos' set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_html.c -o bam_tview_html.o
gcc -g -Wall -O2 -o samtools2SIC bam_tview.o bam_plcmd.o sam_view.o bam_rmdup.o bam_rmdupse.o bam_mate.o bam_stat.o bam_color.o bamtk.o kaln.o bam2bcf.o bam2bcf_indel.o errmod.o sample.o cut_target.o phase.o bam2depth.o padding.o bedcov.o bamshuf.o bam_tview_curses.o bam_tview_html.o -L/home/shared/cbc/local/lib -L/home/shared/cbc/local/lib64 -L/opt/NetCDF/NetCDF-4.3.0/lib -L/opt/gcc/gcc-4.9.2/lib64 libbam.a -Lbcftools -lbcf  -lcurses  -lm -lz -lpthread
make[1]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[1]: Entering directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. call1.c -o call1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. main.c -o main.o
gcc -g -Wall -O2 -o bcftools call1.o main.o ../kstring.o ../bgzf.o ../knetfile.o ../bedidx.o -L.  -lbcf -lm -lz -lpthread
call1.o: In function `bcfview':
call1.c:(.text+0x18ff): undefined reference to `gzopen64'
call1.c:(.text+0x1cad): undefined reference to `gzopen64'
main.o: In function `bcf_main_ldpair':
/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools/main.c:67: undefined reference to `gzopen64'
../bedidx.o: In function `bed_read':
bedidx.c:(.text+0x19b9): undefined reference to `gzopen64'
./libbcf.a(vcf.o): In function `vcf_open':
vcf.c:(.text+0x8c9): undefined reference to `gzopen64'
./libbcf.a(vcf.o):vcf.c:(.text+0x980): more undefined references to `gzopen64' follow
collect2: error: ld returned 1 exit status
make[1]: *** [bcftools] Error 1
make[1]: Leaving directory `/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make: *** [all-recur] Error 1
ERROR: compilation failed for package 'SICtools'
* removing '/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/SICtools'

```
# sizeMat

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'mcmc'
      All declared Imports should be used.
    ```

# SRGnet

Version: 1.2.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'EBcoexpress' 'MASS' 'igraph' 'pvclust' 'gbm' 'limma' 'DMwR'
      'matrixStats' 'Hmisc'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    SRGnet: no visible binding for global variable
      'Differentially_expressed_genes'
    SRGnet: no visible binding for global variable 'Transcriptomics'
    SRGnet: no visible binding for global variable 'PLCRG'
    SRGnet: no visible global function definition for 'ebPatterns'
    SRGnet: no visible global function definition for 'par'
    SRGnet: no visible global function definition for 'boxplot'
    SRGnet: no visible global function definition for 'plot'
    SRGnet: no visible global function definition for 'predict'
    SRGnet: no visible global function definition for 'terrain.colors'
    SRGnet: no visible global function definition for 'na.omit'
    SRGnet: no visible global function definition for 'write.table'
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

# stapler

Version: 0.6.3

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# summarytools

Version: 0.8.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'Hmisc'
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked Latin-1 strings
    ```

# VanillaICE

Version: 1.38.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC' 'doMPI' 'doSNOW' 'doParallel' 'doRedis'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'BSgenome.Hsapiens.UCSC.hg18'
      All declared Imports should be used.
    Unexported object imported by a ':::' call: 'SummarizedExperiment:::.ShallowSimpleListAssays0'
      See the note in ?`:::` about the use of this operator.
    ```

# wateRmelon

Version: 1.20.3

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase' 'limma' 'matrixStats' 'methylumi' 'lumi' 'ROC'
      'IlluminaHumanMethylation450kanno.ilmn12.hg19' 'illuminaio'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.4Mb
      sub-directories of 1Mb or more:
        data  1024.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      'Biobase'
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'IlluminaHumanMethylation450kanno.ilmn12.hg19' 'ROC' 'illuminaio'
      'limma' 'lumi' 'matrixStats' 'methods' 'methylumi'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: 'minfi:::.isRGOrStop'
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

Version: 1.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      
          Welcome to 'XBSeq'.
      > 
      > test_check("XBSeq")
      estimating parameters using MLE for group one 
      estimating parameters using MLE for group two 
      -- 1. Failure: (unknown) (@test_XBplot.R#6)  -----------------------------------
      `XBplot(XB, Samplenum = "Sample_54_WT")` did not throw an error.
      
      == testthat results  ===========================================================
      OK: 19 SKIPPED: 0 FAILED: 1
      1. Failure: (unknown) (@test_XBplot.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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
    Warning: no function found corresponding to methods exports from 'XBSeq' for: 'conditions', 'conditions<-', 'dispTable'
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for 'assay'
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for 'assay<-'
    estimateSCV,XBSeqDataSet: no visible global function definition for
      'conditions'
    estimateSCV,XBSeqDataSet: no visible global function definition for
      'dispTable<-'
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

Version: 1.2.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'yarn.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.5Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

