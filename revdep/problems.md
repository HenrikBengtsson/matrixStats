# abcrf

Version: 1.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2048.2Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
        libs  1024.0Mb
    ```

# adjclust

Version: 0.5.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2050.1Mb
      sub-directories of 1Mb or more:
        doc      1025.6Mb
        extdata  1024.0Mb
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

# aroma.affymetrix

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1028.1Mb
      sub-directories of 1Mb or more:
        R            1024.9Mb
        help            1.1Mb
        testScripts     1.2Mb
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

# BatchQC

Version: 1.4.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'lmFitC'
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Found3batches
    Adjusting for1covariate(s) or covariate level(s)
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    gls.series.C: no visible global function definition for 'lm.fit'
    Undefined global functions or variables:
      lm.fit
    Consider adding
      importFrom("stats", "lm.fit")
    to your NAMESPACE file.
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

# brms

Version: 2.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

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
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.3Mb
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

# bumphunter

Version: 1.16.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/test-all.R' failed.
    Last 13 lines of output:
      `x` not equal to `expected`.
      1/9 mismatches
      [4] 3 - 2 == 1
      
      Failed with error:  'invalid package name'
      == testthat results  ===========================================================
      OK: 30 SKIPPED: 0 FAILED: 5
      1. Failure: Annotate Nearest (@test_annotation.R#13) 
      2. Failure: Annotate Nearest (@test_annotation.R#14) 
      3. Failure: Annotate Nearest (@test_annotation.R#15) 
      4. Failure: Annotate Nearest (@test_annotation.R#17) 
      5. Failure: Annotate Nearest (@test_annotation.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'S4Vectors' 'IRanges' 'GenomeInfoDb' 'GenomicRanges' 'foreach'
      'iterators' 'parallel' 'locfit'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.4Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: 'doParallel:::.options'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    bumphunterEngine: no visible binding for global variable 'bootstraps'
    Undefined global functions or variables:
      bootstraps
    ```

# CATALYST

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1026.6Mb
      sub-directories of 1Mb or more:
        data     2.3Mb
        doc   1024.0Mb
    ```

# cellWise

Version: 2.0.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2049.4Mb
      sub-directories of 1Mb or more:
        data  1024.4Mb
        libs  1024.0Mb
    ```

# ChAMP

Version: 2.8.9

## In both

*   checking whether package 'ChAMP' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import 'plyr::summarise' by 'plotly::summarise' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::rename' by 'plotly::rename' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::arrange' by 'plotly::arrange' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::mutate' by 'plotly::mutate' when loading 'ChAMP'
    See '/cbc/henrik/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out' for details.
    ```

*   checking package subdirectories ... WARNING
    ```
    Problems with news in 'inst/NEWS.Rd':
      inst/NEWS.Rd:67: unexpected END_OF_INPUT '
      '
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    pandoc-citeproc: PandocHttpError "http://www.zotero.org/styles/american-medical-association" (HttpExceptionRequest Request {
      host                 = "www.zotero.org"
      port                 = 80
      secure               = False
      requestHeaders       = []
      path                 = "/styles/american-medical-association"
      queryString          = ""
      method               = "GET"
      proxy                = Nothing
      rawBody              = False
      redirectCount        = 10
      responseTimeout      = ResponseTimeoutDefault
      requestVersion       = HTTP/1.1
    }
     (InternalException (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa)))))
    Error running filter /home/shared/cbc/software_cbc/pandoc-2.0.3/bin/pandoc-citeproc:
    Filter returned error status 1
    Error: processing vignette 'ChAMP.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 83
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi' 'ChAMPdata' 'FEM' 'DMRcate' 'Illumina450ProbeVariants.db'
      'IlluminaHumanMethylationEPICmanifest'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1026.3Mb
      sub-directories of 1Mb or more:
        doc      1024.1Mb
        extdata     1.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      'rmarkdown'
    A package should be listed in only one of these fields.
    ```

# Chicago

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: data.table
    
    Welcome to CHiCAGO - version 1.4.0
    If you are new to CHiCAGO, please consider reading the vignette through the command: vignette("Chicago").
    NOTE: Default values of tlb.minProxOEPerBin and tlb.minProxB2BPerBin changed as of Version 1.1.5. No action is required unless you specified non-default values, or wish to re-run the pipeline on old chicagoData objects. See news(package="Chicago")
    Quitting from lines 44-46 (Chicago.Rmd) 
    Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
    there is no package called 'PCHiCdata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'PCHiCdata'
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'PCHiCdata'
    ```

# childhoodmortality

Version: 0.2.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# cifti

Version: 0.4.5

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    12: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))
    13: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
    14: evaluate::evaluate(...)
    15: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    16: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    17: block_exec(params)
    18: call_block(x)
    19: process_group.block(group)
    20: process_group(group)
    21: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    22: process_file(text, output)
    23: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
    24: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
    25: vweave_rmarkdown(...)
    26: engine$weave(file, quiet = quiet, encoding = enc)
    27: doTryCatch(return(expr), name, parentenv, handler)
    28: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    29: tryCatchList(expr, classes, parentenv, handlers)
    30: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    31: buildVignettes(dir = "/cbc/henrik/repositories/matrixStats/revdep/checks/cifti/new/cifti.Rcheck/vign_test/cifti")
    An irrecoverable exception occurred. R is aborting now ...
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

# clusterExperiment

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        apply
    
    
    Attaching package: 'clusterExperiment'
    
    The following object is masked from 'package:IRanges':
    
        transform
    
    The following object is masked from 'package:S4Vectors':
    
        transform
    
    The following object is masked from 'package:base':
    
        transform
    
    Error: processing vignette 'clusterExperimentTutorial.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.1Mb
      sub-directories of 1Mb or more:
        doc  1024.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'ConsensusClusterPlus'
    ```

# CNPBayes

Version: 1.6.1

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'labelSwitching':
    labelSwitching
      Code: function(object, ...)
      Docs: function(object, merge = TRUE)
      Argument names in code not in docs:
        ...
      Argument names in docs not in code:
        merge
      Mismatches in argument names:
        Position: 2 Code: ... Docs: merge
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
    
    Error: processing vignette 'Convergence.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1026.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      'GenomicRanges'
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    consensusRegion: no visible global function definition for
      'elementLengths'
    Undefined global functions or variables:
      elementLengths
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

# crlmm

Version: 1.34.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 2050.4Mb
      sub-directories of 1Mb or more:
        data  2048.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for 'preprocessCore' is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to 'RUnit' in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespaces in Imports field not imported from:
      'SNPchip' 'splines'
      All declared Imports should be used.
    Unexported object imported by a ':::' call: 'Biobase:::assayDataEnvLock'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .test: no visible global function definition for 'defineTestSuite'
    .test: no visible global function definition for 'runTestSuite'
    .test: no visible global function definition for 'printTextProtocol'
    calculateRBafCNSet : processByChromosome: no visible global function
      definition for 'position'
    genotypeInf: no visible binding for global variable 'anno'
    krlmm: no visible binding for global variable 'VGLMparameters'
    Undefined global functions or variables:
      VGLMparameters anno defineTestSuite position printTextProtocol
      runTestSuite
    ```

# crossmeta

Version: 1.2.0

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Data with usage in documentation object 'gs.names' but not in code:
      gs.names
    
    Data with usage in documentation object 'gslist' but not in code:
      gslist
    ```

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.9Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported objects:
      'crossmeta::gs.names' 'crossmeta::gslist'
    ```

*   checking R code for possible problems ... NOTE
    ```
    explore_paths : server: no visible binding for global variable 'gslist'
    explore_paths : server: no visible binding for global variable
      'gs.names'
    Undefined global functions or variables:
      gs.names gslist
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: 'PADOG', 'GeneMeta'
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

Version: 1.0.0

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

# DeepBlueR

Version: 1.2.10

## In both

*   checking examples ... ERROR
    ```
    ...
    + 
    +     experiment_names = deepblue_extract_names(experiments_list)
    +     histones_datasets[[epigenetic_marks[[i]]]] = experiment_names
    + }
    Called method: deepblue_list_experiments
    Reported status was: okay
    Called method: deepblue_list_experiments
    Reported status was: okay
    Called method: deepblue_list_experiments
    Reported status was: okay
    > 
    > deepblue_enrich_region_overlap(
    +   query_id=filtered_query_id,
    +   background_query=rg_10kb_tilling,
    +   datasets=histones_datasets,
    +   genome="grch38")
    Called method: deepblue_enrich_region_overlap
    Reported status was: error
    Error in deepblue_enrich_region_overlap(query_id = filtered_query_id,  : 
      Command enrich_region_overlap does not exists.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.6Mb
      sub-directories of 1Mb or more:
        doc  1024.1Mb
    ```

# DelayedArray

Version: 0.2.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/run_unitTests.R' failed.
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
      generic 'dlogis' and siglist 'DelayedArray'
      generic 'plogis' and siglist 'DelayedArray'
      generic 'qlogis' and siglist 'DelayedArray'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'BiocGenerics:::testPackage' 'IRanges:::combine_dimnames'
      'IRanges:::combine_dimnames_along' 'IRanges:::combine_dims_along'
      'IRanges:::get_dims_to_bind' 'IRanges:::simple_abind'
      'S4Vectors:::anyMissingOrOutside'
      'S4Vectors:::extract_positions_from_Rle' 'S4Vectors:::sapply_isNULL'
      See the note in ?`:::` about the use of this operator.
    ```

# diffloop

Version: 1.4.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
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

Version: 1.6.7

## In both

*   checking examples ... WARNING
    ```
    ...
    > Rad <- seq(maxrad, by = (minrad - maxrad) / (nrad - 1), length.out=nrad)
    > xmar2 <- xmar + maxrad
    > ymar2 <- (xmar2 / xrange) * pin[1] / pin[2] * yrange
    > expr <- quote({
    +     rect(xleft, usr[4] - 1.5 * ysize, xright, usr[4] - ymar,
    +          col = rainbow(8), border = NA)
    +     symbols(rep(usr[2] - xmar2, nrad), rep(usr[3] + ymar2, nrad),
    +             circles = Rad, inches = FALSE, add = TRUE, fg = NA,
    +             bg = gray.colors(nrad + 1, 1, 0)[-1])
    +     points(y)
    +     lines(spl)
    + })
    > rasterPlot(expr, res = 50)
    Warning in readPNG(fname, native = TRUE) :
      libpng warning: Application was compiled with png.h from libpng-1.6.18
    Warning in readPNG(fname, native = TRUE) :
      libpng warning: Application  is  running with png.c from libpng-1.2.49
    Error in readPNG(fname, native = TRUE) : 
      libpng error: Incompatible libpng version in application and library
    Calls: rasterPlot -> readPNG -> .Call
    Execution halted
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

# EasyqpcR

Version: 1.18.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'gWidgetsRGtk2'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: 'gWidgetsRGtk2'
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

# EventPointer

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following object is masked from 'package:Biostrings':
    
        type
    
    The following object is masked from 'package:base':
    
        apply
    
    Loading required package: Matrix
    
    Attaching package: 'Matrix'
    
    The following object is masked from 'package:S4Vectors':
    
        expand
    
    Warning in in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,  :
      You changed the working directory to /home/henrik/tmp/999403.cclc01.som.ucsf.edu/RtmpzWXyFF (probably via setwd()). It will be restored to /cbc/henrik/repositories/matrixStats/revdep/checks/EventPointer/new/EventPointer.Rcheck/vign_test/EventPointer/vignettes. See the Note section in ?knitr::knit
    Error: processing vignette 'EventPointer.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking package subdirectories ... NOTE
    ```
    Found the following CITATION file in a non-standard place:
      inst/CITATION.orig
    Most likely 'inst/CITATION' should be used instead.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'SGSeq:::edges' 'SGSeq:::exonGraph' 'SGSeq:::nodes'
      See the note in ?`:::` about the use of this operator.
    ```

# expss

Version: 0.8.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2048.7Mb
      sub-directories of 1Mb or more:
        doc  2048.1Mb
    ```

# FADA

Version: 1.3.3

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

# FDb.FANTOM4.promoters.hg19

Version: 1.0.0

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        extdata  1024.0Mb
    ```

## In both

*   checking package subdirectories ... WARNING
    ```
    Found the following non-empty subdirectories of 'inst' also used by R:
      inst/build
    It is recommended not to interfere with package subdirectories used by
    R.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      'GenomicFeatures'
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'BSgenome.Hsapiens.UCSC.hg19' 'matrixStats'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Package in Depends field not imported from: 'Biostrings'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' call which should be '::': 'matrixStats:::rowProds'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    oecg: no visible global function definition for 'seqlengths'
    oecg: no visible binding for global variable 'Hsapiens'
    oecg: no visible global function definition for 'seqlevels'
    oecg: no visible global function definition for 'seqnames'
    oecg: no visible global function definition for 'resize'
    oecg: no visible global function definition for 'start'
    oecg: no visible global function definition for 'start<-'
    oecg: no visible global function definition for 'end'
    oecg: no visible global function definition for 'end<-'
    oecg: no visible global function definition for 'getSeq'
    oecg: no visible global function definition for 'width'
    oecg: no visible global function definition for 'letterFrequency'
    oecg: no visible global function definition for 'dinucleotideFrequency'
    Undefined global functions or variables:
      Hsapiens dinucleotideFrequency end end<- getSeq is letterFrequency
      resize seqlengths seqlevels seqnames start start<- width
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "end", "start")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# fergm

Version: 0.2.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        data  1024.1Mb
    ```

# filesstrings

Version: 2.0.4

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

# flowCore

Version: 1.42.3

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
      Code: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, truncate_max_range =
                     TRUE, emptyValue = TRUE, ignore.text.offset = FALSE,
                     ...)
      Docs: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, emptyValue = TRUE,
                     ignore.text.offset = FALSE, ...)
      Argument names in code not in docs:
        truncate_max_range
      Mismatches in argument names:
        Position: 19 Code: truncate_max_range Docs: emptyValue
        Position: 20 Code: emptyValue Docs: ignore.text.offset
        Position: 21 Code: ignore.text.offset Docs: ...
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'read.flowSet':
      'truncate_max_range'
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 301-303 (HowTo-flowCore.Rnw) 
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'flowViz' 'flowStats' 'flowWorkspace' 'openCyto' 'ggcyto'
    ```

*   checking if this is a source package ... NOTE
    ```
    Found the following apparent object files/libraries:
      src/boost_regex/c_regex_traits.o src/boost_regex/cpp_regex_traits.o
      src/boost_regex/cregex.o src/boost_regex/fileiter.o
      src/boost_regex/icu.o src/boost_regex/instances.o
      src/boost_regex/posix_api.o src/boost_regex/regex.o
      src/boost_regex/regex_debug.o src/boost_regex/regex_raw_buffer.o
      src/boost_regex/regex_traits_defaults.o
      src/boost_regex/static_mutex.o src/boost_regex/usinstances.o
      src/boost_regex/w32_regex_traits.o src/boost_regex/wc_regex_traits.o
      src/boost_regex/wide_posix_api.o src/boost_regex/winstances.o
    Object files/libraries should not be included in a source package.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 3075.1Mb
      sub-directories of 1Mb or more:
        data     1024.0Mb
        extdata     1.1Mb
        lib      1024.0Mb
        libs     1024.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for 'BH' is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to 'Rgraphviz' in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    %in%,flowFrame-norm2Filter: no visible global function definition for
      'cov.rob'
    spillover,flowSet: no visible global function definition for
      'devAskNewPage'
    spillover,flowSet : <anonymous>: no visible global function definition
      for 'rangeGate'
    spillover,flowSet : <anonymous>: no visible global function definition
      for 'density'
    spillover,flowSet : <anonymous>: no visible global function definition
      for 'abline'
    spillover,flowSet : <anonymous> : <anonymous>: no visible global
      function definition for 'density'
    split,flowFrame-factor: no visible binding for global variable 'i'
    summary,workFlow: no visible binding for global variable 'wf'
    Undefined global functions or variables:
      abline cov.rob density devAskNewPage i rangeGate wf
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "abline")
      importFrom("stats", "density")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: 'flowViz', 'flowStats'
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# fslr

Version: 2.17.3

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'R.utils' 'grDevices' 'graphics' 'matrixStats' 'stats'
      All declared Imports should be used.
    ```

# funtooNorm

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Normalization of signal : AIGrn
    Normalization of signal : BIGrn
    Normalization of signal : AIRed
    Normalization of signal : BIRed
    Normalization of signal : AII
    Normalization of signal : BII
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'funtooNorm.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.5Mb
      sub-directories of 1Mb or more:
        R       1.3Mb
        doc  1024.0Mb
    ```

# gcapc

Version: 1.0.9

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 1024.4Mb
      sub-directories of 1Mb or more:
        extdata  1024.0Mb
    ```

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

Version: 1.0.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'DatabionicSwarm' 'ProjectionBasedClustering'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# genomation

Version: 1.8.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'latin1'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Could not fetch https://raw.githubusercontent.com/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png
    HttpExceptionRequest Request {
      host                 = "raw.githubusercontent.com"
      port                 = 443
      secure               = True
      requestHeaders       = []
      path                 = "/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png"
      queryString          = ""
      method               = "GET"
      proxy                = Nothing
      rawBody              = False
      redirectCount        = 10
      responseTimeout      = ResponseTimeoutDefault
      requestVersion       = HTTP/1.1
    }
     (InternalException (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))))
    Error: processing vignette 'GenomationManual.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 61
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 2048.9Mb
      sub-directories of 1Mb or more:
        doc      1024.0Mb
        extdata  1024.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'RUnit'
      All declared Imports should be used.
    Unexported object imported by a ':::' call: 'BiocGenerics:::testPackage'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking files in 'vignettes' ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      'cache'
    Please remove from your package.
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

# GUIDEseq

Version: 1.6.1

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 3073.8Mb
      sub-directories of 1Mb or more:
        extdata  3073.2Mb
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

# Gviz

Version: 1.20.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic '[' and siglist 'GenomeAxisTrack,ANY,ANY,ANY'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc       1.6Mb
        extdata   2.1Mb
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

# haploReconstruct

Version: 0.1.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        data   9.4Mb
    ```

# kernDeepStackNet

Version: 2.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# kgschart

Version: 1.3.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      > library(testthat)
      > library(kgschart)
      > 
      > test_check("kgschart")
      -- 1. Error: rank and time range (@test-parser.R#18)  --------------------------
      libpng error: Incompatible libpng version in application and library
      1: kgschart(x$file[i]) at testthat/test-parser.R:18
      2: png::readPNG(src, ...)
      
      == testthat results  ===========================================================
      OK: 2 SKIPPED: 0 FAILED: 1
      1. Error: rank and time range (@test-parser.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking examples ... WARNING
    ```
    ...
    
     ERROR
    Running examples in 'kgschart-Ex.R' failed
    The error most likely occurred in:
    
    > ### Name: kgschart
    > ### Title: KGS Rank Graph Parser
    > ### Aliases: kgschart
    > 
    > ### ** Examples
    > 
    > x <- kgschart(system.file("extdata/leela-ja_JP.png",
    +                           package = "kgschart"))
    Warning in png::readPNG(src, ...) :
      libpng warning: Application was compiled with png.h from libpng-1.6.18
    Warning in png::readPNG(src, ...) :
      libpng warning: Application  is  running with png.c from libpng-1.2.49
    Error in png::readPNG(src, ...) : 
      libpng error: Incompatible libpng version in application and library
    Calls: kgschart -> <Anonymous> -> .Call
    Execution halted
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

# loo

Version: 1.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'rstanarm'
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

# LSAmitR

Version: 1.0-1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

Version: 0.7.5

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 2050.4Mb
      sub-directories of 1Mb or more:
        R     1024.5Mb
        libs  1024.0Mb
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'RLumShiny' 'RLumModel' 'rjags'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: 'rjags', 'RLumShiny', 'RLumModel'
    ```

# metagene

Version: 2.8.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        as.data.frame, cbind, colMeans, colSums, colnames, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect,
        is.unsorted, lapply, lengths, mapply, match, mget, order,
        paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Loading required package: BiocParallel
    Error: processing vignette 'metagene.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_demo_design: no visible global function definition for 'read.table'
    get_promoters_txdb: no visible global function definition for 'is'
    plot_metagene: no visible binding for global variable 'position'
    plot_metagene: no visible binding for global variable 'value'
    plot_metagene: no visible binding for global variable 'qinf'
    plot_metagene: no visible binding for global variable 'qsup'
    plot_metagene: no visible binding for global variable 'group'
    Undefined global functions or variables:
      group is position qinf qsup read.table value
    Consider adding
      importFrom("methods", "is")
      importFrom("utils", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
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

# metavizr

Version: 1.0.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Loading required package: limma
    
    Attaching package: 'limma'
    
    The following object is masked from 'package:BiocGenerics':
    
        plotMA
    
    Loading required package: glmnet
    Loading required package: Matrix
    Loading required package: foreach
    Loaded glmnet 2.0-13
    
    Loading required package: RColorBrewer
    Loading required package: data.table
    Loading required package: digest
    Loading required package: msd16s
    Error: processing vignette 'IntroToMetavizr.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

# MethylAid

Version: 1.10.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.5Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# methylumi

Version: 2.22.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'IDATsToMatrices' 'IDATtoMatrix' 'tcgaPipeline'
    Undocumented S4 methods:
      generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
      generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking contents of 'data' directory ... WARNING
    ```
    Files not of a type allowed in a 'data' directory:
      '5318317007_A_Grn.idat' '5318317007_A_Red.idat'
      '5318317007_B_Grn.idat' '5318317007_B_Red.idat'
      '5318317007_C_Grn.idat' '5318317007_C_Red.idat'
    Please use e.g. 'inst/extdata' for non-R data files
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase' 'scales' 'reshape2' 'ggplot2' 'matrixStats'
      'FDb.InfiniumMethylation.hg19' 'minfi'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 2053.9Mb
      sub-directories of 1Mb or more:
        data     1028.6Mb
        extdata  1024.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      'Biobase' 'minfi' 'lattice' 'matrixStats'
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls to packages already attached by Depends:
      'FDb.InfiniumMethylation.hg19' 'ggplot2' 'matrixStats' 'minfi'
      'reshape2' 'scales'
      Please remove these calls from your code.
    'library' or 'require' calls in package code:
      'Biostrings' 'MASS' 'lumi' 'parallel' 'rtracklayer'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: 'graphics'
      All declared Imports should be used.
    Packages in Depends field not imported from:
      'FDb.InfiniumMethylation.hg19' 'ggplot2' 'matrixStats' 'methods'
      'reshape2' 'scales'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' call which should be '::': 'lumi:::produceMethylationGEOSubmissionFile'
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      'Biobase:::unsafeSetSlot' 'genefilter:::.findCentralMap'
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
    'library' or 'require' call not declared from: 'TxDb.Hsapiens.UCSC.hg19.knownGene'
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

# MIGSA

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/runTests.R' failed.
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

*   checking installed package size ... NOTE
    ```
      installed size is 2049.0Mb
      sub-directories of 1Mb or more:
        data  1024.1Mb
        doc   1024.4Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    ! LaTeX Error: Unknown graphics extension: .eps.
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    ! LaTeX Error: Unknown graphics extension: .eps.
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    ! LaTeX Error: Unknown graphics extension: .eps.
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ... 
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# minfi

Version: 1.22.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: locfit
    locfit 1.5-9.1 	 2013-03-22
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'minfi.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: 'bumphunter:::.getEstimate'
      See the note in ?`:::` about the use of this operator.
    ```

# MinimumDistance

Version: 1.20.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: 'doSNOW'
    ```

*   checking R code for possible problems ... NOTE
    ```
    callDenovoSegments: no visible global function definition for
      'read.bsfiles'
    pruneTrioSet: no visible global function definition for
      'RangedDataList'
    read.bsfiles2: no visible binding for global variable 'read.bsfiles'
    GenomeAnnotatedDataFrameFrom,character: no visible global function
      definition for 'read.bsfiles'
    calculateMindist,list: no visible binding for global variable 'elt'
    Undefined global functions or variables:
      RangedDataList elt read.bsfiles
    ```

# mixOmics

Version: 6.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1028.9Mb
      sub-directories of 1Mb or more:
        R     1024.3Mb
        data     4.0Mb
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

Version: 1.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# monocle

Version: 2.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (function (A, nv = 5, nu = nv, maxit = 1000, work = nv + 7, reorth = TRUE,  :
      You're computing too large a percentage of total singular values, use a standard svd instead.
    Warning in (function (A, nv = 5, nu = nv, maxit = 1000, work = nv + 7, reorth = TRUE,  :
      did not converge--results might be invalid!; try increasing work or maxit
    Quitting from lines 651-653 (monocle-vignette.Rnw) 
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    Perplexity is too large.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.2Mb
      sub-directories of 1Mb or more:
        doc  1024.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    assign_cell_lineage: no visible global function definition for 'nei'
    buildBranchCellDataSet: no visible global function definition for 'nei'
    clusterCells: no visible binding for global variable 'rho'
    clusterCells: no visible binding for global variable 'delta'
    count_leaf_descendents: no visible global function definition for 'nei'
    cth_classifier_cds: no visible global function definition for 'nei'
    cth_classifier_cell: no visible global function definition for 'nei'
    diff_test_helper: no visible binding for global variable 'Size_Factor'
    extract_good_ordering: no visible global function definition for 'nei'
    fit_model_helper: no visible binding for global variable 'Size_Factor'
    get_next_node_id: no visible binding for '<<-' assignment to
      'next_node'
    get_next_node_id: no visible binding for global variable 'next_node'
    make_canonical: no visible global function definition for 'nei'
    measure_diameter_path: no visible global function definition for 'nei'
    orderCells: no visible binding for '<<-' assignment to 'next_node'
    project2MST: no visible global function definition for 'nei'
    Undefined global functions or variables:
      Size_Factor delta nei next_node rho
    ```

# motifbreakR

Version: 1.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    14: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
    15: evaluate::evaluate(...)
    16: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    17: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    18: block_exec(params)
    19: call_block(x)
    20: process_group.block(group)
    21: process_group(group)
    22: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    23: process_file(text, output)
    24: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
    25: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
    26: vweave_rmarkdown(...)
    27: engine$weave(file, quiet = quiet, encoding = enc)
    28: doTryCatch(return(expr), name, parentenv, handler)
    29: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    30: tryCatchList(expr, classes, parentenv, handlers)
    31: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    32: buildVignettes(dir = "/cbc/henrik/repositories/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/vign_test/motifbreakR")
    An irrecoverable exception occurred. R is aborting now ...
    rm: cannot remove `/home/henrik/tmp/999403.cclc01.som.ucsf.edu/RtmpYMC6Uk': Directory not empty
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1026.0Mb
      sub-directories of 1Mb or more:
        data     1.7Mb
        doc   1024.0Mb
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
    snps.from.file: no visible global function definition for
      'elementLengths'
    snps.from.file: no visible global function definition for 'info'
    snps.from.file: no visible global function definition for 'rowRanges'
    snps.from.rsid: no visible global function definition for 'snpsById'
    Undefined global functions or variables:
      elementLengths info par rowRanges snpsById
    Consider adding
      importFrom("graphics", "par")
    to your NAMESPACE file.
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
      installed size is 15.2Mb
      sub-directories of 1Mb or more:
        libs  14.4Mb
    ```

# MultiBD

Version: 0.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'RcppParallel'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# nandb

Version: 0.2.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in 'nandb-Ex.R' failed
    The error most likely occurred in:
    
    > ### Name: Brightness
    > ### Title: Calculate brightness from image series.
    > ### Aliases: Brightness BrightnessTxtFolder Brightnesses
    > 
    > ### ** Examples
    > 
    > library(magrittr)
    > img <- ReadImageData(system.file('extdata', '50.tif', package = 'nandb'))
    > EBImage::display(EBImage::normalize(img[, , 1]), method = 'raster')
    > brightness <- Brightness(img, tau = "auto", mst = 'Huang', filt = 'median')
    Error in Brightness(arr3d) : 
      Expected a three-dimensional image array image but got a 4 dimensional one.
    Calls: Brightness ... Brightness_ -> BestTau -> %>% -> eval -> eval -> Brightness
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      == testthat results  ===========================================================
      OK: 137 SKIPPED: 0 FAILED: 16
      1. Error: Brightness works (@test_brightness.R#5) 
      2. Error: BrightnessTimeSeries works (@test_brightness.R#34) 
      3. Error: Brightnesses works (@test_brightness.R#99) 
      4. Error: BrightnessTimeSeriess works (@test_brightness.R#116) 
      5. Error: CorrectForBleachingFolder works (@test_detrend.R#27) 
      6. Error: BestTau works (@test_detrend.R#42) 
      7. Failure: MeanIntensity works (@test_intensity.R#15) 
      8. Failure: MeanIntensity works (@test_intensity.R#35) 
      9. Failure: MeanIntensity works (@test_intensity.R#38) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        combine
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    
    Attaching package: 'matrixStats'
    
    The following object is masked from 'package:dplyr':
    
        count
    
    Quitting from lines 40-42 (nandb.Rmd) 
    Error: processing vignette 'nandb.Rmd' failed with diagnostics:
    Expected a three-dimensional image array image but got a 4 dimensional one.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.3Mb
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

# NetLogoR

Version: 0.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'quickPlot' 'SpaDES.tools' 'rgeos'
    
    Package suggested but not available for checking: 'SpaDES.core'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# neurobase

Version: 1.26.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
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

# PathoStat

Version: 1.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning: Transformation introduced infinite values in discrete y-axis
    Error: processing vignette 'PathoStatAdvanced.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.7Mb
      sub-directories of 1Mb or more:
        doc      1024.2Mb
        example     1.0Mb
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

# Pigengene

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    ...
    Pigengene started analizing 366 samples using 1000 genes...
    Warning: executing %dopar% sequentially: no parallel backend registered
    Pigengenes...
    Pigengene plots in:
    /cbc/henrik/repositories/matrixStats/revdep/checks/Pigengene/new/Pigengene.Rcheck/pigengene/plots
    learn.bn() with bnNum= 10 started at:
    2018-02-09 23:48:37
    Warning in check.threshold(threshold, strength) :
      the threshold is outside the range of the strength values.
    learn.bn() took:
    3.982784 secs
    Making decision trees...
    minPerLeaf: 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37
    costs:
        AML MDS
    AML   0   1
    MDS   1   0
    Error in UseMethod("as.party") : 
      no applicable method for 'as.party' applied to an object of class "C5.0"
    Calls: one.step.pigengene ... unlist -> get.fitted.leaf -> eval -> parse -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 114-116 (Pigengene_inference.Rnw) 
    Error: processing vignette 'Pigengene_inference.Rnw' failed with diagnostics:
    no applicable method for 'as.party' applied to an object of class "C5.0"
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.4Mb
      sub-directories of 1Mb or more:
        data  1025.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'AnnotationDbi' 'biomaRt' 'energy' 'org.Hs.eg.db' 'org.Mm.eg.db'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File 'Pigengene/R/bn.calculation.R':
      assignInNamespace("supported.clusters", fixArgs, "bnlearn")
    
    check.pigengene.input: no visible global function definition for
      'setNames'
    welch.pvalue: no visible global function definition for 'as.formula'
    welch.pvalue: no visible global function definition for 'oneway.test'
    Undefined global functions or variables:
      as.formula oneway.test setNames
    Consider adding
      importFrom("stats", "as.formula", "oneway.test", "setNames")
    to your NAMESPACE file.
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

# RnBeads

Version: 1.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/runTests.R' failed.
    Last 13 lines of output:
      
          ozone
      
      The following object is masked from 'package:IRanges':
      
          desc
      
      The following object is masked from 'package:S4Vectors':
      
          rename
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics' 'S4Vectors' 'GenomicRanges' 'MASS' 'cluster' 'ff'
      'fields' 'ggplot2' 'gplots' 'gridExtra' 'limma' 'matrixStats'
      'illuminaio' 'methylumi' 'plyr'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 2051.3Mb
      sub-directories of 1Mb or more:
        R    1025.1Mb
        doc  1024.3Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from 'RnBeads' for: 'samples'
    
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
      BootRefFreeEwasModel ChrNumeric DataTrack Density Deviance Difference
      DoISVA Error EstDimRMT GenomeAxisTrack ID IdeogramTrack
      IlluminaHumanMethylation450kmanifest
      IlluminaHumanMethylationEPICmanifest Index Intensity Measure
      PairsBootRefFreeEwasModel Probe RGChannelSet RefFreeEwasModel SNP
      Sample Slide Target Term UcscTrack Value addSex as.profileCGH
      assayDataElement assayDataElementNames barcode bv chrom color
      combinedRank comma covgMedian covgPercLow covgPercUp cv.glmnet daglad
      diffmeth diffmeth.p.adj.fdr diffmeth.p.val dinucleotideFrequency
      expectedCounts featureData featureData<- featureNames featureNames<-
      foreach geneCounts genome<- getCN getDoParWorkers getGreen
      getManifest getMeth getRed getSex getUnmeth getVarCov glmnet
      grid.draw grid.newpage group group1 group2 i impute.knn intensities
      is.subsegmentation k letterFrequency lme mapToGenome mean.diff
      mean.g1 mean.g2 mean.mean.g1 mean.mean.g2 mean.quot.log2 melt muted
      n.sites num.sites numSites numeric.names oddsRatios pData
      percent_format phenoData phenoData<- plotOrder plotTracks
      preprocessSWAN pvalues refText reg.type region.size
      registerDoParallel relative.coord report samples seqlengths
      seqlevels<- sigCategories sites2ignore size solve.QP stopCluster sva
      target tsne type types universeCounts useMart v varLabels x y yint
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

# scater

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1027.0Mb
      sub-directories of 1Mb or more:
        doc  1024.1Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'arrange':
      'arrange.SCESet'
    
    S3 methods shown with full name in documentation object 'filter':
      'filter.SCESet'
    
    S3 methods shown with full name in documentation object 'mutate':
      'mutate.SCESet'
    
    S3 methods shown with full name in documentation object 'rename':
      'rename.SCESet'
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# scone

Version: 1.0.0

## In both

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
    
    Error: processing vignette 'sconeTutorial.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'EDASeq'
      All declared Imports should be used.
    ```

# SGP

Version: 1.7-0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1026.5Mb
      sub-directories of 1Mb or more:
        R  1025.2Mb
    ```

# shinyMethyl

Version: 1.12.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    server.shinyMethyl : <anonymous>: no visible global function definition
      for 'lines'
    server.shinyMethyl : <anonymous>: no visible global function definition
      for 'legend'
    ui.shinyMethyl: no visible binding for '<<-' assignment to
      'sampleColors'
    shinySummarize,GenomicRatioSet: no visible global function definition
      for 'prcomp'
    shinySummarize,RGChannelSet: no visible global function definition for
      'prcomp'
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
# Single.mTEC.Transcriptomes

Version: 1.4.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    Warning: Removed 1634 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1634 rows containing non-finite values (stat_boxplot).
    Warning: Removed 1454 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1454 rows containing non-finite values (stat_boxplot).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mTECs.tex' failed.
    LaTeX errors:
    ! LaTeX Error: \citenumfont undefined.
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 8194.1Mb
      sub-directories of 1Mb or more:
        data  7169.8Mb
        doc   1024.2Mb
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

# splatter

Version: 1.0.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'splatter.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.4Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
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

Version: 0.6.5

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# stm

Version: 1.3.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'quanteda'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
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

# support

Version: 0.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'doParallel' 'matrixStats' 'nloptr'
      All declared Imports should be used.
    ```

# topGO

Version: 2.28.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics' 'graph' 'Biobase' 'GO.db' 'AnnotationDbi' 'SparseM'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'Rgraphviz' 'multtest'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Missing object imported by a ':::' call: 'globaltest:::globaltest'
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    GOplot.counts : plotSigChart: no visible global function definition for
      'getY'
    GOplot.counts: no visible global function definition for
      'getDefaultAttrs'
    GOplot.counts: no visible global function definition for 'agopen'
    getPvalues: no visible global function definition for 'mt.teststat'
    getPvalues: no visible global function definition for 'mt.rawp2adjp'
    printDOT: no visible global function definition for 'getDefaultAttrs'
    printDOT: no visible global function definition for 'toDot'
    GOSumTest,classicScore: no visible binding for global variable
      '.PERMSUM.MAT'
    GOSumTest,classicScore: no visible binding for global variable
      '.PERMSUM.LOOKUP'
    initialize,classicExpr: no visible global function definition for
      'error'
    scoresInTerm,topGOdata-missing: no visible global function definition
      for 'scoreInNode'
    Undefined global functions or variables:
      .PERMSUM.LOOKUP .PERMSUM.MAT AgNode agopen drawTxtLabel error
      getDefaultAttrs getNodeCenter getNodeLW getNodeXY getX getY
      mt.rawp2adjp mt.teststat name pieGlyph scoreInNode toDot txtLabel
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
    ttScreening: no visible global function definition for 'gaussian'
    ttScreening: no visible global function definition for 'glm.control'
    ttScreening: no visible global function definition for 'model.response'
    ttScreening: no visible global function definition for 'is.empty.model'
    ttScreening: no visible global function definition for 'model.matrix'
    ttScreening: no visible global function definition for 'na.omit'
    ttScreening: no visible global function definition for 'terms'
    ttScreening: no visible global function definition for 'capture.output'
    ttScreening: no visible global function definition for 'glm'
    ttScreening: no visible binding for global variable 'gaussian'
    ttScreening: no visible global function definition for 'pt'
    ttScreening: no visible global function definition for 'p.adjust'
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

