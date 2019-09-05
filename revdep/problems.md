# AMARETTO

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 133

Run `revdep_details(,"AMARETTO")` for more info

</details>

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: (unknown) (@test_AMARETTO.R#11)  ──────────────────────────────────
      length of 'dimnames' [2] not equal to array extent
      1: AMARETTO_Run(AMARETTOinit) at testthat/test_AMARETTO.R:11
      2: AMARETTO_LarsenBased(AMARETTOinit$MA_matrix_Var, AMARETTOinit$ModuleMembership, AMARETTOinit$RegulatorData, 
             AMARETTOinit$Parameters, AMARETTOinit$NrCores)
      3: AMARETTO_LearnRegulatoryProgramsLarsen(Data, Clusters, RegulatorData, RegulatorSign, 
             Lambda, AutoRegulation, alpha = Parameters$alpha, pmax = Parameters$pmax)
      4: `colnames<-`(`*tmp*`, value = RegulatorData_rownames)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: (unknown) (@test_AMARETTO.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

*   R CMD check timed out
    

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

*   R CMD check timed out
    

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

*   R CMD check timed out
    

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

*   R CMD check timed out
    

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

*   R CMD check timed out
    

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

* Version: 1.0.4
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2019-08-15
* Number of recursive dependencies: 35

Run `revdep_details(,"DeMixT")` for more info

</details>

## In both

*   checking package vignettes in ‘inst/doc’ ... WARNING
    ```
    Located more than one ‘weave’ output file (by engine ‘knitr::rmarkdown’) for vignette with name ‘demixt’: ‘demixt.html’, ‘demixt.pdf’
    Package vignette without corresponding single PDF/HTML:
       ‘demixt.Rmd’
    ```

*   checking R code for possible problems ... NOTE
    ```
    DeMixT_S1: no visible binding for global variable ‘sd’
    DeMixT_S2: no visible binding for global variable ‘sd’
    Undefined global functions or variables:
      sd
    Consider adding
      importFrom("stats", "sd")
    to your NAMESPACE file.
    ```

# DepecheR

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2019-06-28
* Number of recursive dependencies: 89

Run `revdep_details(,"DepecheR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BiocParallel’
      All declared Imports should be used.
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

* Version: 1.2.0
* Source code: https://github.com/cran/DEqMS
* BugReports: https://github.com/yafeng/DEqMS/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 95

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
    Using temporary cache /scratch/hb/RtmpCbvl2L/BiocFileCache
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

*   checking dependencies in R code ... NOTE
    ```
    Error in setClass("INI_Calls", representation(I_Calls = "vector", NI_Calls = "vector",  : 
      could not find function "setClass"
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
* Number of recursive dependencies: 85

Run `revdep_details(,"detrendr")` for more info

</details>

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DGCA

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/DGCA
* Date/Publication: 2016-11-17 18:33:47
* Number of recursive dependencies: 147

Run `revdep_details(,"DGCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables(names = c("ind", "gene", "is.hub", "cpair")) : 
      could not find function "globalVariables"
    ```

# diffloop

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/diffloop
* URL: https://github.com/aryeelab/diffloop
* BugReports: https://github.com/aryeelab/diffloop/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 134

Run `revdep_details(,"diffloop")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# DiscoRhythm

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/DiscoRhythm
* URL: https://github.com/matthewcarlucci/DiscoRhythm
* BugReports: https://github.com/matthewcarlucci/DiscoRhythm/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 145

Run `revdep_details(,"DiscoRhythm")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(DiscoRhythm)
      Error in describe(fn, idx, raw = FALSE) %when% { : 
        Function name is already bound to non lambda.r object
      Error: package or namespace load failed for 'DiscoRhythm':
       unable to load R code in package 'lambda.r'
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    discoApp: no visible binding for global variable ‘.discorhythm_ncores’
    discoBatch: no visible binding for global variable ‘discoODAres’
    Undefined global functions or variables:
      .discorhythm_ncores discoODAres
    ```

# dmrseq

<details>

* Version: 1.4.9
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2019-06-18
* Number of recursive dependencies: 140

Run `revdep_details(,"dmrseq")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Trying again (4 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Trying again (3 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Trying again (2 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Trying again (1 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Error in getAnnot("hg19") : Annotation could not be retrieved.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotDMRs: warning in rank(as.numeric(rowSums(cov.unique)), ties =
      "first"): partial argument match of 'ties' to 'ties.method'
    plotEmpiricalDistribution: no visible binding for global variable ‘wt’
    Undefined global functions or variables:
      wt
    ```

# Doscheda

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 143

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
             modelType = "linear", accessionID = "Accession", uniquePeptides = "UniquePeps") at testthat/test-normal.R:8
      2: uniprotGene(organism)
      3: httr::POST("http://www.humanmine.org/humanmine/service/query/results", body = list(query = query, 
             format = "json"), encode = "form")
      4: request_perform(req, hu$handle$handle)
      5: request_fetch(req$output, req$url, handle)
      6: request_fetch.write_memory(req$output, req$url, handle)
      7: curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: normalize_data med works (@test-normal.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# EasyqpcR

<details>

* Version: 1.26.0
* Source code: https://github.com/cran/EasyqpcR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 84

Run `revdep_details(,"EasyqpcR")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    
    (R:4155): Gtk-WARNING **: 03:17:28.534: gtk_disable_setlocale() must be called before gtk_init()
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    
    (R:4262): Gtk-WARNING **: 03:17:36.052: gtk_disable_setlocale() must be called before gtk_init()
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    
    (R:4721): Gtk-WARNING **: 03:18:06.239: gtk_disable_setlocale() must be called before gtk_init()
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    
    (R:4824): Gtk-WARNING **: 03:18:10.782: gtk_disable_setlocale() must be called before gtk_init()
    
    (R:4931): Gtk-WARNING **: 03:18:16.010: gtk_disable_setlocale() must be called before gtk_init()
    
    (R:5005): Gtk-WARNING **: 03:18:21.223: gtk_disable_setlocale() must be called before gtk_init()
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

*   checking dependencies in R code ... NOTE
    ```
    
    (R:4032): Gtk-WARNING **: 03:17:23.955: gtk_disable_setlocale() must be called before gtk_init()
    ```

*   checking foreign function calls ... NOTE
    ```
    
    (R:4325): Gtk-WARNING **: 03:17:40.109: gtk_disable_setlocale() must be called before gtk_init()
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    
    (R:4458): Gtk-WARNING **: 03:17:48.670: gtk_disable_setlocale() must be called before gtk_init()
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
    
    (R:5096): Gtk-WARNING **: 03:18:27.606: gtk_disable_setlocale() must be called before gtk_init()
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

* Version: 2.14.0
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2019-05-02
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

* Version: 1.20.3
* Source code: https://github.com/cran/ENmix
* Date/Publication: 2019-06-03
* Number of recursive dependencies: 156

Run `revdep_details(,"ENmix")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' calls not declared from:
      ‘ExperimentHub’ ‘impute’ ‘preprocessCore’
    'library' or 'require' calls in package code:
      ‘ExperimentHub’ ‘RPMM’ ‘dynamicTreeCut’ ‘flashClust’ ‘genefilter’
      ‘gplots’ ‘impute’ ‘preprocessCore’ ‘quadprog’ ‘sqldf’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'mpreprocess.Rd':
      ‘RGChannelSet-class’ ‘MethylSet-class’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotCtrl: no visible global function definition for ‘getProbeInfo’
    preprocessENmix: no visible global function definition for
      ‘preprocessRaw’
    preprocessENmix: no visible global function definition for
      ‘getProbeType’
    preprocessENmix: no visible global function definition for
      ‘getProbeInfo’
    preprocessENmix: no visible global function definition for ‘metadata’
    rcp: no visible global function definition for ‘getAnnotation’
    readidat: no visible binding for global variable ‘arrayType’
    readidat: no visible global function definition for ‘metadata’
    relic: no visible global function definition for ‘getProbeType’
    rgDataSet: no visible global function definition for ‘SimpleList’
    show,methDataSet: no visible global function definition for ‘metadata’
    show,rgDataSet: no visible global function definition for ‘metadata’
    Undefined global functions or variables:
      ExperimentHub SimpleList annopkg arrayType betaObjf blc detectionP
      featureNames getAnnotation getControlAddress getManifestInfo
      getProbeInfo getProbeType hannum heatmap.2 hovath metadata phenoage
      preprocessRaw printFlush query rowFtests rowMedians rowttests
      solve.QP
    ```

# EventPointer

<details>

* Version: 2.2.4
* Source code: https://github.com/cran/EventPointer
* BugReports: https://github.com/jpromeror/EventPointer/issues
* Date/Publication: 2019-06-03
* Number of recursive dependencies: 138

Run `revdep_details(,"EventPointer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘SGSeq:::addFeatureID’ ‘SGSeq:::addGeneID’ ‘SGSeq:::edges’
      ‘SGSeq:::exonGraph’ ‘SGSeq:::feature2name’ ‘SGSeq:::matchSGFeatures’
      ‘SGSeq:::nodes’ ‘SGSeq:::propagateAnnotation’
      ‘SGSeq:::splitCharacterList’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotate2: no visible global function definition for
      ‘addDummySpliceSites’
    annotate2: no visible global function definition for ‘annotatePaths’
    annotateFeatures2: no visible global function definition for
      ‘matchTxFeatures’
    Undefined global functions or variables:
      addDummySpliceSites annotatePaths matchTxFeatures
    ```

# ExCluster

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 30

Run `revdep_details(,"ExCluster")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# ExpressionNormalizationWorkflow

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* BugReports: https://github.com/
* Date/Publication: 2019-05-03
* Number of recursive dependencies: 95

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

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘<pkg>’ in Rd xrefs
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
* Number of recursive dependencies: 66

Run `revdep_details(,"FDb.FANTOM4.promoters.hg19")` for more info

</details>

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

# fishpond

<details>

* Version: 1.0.2
* Source code: https://github.com/cran/fishpond
* URL: https://github.com/mikelove/fishpond
* Date/Publication: 2019-08-11
* Number of recursive dependencies: 155

Run `revdep_details(,"fishpond")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘samr:::localfdr’ ‘samr:::predictlocalfdr’ ‘samr:::qvalue.func’
      ‘samr:::samr.compute.delta.table.seq’
      See the note in ?`:::` about the use of this operator.
    ```

# flowCore

<details>

* Version: 1.50.0
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 97

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

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘flowStats’, ‘ggcyto’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'flowStats', 'openCyto', 'ggcyto'
    ```

# flowWorkspace

<details>

* Version: 3.32.0
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 103

Run `revdep_details(,"flowWorkspace")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          Vignettes contain introductory material; view with
          'browseVignettes()'. To cite Bioconductor, see
          'citation("Biobase")', and for packages 'citation("pkgname")'.
      
      ── 1. Error: (unknown) (@test-parseWorkspace.R#4)  ─────────────────────────────
      there is no package called 'CytoML'
      1: library(CytoML) at testthat/test-parseWorkspace.R:4
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 577 | SKIPPED: 2 | WARNINGS: 27 | FAILED: 1 ]
      1. Error: (unknown) (@test-parseWorkspace.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'ggcyto', 'CytoML'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 25.8Mb
      sub-directories of 1Mb or more:
        lib   12.4Mb
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
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.cpp_setIndices’ ‘.getNodeInd’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      for ‘selectMethod’
    rbind2,GatingSetList-missing: no visible global function definition for
      ‘new’
    rbind2,GatingSetList-missing: no visible binding for global variable
      ‘slot’
    recompute,GatingSetList: no visible global function definition for
      ‘selectMethod’
    transform,GatingSet: no visible global function definition for ‘is’
    transform,GatingSet : <anonymous>: no visible global function
      definition for ‘is’
    Undefined global functions or variables:
      . .hasSlot IQR as as.formula callNextMethod desc extends getKeywords
      gray is median new node old openCyto.count parallel sampleName
      selectMethod slot validObject xml.count
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

# GenEst

<details>

* Version: 1.3.1
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2019-08-22 18:50:02 UTC
* Number of recursive dependencies: 71

Run `revdep_details(,"GenEst")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gsl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# genomation

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/genomation
* URL: http://bioinformatics.mdc-berlin.de/genomation/
* BugReports: https://github.com/BIMSBbioinfo/genomation/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 88

Run `revdep_details(,"genomation")` for more info

</details>

## In both

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
      variable ‘id’
    ScoreMatrixBin,RleList-GRangesList: no visible global function
      definition for ‘:=’
    Undefined global functions or variables:
      := id
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘cache’
    Please remove from your package.
    ```

# GenRank

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/GenRank
* URL: https://github.com/chakri9/GenRank
* BugReports: https://github.com/chakri9/GenRank/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 47

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

* Version: 0.2
* Source code: https://github.com/cran/GJRM
* URL: http://www.ucl.ac.uk/statistics/people/giampieromarra
* Date/Publication: 2019-03-07 15:02:42 UTC
* Number of recursive dependencies: 83

Run `revdep_details(,"GJRM")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'VineCopula', 'copula'
    
    Package which this enhances but not available for checking: ‘sp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GUIDEseq

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 103

Run `revdep_details(,"GUIDEseq")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    annotateOffTargets: no visible global function definition for 'genes'
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
      strand.first strand.last
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: annotateOffTargets.Rd:33-35: Dropping empty section \details
    prepare_Rd: annotateOffTargets.Rd:43-45: Dropping empty section \references
    prepare_Rd: createBarcodeFasta.Rd:42-43: Dropping empty section \value
    prepare_Rd: createBarcodeFasta.Rd:44-46: Dropping empty section \references
    prepare_Rd: getUsedBarcodes.Rd:39-41: Dropping empty section \references
    ```

# hipathia

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 106

Run `revdep_details(,"hipathia")` for more info

</details>

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
    Using temporary cache /scratch/hb/RtmpSzl6sC/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: load_pathways ... AnnotationHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
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

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘minfi’ in Rd xrefs
    ```

# loo

<details>

* Version: 2.1.0
* Source code: https://github.com/cran/loo
* URL: https://mc-stan.org/loo, https://discourse.mc-stan.org
* BugReports: https://github.com/stan-dev/loo/issues
* Date/Publication: 2019-03-13 21:40:03 UTC
* Number of recursive dependencies: 133

Run `revdep_details(,"loo")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'rstanarm', 'spdep'
    ```

# LS2Wstat

<details>

* Version: 2.1-1
* Source code: https://github.com/cran/LS2Wstat
* Date/Publication: 2018-07-18 22:40:16 UTC
* Number of recursive dependencies: 31

Run `revdep_details(,"LS2Wstat")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘spdep’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# LSAmitR

<details>

* Version: 1.0-2
* Source code: https://github.com/cran/LSAmitR
* URL: https://www.bifie.at/node/3770
* Date/Publication: 2018-06-08 13:23:05 UTC
* Number of recursive dependencies: 149

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
* Number of recursive dependencies: 28

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

* Version: 0.9.3
* Source code: https://github.com/cran/Luminescence
* URL: https://CRAN.R-project.org/package=Luminescence
* BugReports: https://github.com/R-Lum/Luminescence/issues
* Date/Publication: 2019-07-31 11:40:06 UTC
* Number of recursive dependencies: 135

Run `revdep_details(,"Luminescence")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘rjags’, ‘RLumShiny’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'RLumShiny', 'rjags'
    ```

# M3Drop

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/M3Drop
* URL: https://github.com/tallulandrews/M3Drop
* BugReports: https://github.com/tallulandrews/M3Drop/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 191

Run `revdep_details(,"M3Drop")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘numDeriv’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘scater::exprs’
    ```

*   checking R code for possible problems ... NOTE
    ```
    bg__filter_cells: no visible binding for global variable ‘x’
    bg__get_extreme_residuals: no visible binding for global variable ‘x’
    Undefined global functions or variables:
      x
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: NBumi_FSOther.Rd:8-10: Dropping empty section \usage
    prepare_Rd: NBumi_TradDE.Rd:7-8: Dropping empty section \usage
    ```

# MEAL

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 201

Run `revdep_details(,"MEAL")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             nrows = 1000L, listData = structure(list(), .Names = character(0)), elementType = "ANY", 
             elementMetadata = NULL, metadata = list()), metadata = list()), design = structure(c(1, 
         1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0), .Dim = c(6L, 2L), .Dimnames = list(c("5723646052_R02C02", 
         "5723646052_R04C01", "5723646052_R05C02", "5723646053_R04C02", "5723646053_R05C02", 
         "5723646053_R06C02"), c("(Intercept)", "statusnormal")), assign = 0:1, contrasts = list(
             status = "contr.treatment")), what = "M", coef = 2, datatype = c("array", "sequencing"), 
             arraytype = c("EPIC", "450K"), analysis.type = c("differential", "variability", 
                 "ANOVA", "diffVar"), contrasts = FALSE, cont.matrix = NULL, fdr = 0.05, ... = )
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 35 | SKIPPED: 0 | WARNINGS: 8 | FAILED: 1 ]
      1. Error: DMRcate (@test_06regionAnalysis.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'calculateRelevantSNPs' is deprecated.
      Warning: 'correlationMethSNPs' is deprecated.
      Warning: 'explainedVariance' is deprecated.
      Warning: 'normalSNP' is deprecated.
      Warning: 'plotLM' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
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
      assays colData data dmrcatedata mcols<- resid rowData
      subsetByOverlaps tx.hg19 tx.hg38 tx.mm10
    Consider adding
      importFrom("stats", "resid")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# metagene

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/metagene
* BugReports: https://github.com/CharlesJB/metagene/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 121

Run `revdep_details(,"metagene")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘similaRpeak’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    avoid_gaps_update: no visible binding for global variable 'value'
    avoid_gaps_update: no visible binding for global variable 'bam'
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
      . bam bin design group nuc nuctot qinf qsup tab value
    ```

# metagenomeSeq

<details>

* Version: 1.26.3
* Source code: https://github.com/cran/metagenomeSeq
* URL: https://github.com/nosson/metagenomeSeq/
* BugReports: https://github.com/nosson/metagenomeSeq/issues
* Date/Publication: 2019-08-04
* Number of recursive dependencies: 105

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
* Number of recursive dependencies: 119

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

* Version: 1.4.0
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 56

Run `revdep_details(,"MetaNeighbor")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenomicRanges’ ‘RColorBrewer’ ‘gplots’
      All declared Imports should be used.
    ```

# MethylAid

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 152

Run `revdep_details(,"MethylAid")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

# methylationArrayAnalysis

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2019-06-07
* Number of recursive dependencies: 184

Run `revdep_details(,"methylationArrayAnalysis")` for more info

</details>

## In both

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

*   checking installed package size ... NOTE
    ```
      installed size is 78.9Mb
      sub-directories of 1Mb or more:
        extdata  78.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# methylumi

<details>

* Version: 2.30.0
* Source code: https://github.com/cran/methylumi
* BugReports: https://github.com/seandavi/methylumi/issues/new
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 175

Run `revdep_details(,"methylumi")` for more info

</details>

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘methyAnalysis’
    
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

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/MFHD
* Date/Publication: 2013-10-23 23:50:20
* Number of recursive dependencies: 75

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
* Number of recursive dependencies: 38

Run `revdep_details(,"MHTcop")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MIGSA

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/MIGSA
* URL: http://www.bdmg.com.ar/
* Date/Publication: 2019-07-12
* Number of recursive dependencies: 93

Run `revdep_details(,"MIGSA")` for more info

</details>

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

* Version: 1.28.0
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 77

Run `revdep_details(,"MinimumDistance")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Functions or methods with usage in documentation object 'coerce' but not in code:
      ‘as’
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

# moc.gapbk

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/moc.gapbk
* Date/Publication: 2019-03-07 17:20:03 UTC
* Number of recursive dependencies: 39

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

* Version: 2.12.0
* Source code: https://github.com/cran/monocle
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 227

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

* Version: 1.14.0
* Source code: https://github.com/cran/motifbreakR
* BugReports: https://github.com/Simon-Coetzee/motifbreakR/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 137

Run `revdep_details(,"motifbreakR")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'rs1006140'
    Undocumented data sets:
      'rs1006140'
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'MotifDb' 'grid'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotMotifLogoStack.2: no visible global function definition for 'par'
    Undefined global functions or variables:
      par
    Consider adding
      importFrom("graphics", "par")
    to your NAMESPACE file.
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

# NanoStringDiff

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 32

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

* Version: 0.3.5
* Source code: https://github.com/cran/NetLogoR
* URL: http://netlogor.predictiveecology.org, https://github.com/PredictiveEcology/NetLogoR/
* BugReports: https://github.com/PredictiveEcology/NetLogoR/issues
* Date/Publication: 2019-01-25 17:20:07 UTC
* Number of recursive dependencies: 165

Run `revdep_details(,"NetLogoR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘SpaDES.tools’
    
    Packages suggested but not available for checking:
      'fastshp', 'sf', 'SpaDES.core'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# NormalyzerDE

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/NormalyzerDE
* URL: https://github.com/ComputationalProteomics/NormalyzerDE
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 151

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

* Version: 1.4.3
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2019-08-27
* Number of recursive dependencies: 70

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

*   checking R code for possible problems ... NOTE
    ```
    omicplotr.colvec: no visible global function definition for ‘col2rgb’
    Undefined global functions or variables:
      col2rgb
    Consider adding
      importFrom("grDevices", "col2rgb")
    to your NAMESPACE file.
    ```

# OUTRIDER

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/OUTRIDER
* URL: https://github.com/gagneurlab/OUTRIDER
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 155

Run `revdep_details(,"OUTRIDER")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RMySQL’
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Felix Brechtmann <brechtma@in.tum.de> [aut, cre]
      Christian Mertes <mertes@in.tum.de> [aut, cre]
    ```

# pandaR

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2019-05-02
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

* Version: 1.10.0
* Source code: https://github.com/cran/PathoStat
* URL: https://github.com/mani2012/PathoStat
* BugReports: https://github.com/mani2012/PathoStat/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 186

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

* Version: 1.76.0
* Source code: https://github.com/cran/pcaMethods
* URL: https://github.com/hredestig/pcamethods
* BugReports: https://github.com/hredestig/pcamethods/issues
* Date/Publication: 2019-05-02
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

* Version: 1.8.0
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 28

Run `revdep_details(,"phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 124

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
      Could not resolve host: www.ensembl.org; Name or service not known
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

* Version: 1.0.1
* Source code: https://github.com/cran/PrecisionTrialDrawer
* Date/Publication: 2019-07-12
* Number of recursive dependencies: 111

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

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘LowMACA’ in Rd xrefs
    ```

# ProteoMM

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 81

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

* Version: 1.20.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 66

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setGeneric("plot.cghRaw", function(x, y, ...) standardGeneric("plot.cghRaw")) : 
      could not find function "setGeneric"
    Error: package or namespace load failed for ‘QDNAseq’:
     unable to load R code in package ‘CGHbase’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("plot.cghRaw", function(x, y, ...) standardGeneric("plot.cghRaw")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘CGHbase’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking Rd cross-references ... WARNING
    ```
    package ‘CGHbase’ exists but was not installed under R >= 2.10.0 so xrefs cannot be checked
    Missing link or links in documentation object 'exportBins.Rd':
      ‘cghRaw’ ‘cghSeg’ ‘cghCall’ ‘cghRegions’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking foreign function calls ... NOTE
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setGeneric("plot.cghRaw", function(x, y, ...) standardGeneric("plot.cghRaw")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘CGHbase’
    Execution halted
    ```

*   checking Rd \usage sections ... NOTE
    ```
    ...
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
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

# RnBeads

<details>

* Version: 2.2.0
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 224

Run `revdep_details(,"RnBeads")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      ERROR in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads/unitTests/test_others.R: Error while sourcing  /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads/unitTests/test_others.R : Error in logger.error(txt) : 
        Missing required package GLAD or its dependency
      
      Test files with failing tests
      
         test_differential.R 
           /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads/unitTests/test_differential.R 
      
         test_others.R 
           /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RnBeads/new/RnBeads.Rcheck/RnBeads/unitTests/test_others.R 
      
      
      Error in BiocGenerics:::testPackage("RnBeads") : 
        unit tests failed for package RnBeads
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    
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

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘qvalue’
    A package should be listed in only one of these fields.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘RnBeads’ for: ‘samples’
    
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
      Density Deviance Difference DoISVA Error EstDimRMT GenomeAxisTrack ID
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
      impute.knn is.subsegmentation k letterFrequency lme loadRegionDB
      log10FDR log10P mapToGenome mclapply mean.diff mean.quot.log2 melt
      mergeRegionDBs muted n.sites ng.2 num.sites numSites numeric.names
      oddsRatios p.vals.t.na.adj pData percent_format phenoData phenoData<-
      plotTracks preprocessSWAN pvalues qvalue refText reg.type region.size
      registerDoParallel relative.coord report runLOLA samples seqlengths
      seqlevels<- sigCategories sites2ignore size solve.QP stopCluster sva
      target tsne type types universeCounts useMart v var.diff varFit
      varLabels x xmlValue y yint
    ```

# RTransProb

<details>

* Version: 0.3.3
* Source code: https://github.com/cran/RTransProb
* Date/Publication: 2018-07-17 17:10:11 UTC
* Number of recursive dependencies: 73

Run `revdep_details(,"RTransProb")` for more info

</details>

## In both

*   checking whether package ‘RTransProb’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/RTransProb/new/RTransProb.Rcheck/00install.out’ for details.
    ```

# scmap

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/scmap
* URL: https://github.com/hemberg-lab/scmap
* BugReports: https://support.bioconductor.org/t/scmap/
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 81

Run `revdep_details(,"scmap")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Biobase’
      All declared Imports should be used.
    ```

# scMerge

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/scMerge
* URL: https://github.com/SydneyBioX/scMerge
* BugReports: https://github.com/SydneyBioX/scMerge/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 140

Run `revdep_details(,"scMerge")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    make_para_gn_parallel: no visible binding for global variable ‘i’
    Undefined global functions or variables:
      i
    ```

# scone

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/scone
* BugReports: https://github.com/YosefLab/scone/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 197

Run `revdep_details(,"scone")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             switch(type, PSOCK = makePSOCKcluster(names = spec, ...), FORK = makeForkCluster(nnodes = spec, 
                 ...), SOCK = snow::makeSOCKcluster(names = spec, ...), MPI = snow::makeMPIcluster(count = spec, 
                 ...), NWS = snow::makeNWScluster(names = spec, ...), stop("unknown cluster type"))
         })(spec = 2, type = "SOCK", snowlib = "/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/scone/BiocParallel", 
             master = "localhost", port = 11963L)
      11: snow::makeSOCKcluster(names = spec, ...)
      12: newSOCKnode(names[[i]], options = options, rank = i)
      13: socketConnection(port = port, server = TRUE, blocking = TRUE, open = "a+b")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 59 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: all back-ends work (@test_bpparam.R#42) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

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

<details>

* Version: 1.5
* Source code: https://github.com/cran/SemiParSampleSel
* URL: http://www.ucl.ac.uk/statistics/people/giampieromarra
* Date/Publication: 2017-05-17 17:55:57 UTC
* Number of recursive dependencies: 24

Run `revdep_details(,"SemiParSampleSel")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sesame

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/sesame
* URL: https://github.com/zwdzwd/sesame
* BugReports: https://github.com/zwdzwd/sesame/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 156

Run `revdep_details(,"sesame")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘sesame-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: IG
    > ### Title: IG getter generic
    > ### Aliases: IG IG,SigSet-method
    > 
    > ### ** Examples
    > 
    > sset <- sesameDataGet('HM450.1.TCGA.PAAD')$sset
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
      12: ExperimentHub(localHub = TRUE)
      13: .Hub("ExperimentHub", hub, cache, proxy, localHub, ...)
      14: .create_cache(.class, url, cache, proxy, localHub)
      15: .updateHubDB(hub_bfc, .class, url, proxy, localHub)
      16: stop("Invalid Cache: sqlite file", "\n  Hub has not been added to cache", "\n  Run again with 'localHub=FALSE'")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 4 ]
      1. Error: test=background subtraction gives correct warning (@test_background.R#4) 
      2. Error: test='detectionP' gives correct errors (@test_detectionP.R#3) 
      3. Error: RGChannelSetToSigSet gives correct results (@test_sesamize.R#6) 
      4. Error: SigSetToRGChannelSet gives correct results (@test_sesamize.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# shinyMethyl

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 137

Run `revdep_details(,"shinyMethyl")` for more info

</details>

## In both

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

# SIAMCAT

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 99

Run `revdep_details(,"SIAMCAT")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 10 marked UTF-8 strings
    ```

# SICtools

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2019-05-02
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
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/etc/Makeconf:167: warning: ignoring old recipe for target `.c.o'
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
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/etc/Makeconf:167: warning: ignoring old recipe for target `.c.o'
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
# Single.mTEC.Transcriptomes

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2019-05-07
* Number of recursive dependencies: 142

Run `revdep_details(,"Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 765.4Mb
      sub-directories of 1Mb or more:
        data  765.3Mb
    ```

# singleCellTK

<details>

* Version: 1.4.2
* Source code: https://github.com/cran/singleCellTK
* URL: https://compbiomed.github.io/sctk_docs/
* BugReports: https://github.com/compbiomed/singleCellTK/issues
* Date/Publication: 2019-08-04
* Number of recursive dependencies: 183

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
    Namespace in Imports field not imported from: ‘shinythemes’
      All declared Imports should be used.
    ```

# singscore

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/singscore
* URL: https://davislaboratory.github.io/singscore
* BugReports: https://github.com/DavisLaboratory/singscore/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 110

Run `revdep_details(,"singscore")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    plotDispersion: no visible binding for global variable ‘Score’
    plotDispersion: no visible binding for global variable ‘Dispersion’
    plotDispersion: no visible binding for global variable ‘Class’
    plotDispersion: no visible binding for global variable ‘SampleID’
    plotRankDensity_intl: no visible binding for global variable ‘Ranks’
    plotRankDensity_intl: no visible binding for global variable ‘upDown’
    plotRankDensity_intl: no visible binding for global variable
      ‘..density..’
    plotRankDensity_intl: no visible binding for global variable ‘EntrezID’
    plotScoreLandscape: no visible binding for global variable ‘sc1’
    plotScoreLandscape: no visible binding for global variable ‘sc2’
    projectScoreLandscape: no visible binding for global variable
      ‘SampleLabel’
    projectScoreLandscape: no visible binding for global variable ‘Class’
    Undefined global functions or variables:
      ..density.. Class Dispersion EntrezID Ranks SampleID SampleLabel
      Score sc1 sc2 upDown
    ```

# slingshot

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/slingshot
* BugReports: https://github.com/kstreet13/slingshot/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 206

Run `revdep_details(,"slingshot")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘clusterExperiment’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# SMAD

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/SMAD
* Date/Publication: 2019-05-14
* Number of recursive dependencies: 45

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

* Version: 1.0.1
* Source code: https://github.com/cran/smerc
* Date/Publication: 2019-07-15 22:00:03 UTC
* Number of recursive dependencies: 77

Run `revdep_details(,"smerc")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: SpatialEpi::besag_newell at testthat/test-bn.test.R:44
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: loadNamespace(name)
      6: withRestarts(stop(cond), retry_loadNamespace = function() NULL)
      7: withOneRestart(expr, restarts[[1L]])
      8: doWithOneRestart(return(expr), restart)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 241 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test-bn.test.R#44) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘SpatialEpi’
    ```

# splatter

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/splatter
* URL: https://github.com/Oshlack/splatter
* BugReports: https://github.com/Oshlack/splatter/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 215

Run `revdep_details(,"splatter")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘splatter-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: zinbSimulate
    > ### Title: ZINB-WaVE simulation
    > ### Aliases: zinbSimulate
    > 
    > ### ** Examples
    > 
    > sim <- zinbSimulate()
    Error in newZINBParams() : 
      The ZINB-WaVE simulation requires the 'zinbwave' package.
    Calls: zinbSimulate -> <Anonymous> -> checkClass -> newZINBParams
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘zinbwave’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘zinbwave’
    ```

# SRGnet

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/SRGnet
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 91

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

* Version: 1.0.18
* Source code: https://github.com/cran/staRdom
* URL: https://cran.r-project.org/package=staRdom
* BugReports: https://github.com/MatthiasPucher/staRdom/issues
* Date/Publication: 2019-08-30 14:10:02 UTC
* Number of recursive dependencies: 150

Run `revdep_details(,"staRdom")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘xlsx’
    ```

# stm

<details>

* Version: 1.3.3
* Source code: https://github.com/cran/stm
* URL: http://structuraltopicmodel.com
* BugReports: https://github.com/bstewart/stm/issues
* Date/Publication: 2018-01-28 21:13:01 UTC
* Number of recursive dependencies: 93

Run `revdep_details(,"stm")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Completed M-Step. 
      ....................................................................................................
      Completed Group 2 E-Step (1 seconds). 
      Completed M-Step. 
      Model Terminated Before Convergence Reached 
      ── 1. Error: plot.STM doesn't throw error  (@test-visualize.R#4)  ──────────────
      cannot open the connection to 'http://goo.gl/VPdxlS'
      1: load(url("http://goo.gl/VPdxlS")) at testthat/test-visualize.R:4
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 9 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: plot.STM doesn't throw error  (@test-visualize.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘stmVignette.Rnw’... failed
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

* Version: 1.8.0
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2019-05-02
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

* Version: 0.9.4
* Source code: https://github.com/cran/summarytools
* URL: https://github.com/dcomtois/summarytools
* BugReports: https://github.com/dcomtois/summarytools/issues
* Date/Publication: 2019-08-24 05:20:02 UTC
* Number of recursive dependencies: 53

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

* Version: 3.32.1
* Source code: https://github.com/cran/sva
* Date/Publication: 2019-05-22
* Number of recursive dependencies: 71

Run `revdep_details(,"sva")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘sva.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘sva.Rnw’
      ...
    
    > contrast.matrix <- cbind(C1 = c(-1, 1, 0, rep(0, svobj$n.sv)), 
    +     C2 = c(0, -1, 1, rep(0, svobj$n.sv)), C3 = c(-1, 0, 1, rep(0, 
    +         svobj .... [TRUNCATED] 
    
    > fitContrasts = contrasts.fit(fit, contrast.matrix)
    
      When sourcing ‘sva.R’:
    Error: 'length(x) = 5 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

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

* Version: 1.0.0
* Source code: https://github.com/cran/TCA
* URL: https://www.biorxiv.org/content/10.1101/437368v1
* BugReports: https://github.com/cozygene/TCA/issues
* Date/Publication: 2019-05-22 14:10:03 UTC
* Number of recursive dependencies: 45

Run `revdep_details(,"TCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘quadprog’
      All declared Imports should be used.
    ```

# tenXplore

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/tenXplore
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 105

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

* Version: 2.36.0
* Source code: https://github.com/cran/topGO
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 46

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

# VanillaICE

<details>

* Version: 1.46.0
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 76

Run `revdep_details(,"VanillaICE")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BSgenome.Hsapiens.UCSC.hg18’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘SummarizedExperiment:::.ShallowSimpleListAssays0’
      See the note in ?`:::` about the use of this operator.
    ```

# wateRmelon

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 141

Run `revdep_details(,"wateRmelon")` for more info

</details>

## In both

*   checking whether package ‘wateRmelon’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'preprocessIlluminaMethylation(path2data = path2data, ': unused arguments (path2data = path2data, path2controlData = path2controlData, projectName = projectName) 
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/wateRmelon/new/wateRmelon.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase', 'limma', 'matrixStats', 'methylumi', 'lumi', 'ROC',
      'IlluminaHumanMethylation450kanno.ilmn12.hg19', 'illuminaio'
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
    'library' or 'require' call to ‘irlba’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘matrixStats’
      ‘methylumi’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported objects imported by ':::' calls:
      ‘minfi:::.isRGOrStop’ ‘minfi:::pickCompProbes’
      ‘minfi:::projectCellType’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    tost,MethyLumiSet: no visible global function definition for
      ‘unmethylated’
    tost,MethyLumiSet: no visible global function definition for ‘pvals’
    tost,RGChannelSet: no visible global function definition for
      ‘detectionP’
    tost,RGChannelSet: no visible global function definition for
      ‘preprocessRaw’
    tost,RGChannelSet: no visible global function definition for ‘getMeth’
    tost,RGChannelSet: no visible global function definition for
      ‘getUnmeth’
    Undefined global functions or variables:
      .mclapply IlluminaHumanMethylation450kanno.ilmn12.hg19 MethylSet
      PATH_RES QCdata QCdata<- RGChannelSetExtended betas betas<- colData
      colMedians detectionP epic.controls epic.ordering getAnnotation
      getAnnotationObject getBeta getControlAddress getGreen
      getManifestInfo getMeth getNBeads getProbeInfo getProbeType getRed
      getSnpBeta getUnmeth hm27.controls hm27.ordering hm450.controls
      hm450.ordering intensitiesByChannel metadata methylated methylated<-
      methylumiR n.sd prcomp_irlba preprocessRaw preprocessSWAN
      probeAnnotationsCategory projectName pval.detect<- pvals unmethylated
      unmethylated<- warn
    ```

# XBSeq

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/XBSeq
* URL: https://github.com/Liuy12/XBSeq
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 119

Run `revdep_details(,"XBSeq")` for more info

</details>

## In both

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

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/yarn
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 145

Run `revdep_details(,"yarn")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘yarn-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annotateFromBiomart
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
    > biomart<-"ENSEMBL_MART_ENSEMBL";
    > genes <- sapply(strsplit(rownames(skin),split="\\."),function(i)i[1])
    > newskin <-annotateFromBiomart(skin,genes=genes,biomar=biomart)
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: www.ensembl.org; Name or service not known
    Calls: annotateFromBiomart ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

# zinbwave

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/zinbwave
* BugReports: https://github.com/drisso/zinbwave/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 194

Run `revdep_details(,"zinbwave")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

