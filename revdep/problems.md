# AMARETTO

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 133

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
    'LinkingTo' field is unused: package has no 'src' directory
    ```

# amplican

<details>

* Version: 1.6.2
* Source code: https://github.com/cran/amplican
* URL: https://github.com/valenlab/amplican
* BugReports: https://github.com/valenlab/amplican/issues
* Date/Publication: 2019-06-06
* Number of recursive dependencies: 94

Run `revdep_details(,"amplican")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘CrispRVariants’ in Rd xrefs
    ```

# antiProfiles

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/antiProfiles
* URL: https://github.com/HCBravoLab/antiProfiles
* Date/Publication: 2019-05-02
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
* Number of recursive dependencies: 80

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 23

Run `revdep_details(,"aroma.cn")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    ```

# aroma.core

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2019-06-17 18:20:03 UTC
* Number of recursive dependencies: 45

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

* Version: 3.14.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, http://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-05-02
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

* Version: 1.6.0
* Source code: https://github.com/cran/BASiCS
* URL: https://github.com/catavallejos/BASiCS
* BugReports: https://github.com/catavallejos/BASiCS/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 122

Run `revdep_details(,"BASiCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# BatchQC

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/BatchQC
* URL: https://github.com/mani2012/BatchQC
* BugReports: https://github.com/mani2012/BatchQC/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 110

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

# BayesTwin

<details>

* Version: 1.0
* Source code: https://github.com/cran/BayesTwin
* URL: http://www.ingaschwabe.com
* BugReports: https://github.com/ingaschwabe/BayesTwin
* Date/Publication: 2017-06-26 16:37:46 UTC
* Number of recursive dependencies: 5

Run `revdep_details(,"BayesTwin")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# baystability

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/baystability
* Date/Publication: 2018-03-13 15:55:34 UTC
* Number of recursive dependencies: 96

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
* Number of recursive dependencies: 78

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
* Number of recursive dependencies: 36

Run `revdep_details(,"bingat")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘genalg’ in Rd xrefs
    ```

# bnclassify

<details>

* Version: 0.4.2
* Source code: https://github.com/cran/bnclassify
* URL: http://github.com/bmihaljevic/bnclassify
* BugReports: http://github.com/bmihaljevic/bnclassify/issues
* Date/Publication: 2019-03-14 13:33:39 UTC
* Number of recursive dependencies: 82

Run `revdep_details(,"bnclassify")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      11: t(apply(dataset, 1, compute_grain_log_joint_instance, grain, class))
      12: apply(dataset, 1, compute_grain_log_joint_instance, grain, class)
      13: FUN(newX[, i], ...)
      14: gRain::setEvidence(grain, nodes = vars, states = instance)
      15: setEvi_(object, evidence, propagate = propagate, details = details)
      16: propagate(object)
      17: propagate.grain(object)
      18: propagateLS(object$temppot, rip = object$rip)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 626 | SKIPPED: 26 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: incomplete data (@test-learn-aode.r#88) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# brms

<details>

* Version: 2.10.0
* Source code: https://github.com/cran/brms
* URL: https://github.com/paul-buerkner/brms, http://discourse.mc-stan.org
* BugReports: https://github.com/paul-buerkner/brms/issues
* Date/Publication: 2019-08-29 15:50:07 UTC
* Number of recursive dependencies: 164

Run `revdep_details(,"brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘spdep’
    ```

# bumphunter

<details>

* Version: 1.26.0
* Source code: https://github.com/cran/bumphunter
* URL: https://github.com/ririzarr/bumphunter
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 84

Run `revdep_details(,"bumphunter")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: import("ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz") at testthat/test_annotation.R:99
      2: import("ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz")
      3: import(FileForFormat(con), ...)
      4: import(FileForFormat(con), ...)
      5: import(con, ...)
      6: import(con, ...)
      7: .local(con, format, text, ...)
      8: download.file(resource(con), destfile)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 13 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: (unknown) (@test_annotation.R#99) 
      
      Error: testthat unit tests failed
      Execution halted
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

# CARBayesST

<details>

* Version: 3.0.1
* Source code: https://github.com/cran/CARBayesST
* URL: http://github.com/duncanplee/CARBayesST
* BugReports: http://github.com/duncanplee/CARBayesST/issues
* Date/Publication: 2019-01-08 11:50:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(,"CARBayesST")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘spdep’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# CATALYST

<details>

* Version: 1.8.6
* Source code: https://github.com/cran/CATALYST
* URL: https://github.com/HelenaLC/CATALYST
* BugReports: https://github.com/HelenaLC/CATALYST/issues
* Date/Publication: 2019-07-27
* Number of recursive dependencies: 192

Run `revdep_details(,"CATALYST")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: runDR
    > ### Title: Perform dim. reduction on a 'daFrame'
    > ### Aliases: runDR runDR,daFrame-method
    > 
    > ### ** Examples
    > 
    > data(PBMC_fs, PBMC_panel, PBMC_md)
    > daf <- daFrame(PBMC_fs, PBMC_panel, PBMC_md)
    > daf <- cluster(daf)
    o running FlowSOM clustering...
    o running ConsensusClusterPlus metaclustering...
    > 
    > # PCA on all cells
    > daf <- runDR(daf, "PCA")
    > 
    > # UMAP on 1000 random cells
    > daf <- runDR(daf, "UMAP", rows_to_use = sample(nrow(daf), 1e3))
    Error in loadNamespace(name) : there is no package called ‘uwot’
    Calls: runDR ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotClusterHeatmap,daFrame : <anonymous>: no visible binding for global
      variable ‘cluster_id’
    Undefined global functions or variables:
      cluster_id
    ```

# cellWise

<details>

* Version: 2.1.0
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2019-02-25 17:40:03 UTC
* Number of recursive dependencies: 57

Run `revdep_details(,"cellWise")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘rospca’ in Rd xrefs
    ```

# CEMiTool

<details>

* Version: 1.8.3
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2019-07-11
* Number of recursive dependencies: 183

Run `revdep_details(,"CEMiTool")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GeneOverlap’ ‘RColorBrewer’ ‘ff’ ‘ffbase’ ‘gRbase’ ‘limma’ ‘plyr’
      ‘tidyr’
      All declared Imports should be used.
    ```

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

* Version: 2.14.0
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 221

Run `revdep_details(,"ChAMP")` for more info

</details>

## In both

*   checking package subdirectories ... WARNING
    ```
    Problems with news in ‘inst/NEWS.Rd’:
      inst/NEWS.Rd:81: unexpected END_OF_INPUT '
      '
    Invalid citation information in ‘inst/CITATION’:
      Error in parse(file = cfile): /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00_pkg_src/ChAMP/inst/CITATION:10:12: unexpected symbol
      9:            person("Stephan", "Beck")
      10:            person
                     ^
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'FEM', 'DMRcate',
      'Illumina450ProbeVariants.db', 'IlluminaHumanMethylationEPICmanifest'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
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

*   checking R code for possible problems ... NOTE
    ```
    champ.ebGSEA : gseaWTfn: no visible global function definition for
      'wilcox.test'
    Undefined global functions or variables:
      wilcox.test
    Consider adding
      importFrom("stats", "wilcox.test")
    to your NAMESPACE file.
    ```

# CHARGE

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/CHARGE
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 149

Run `revdep_details(,"CHARGE")` for more info

</details>

## In both

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

* Version: 1.12.0
* Source code: https://github.com/cran/Chicago
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 143

Run `revdep_details(,"Chicago")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘PCHiCdata’ in Rd xrefs
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

<details>

* Version: 3.18.2
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2019-07-26
* Number of recursive dependencies: 163

Run `revdep_details(,"ChIPpeakAnno")` for more info

</details>

## In both

*   checking whether package ‘ChIPpeakAnno’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'grid', 'IRanges', 'Biostrings', 'GenomicRanges', 'S4Vectors',
      'VennDiagram'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
* installing *source* package ‘ChIPpeakAnno’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: package or namespace load failed for ‘futile.logger’:
 unable to load R code in package ‘lambda.r’
Error: package ‘futile.logger’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ChIPpeakAnno’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/ChIPpeakAnno’

```
### CRAN

```
* installing *source* package ‘ChIPpeakAnno’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: package or namespace load failed for ‘futile.logger’:
 unable to load R code in package ‘lambda.r’
Error: package ‘futile.logger’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ChIPpeakAnno’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChIPpeakAnno/old/ChIPpeakAnno.Rcheck/ChIPpeakAnno’

```
# Clomial

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/Clomial
* Date/Publication: 2019-05-02
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

* Version: 2.4.4
* Source code: https://github.com/cran/clusterExperiment
* BugReports: https://github.com/epurdom/clusterExperiment/issues
* Date/Publication: 2019-06-07
* Number of recursive dependencies: 172

Run `revdep_details(,"clusterExperiment")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘zinbwave’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# CNPBayes

<details>

* Version: 1.13.5
* Source code: https://github.com/cran/CNPBayes
* URL: https://github.com/scristia/CNPBayes
* BugReports: https://github.com/scristia/CNPBayes/issues
* Date/Publication: 2019-01-05
* Number of recursive dependencies: 157

Run `revdep_details(,"CNPBayes")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── 4. Failure: easy mendelian example (@test_trios.R#524)  ─────────────────────
      `z.m` not identical to 2.
      1/1 mismatches
      [1] 3 - 2 == 1
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 305 | SKIPPED: 3 | WARNINGS: 3 | FAILED: 4 ]
      1. Failure: sigma2_pooled (@test_SingleBatchPooled.R#24) 
      2. Failure: ggfun (@test_ggfuns.R#9) 
      3. Failure: kbatch (@test_multibatch.R#271) 
      4. Failure: easy mendelian example (@test_trios.R#524) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    ...
      generic 'sigma' and siglist 'MultiBatchPooled'
      generic 'sigma<-' and siglist 'MixtureModel'
      generic 'sigma<-' and siglist 'MultiBatchPooled'
      generic 'tau2' and siglist 'MultiBatch'
      generic 'theta' and siglist 'MultiBatch'
      generic 'theta<-' and siglist 'McmcChains,ANY'
      generic 'theta<-' and siglist 'MixtureModel,ANY'
      generic 'theta<-' and siglist 'MultiBatch,matrix'
      generic 'theta<-' and siglist 'MultiBatchModel,ANY'
      generic 'thin' and siglist 'MultiBatch'
      generic 'thin' and siglist 'MultiBatchList'
      generic 'thin<-' and siglist 'McmcParams,numeric'
      generic 'thin<-' and siglist 'MultiBatch,numeric'
      generic 'thin<-' and siglist 'MultiBatchList,numeric'
      generic 'triodata_lrr' and siglist 'TrioBatchModel'
      generic 'z' and siglist 'MultiBatch'
      generic 'zFreq' and siglist 'MultiBatch'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Slots for class 'MultiBatch'
      Code: chains current_values data down_sample flags parameters specs
            summaries
      Docs: chains current_values data down_sample flags parameters
            summaries
    
    S4 class codoc mismatches from documentation object 'MultiBatchModel-class':
    Slots for class 'MultiBatchModel'
      Code: .internal.constraint .internal.counter batch batchElements data
            data.mean data.prec hyperparams k label_switch loglik logprior
            marginal_lik mcmc.chains mcmc.params modes mu nu.0 pi
            predictive probz sigma2 sigma2.0 tau2 theta u z zfreq zstar
      Inherited: k hyperparams theta sigma2 nu.0 sigma2.0 pi mu tau2
            predictive zstar data data.mean data.prec z zfreq probz u
            logprior loglik mcmc.chains batch batchElements modes
            mcmc.params label_switch marginal_lik .internal.constraint
            .internal.counter
      Docs: .internal.constraint batch batchElements data data.mean
            data.prec hyperparams is_mendelian k label_switch loglik
            logprior mcmc.chains mcmc.params modes mu nu.0 pi probz sigma2
            sigma2.0 tau2 theta z zfreq
    ```

*   checking Rd \usage sections ... WARNING
    ```
    ...
    
    Documented arguments not in \usage in documentation object 'iter<-':
      ‘force’
    
    Documented arguments not in \usage in documentation object 'mcmcParams':
      ‘force’
    
    Undocumented arguments in documentation object 'sigma<-'
      ‘value’
    
    Undocumented arguments in documentation object 'singleBatchGuided,MultiBatchList,MultiBatch-method'
      ‘x’ ‘guide’
    
    Undocumented arguments in documentation object 'theta'
      ‘value’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        libs   3.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppArmadillo’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    batch<-,MultiBatch-numeric: no visible global function definition for
      ‘spec’
    batch<-,MultiBatch-numeric: no visible global function definition for
      ‘spec<-’
    coerce,McmcChains-list: no visible binding for global variable ‘s’
    computePrec,MultiBatch: no visible binding for global variable ‘prec’
    findSurrogates,MultiBatch: no visible binding for global variable ‘id’
    findSurrogates,MultiBatch: no visible binding for global variable
      ‘provisional_batch’
    findSurrogates,MultiBatch: no visible binding for global variable
      ‘batch_labels’
    sigma,MultiBatchCopyNumberPooled: no visible binding for global
      variable ‘s2’
    Undefined global functions or variables:
      . .gibbs_trios_mcmc2 .gibbs_trios_mcmc3 := batch_index batch_labels
      batches bk copy_number father id log_ratio maplabel medians model
      mother mprob nhom parents prec provisional_batch s s2 snpdat spec
      spec<- t.test value
    Consider adding
      importFrom("stats", "t.test")
    to your NAMESPACE file.
    ```

# cola

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/cola
* URL: https://github.com/jokergoo/cola
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 169

Run `revdep_details(,"cola")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘venneuler’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘venneuler’
    ```

# CopywriteR

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/CopywriteR
* URL: https://github.com/PeeperLab/CopywriteR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 58

Run `revdep_details(,"CopywriteR")` for more info

</details>

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

# corrcoverage

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/corrcoverage
* URL: https://annahutch.github.io/corrcoverage
* BugReports: https://github.com/annahutch/corrcoverage/issues
* Date/Publication: 2019-08-28 09:10:15 UTC
* Number of recursive dependencies: 64

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

* Version: 1.42.0
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 77

Run `revdep_details(,"crlmm")` for more info

</details>

## In both

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

* Version: 1.10.0
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 166

Run `revdep_details(,"crossmeta")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
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
    AnnotatingWarning in file(con, "r") :
      URL 'https://bioconductor.org/config.yaml': status was 'Couldn't resolve host name'
    Warning in file(con, "r") :
      URL 'http://bioconductor.org/config.yaml': status was 'Couldn't resolve host name'
    Error: invalid version specification ‘Bioconductor version cannot be validated; no internet connection?’
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘PADOG’, ‘GeneMeta’ in Rd xrefs
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    Unexported object imported by a ':::' call: ‘GEOquery:::parseGSEMatrix’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘getDirListing’ ‘getGEO’ ‘getGEOSuppFiles’ ‘merge_fdata’
      ‘symbol_annot’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    explore_paths : server: no visible binding for global variable
      ‘gs.names’
    getAndParseGSEMatrices: no visible global function definition for
      ‘download.file’
    getDirListing: no visible global function definition for ‘read.table’
    getGEOSuppFiles: no visible global function definition for
      ‘download.file’
    load_agil_plat : <anonymous>: no visible global function definition for
      ‘capture.output’
    load_agil_plat: no visible global function definition for ‘as’
    load_illum_plat: no visible global function definition for ‘as’
    padog: no visible global function definition for ‘is’
    symbol_annot: no visible binding for global variable ‘SYMBOL_9606’
    Undefined global functions or variables:
      SYMBOL_9606 as capture.output download.file gs.names gslist is
      read.table
    Consider adding
      importFrom("methods", "as", "is")
      importFrom("utils", "capture.output", "download.file", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# DAMOCLES

<details>

* Version: 1.1
* Source code: https://github.com/cran/DAMOCLES
* Date/Publication: 2015-03-05 17:36:50
* Number of recursive dependencies: 22

Run `revdep_details(,"DAMOCLES")` for more info

</details>

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

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/DatabionicSwarm
* URL: http://www.deepbionics.org
* BugReports: https://github.com/Mthrun/DatabionicSwarm/issues
* Date/Publication: 2019-01-27 14:20:03 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"DatabionicSwarm")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘spdep’
    ```

# DeepBlueR

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 138

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
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
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
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error: unable to load R code in package ‘DeepBlueR’
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

```
# DelayedArray

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/DelayedArray
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 72

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

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘Matrix’
    A package should be listed in only one of these fields.
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

* Version: 1.6.0
* Source code: https://github.com/cran/DelayedMatrixStats
* URL: https://github.com/PeteHaitch/DelayedMatrixStats
* BugReports: https://github.com/PeteHaitch/DelayedMatrixStats/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 56

Run `revdep_details(,"DelayedMatrixStats")` for more info

</details>

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

