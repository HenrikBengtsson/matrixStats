# AMARETTO

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2019-12-09
* Number of recursive dependencies: 142

Run `revdep_details(,"AMARETTO")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: AMARETTO_Download
    > ### Title: AMARETTO_Download
    > ### Aliases: AMARETTO_Download
    > 
    > ### ** Examples
    > 
    > TargetDirectory <- file.path(getwd(),"Downloads/");dir.create(TargetDirectory)
    > CancerSite <- 'CHOL'
    > DataSetDirectories <- AMARETTO_Download(CancerSite,TargetDirectory = TargetDirectory)
    Downloading Gene Expression and Copy Number Variation data for: CHOL
    
    This TCGA cancer site/type was not tested, continue at your own risk.
    
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: AMARETTO_Download ... ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components with restrictions not permitted:
      Apache License (== 2.0) + file LICENSE
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘knitr’
    A package should be listed in only one of these fields.
    'LinkingTo' field is unused: package has no 'src' directory
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    AMARETTO_HTMLreport: no visible binding for global variable ‘Type’
    AMARETTO_HTMLreport: no visible binding for global variable ‘Color’
    AMARETTO_HTMLreport: no visible binding for global variable ‘Modules’
    AMARETTO_HTMLreport: no visible binding for global variable
      ‘dt_gensesetsall’
    GeneSetDescription: no visible binding for global variable
      ‘MsigdbMapping’
    GeneSetDescription : <anonymous>: no visible binding for global
      variable ‘MsigdbMapping’
    GmtFromModules: no visible binding for global variable ‘value’
    GmtFromModules: no visible binding for global variable ‘variable’
    GmtFromModules: no visible binding for global variable ‘GeneNames’
    HyperGTestGeneEnrichment: no visible binding for global variable ‘i’
    HyperGTestGeneEnrichment: no visible binding for global variable ‘j’
    read_gct: no visible binding for global variable ‘Description’
    Undefined global functions or variables:
      Color Description GeneNames Genes Geneset Geneset_length ModuleNr
      Modules MsigdbMapping NumberGenes Overlapping_genes RegulatorIDs
      TargetIDs Testset Type Weights dt_gensesetsall i j moduleNr
      n_Overlapping overlap_perc p.value p_value padj q.value value
      variable
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 152 marked UTF-8 strings
    ```

# amplican

<details>

* Version: 1.8.2
* Source code: https://github.com/cran/amplican
* URL: https://github.com/valenlab/amplican
* BugReports: https://github.com/valenlab/amplican/issues
* Date/Publication: 2019-12-16
* Number of recursive dependencies: 106

Run `revdep_details(,"amplican")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘amplican-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: amplicanAlign
    > ### Title: Align reads to amplicons.
    > ### Aliases: amplicanAlign
    > 
    > ### ** Examples
    > 
    > # path to example config file
    > config <- system.file("extdata", "config.csv", package = "amplican")
    > # path to example fastq files
    > fastq_folder <- system.file("extdata", package = "amplican")
    > aln <- amplicanAlign(config, fastq_folder)
    Checking configuration file...
    Making alignments...
    Aligning reads for barcode_1
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘Rsamtools’
    Calls: amplicanAlign ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ── 2. Error: (unknown) (@test_filters_helpers.R#5)  ────────────────────────────
      there is no package called 'Rsamtools'
      Backtrace:
        1. ShortRead::readFastq
        2. base::getExportedValue(pkg, name)
        3. base::asNamespace(ns)
        4. base::getNamespace(ns)
        5. base::loadNamespace(name)
        7. base::loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]])
        9. base::loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]])
       10. base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       11. base:::withOneRestart(expr, restarts[[1L]])
       12. base:::doWithOneRestart(return(expr), restart)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 41 | SKIPPED: 0 | WARNINGS: 2 | FAILED: 2 ]
      1. Error: amplican runs through example files without any issues (@test_amplican.R#19) 
      2. Error: (unknown) (@test_filters_helpers.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘CrispRVariants’ in Rd xrefs
    ```

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

# aroma.affymetrix

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.affymetrix
* URL: https://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
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

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
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

# BASiCS

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/BASiCS
* URL: https://github.com/catavallejos/BASiCS
* BugReports: https://github.com/catavallejos/BASiCS/issues
* Date/Publication: 2020-02-10
* Number of recursive dependencies: 128

Run `revdep_details(,"BASiCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

# BatchQC

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/BatchQC
* URL: https://github.com/mani2012/BatchQC
* BugReports: https://github.com/mani2012/BatchQC/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 120

Run `revdep_details(,"BatchQC")` for more info

</details>

## In both

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

# baystability

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/baystability
* Date/Publication: 2018-03-13 15:55:34 UTC
* Number of recursive dependencies: 97

Run `revdep_details(,"baystability")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggfortify’ ‘ggplot2’ ‘matrixStats’ ‘reshape2’ ‘scales’
      All declared Imports should be used.
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

# bigPint

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/bigPint
* URL: https://github.com/lindsayrutter/bigPint
* BugReports: https://github.com/lindsayrutter/bigPint/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 162

Run `revdep_details(,"bigPint")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +     pointColor = "#00C379", saveFile = FALSE)
    > ret[[1]] + xlab("Standardized read counts") +
    + ylab("Standardized read counts")
    > 
    > # Example 4: Plot scatterplot matrix of hexagons.
    > 
    > ret <- plotSM(soybean_cn_sub, soybean_cn_sub_metrics, option = "hexagon", 
    +     xbins = 5, pointSize = 0.1, saveFile = FALSE)
    > ret[[2]]
    > 
    > # Example 5: Plot scatterplot matrix of orthogonal distance on the logged
    > # data, first without considering the metrics dataset and then considering
    > # it.
    > 
    > soybean_ir_sub[,-1] <- log(soybean_ir_sub[,-1] + 1) 
    > ret <- plotSM(soybean_ir_sub, option = "orthogonal", threshOrth = 2.5,
    +     pointSize = 0.2, saveFile = FALSE)
    > ret[[1]]
    Error in alpha * 255 : non-numeric argument to binary operator
    Calls: <Anonymous> ... validGP -> numnotnull -> alpha -> <Anonymous> -> encode_c
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.7Mb
      sub-directories of 1Mb or more:
        doc  13.4Mb
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

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘genalg’ in Rd xrefs
    ```

# biscuiteer

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/biscuiteer
* URL: https://github.com/trichelab/biscuiteer
* BugReports: https://github.com/trichelab/biscuiteer/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 193

Run `revdep_details(,"biscuiteer")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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
* installing *source* package ‘bumphunter’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/00_pkg_src/bumphunter: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/new/bumphunter.Rcheck/bumphunter’

```
### CRAN

```
* installing *source* package ‘bumphunter’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/old/bumphunter.Rcheck/00_pkg_src/bumphunter: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘bumphunter’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bumphunter/old/bumphunter.Rcheck/bumphunter’

```
# CATALYST

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/CATALYST
* URL: https://github.com/HelenaLC/CATALYST
* BugReports: https://github.com/HelenaLC/CATALYST/issues
* Date/Publication: 2019-11-25
* Number of recursive dependencies: 228

Run `revdep_details(,"CATALYST")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    The following objects are masked from ‘package:matrixStats’:
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following objects are masked from ‘package:base’:
    
        aperm, apply, rowsum
    
    Loading required package: ggplot2
    
    Attaching package: ‘scater’
    
    The following object is masked from ‘package:CATALYST’:
    
        plotMDS
    
    > sce <- runUMAP(sce, exprs_values = "exprs")
    Error in loadNamespace(name) : there is no package called ‘uwot’
    Calls: runUMAP ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        doc    3.7Mb
    ```

# celda

<details>

* Version: 1.2.4
* Source code: https://github.com/cran/celda
* BugReports: https://github.com/campbio/celda/issues
* Date/Publication: 2020-01-22
* Number of recursive dependencies: 146

Run `revdep_details(,"celda")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    plotDendro: no visible binding for global variable ‘xend’
    plotDendro: no visible binding for global variable ‘y’
    plotDendro: no visible binding for global variable ‘label’
    plotDimReduceCluster: no visible binding for global variable ‘Cluster’
    Undefined global functions or variables:
      Cluster label xend y
    ```

# cellWise

<details>

* Version: 2.1.0
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2019-02-25 17:40:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"cellWise")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘rospca’ in Rd xrefs
    ```

# CEMiTool

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2019-12-18
* Number of recursive dependencies: 172

Run `revdep_details(,"CEMiTool")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_ora,CEMiTool : <anonymous>: no visible global function definition
      for ‘head’
    plot_qq,CEMiTool: no visible binding for global variable ‘data’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘hclust’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘dist’
    plot_sample_tree,CEMiTool: no visible global function definition for
      ‘dev.off’
    save_plots,CEMiTool : <anonymous>: no visible global function
      definition for ‘dev.off’
    save_plots,CEMiTool: no visible global function definition for
      ‘dev.off’
    Undefined global functions or variables:
      ..eq.label.. ..rr.label.. := Mean Variance as.dist data dev.off dist
      hclust head modules num_genes setNames tail var
    Consider adding
      importFrom("grDevices", "dev.off")
      importFrom("stats", "as.dist", "dist", "hclust", "setNames", "var")
      importFrom("utils", "data", "head", "tail")
    to your NAMESPACE file.
    ```

# ChAMP

<details>

* Version: 2.16.1
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2019-12-16
* Number of recursive dependencies: 230

Run `revdep_details(,"ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'FEM', 'DMRcate',
      'Illumina450ProbeVariants.db',
      'IlluminaHumanMethylationEPICmanifest', 'DT'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
* installing *source* package ‘ChAMP’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ChAMP’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/ChAMP’

```
### CRAN

```
* installing *source* package ‘ChAMP’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/old/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ChAMP’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/old/ChAMP.Rcheck/ChAMP’

```
# CHARGE

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/CHARGE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 153

Run `revdep_details(,"CHARGE")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Title: exprFinder
    > ### Aliases: exprFinder
    > 
    > ### ** Examples
    > 
    > library(GenomicRanges)
    > library(EnsDb.Hsapiens.v86)
    Loading required package: ensembldb
    Loading required package: GenomicFeatures
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘Rsamtools’
    Error: package ‘GenomicFeatures’ could not be loaded
    Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘CHARGE_Vignette.Rnw’using ‘UTF-8’... failed
     WARNING
    Errors in running code in vignettes:
    when running code in ‘CHARGE_Vignette.Rnw’
      ...
    > library(EnsDb.Hsapiens.v86)
    Loading required package: ensembldb
    Loading required package: GenomicFeatures
    Loading required package: AnnotationDbi
    Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘Rsamtools’
    
      When sourcing ‘CHARGE_Vignette.R’:
    Error: package ‘GenomicFeatures’ could not be loaded
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    exprFinder: no visible global function definition for ‘as’
    Undefined global functions or variables:
      as
    Consider adding
      importFrom("methods", "as")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# Chicago

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/Chicago
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 155

Run `revdep_details(,"Chicago")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ##create a temporary directory, export output there
    > tempDirectory <- tempdir()
    > print(tempDirectory)
    [1] "/scratch/573693.1.long.q/RtmpIHGNy9"
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
      there is no package called ‘Rsamtools’
    Calls: exportToGI ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rsamtools’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# ChIPpeakAnno

<details>

* Version: 3.20.1
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2020-02-24
* Number of recursive dependencies: 179

Run `revdep_details(,"ChIPpeakAnno")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    Depends: includes the non-default packages:
      'grid', 'IRanges', 'Biostrings', 'GenomicRanges', 'S4Vectors',
      'VennDiagram'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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
* installing *source* package ‘chromswitch’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/00_pkg_src/chromswitch: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/new/chromswitch.Rcheck/chromswitch’

```
### CRAN

```
* installing *source* package ‘chromswitch’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/old/chromswitch.Rcheck/00_pkg_src/chromswitch: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘chromswitch’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/chromswitch/old/chromswitch.Rcheck/chromswitch’

```
# cifti

<details>

* Version: 0.4.5
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 84

Run `revdep_details(,"cifti")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
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
* Number of recursive dependencies: 181

Run `revdep_details(,"clusterExperiment")` for more info

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
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc   3.4Mb
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
    Unknown package ‘ConsensusClusterPlus’ in Rd xrefs
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

*   checking whether package ‘CNVScope’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNVScope/new/CNVScope.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CNVScope’ ...
** package ‘CNVScope’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNVScope/new/CNVScope.Rcheck/00_pkg_src/CNVScope: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CNVScope’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNVScope/new/CNVScope.Rcheck/CNVScope’

```
### CRAN

```
* installing *source* package ‘CNVScope’ ...
** package ‘CNVScope’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNVScope/old/CNVScope.Rcheck/00_pkg_src/CNVScope: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CNVScope’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CNVScope/old/CNVScope.Rcheck/CNVScope’

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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   R CMD check timed out
    

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

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 186

Run `revdep_details(,"crossmeta")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > eset <- load_raw("GSE9601", data_dir)[[1]]
    > 
    > # annotate eset (need if load_raw failed to annotate)
    > eset <- symbol_annot(eset)
    AnnotatingURL 'https://bioconductor.org/config.yaml': status was 'Couldn't resolve host
      name'
    cannot open the connection to 'https://bioconductor.org/config.yaml'
    URL 'http://bioconductor.org/config.yaml': status was 'Couldn't resolve host
      name'
    cannot open the connection to 'http://bioconductor.org/config.yaml'
    Bioconductor version cannot be validated; no internet connection?
    URL 'https://bioconductor.org/config.yaml': status was 'Couldn't resolve host
      name'
    cannot open the connection to 'https://bioconductor.org/config.yaml'
    URL 'http://bioconductor.org/config.yaml': status was 'Couldn't resolve host
      name'
    cannot open the connection to 'http://bioconductor.org/config.yaml'
    Error in if (v1 < v2) -1L else if (v1 > v2) 1L else 0L : 
      argument is of length zero
    Calls: symbol_annot ... entrez_map -> get_biocpack -> <Anonymous> -> .version_compare
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘shinyBS’
    Unexported object imported by a ':::' call: ‘GEOquery:::parseGSEMatrix’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘getDirListing’ ‘getGEO’ ‘getGEOSuppFiles’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘download.file’
    getDirListing: no visible global function definition for ‘read.table’
    getGEOSuppFiles: no visible global function definition for
      ‘download.file’
    get_dfs: no visible global function definition for ‘head’
    load_agil_plat : <anonymous>: no visible global function definition for
      ‘capture.output’
    load_agil_plat: no visible global function definition for ‘as’
    load_illum_plat: no visible global function definition for ‘as’
    padog: no visible global function definition for ‘is’
    symbol_annot: no visible binding for global variable ‘SYMBOL_9606’
    which_max_iqr: no visible binding for global variable ‘iqrange’
    Undefined global functions or variables:
      SYMBOL_9606 as capture.output download.file head iqrange is
      read.table
    Consider adding
      importFrom("methods", "as", "is")
      importFrom("utils", "capture.output", "download.file", "head",
                 "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘PADOG’, ‘GeneMeta’ in Rd xrefs
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

# DatabionicSwarm

<details>

* Version: 1.1.3
* Source code: https://github.com/cran/DatabionicSwarm
* URL: http://www.deepbionics.org
* BugReports: https://github.com/Mthrun/DatabionicSwarm/issues
* Date/Publication: 2020-02-03 14:00:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(,"DatabionicSwarm")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
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
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

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
    ...
      cannot coerce type 'closure' to vector of type 'character'
      Backtrace:
       1. base::Map(ms_f, matrix_list)
       2. base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
       4. base::.Defunct(...)
      
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

## Newly fixed

*   R CMD check timed out
    

## In both

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

* Version: 1.2.5
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2020-02-16
* Number of recursive dependencies: 70

Run `revdep_details(,"DeMixT")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'parallel', 'Rcpp', 'SummarizedExperiment', 'knitr', 'KernSmooth',
      'matrixcalc'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking R code for possible problems ... NOTE
    ```
    DeMixT_GS: no visible global function definition for ‘qchisq’
    simulate_2comp: no visible global function definition for ‘SimpleList’
    simulate_2comp: no visible global function definition for ‘DataFrame’
    simulate_3comp: no visible global function definition for ‘SimpleList’
    simulate_3comp: no visible global function definition for ‘DataFrame’
    Undefined global functions or variables:
      DataFrame SimpleList qchisq
    Consider adding
      importFrom("stats", "qchisq")
    to your NAMESPACE file.
    ```

# DepecheR

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2020-02-05
* Number of recursive dependencies: 97

Run `revdep_details(,"DepecheR")` for more info

</details>

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
    Using temporary cache /scratch/573693.1.long.q/RtmpSCsQs8/BiocFileCache
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

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
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
* installing *source* package ‘diffloop’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/00_pkg_src/diffloop: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘diffloop’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/new/diffloop.Rcheck/diffloop’

```
### CRAN

```
* installing *source* package ‘diffloop’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/diffloop/old/diffloop.Rcheck/00_pkg_src/diffloop: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
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

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    discoApp: no visible binding for global variable ‘.discorhythm_ncores’
    discoBatch: no visible binding for global variable ‘discoODAres’
    Undefined global functions or variables:
      .discorhythm_ncores discoODAres
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
* installing *source* package ‘DMCFB’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/new/DMCFB.Rcheck/00_pkg_src/DMCFB: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DMCFB’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/new/DMCFB.Rcheck/DMCFB’

```
### CRAN

```
* installing *source* package ‘DMCFB’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DMCFB/old/DMCFB.Rcheck/00_pkg_src/DMCFB: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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
* installing *source* package ‘dmrseq’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/new/dmrseq.Rcheck/00_pkg_src/dmrseq: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bsseq’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘Rsamtools’
Error: package ‘bsseq’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘dmrseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/new/dmrseq.Rcheck/dmrseq’

```
### CRAN

```
* installing *source* package ‘dmrseq’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/dmrseq/old/dmrseq.Rcheck/00_pkg_src/dmrseq: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bsseq’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘Rsamtools’
Error: package ‘bsseq’ could not be loaded
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
    ...
    Complete output:
      > library(testthat)
      > library(Doscheda)
      > 
      > test_check("Doscheda")
      ── 1. Error: normalize_data med works (@test-normal.R#8)  ──────────────────────
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

# EasyqpcR

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/EasyqpcR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 85

Run `revdep_details(,"EasyqpcR")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    
    (R:40819): Gtk-WARNING **: 14:08:56.125: gtk_disable_setlocale() must be called before gtk_init()
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    
    (R:40962): Gtk-WARNING **: 14:09:01.577: gtk_disable_setlocale() must be called before gtk_init()
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    
    (R:41882): Gtk-WARNING **: 14:09:31.654: gtk_disable_setlocale() must be called before gtk_init()
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    
    (R:41974): Gtk-WARNING **: 14:09:36.078: gtk_disable_setlocale() must be called before gtk_init()
    
    (R:42122): Gtk-WARNING **: 14:09:40.032: gtk_disable_setlocale() must be called before gtk_init()
    
    (R:42272): Gtk-WARNING **: 14:09:44.574: gtk_disable_setlocale() must be called before gtk_init()
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

*   checking dependencies in R code ... NOTE
    ```
    
    (R:40705): Gtk-WARNING **: 14:08:51.488: gtk_disable_setlocale() must be called before gtk_init()
    ```

*   checking foreign function calls ... NOTE
    ```
    
    (R:41052): Gtk-WARNING **: 14:09:05.043: gtk_disable_setlocale() must be called before gtk_init()
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    
    (R:41318): Gtk-WARNING **: 14:09:15.981: gtk_disable_setlocale() must be called before gtk_init()
    badCt: no visible global function definition for ‘aggregate’
    nrmData: no visible global function definition for ‘aggregate’
    nrmData: no visible binding for global variable ‘sd’
    slope: no visible global function definition for ‘aggregate’
    slope: no visible global function definition for ‘coef’
    slope: no visible global function definition for ‘lm’
    slope: no visible global function definition for ‘combn’
    totData: no visible global function definition for ‘aggregate’
    totData: no visible binding for global variable ‘sd’
    Undefined global functions or variables:
      aggregate coef combn lm sd
    Consider adding
      importFrom("stats", "aggregate", "coef", "lm", "sd")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    
    (R:42395): Gtk-WARNING **: 14:09:50.251: gtk_disable_setlocale() must be called before gtk_init()
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following files look like leftovers/mistakes:
      ‘vignette_EasyqpcR.toc’
    Please remove them from your package.
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

* Version: 1.22.4
* Source code: https://github.com/cran/ENmix
* Date/Publication: 2020-02-27
* Number of recursive dependencies: 142

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
* installing *source* package ‘ENmix’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/new/ENmix.Rcheck/00_pkg_src/ENmix: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ENmix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/new/ENmix.Rcheck/ENmix’

```
### CRAN

```
* installing *source* package ‘ENmix’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/old/ENmix.Rcheck/00_pkg_src/ENmix: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ENmix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ENmix/old/ENmix.Rcheck/ENmix’

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
    Package required but not available: ‘fftw’
    
    Package suggested but not available for checking: ‘rgl’
    
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

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
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
* installing *source* package ‘EventPointer’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/new/EventPointer.Rcheck/00_pkg_src/EventPointer: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package ‘Rsamtools’ required by ‘SGSeq’ could not be found
Execution halted
ERROR: lazy loading failed for package ‘EventPointer’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/new/EventPointer.Rcheck/EventPointer’

```
### CRAN

```
* installing *source* package ‘EventPointer’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/EventPointer/old/EventPointer.Rcheck/00_pkg_src/EventPointer: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package ‘Rsamtools’ required by ‘SGSeq’ could not be found
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
* installing *source* package ‘ExCluster’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/new/ExCluster.Rcheck/00_pkg_src/ExCluster: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘rtracklayer’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘rtracklayer’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ExCluster’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/new/ExCluster.Rcheck/ExCluster’

```
### CRAN

```
* installing *source* package ‘ExCluster’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExCluster/old/ExCluster.Rcheck/00_pkg_src/ExCluster: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘rtracklayer’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘rtracklayer’ could not be loaded
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

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
      Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
      Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
    ```

*   checking R code for possible problems ... NOTE
    ```
    expSetobj: no visible global function definition for ‘new’
    pvcAnaly: no visible global function definition for ‘barplot’
    pvcAnaly: no visible global function definition for ‘axis’
    pvcAnaly: no visible global function definition for ‘text’
    pvcaBatchAssess: no visible global function definition for ‘cor’
    pvcaBatchAssess: no visible binding for global variable ‘na.omit’
    pvcaBatchAssess: no visible global function definition for ‘sigma’
    snmAnaly: no visible global function definition for ‘model.matrix’
    snmAnaly: no visible global function definition for ‘write.table’
    surVarAnaly: no visible global function definition for ‘model.matrix’
    Undefined global functions or variables:
      axis barplot cor model.matrix na.omit new sigma text write.table
    Consider adding
      importFrom("graphics", "axis", "barplot", "text")
      importFrom("methods", "new")
      importFrom("stats", "cor", "model.matrix", "na.omit", "sigma")
      importFrom("utils", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘<pkg>’ in Rd xrefs
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocManager’
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
      installed size is  5.4Mb
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
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/00_pkg_src/FDb.FANTOM4.promoters.hg19: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘FDb.FANTOM4.promoters.hg19’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/new/FDb.FANTOM4.promoters.hg19.Rcheck/FDb.FANTOM4.promoters.hg19’

```
### CRAN

```
* installing *source* package ‘FDb.FANTOM4.promoters.hg19’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/FDb.FANTOM4.promoters.hg19/old/FDb.FANTOM4.promoters.hg19.Rcheck/00_pkg_src/FDb.FANTOM4.promoters.hg19: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
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

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(fishpond)
      > 
      > test_check("fishpond")
      ── 1. Error: Reading in Alevin EDS format works (@test_readEDS.R#11)  ──────────
      cannot open the connection
      Backtrace:
       1. base::readLines(barcode.file)
       2. base::file(con, "r")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 10 | SKIPPED: 1 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: Reading in Alevin EDS format works (@test_readEDS.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘samr:::localfdr’ ‘samr:::predictlocalfdr’ ‘samr:::qvalue.func’
      ‘samr:::samr.compute.delta.table.seq’
      See the note in ?`:::` about the use of this operator.
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

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'read.flowSet':
      ‘truncate.max.range’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
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

# flowSpy

<details>

* Version: 1.0.2
* Source code: https://github.com/cran/flowSpy
* URL: http://www.r-project.org, https://github.com/JhuangLab/flowSpy
* BugReports: https://github.com/JhuangLab/flowSpy/issues
* Date/Publication: 2020-02-24
* Number of recursive dependencies: 226

Run `revdep_details(,"flowSpy")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'runDiff':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# flowWorkspace

<details>

* Version: 3.34.1
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2020-01-02
* Number of recursive dependencies: 114

Run `revdep_details(,"flowWorkspace")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘getChildren’ ‘getData’ ‘getGate’ ‘getNodes’ ‘getParent’
      ‘getPopStats’ ‘gh_pop_get_stats_tfilter’ ‘gs_cyto_data<-’
      ‘gs_pop_get_stats_tfilter’
    Undocumented S4 methods:
      generic 'flowData<-' and siglist 'GatingSet'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    S4 class codoc mismatches from documentation object 'GatingSet-class':
    Slots for class 'GatingSet'
      Code: FCSPath axis compensation data flag guid name pointer
            transformation
      Docs: FCSPath axis compensation data flag guid pointer transformation
    ```

*   checking Rd \usage sections ... WARNING
    ```
    ...
    
    Undocumented arguments in documentation object 'flowjo_log_trans'
      ‘n’ ‘equal.space’ ‘max_val’ ‘min_val’
    
    Documented arguments not in \usage in documentation object 'GatingSet,GatingHierarchy,character-method':
      ‘swap_cols’
    
    Undocumented arguments in documentation object 'flowData'
      ‘...’
    
    Duplicated \argument entries in documentation object 'getPopStats,GatingSet-method':
      ‘x’ ‘...’
    
    Documented arguments not in \usage in documentation object 'isGated':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 24.4Mb
      sub-directories of 1Mb or more:
        lib   10.2Mb
        libs  12.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    Versioned 'LinkingTo' values for
      ‘BH’ ‘RProtoBufLib’ ‘cytolib’
    are only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RBGL’ ‘grDevices’ ‘graphics’ ‘utils’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowCore:::.estimateLogicle’ ‘flowCore:::checkClass’
      ‘flowCore:::copyFlowSet’ ‘flowCore:::guid’
      ‘flowCore:::logicle_transform’ ‘flowCore:::updateTransformKeywords’
      ‘graph:::.makeEdgeKeys’ ‘lattice:::updateList’
      ‘ncdfFlow:::.isValidSamples’ ‘stats:::.splinefun’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      for ‘as’
    plotGate,GatingSetList-character: no visible global function definition
      for ‘selectMethod’
    recompute,GatingSetList: no visible global function definition for
      ‘selectMethod’
    setNode,GatingSet-character-ANY: no visible global function definition
      for ‘is’
    transform,GatingSet: no visible global function definition for ‘is’
    transform,GatingSet : <anonymous>: no visible global function
      definition for ‘is’
    Undefined global functions or variables:
      . .hasSlot IQR as as.formula callNextMethod count desc extends
      fj_ws_get_keywords gray is median new node obj old openCyto.count
      parallel percent sampleName selectMethod slot validObject xml.count
    Consider adding
      importFrom("grDevices", "gray")
      importFrom("methods", ".hasSlot", "as", "callNextMethod", "extends",
                 "is", "new", "selectMethod", "slot", "validObject")
      importFrom("stats", "IQR", "as.formula", "median")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
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
* installing *source* package ‘funtooNorm’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/00_pkg_src/funtooNorm: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘funtooNorm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/new/funtooNorm.Rcheck/funtooNorm’

```
### CRAN

```
* installing *source* package ‘funtooNorm’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/funtooNorm/old/funtooNorm.Rcheck/00_pkg_src/funtooNorm: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘regress’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘genetics’ in Rd xrefs
    ```

# GAPGOM

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/GAPGOM
* URL: https://github.com/Berghopper/GAPGOM/
* BugReports: https://github.com/Berghopper/GAPGOM/issues/
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 128

Run `revdep_details(,"GAPGOM")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Aliases: fantom_download
    > 
    > ### ** Examples
    > 
    > fantom_file <- fantom_download(organism = "mouse", noprompt = TRUE)
    adding rname 'http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz'
    Warning: download failed
      web resource path: ‘http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      local file path: ‘/wynton/home/cbi/hb/.cache/BiocFileCache/41c032f8aa34_mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      reason: Could not resolve host: fantom.gsc.riken.jp; Name or service not known
    Warning: bfcadd() failed; resource removed
      rid: BFC10
      fpath: ‘http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      reason: download failed
    Warning in value[[3L]](cond) :
      
    trying to add rname 'http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz' produced error:
      bfcadd() failed; see warnings()
    Error in bfcrpath(bfc, url) : not all 'rnames' found or unique.
    Calls: fantom_download -> bfcrpath -> bfcrpath
    Execution halted
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GeneralizedUmatrix

<details>

* Version: 1.1.8
* Source code: https://github.com/cran/GeneralizedUmatrix
* URL: http://www.deepbionics.org
* BugReports: https://github.com/Mthrun/GeneralizedUmatrix/issues
* Date/Publication: 2020-02-17 15:40:09 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"GeneralizedUmatrix")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# GUIDEseq

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 114

Run `revdep_details(,"GUIDEseq")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Gviz

<details>

* Version: 1.30.3
* Source code: https://github.com/cran/Gviz
* URL: https://github.com/ivanek/Gviz
* BugReports: https://github.com/ivanek/Gviz/issues
* Date/Publication: 2020-02-17
* Number of recursive dependencies: 139

Run `revdep_details(,"Gviz")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gwasurvivr

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/gwasurvivr
* URL: https://github.com/suchestoncampbelllab/gwasurvivr
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 112

Run `revdep_details(,"gwasurvivr")` for more info

</details>

## In both

*   checking whether package ‘gwasurvivr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gwasurvivr/new/gwasurvivr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gwasurvivr’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gwasurvivr/new/gwasurvivr.Rcheck/00_pkg_src/gwasurvivr: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Warning: namespace ‘lme4’ is not available and has been replaced
by .GlobalEnv when processing object ‘’
Warning: namespace ‘lme4’ is not available and has been replaced
by .GlobalEnv when processing object ‘’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘gwasurvivr’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gwasurvivr/new/gwasurvivr.Rcheck/gwasurvivr’

```
### CRAN

```
* installing *source* package ‘gwasurvivr’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gwasurvivr/old/gwasurvivr.Rcheck/00_pkg_src/gwasurvivr: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Warning: namespace ‘lme4’ is not available and has been replaced
by .GlobalEnv when processing object ‘’
Warning: namespace ‘lme4’ is not available and has been replaced
by .GlobalEnv when processing object ‘’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘gwasurvivr’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/gwasurvivr/old/gwasurvivr.Rcheck/gwasurvivr’

```
# hipathia

<details>

* Version: 2.2.1
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2019-12-06
* Number of recursive dependencies: 116

Run `revdep_details(,"hipathia")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data      2.9Mb
        doc       1.7Mb
        extdata   1.0Mb
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘hipathia-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: create_report
    > ### Title: Create visualization HTML
    > ### Aliases: create_report
    > 
    > ### ** Examples
    > 
    > data(comp)
    > pathways <- load_pathways(species = "hsa", pathways_list = c("hsa03320",
    + "hsa04012"))
    No internet connection using 'localHub=TRUE'
    Using temporary cache /scratch/573693.1.long.q/Rtmp8kr5w9/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: load_pathways ... AnnotationHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking tests ...
    ```
    ...
       3. hipathia:::hub()
       5. AnnotationHub::AnnotationHub()
       6. AnnotationHub::.Hub(...)
       7. AnnotationHub:::.create_cache(.class, url, cache, proxy, localHub)
       8. AnnotationHub:::.updateHubDB(hub_bfc, .class, url, proxy, localHub)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 46 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 10 ]
      1.  Error: (unknown) (@test-color-node.R#10) 
      2.  Error: (unknown) (@test-hipathia.R#8) 
      3.  Error: (unknown) (@test-load-pathways.R#8) 
      4.  Error: (unknown) (@test-normalize-paths.R#8) 
      5.  Error: (unknown) (@test-path-annots.R#8) 
      6.  Error: (unknown) (@test-path-list.R#8) 
      7.  Error: (unknown) (@test-path-names.R#8) 
      8.  Error: (unknown) (@test-path-summary.R#9) 
      9.  Error: (unknown) (@test-quantify.R#8) 
      10. Error: (unknown) (@test-translate-matrix.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
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

*   checking Rd cross-references ... NOTE
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
* installing *source* package ‘kissDE’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/new/kissDE.Rcheck/00_pkg_src/kissDE: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘kissDE’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/new/kissDE.Rcheck/kissDE’

```
### CRAN

```
* installing *source* package ‘kissDE’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/kissDE/old/kissDE.Rcheck/00_pkg_src/kissDE: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
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
    ...
      ltmle(data = data.frame(W, A, Y), Anodes = "A", Ynodes = "Y", 
          abar = 1, estimate.time = F, gcomp = T)
      
      GCOMP Estimate:  0.7758063 
      Estimator:  gcomp 
      Warning: inference for gcomp is not accurate! It is based on TMLE influence curves.
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

# M3Drop

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/M3Drop
* URL: https://github.com/tallulandrews/M3Drop
* BugReports: https://github.com/tallulandrews/M3Drop/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 203

Run `revdep_details(,"M3Drop")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘numDeriv’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘scater::exprs’
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

# maEndToEnd

<details>

* Version: 2.6.0
* Source code: https://github.com/cran/maEndToEnd
* URL: https://www.bioconductor.org/help/workflows/
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 228

Run `revdep_details(,"maEndToEnd")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc   6.7Mb
    ```

## In both

*   checking whether package ‘maEndToEnd’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: call dbDisconnect() when finished working with a connection
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/maEndToEnd/new/maEndToEnd.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase', 'oligoClasses', 'ArrayExpress', 'pd.hugene.1.0.st.v1',
      'hugene10sttranscriptcluster.db', 'oligo', 'arrayQualityMetrics',
      'limma', 'topGO', 'ReactomePA', 'clusterProfiler', 'gplots',
      'ggplot2', 'geneplotter', 'pheatmap', 'RColorBrewer', 'dplyr',
      'tidyr', 'stringr', 'matrixStats', 'genefilter', 'openxlsx',
      'Rgraphviz'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENCE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘AnnotationDbi’
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
* installing *source* package ‘MEAL’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/00_pkg_src/MEAL: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MEAL’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/MEAL’

```
### CRAN

```
* installing *source* package ‘MEAL’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MEAL/old/MEAL.Rcheck/00_pkg_src/MEAL: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘foreign’ ‘gplots’ ‘httr’ ‘jsonlite’ ‘knitr’ ‘lmerTest’
      ‘magrittr’ ‘mgcv’ ‘repmis’ ‘reshape2’ ‘rmarkdown’
      All declared Imports should be used.
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

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenomicRanges’ ‘RColorBrewer’ ‘gplots’
      All declared Imports should be used.
    ```

# metavizr

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/metavizr
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 175

Run `revdep_details(,"metavizr")` for more info

</details>

## In both

*   checking whether package ‘metavizr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/new/metavizr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metavizr’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/new/metavizr.Rcheck/00_pkg_src/metavizr: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metavizr’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/new/metavizr.Rcheck/metavizr’

```
### CRAN

```
* installing *source* package ‘metavizr’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/old/metavizr.Rcheck/00_pkg_src/metavizr: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metavizr’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/old/metavizr.Rcheck/metavizr’

```
# methrix

<details>

* Version: 1.0.05
* Source code: https://github.com/cran/methrix
* Date/Publication: 2020-01-08
* Number of recursive dependencies: 144

Run `revdep_details(,"methrix")` for more info

</details>

## In both

*   checking whether package ‘methrix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/new/methrix.Rcheck/00install.out’ for details.
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
* installing *source* package ‘methrix’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/new/methrix.Rcheck/00_pkg_src/methrix: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘methrix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/new/methrix.Rcheck/methrix’

```
### CRAN

```
* installing *source* package ‘methrix’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/old/methrix.Rcheck/00_pkg_src/methrix: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘methrix’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/old/methrix.Rcheck/methrix’

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

## Installation

### Devel

```
* installing *source* package ‘MethylAid’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/00_pkg_src/MethylAid: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MethylAid’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/new/MethylAid.Rcheck/MethylAid’

```
### CRAN

```
* installing *source* package ‘MethylAid’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MethylAid/old/MethylAid.Rcheck/00_pkg_src/MethylAid: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
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
* installing *source* package ‘methylationArrayAnalysis’ ...
** using staged installation
** inst
** help
No man pages found in package  ‘methylationArrayAnalysis’ 
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/00_pkg_src/methylationArrayAnalysis: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error : package ‘bumphunter’ could not be loaded
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/methylationArrayAnalysis’

```
### CRAN

```
* installing *source* package ‘methylationArrayAnalysis’ ...
** using staged installation
** inst
** help
No man pages found in package  ‘methylationArrayAnalysis’ 
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/old/methylationArrayAnalysis.Rcheck/00_pkg_src/methylationArrayAnalysis: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error : package ‘bumphunter’ could not be loaded
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
* installing *source* package ‘methylumi’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/new/methylumi.Rcheck/00_pkg_src/methylumi: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘methylumi’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/new/methylumi.Rcheck/methylumi’

```
### CRAN

```
* installing *source* package ‘methylumi’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methylumi/old/methylumi.Rcheck/00_pkg_src/methylumi: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
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

*   checking whether package ‘MFHD’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MFHD/new/MFHD.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MFHD’ ...
** package ‘MFHD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MFHD/new/MFHD.Rcheck/00_pkg_src/MFHD: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rgl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MFHD’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MFHD/new/MFHD.Rcheck/MFHD’

```
### CRAN

```
* installing *source* package ‘MFHD’ ...
** package ‘MFHD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MFHD/old/MFHD.Rcheck/00_pkg_src/MFHD: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rgl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MFHD’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MFHD/old/MFHD.Rcheck/MFHD’

```
# mgcViz

<details>

* Version: 0.1.4
* Source code: https://github.com/cran/mgcViz
* URL: https://github.com/mfasiolo/mgcViz
* BugReports: https://github.com/mfasiolo/mgcViz/issues
* Date/Publication: 2019-06-07 16:50:03 UTC
* Number of recursive dependencies: 94

Run `revdep_details(,"mgcViz")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking examples ... ERROR
    ```
    Running examples in ‘MIGSA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: FitOptions-class
    > ### Title: FitOptions S4 class implementation in R
    > ### Aliases: FitOptions-class FitOptions FitOptions.default
    > ###   FitOptions.data.frame
    > 
    > ### ** Examples
    > 
    > ## Supose we have 15 subjects, the first 8 from Condition1 and the last 7 
    > ## from Condition2, lets create the corresponding FitOptions object to test
    > ## Condition1 vs. Condition2.
    > l <- c(rep("Condition1", 8), rep("Condition2", 7));
    > fit_options <- FitOptions(l);
    Error in UseMethod("FitOptions", x) : 
      no applicable method for 'FitOptions' applied to an object of class "character"
    Calls: FitOptions
    Execution halted
    ```

*   checking tests ...
    ```
    ...
          parLapplyLB, parRapply, parSapply, parSapplyLB
      
      The following objects are masked from 'package:stats':
      
          IQR, mad, sd, var, xtabs
      
      The following objects are masked from 'package:base':
      
          Filter, Find, Map, Position, Reduce, anyDuplicated, append,
          as.data.frame, basename, cbind, colnames, dirname, do.call,
          duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
          lapply, mapply, match, mget, order, paste, pmax, pmax.int, pmin,
          pmin.int, rank, rbind, rownames, sapply, setdiff, sort, table,
          tapply, union, unique, unsplit, which, which.max, which.min
      
      
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘MIGSA.Rnw’using ‘UTF-8’... failed
      ‘gettingPbcmcData.Rnw’using ‘UTF-8’... OK
      ‘gettingTcgaData.Rnw’using ‘UTF-8’... OK
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MIGSA.Rnw’
      ...
    
    > exprData2 <- new("MAList", list(M = exprData2))
    
    > conditions <- rep(c("C1", "C2"), c(nSamples/2, nSamples/2))
    
    > fitOpts <- FitOptions(conditions)
    
      When sourcing ‘MIGSA.R’:
    Error: no applicable method for 'FitOptions' applied to an object of class "character"
    Execution halted
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      FitOptions.data.frame FitOptions.default summary.GSEAparams
      summary.IGSAinput summary.MIGSAres summary.SEAparams
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
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

*   checking tests ...
    ```
    ...
      
      
      Executing test function test_cbsSplits  ...  done successfully.
      
      ------------------- UNIT TEST SUMMARY ---------------------
      
      RUNIT TEST PROTOCOL -- Sat Feb 29 16:26:34 2020 
      *********************************************** 
      Number of test functions: 12 
      Number of errors: 1 
      Number of failures: 0 
      
       
      1 Test Suite : 
      MinimumDistance unit testing - 12 test functions, 1 error, 0 failures
      ERROR in test_MAP2: Error : package 'rtracklayer' could not be loaded
      Error: 
      
      unit testing failed (#test failures: 0, #R errors: 1)
      
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘MinimumDistance.Rnw’... failed
     WARNING
    Errors in running code in vignettes:
    when running code in ‘MinimumDistance.Rnw’
      ...
    
        strsplit
    
    Loading required package: rtracklayer
    Error: package or namespace load failed for ‘rtracklayer’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘Rsamtools’
    
      When sourcing ‘MinimumDistance.R’:
    Error: package ‘rtracklayer’ could not be loaded
    Execution halted
    ```

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
    ...
        |                                                                            
        |                                                                      |   0%── 1. Error: perf.diablo works with and without parallel processing and with aur
      there is no package called 'snow'
      Backtrace:
        1. mixOmics:::perf.sgccda(...)
        2. parallel::makeCluster(cpus, type = cluster_type)
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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
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

*   checking R code for possible problems ... NOTE
    ```
    createApp: no visible binding for global variable ‘..tmp’
    Undefined global functions or variables:
      ..tmp
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
* Number of recursive dependencies: 249

Run `revdep_details(,"monocle")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘biocViews’
      All declared Imports should be used.
    Missing or unexported object: ‘scater::newSCESet’
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
* Number of recursive dependencies: 146

Run `revdep_details(,"motifbreakR")` for more info

</details>

## In both

*   checking whether package ‘motifbreakR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘motifbreakR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/00_pkg_src/motifbreakR: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘MotifDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘MotifDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘motifbreakR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/motifbreakR’

```
### CRAN

```
* installing *source* package ‘motifbreakR’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/motifbreakR/old/motifbreakR.Rcheck/00_pkg_src/motifbreakR: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘MotifDb’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘MotifDb’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘motifbreakR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/motifbreakR/old/motifbreakR.Rcheck/motifbreakR’

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
      installed size is  6.3Mb
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

*   checking examples ... ERROR
    ```
    ...
    > sce <- sce[, sce$cluster_id == "B cells"]
    > sce$cluster_id <- droplevels(sce$cluster_id)
    > 
    > # downsample to 100 genes
    > cs_by_s <- split(colnames(sce), sce$sample_id)
    > gs <- sample(nrow(sce), 100)
    > sce <- sce[gs, ]
    > 
    > res <- mmDS(sce, method = "dream", 
    +     n_threads = 1, verbose = FALSE)
    Warning in DGEList(counts(x), norm.factors = 1/sizeFactors(x)) :
      norm factors don't multiply to 1
    Warning in dream(v, formula, cd, contrast, ddf = ddf, suppressWarnings = !verbose) :
      Contrasts with only a single non-zero term are already evaluated by default.
    Dividing work into 83 chunks...
    
    Total:13 s
    Error in fitFDistRobustly(var, df1 = df, covariate = covariate, winsor.tail.p = winsor.tail.p) : 
      statmod package required but is not installed
    Calls: mmDS ... squeezeVar -> fitFDistRobustly -> Recall -> fitFDistRobustly
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      
      ── 2. Error: pbDS.limma-trend (@test-pbDS.R#48)  ───────────────────────────────
      statmod package required but is not installed
      Backtrace:
       1. muscat::pbDS(...)
       2. base::lapply(...)
       3. muscat:::FUN(X[[i]], ...)
       4. base::lapply(...)
       5. muscat:::FUN(X[[i]], ...)
       6. limma::eBayes(cfit, trend = trend, robust = robust)
       7. limma:::.ebayes(...)
       8. limma::squeezeVar(...)
       9. limma::fitFDistRobustly(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 161 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 2 ]
      1. Error: defaults - pbDS.limma-trend (@test-pbDS.R#29) 
      2. Error: pbDS.limma-trend (@test-pbDS.R#48) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'mmDS':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# NanoStringDiff

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 44

Run `revdep_details(,"NanoStringDiff")` for more info

</details>

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
* Number of recursive dependencies: 163

Run `revdep_details(,"NetLogoR")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic '[[<-' and siglist 'worldArray,ANY,ANY'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: ‘SummarizedExperiment::metadata’
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .github
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘ALDEx2’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rsamtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   5.3Mb
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgl’
    
    Packages which this enhances but not available for checking:
      'gurobi', 'slam'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -L/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/lib -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/00_pkg_src/OUTRIDER: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘OUTRIDER’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/new/OUTRIDER.Rcheck/OUTRIDER’

```
### CRAN

```
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/OUTRIDER/RcppArmadillo/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -L/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/lib -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/lib -lR
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/old/OUTRIDER.Rcheck/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/OUTRIDER/old/OUTRIDER.Rcheck/00_pkg_src/OUTRIDER: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
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

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data   7.9Mb
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘pandaR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plot.panda
    > ### Title: Plot.panda
    > ### Aliases: plot.panda
    > ### Keywords: keywords
    > 
    > ### ** Examples
    > 
    > data(pandaResult)
    > plot(pandaResult)
    Error in as.double(y) : 
      cannot coerce type 'S4' to vector of type 'double'
    Calls: plot -> plot.default -> xy.coords
    Execution halted
    ```

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
* Number of recursive dependencies: 194

Run `revdep_details(,"PathoStat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ComplexHeatmap’ ‘RColorBrewer’
      All declared Imports should be used.
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

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘ade4’ in Rd xrefs
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
* Number of recursive dependencies: 135

Run `revdep_details(,"Pigengene")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Loading required package: org.Mm.eg.db
    
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
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: useast.ensembl.org; Name or service not known
    Calls: gene.mapping ... request_fetch -> request_fetch.write_memory -> <Anonymous>
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

*   checking examples ... ERROR
    ```
    Running examples in ‘PrecisionTrialDrawer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getAlterations
    > ### Title: Retrieve genomic data for each gene in the panel
    > ### Aliases: getAlterations
    > 
    > ### ** Examples
    > 
    > #Load panelexample
    > data(cpObj2)
    > # Retrieve data from AML
    > cpObj <- getAlterations(cpObj2 , tumor_type=c("laml"))
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: www.cbioportal.org; Name or service not known
    Calls: getAlterations ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘LowMACA’ in Rd xrefs
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

# regsem

<details>

* Version: 1.5.2
* Source code: https://github.com/cran/regsem
* Date/Publication: 2020-02-19 12:00:03 UTC
* Number of recursive dependencies: 152

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
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -I/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
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
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -I/wynton/home/cbi/shared/software/CBI/gdal-2.4.3/include  -c regsem_init.c -o regsem_init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_RAMmult.cpp -o regsem_rcpp_RAMmult.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_fit_fun.cpp -o regsem_rcpp_fit_fun.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_grad_ram.cpp -o regsem_rcpp_grad_ram.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG  -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/Rcpp/include" -I"/scratch/573693.1.long.q/tmp.n8Yg3gxqXi/regsem/RcppArmadillo/include" -I/usr/local/include  -fpic  -g -O2  -c regsem_rcpp_quasi_calc.cpp -o regsem_rcpp_quasi_calc.o
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
* Number of recursive dependencies: 189

Run `revdep_details(,"RNAmodR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
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
* installing *source* package ‘RnBeads’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/00_pkg_src/RnBeads: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘RnBeads’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads’

```
### CRAN

```
* installing *source* package ‘RnBeads’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/old/RnBeads.Rcheck/00_pkg_src/RnBeads: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
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

* Version: 1.1.6
* Source code: https://github.com/cran/scDblFinder
* URL: https://github.com/plger/scDblFinder
* BugReports: https://github.com/plger/scDblFinder/issues
* Date/Publication: 2020-02-25
* Number of recursive dependencies: 105

Run `revdep_details(,"scDblFinder")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    plotROCs: no visible binding for global variable ‘FPR’
    plotROCs: no visible binding for global variable ‘TPR’
    plotROCs: no visible binding for global variable ‘method’
    scDblFinder : <anonymous>: no visible binding for global variable
      ‘ndims’
    Undefined global functions or variables:
      FPR TPR method ndims
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘cowplot’
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

*   checking examples ... WARNING
    ```
    ...
      Warning: 'isSpike' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'isSpike<-' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'isSpike<-' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
      Warning: 'isSpike<-' is deprecated.
      Warning: 'spikeNames' is deprecated.
      Warning: 'isSpike' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Biobase’
      All declared Imports should be used.
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
* installing *source* package ‘scone’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/new/scone.Rcheck/00_pkg_src/scone: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘scone’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/new/scone.Rcheck/scone’

```
### CRAN

```
* installing *source* package ‘scone’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/scone/old/scone.Rcheck/00_pkg_src/scone: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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
    ...
      Backtrace:
       1. base::library(FlowSorted.Blood.450k)
       2. base::.getRequiredPackages2(pkgInfo, quietly = quietly)
       3. base::library(...)
       4. base::.getRequiredPackages2(pkgInfo, quietly = quietly)
      
      ── 4. Error: SigSetToRGChannelSet gives correct results (@test_sesamize.R#25)  ─
      package 'bumphunter' could not be loaded
      Backtrace:
       1. base::library(minfi)
       2. base::.getRequiredPackages2(pkgInfo, quietly = quietly)
      
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
* installing *source* package ‘shinyMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/00_pkg_src/shinyMethyl: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/new/shinyMethyl.Rcheck/shinyMethyl’

```
### CRAN

```
* installing *source* package ‘shinyMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/old/shinyMethyl.Rcheck/00_pkg_src/shinyMethyl: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘shinyMethyl’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/shinyMethyl/old/shinyMethyl.Rcheck/shinyMethyl’

```
# SIAMCAT

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 111

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
    <bytecode: 0x11249088>
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rsamtools’
    
    Depends: includes the non-default packages:
      'Rsamtools', 'doParallel', 'Biostrings', 'stringr', 'matrixStats',
      'plyr', 'GenomicRanges', 'IRanges'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    
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

*   checking installed package size ... NOTE
    ```
      installed size is 794.6Mb
      sub-directories of 1Mb or more:
        data  790.4Mb
        doc     4.1Mb
    ```

# singleCellTK

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/singleCellTK
* URL: https://compbiomed.github.io/sctk_docs/
* BugReports: https://github.com/compbiomed/singleCellTK/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 215

Run `revdep_details(,"singleCellTK")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘celda’ ‘shinyBS’ ‘shinythemes’
      All declared Imports should be used.
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

*   checking R code for possible problems ... NOTE
    ```
    plotDispersion: no visible binding for global variable ‘Score’
    plotDispersion: no visible binding for global variable ‘Dispersion’
    plotDispersion: no visible binding for global variable ‘Class’
    plotDispersion: no visible binding for global variable ‘SampleText’
    plotDispersion: no visible binding for global variable ‘SampleLabel’
    plotRankDensity_intl: no visible binding for global variable ‘Ranks’
    plotRankDensity_intl: no visible binding for global variable ‘upDown’
    plotRankDensity_intl: no visible binding for global variable
      ‘..density..’
    plotRankDensity_intl: no visible binding for global variable ‘EntrezID’
    plotScoreLandscape: no visible binding for global variable ‘sc1’
    plotScoreLandscape: no visible binding for global variable ‘sc2’
    projectScoreLandscape: no visible binding for global variable
      ‘SampleText’
    projectScoreLandscape: no visible binding for global variable ‘Class’
    projectScoreLandscape: no visible binding for global variable
      ‘SampleLabel’
    Undefined global functions or variables:
      ..density.. Class Dispersion EntrezID Ranks SampleLabel SampleText
      Score sc1 sc2 upDown
    ```

# slingshot

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/slingshot
* BugReports: https://github.com/kstreet13/slingshot/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 211

Run `revdep_details(,"slingshot")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘rgl’ in Rd xrefs
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

# splatter

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/splatter
* URL: https://github.com/Oshlack/splatter
* BugReports: https://github.com/Oshlack/splatter/issues
* Date/Publication: 2020-02-14
* Number of recursive dependencies: 210

Run `revdep_details(,"splatter")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘rlang:::warn_deprecated’
      See the note in ?`:::` about the use of this operator.
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

# stm

<details>

* Version: 1.3.5
* Source code: https://github.com/cran/stm
* URL: http://structuraltopicmodel.com
* BugReports: https://github.com/bstewart/stm/issues
* Date/Publication: 2019-12-17 12:50:02 UTC
* Number of recursive dependencies: 108

Run `revdep_details(,"stm")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Completed Group 1 E-Step (2 seconds). 
      Completed M-Step. 
      Completing Iteration 1 (approx. per word bound = -10.359) 
      ....................................................................................................
      Completed Group 1 E-Step (2 seconds). 
      Completed M-Step. 
      ....................................................................................................
      Completed Group 2 E-Step (2 seconds). 
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

*   checking whether package ‘summarytools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/summarytools/new/summarytools.Rcheck/00install.out’ for details.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked UTF-8 strings
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

*   checking R code for possible problems ... NOTE
    ```
    sva_network: no visible global function definition for ‘lm’
    Undefined global functions or variables:
      lm
    Consider adding
      importFrom("stats", "lm")
    to your NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    apd: warning in dir(system.file("app", package = "tenXplore"), full =
      TRUE): partial argument match of 'full' to 'full.names'
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

# VanillaICE

<details>

* Version: 1.48.0
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 71

Run `revdep_details(,"VanillaICE")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The following object is masked from ‘package:GenomicRanges’:
    
        shift
    
    The following object is masked from ‘package:IRanges’:
    
        shift
    
    The following objects are masked from ‘package:S4Vectors’:
    
        first, second
    
    >   extdir <- system.file("extdata", package="VanillaICE", mustWork=TRUE)
    >   features <- suppressWarnings(fread(file.path(extdir, "SNP_info.csv")))
    >   fgr <- GRanges(paste0("chr", features$Chr), IRanges(features$Position, width=1),
    +                  isSnp=features[["Intensity Only"]]==0)
    >   fgr <- SnpGRanges(fgr)
    >   names(fgr) <- features[["Name"]]
    >   bsgenome <- BSgenome.Hsapiens.UCSC.hg18
    Error: object 'BSgenome.Hsapiens.UCSC.hg18' not found
    Execution halted
    ```

*   checking tests ...
    ```
    ...
       
      1 Test Suite : 
      VanillaICE unit testing - 24 test functions, 7 errors, 0 failures
      ERROR in test_ArrayViews: Error in seqlevels(BSgenome.Hsapiens.UCSC.hg18) : 
        object 'BSgenome.Hsapiens.UCSC.hg18' not found
      ERROR in test_columnSubset: Error in seqlevels(BSgenome.Hsapiens.UCSC.hg18) : 
        object 'BSgenome.Hsapiens.UCSC.hg18' not found
      ERROR in test_SnpArrayExperiment: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      ERROR in test_SnpArrayExperiment2: Error : package 'rtracklayer' could not be loaded
      ERROR in test_hmm_cnset: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      ERROR in test_state4: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      ERROR in test_cn_NAs: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      Error: 
      
      unit testing failed (#test failures: 0, #R errors: 7)
      
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
    ...
        strsplit
    
    Loading required package: rtracklayer
    Error: package or namespace load failed for ‘rtracklayer’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
     there is no package called ‘Rsamtools’
    
      When sourcing ‘VanillaICE.R’:
    Error: package ‘rtracklayer’ could not be loaded
    Execution halted
    when running code in ‘crlmmDownstream.Rnw’
      ...
        msg
    }
    <bytecode: 0x1d77d060>
    <environment: namespace:VanillaICE>
     --- function search by body ---
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘crlmmDownstream.R’:
    Error: 'length(x) = 2 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BSgenome.Hsapiens.UCSC.hg18’
      All declared Imports should be used.
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
* installing *source* package ‘wateRmelon’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/new/wateRmelon.Rcheck/00_pkg_src/wateRmelon: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘wateRmelon’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/new/wateRmelon.Rcheck/wateRmelon’

```
### CRAN

```
* installing *source* package ‘wateRmelon’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/old/wateRmelon.Rcheck/00_pkg_src/wateRmelon: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘GenomicFeatures’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘GenomicFeatures’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘wateRmelon’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/old/wateRmelon.Rcheck/wateRmelon’

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
* installing *source* package ‘XBSeq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/00_pkg_src/XBSeq: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘XBSeq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/new/XBSeq.Rcheck/XBSeq’

```
### CRAN

```
* installing *source* package ‘XBSeq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/XBSeq/old/XBSeq.Rcheck/00_pkg_src/XBSeq: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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
* installing *source* package ‘yarn’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/00_pkg_src/yarn: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/yarn’

```
### CRAN

```
* installing *source* package ‘yarn’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/old/yarn.Rcheck/00_pkg_src/yarn: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘yarn’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/yarn/old/yarn.Rcheck/yarn’

```
