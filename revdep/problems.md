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

*   checking whether package ‘AMARETTO’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/AMARETTO/new/AMARETTO.Rcheck/00install.out’ for details.
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
    Warning: multiple methods tables found for ‘splitAsList’
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘Rsamtools’
    Calls: amplicanAlign ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. base::getNamespace(ns)
        5. base::loadNamespace(name)
        7. base::loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]])
        9. base::loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]])
       10. base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       11. base:::withOneRestart(expr, restarts[[1L]])
       12. base:::doWithOneRestart(return(expr), restart)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 41 | SKIPPED: 0 | WARNINGS: 3 | FAILED: 2 ]
      1. Error: amplican runs through example files without any issues (@test_amplican.R#19) 
      2. Error: (unknown) (@test_filters_helpers.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... WARNING
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

*   checking whether package ‘BASiCS’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/BASiCS/new/BASiCS.Rcheck/00install.out’ for details.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in classVersion("ExpressionSet") : 
      could not find function "classVersion"
    Error: unable to load R code in package ‘scater’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking whether the namespace can be unloaded cleanly ... WARNING
    ```
    Error in classVersion("ExpressionSet") : 
      could not find function "classVersion"
    In addition: Warning message:
    multiple methods tables found for ‘splitAsList’ 
    Error: unable to load R code in package ‘scater’
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in classVersion("ExpressionSet") : 
      could not find function "classVersion"
    Error: unable to load R code in package ‘scater’
    Execution halted
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
    Packages required but not available: 'Rsamtools', 'VariantAnnotation'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking whether package ‘bnbc’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/bnbc/new/bnbc.Rcheck/00install.out’ for details.
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

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
       1. rtracklayer::import("ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz")
       2. rtracklayer::import("ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz")
       4. rtracklayer::import(FileForFormat(con), ...)
       6. rtracklayer::import(con, ...)
       7. rtracklayer:::.local(con, format, text, ...)
       8. utils::download.file(resource(con), destfile)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 13 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: (unknown) (@test_annotation.R#99) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      multiple methods tables found for 'splitAsList' 
      Execution halted
    ```

*   checking whether package ‘bumphunter’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
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
    Undefined global functions or variables:
      bootstraps
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘FlowSOM’
    
    Package suggested but not available for checking: ‘diffcyt’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking whether package ‘celda’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/celda/new/celda.Rcheck/00install.out’ for details.
    ```

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

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘rospca’ in Rd xrefs
    ```

# CEMiTool

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2019-12-18
* Number of recursive dependencies: 179

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
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
In addition: Warning message:
multiple methods tables found for ‘splitAsList’ 
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
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/old/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
In addition: Warning message:
multiple methods tables found for ‘splitAsList’ 
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

*   checking whether package ‘CHARGE’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CHARGE/new/CHARGE.Rcheck/00install.out’ for details.
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

*   checking examples ... ERROR
    ```
    ...
        trimws
    
    
    This is xcms version 3.8.1 
    
    
    Attaching package: ‘xcms’
    
    The following object is masked from ‘package:stats’:
    
        sigma
    
    > mzraw <- readMSData(files = mzfile, mode = "onDisk")
    > cpw <- CentWaveParam(ppm = 15, peakwidth = c(5,20), snthresh = 10)
    > mzData <- findChromPeaks(object = mzraw, param = cpw)
    Detecting mass traces at 15 ppm ... OK
    Detecting chromatographic peaks in 364 regions of interest ... OK: 126 found.
    Error in (function (classes, fdef, mtable)  : 
      unable to find an inherited method for function ‘msLevel’ for signature ‘"XProcessHistory"’
    Calls: findChromPeaks ... anyStrings -> isTRUE -> validityMethod -> msLevel -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        2. xcms::findChromPeaks(object = mzraw, param = cpw)
        3. xcms:::.local(object, param, ...)
        4. xcms:::.peaks_to_result(res, object, startDate, param, msLevel)
        5. xcms:::XProcessHistory(...)
        6. methods::validObject(obj)
        9. xcms:::validityMethod(object)
       10. ProtGenerics::msLevel(object)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 9 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 2 ]
      1. Error: (unknown) (@test_cliques.R#7) 
      2. Error: (unknown) (@test_network.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking whether package ‘cliqueMS’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘filterAcquisitionNum’
      Warning: multiple methods tables found for ‘filterMsLevel’
      Warning: multiple methods tables found for ‘filterMz’
      Warning: multiple methods tables found for ‘filterRt’
      Warning: multiple methods tables found for ‘smooth’
      Warning: multiple methods tables found for ‘polarity’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/cliqueMS/new/cliqueMS.Rcheck/00install.out’ for details.
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

*   checking running R code from vignettes ...
    ```
      ‘CopywriteR.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘CopywriteR.Rnw’
      ...
     --- function search by body ---
    Function .tng in namespace CopywriteR has this body.
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘CopywriteR.R’:
    Error: The GC-content and mappability normalization did not work due to a
      failure to calculate loesses. This can generally be solved by using
      larger bin sizes. Stopping execution of the remaining part of the
      script...
    Execution halted
    ```

*   checking whether package ‘CopywriteR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/new/CopywriteR.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘DeMixT’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
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

*   checking R code for possible problems ... NOTE
    ```
    simulate_2comp: no visible global function definition for ‘SimpleList’
    simulate_2comp: no visible global function definition for ‘DataFrame’
    simulate_3comp: no visible global function definition for ‘SimpleList’
    simulate_3comp: no visible global function definition for ‘DataFrame’
    Undefined global functions or variables:
      DataFrame SimpleList
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
    ...
    Complete output:
      > library(testthat)
      > library(DepecheR)
      > 
      > test_check("DepecheR")
      ── 1. Failure: depeche expected output (@test_depeche.R#7)  ────────────────────
      max(out$clusterVector) == 2 isn't true.
      
      ── 2. Failure: depeche expected output (@test_depeche.R#8)  ────────────────────
      all(x$ids == out$clusterVector) || all(x$ids%%2 + 1 == out$clusterVector) isn't true.
      
      [1] "Done with k-means"
      [1] "Now the first bit is done, and the iterative part takes off"
      [1] "Clusters 1 to 1 smoothed in 0.0506558418273926 . Now, 0 clusters are left."
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 21 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 2 ]
      1. Failure: depeche expected output (@test_depeche.R#7) 
      2. Failure: depeche expected output (@test_depeche.R#8) 
      
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

# flowSpy

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/flowSpy
* URL: http://www.r-project.org, https://github.com/ytdai/flowSpy
* BugReports: https://github.com/ytdai/flowSpy/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 226

Run `revdep_details(,"flowSpy")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘FlowSOM’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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
    > ### ** Examples
    > 
    > fantom_file <- fantom_download(organism = "mouse", noprompt = TRUE)
    adding rname 'http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz'
    Warning: Couldn't set cache size: attempt to write a readonly database
    Use `cache_size` = NULL to turn off this warning.
    Warning: download failed
      web resource path: ‘http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      local file path: ‘/wynton/home/cbi/hb/.cache/BiocFileCache/2850743679346_mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      reason: Could not resolve host: fantom.gsc.riken.jp; Name or service not known
    Warning: bfcadd() failed; resource removed
      rid: BFC5
      fpath: ‘http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz’
      reason: download failed
    Warning in value[[3L]](cond) :
      
    trying to add rname 'http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz' produced error:
      bfcadd() failed; see warnings()
    Error in bfcrpath(bfc, url) : not all 'rnames' found or unique.
    Calls: fantom_download -> bfcrpath -> bfcrpath
    Execution halted
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

# metavizr

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/metavizr
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 175

Run `revdep_details(,"metavizr")` for more info

</details>

## In both

*   checking whether package ‘metavizr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/metavizr/new/metavizr.Rcheck/00install.out’ for details.
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

*   checking whether package ‘methrix’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: multiple methods tables found for ‘splitAsList’
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/methrix/new/methrix.Rcheck/00install.out’ for details.
    ```

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("methrix_data", package = "methrix"):
      Warning message:
      multiple methods tables found for ‘splitAsList’ 
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
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

