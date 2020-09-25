# abcrf

<details>

* Version: 1.8.1
* GitHub: NA
* Source code: https://github.com/cran/abcrf
* Date/Publication: 2019-11-05 14:40:02 UTC
* Number of recursive dependencies: 34

Run `revdep_details(, "abcrf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   3.8Mb
    ```

# AMARETTO

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 141

Run `revdep_details(, "AMARETTO")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘amaretto.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 2-16 (amaretto.Rmd) 
    Error: processing vignette 'amaretto.Rmd' failed with diagnostics:
    there is no package called 'BiocStyle'
    --- failed re-building ‘amaretto.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘amaretto.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        doc    2.3Mb
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

* Version: 1.10.1
* GitHub: https://github.com/valenlab/amplican
* Source code: https://github.com/cran/amplican
* Date/Publication: 2020-07-03
* Number of recursive dependencies: 104

Run `revdep_details(, "amplican")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning: Removed 1 rows containing missing values (geom_bar).
    Coordinate system already present. Adding new coordinate system, which will replace the existing one.
    Coordinate system already present. Adding new coordinate system, which will replace the existing one.
    Coordinate system already present. Adding new coordinate system, which will replace the existing one.
    Warning: Removed 1 rows containing missing values (geom_bar).
    Warning: Removed 1 rows containing missing values (geom_bar).
    Coordinate system already present. Adding new coordinate system, which will replace the existing one.
    Warning: Removed 1 rows containing missing values (geom_bar).
    Warning: Removed 1 rows containing missing values (geom_bar).
    --- finished re-building ‘example_id_report.Rmd’
    
    --- re-building ‘example_index.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘example_index.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘amplicanOverview.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.1Mb
      sub-directories of 1Mb or more:
        doc   13.9Mb
        libs   1.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

# antiProfiles

<details>

* Version: 1.28.0
* GitHub: https://github.com/HCBravoLab/antiProfiles
* Source code: https://github.com/cran/antiProfiles
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 7

Run `revdep_details(, "antiProfiles")` for more info

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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'antiProfiles.Rnw' failed with diagnostics:
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
    --- failed re-building ‘antiProfiles.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘antiProfiles.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.1Mb
    ```

# aroma.core

<details>

* Version: 3.2.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.18.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 6

Run `revdep_details(, "aroma.light")` for more info

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

* Version: 2.0.0
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 131

Run `revdep_details(, "BASiCS")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘BASiCS.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 23-26 (BASiCS.Rmd) 
    Error: processing vignette 'BASiCS.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘BASiCS.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘BASiCS.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.3Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.7Mb
        libs  12.8Mb
    ```

# BatchQC

<details>

* Version: 1.16.2
* GitHub: https://github.com/mani2012/BatchQC
* Source code: https://github.com/cran/BatchQC
* Date/Publication: 2020-07-13
* Number of recursive dependencies: 147

Run `revdep_details(, "BatchQC")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Found3batches
    Adjusting for1covariate(s) or covariate level(s)
    Standardizing Data across genes
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/BatchQC/new/BatchQC.Rcheck/vign_test/BatchQC/vignettes/BatchQC_usage_advanced.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See BatchQC_usage_advanced.log for more info.
    --- failed re-building ‘BatchQC_usage_advanced.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘BatchQC_usage_advanced.Rmd’
    
    Error: Vignette re-building failed.
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

# baystability

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/baystability
* Date/Publication: 2018-03-13 15:55:34 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "baystability")` for more info

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
* GitHub: NA
* Source code: https://github.com/cran/bdynsys
* Date/Publication: 2014-12-08 07:01:51
* Number of recursive dependencies: 87

Run `revdep_details(, "bdynsys")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    phaseportmod: no visible binding for global variable ‘dev.off’
    plot_data: no visible global function definition for ‘dev.set’
    plot_data: no visible global function definition for ‘postscript’
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
      dev.off dev.set grid legend lm matplot na.exclude points postscript
      runif sd var write.table
    Consider adding
      importFrom("grDevices", "dev.off", "dev.set", "postscript")
      importFrom("graphics", "grid", "legend", "matplot", "points")
      importFrom("stats", "lm", "na.exclude", "runif", "sd", "var")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

# bigPint

<details>

* Version: 1.4.0
* GitHub: https://github.com/lindsayrutter/bigPint
* Source code: https://github.com/cran/bigPint
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 165

Run `revdep_details(, "bigPint")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ret <- plotLitre(data = soybean_ir_sub,
    +     dataMetrics = soybean_ir_sub_metrics, threshVal = 1e-10,
    +     saveFile = FALSE)
    > length(ret)
    [1] 61
    > names(ret)[1]
    [1] "N_P_Glyma.19G168700.Wm82.a2.v1"
    > ret[[1]]
    > 
    > # Example 2: Create litre plots for each of the five most significant genes
    > # (low FDR values). View plot for gene "N_P_Glyma.19G168700.Wm82.a2.v1".
    > 
    > geneList = soybean_ir_sub_metrics[["N_P"]][1:5,]$ID
    > ret <- plotLitre(data = soybean_ir_sub, geneList = geneList,
    +     pointColor = "deeppink")
    Warning in jpeg(filename = paste0(outDir, "/", group1, "_", group2, "_",  :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("jpeg::", quality, ":", filename), g$width,  : 
      unable to start device JPEG
    Calls: plotLitre -> lapply -> FUN -> lapply -> FUN -> jpeg
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    --- re-building ‘manuscripts.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘manuscripts.Rmd’
    
    --- re-building ‘methods.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘methods.Rmd’
    
    --- re-building ‘summarizedExperiment.Rmd’ using rmarkdown
    Error: processing vignette 'summarizedExperiment.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘summarizedExperiment.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘bioconductor.Rmd’ ‘summarizedExperiment.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              2.7Mb
        shiny-examples   3.0Mb
    ```

# bingat

<details>

* Version: 1.3
* GitHub: NA
* Source code: https://github.com/cran/bingat
* Date/Publication: 2017-07-05 18:30:37 UTC
* Number of recursive dependencies: 34

Run `revdep_details(, "bingat")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genalg’
    ```

# biscuiteer

<details>

* Version: 1.2.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 199

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking whether package ‘biscuiteer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocParallel::bpstart’ by ‘QDNAseq::bpstart’ when loading ‘biscuiteer’
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘biscuiteer.Rmd’ using rmarkdown
    Error: processing vignette 'biscuiteer.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘biscuiteer.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘biscuiteer.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data      1.1Mb
        extdata   3.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘QDNAseq:::expectedVariance’
      See the note in ?`:::` about the use of this operator.
    ```

# bnbc

<details>

* Version: 1.10.0
* GitHub: https://github.com/hansenlab/bnbc
* Source code: https://github.com/cran/bnbc
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 79

Run `revdep_details(, "bnbc")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘bnbc.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 45-46 (bnbc.Rmd) 
    Error: processing vignette 'bnbc.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘bnbc.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘bnbc.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   1.2Mb
    ```

# bnclassify

<details>

* Version: 0.4.5
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2020-03-12 17:40:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "bnclassify")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘overview.Rmd’
    
    --- re-building ‘usage.rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'usage.rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/bnclassify/new/bnclassify.Rcheck/vign_test/bnclassify/vignettes/usage.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See usage.log for more info.
    --- failed re-building ‘usage.rmd’
    
    SUMMARY: processing the following file failed:
      ‘usage.rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        libs   8.2Mb
    ```

# brms

<details>

* Version: 2.13.5
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2020-07-31 08:40:03 UTC
* Number of recursive dependencies: 180

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      unable to open connection to X11 display ''
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 57-63 (brms_phylogenetics.Rmd) 
    Error: processing vignette 'brms_phylogenetics.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘brms_phylogenetics.Rmd’
    
    --- re-building ‘brms_multilevel.ltx’ using tex
    --- finished re-building ‘brms_multilevel.ltx’
    
    --- re-building ‘brms_overview.ltx’ using tex
    --- finished re-building ‘brms_overview.ltx’
    
    SUMMARY: processing the following files failed:
      ‘brms_customfamilies.Rmd’ ‘brms_distreg.Rmd’ ‘brms_missings.Rmd’
      ‘brms_monotonic.Rmd’ ‘brms_multivariate.Rmd’ ‘brms_nonlinear.Rmd’
      ‘brms_phylogenetics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   2.6Mb
    ```

# BSgenome

<details>

* Version: 1.56.0
* GitHub: NA
* Source code: https://github.com/cran/BSgenome
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 89

Run `revdep_details(, "BSgenome")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    ...
      generic 'forgeMaskedBSgenomeDataPkg' and siglist
        'MaskedBSgenomeDataPkgSeed'
      generic 'forgeMaskedBSgenomeDataPkg' and siglist 'character'
      generic 'forgeMaskedBSgenomeDataPkg' and siglist 'list'
      generic 'length' and siglist 'OnDiskNamedSequences'
      generic 'names' and siglist 'FastaNamedSequences'
      generic 'names' and siglist 'TwobitNamedSequences'
      generic 'rowids' and siglist 'OnDiskLongTable'
      generic 'rowids' and siglist 'OnDiskLongTable_old'
      generic 'seqinfo' and siglist 'FastaNamedSequences'
      generic 'seqinfo' and siglist 'RdaNamedSequences'
      generic 'seqinfo' and siglist 'TwobitNamedSequences'
      generic 'seqnames' and siglist 'OnDiskNamedSequences'
      generic 'show' and siglist 'OnDiskLongTable'
      generic 'show' and siglist 'OnDiskLongTable_old'
      generic 'show' and siglist 'OnDiskNamedSequences'
      generic 'spatialIndex' and siglist 'OnDiskLongTable'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'getSeq-methods':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics', 'S4Vectors', 'IRanges', 'GenomeInfoDb',
      'GenomicRanges', 'Biostrings', 'rtracklayer'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        extdata   5.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘methods’ ‘BiocGenerics’ ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘Biostrings’ ‘rtracklayer’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘GenomeInfoDb:::compactPrintNamedAtomicVector’
      ‘GenomeInfoDb:::showGenomeDescription’
      ‘GenomicRanges:::get_out_of_bound_index’ ‘IRanges:::.normargSEW’
      ‘IRanges:::unlist_as_integer’ ‘S4Vectors:::anyMissing’
      ‘S4Vectors:::anyMissingOrOutside’ ‘S4Vectors:::decodeRle’
      ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::make_zero_col_DataFrame’ ‘S4Vectors:::quick_unlist’
      ‘S4Vectors:::quick_unsplit’ ‘S4Vectors:::recycleVector’
      ‘rtracklayer:::.DNAString_to_twoBit’ ‘rtracklayer:::.TwoBits_export’
      ‘rtracklayer:::checkArgFormat’ ‘rtracklayer:::twoBitPath’
      See the note in ?`:::` about the use of this operator.
    ```

# bumphunter

<details>

* Version: 1.30.0
* GitHub: https://github.com/ririzarr/bumphunter
* Source code: https://github.com/cran/bumphunter
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 99

Run `revdep_details(, "bumphunter")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Loading required package: locfit
      locfit 1.5-9.4 	 2020-03-24
      trying URL 'ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz'
      Content type 'text/plain' length 38817086 bytes (37.0 MB)
      ==================================================
      downloaded 37.0 MB
      
      ── 1. Error: (unknown) (@test_annotation.R#103)  ───────────────────────────────
      don't know where to find assembly report for GCF_000001405.26
      Backtrace:
       1. GenomeInfoDb::fetchExtendedChromInfoFromUCSC("hg38")
       2. GenomeInfoDb:::FUN(...)
       3. GenomeInfoDb:::fetch_assembly_report(assembly_accession, AssemblyUnits = AssemblyUnits)
       4. GenomeInfoDb:::.make_assembly_report_URL(assembly_accession)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 13 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: (unknown) (@test_annotation.R#103) 
      
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'bumphunter.Rnw' failed with diagnostics:
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
    --- failed re-building ‘bumphunter.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘bumphunter.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# calmate

<details>

* Version: 0.12.1
* GitHub: https://github.com/HenrikBengtsson/calmate
* Source code: https://github.com/cran/calmate
* Date/Publication: 2015-10-27 08:09:53
* Number of recursive dependencies: 21

Run `revdep_details(, "calmate")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      +   stopifnot(length(dim(dummy)) == 3);
      + }
      Warning message:
      In rlm.default(t(TR), naiveGenoDiff, maxit = maxIter, weights = coeffs) :
        'rlm' failed to converge in 50 steps
      > 
      > # Create plot
      > Clim <- c(-0.2,4);
      > 
      > if (interactive()) {
      +   devNew(type="x11", aspectRatio=1.9);
      + } else {
      +   devNew(type="png", "test-calmateByTheta.png", aspectRatio=1.9);
      + }
      Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
        unable to start device PNG
      Calls: devNew -> do.call -> png
      In addition: Warning message:
      In png("test-calmateByTheta.png", width = 480, height = 912) :
        unable to open connection to X11 display ''
      Execution halted
    ```

# CARBayesST

<details>

* Version: 3.1
* GitHub: https://github.com/duncanplee/CARBayesST
* Source code: https://github.com/cran/CARBayesST
* Date/Publication: 2020-03-09 15:10:11 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "CARBayesST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   4.4Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'CARBayesST.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'CARBayesST.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `multirow.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.13 \usepackage
                    {multicol}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘CARBayesST.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘CARBayesST.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# CATALYST

<details>

* Version: 1.12.2
* GitHub: https://github.com/HelenaLC/CATALYST
* Source code: https://github.com/cran/CATALYST
* Date/Publication: 2020-07-02
* Number of recursive dependencies: 215

Run `revdep_details(, "CATALYST")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘CATALYST-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plotDR
    > ### Title: Plot reduced dimensions
    > ### Aliases: plotDR
    > 
    > ### ** Examples
    > 
    > # construct SCE & run clustering
    > data(PBMC_fs, PBMC_panel, PBMC_md)
    > sce <- prepData(PBMC_fs, PBMC_panel, PBMC_md)
    > 
    > # run clustering & dimension reduction
    > sce <- cluster(sce)
    o running FlowSOM clustering...
    o running ConsensusClusterPlus metaclustering...
    > sce <- runDR(sce, dr = "UMAP", cells = 100)
    Error in loadNamespace(name) : there is no package called ‘uwot’
    Calls: runDR ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      
      The following objects are masked from 'package:matrixStats':
      
          colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
      
      The following objects are masked from 'package:base':
      
          aperm, apply, rowsum
      
      > 
      > test_check("CATALYST")
      ── 1. Error: plotDR() (@test_plotting-differential.R#259)  ─────────────────────
      error in evaluating the argument 'x' in selecting a method for function 'reducedDim': there is no package called 'uwot'
      Backtrace:
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 722 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: plotDR() (@test_plotting-differential.R#259) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘differential.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 26-27 (differential.Rmd) 
    Error: processing vignette 'differential.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘differential.Rmd’
    
    --- re-building ‘preprocessing.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 39-40 (preprocessing.Rmd) 
    Error: processing vignette 'preprocessing.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘preprocessing.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘differential.Rmd’ ‘preprocessing.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    9.9Mb
    ```

# celda

<details>

* Version: 1.4.6
* GitHub: https://github.com/campbio/celda
* Source code: https://github.com/cran/celda
* Date/Publication: 2020-06-07
* Number of recursive dependencies: 219

Run `revdep_details(, "celda")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘celda.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 26-27 (celda.Rmd) 
    Error: processing vignette 'celda.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘celda.Rmd’
    
    --- re-building ‘decontX.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 22-23 (decontX.Rmd) 
    Error: processing vignette 'decontX.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘decontX.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘celda.Rmd’ ‘decontX.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotDecontXMarkerPercentage: no visible binding for global variable
      ‘cellTypeLabels’
    plotDecontXMarkerPercentage: no visible binding for global variable
      ‘percent’
    Undefined global functions or variables:
      cellTypeLabels percent
    ```

# cellWise

<details>

* Version: 2.1.1
* GitHub: NA
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2020-04-14 10:40:03 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "cellWise")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        data   3.2Mb
        doc    1.7Mb
        libs   7.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rospca’
    ```

# CEMiTool

<details>

* Version: 1.12.2
* GitHub: NA
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2020-09-02
* Number of recursive dependencies: 170

Run `revdep_details(, "CEMiTool")` for more info

</details>

## In both

*   checking whether package ‘CEMiTool’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ggplot2::annotate’ by ‘ggpmisc::annotate’ when loading ‘CEMiTool’
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/CEMiTool/new/CEMiTool.Rcheck/00install.out’ for details.
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
    plot_mean_var,CEMiTool: no visible binding for global variable
      ‘..rr.label..’
    plot_ora,CEMiTool : <anonymous>: no visible global function definition
      for ‘head’
    plot_qq,CEMiTool: no visible binding for global variable ‘data’
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
      head modules num_genes setNames tail var
    Consider adding
      importFrom("grDevices", "dev.off")
      importFrom("stats", "as.dist", "dist", "setNames", "var")
      importFrom("utils", "data", "head", "tail")
    to your NAMESPACE file.
    ```

# ChAMP

<details>

* Version: 2.18.3
* GitHub: NA
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2020-09-14
* Number of recursive dependencies: 237

Run `revdep_details(, "ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'dmrcate(myannotation, ': unused argument (mc.cores = cores) 
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Duplicated \argument entries in documentation object 'champ.SVD':
      ‘Rplot’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    [ Section 3:  Match Annotation Start ]
    
    
    [ Section 3:  Match Annotation Done ]
    
    [<<<<<< ChAMP.DMP END >>>>>>]
    [===========================]
    [You may want to process DMP.GUI() or champ.GSEA() next.]
    
    pandoc-citeproc: PandocHttpError "http://www.zotero.org/styles/american-medical-association" (InvalidUrlException "c4-yum1:3128" "Invalid scheme")
    Error running filter /software/c4/cbi/software/pandoc-2.10.1/bin/pandoc-citeproc:
    Filter returned error status 1
    Error: processing vignette 'ChAMP.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 83
    --- failed re-building ‘ChAMP.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘ChAMP.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'DMRcate', 'Illumina450ProbeVariants.db',
      'IlluminaHumanMethylationEPICmanifest', 'DT'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   1.9Mb
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
    Package in Depends field not imported from: 'DT'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    champ.DMR: possible error in dmrcate(myannotation, min.cpgs =
      minProbes, lambda = lambda, C = C, mc.cores = cores): unused argument
      (mc.cores = cores)
    champ.EpiMod: no visible global function definition for 'GenStatM'
    champ.EpiMod: no visible global function definition for 'DoIntEpi450k'
    champ.EpiMod: no visible global function definition for 'DoEpiMod'
    champ.EpiMod: no visible global function definition for 'FemModShow'
    champ.ebGSEA : gseaWTfn: no visible global function definition for
      'wilcox.test'
    champ.ebGSEA: no visible global function definition for 'stopCluster'
    champ.norm: no visible global function definition for 'stopCluster'
    Undefined global functions or variables:
      DoEpiMod DoIntEpi450k FemModShow GenStatM stopCluster wilcox.test
    Consider adding
      importFrom("stats", "wilcox.test")
    to your NAMESPACE file.
    ```

# CHARGE

<details>

* Version: 1.7.0
* GitHub: NA
* Source code: https://github.com/cran/CHARGE
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 170

Run `revdep_details(, "CHARGE")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘modes’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Chicago

<details>

* Version: 1.16.1
* GitHub: NA
* Source code: https://github.com/cran/Chicago
* Date/Publication: 2020-09-08
* Number of recursive dependencies: 157

Run `revdep_details(, "Chicago")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Chicago.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-20 (Chicago.Rmd) 
    Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘Chicago.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Chicago.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘PCHiCdata’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘PCHiCdata’
    ```

# ChIPpeakAnno

<details>

* Version: 3.22.4
* GitHub: NA
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2020-09-02
* Number of recursive dependencies: 178

Run `revdep_details(, "ChIPpeakAnno")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘pipeline.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 17-32 (pipeline.Rmd) 
    Error: processing vignette 'pipeline.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘pipeline.Rmd’
    
    --- re-building ‘quickStart.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-20 (quickStart.Rmd) 
    Error: processing vignette 'quickStart.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘quickStart.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘ChIPpeakAnno.Rmd’ ‘FAQs.Rmd’ ‘pipeline.Rmd’ ‘quickStart.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 23.5Mb
      sub-directories of 1Mb or more:
        data     12.6Mb
        doc       4.5Mb
        extdata   5.2Mb
    ```

# chromswitch

<details>

* Version: 1.10.0
* GitHub: https://github.com/sjessa/chromswitch
* Source code: https://github.com/cran/chromswitch
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 155

Run `revdep_details(, "chromswitch")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘chromswitch_intro.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 33-35 (chromswitch_intro.Rmd) 
    Error: processing vignette 'chromswitch_intro.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘chromswitch_intro.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘chromswitch_intro.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cliqueMS

<details>

* Version: 1.2.1
* GitHub: https://github.com/osenan/cliqueMS
* Source code: https://github.com/cran/cliqueMS
* Date/Publication: 2020-08-03
* Number of recursive dependencies: 132

Run `revdep_details(, "cliqueMS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MSnbase’
      All declared Imports should be used.
    ```

# Clomial

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/Clomial
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 2

Run `revdep_details(, "Clomial")` for more info

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
    compute.q: no visible global function definition for ‘dbinom’
    Undefined global functions or variables:
      dbinom optim rbinom runif tail
    Consider adding
      importFrom("stats", "dbinom", "optim", "rbinom", "runif")
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# clusterExperiment

<details>

* Version: 2.8.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 188

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘clusterExperimentTutorial.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 20-25 (clusterExperimentTutorial.Rmd) 
    Error: processing vignette 'clusterExperimentTutorial.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘clusterExperimentTutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘clusterExperimentTutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        doc    9.8Mb
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
    Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
    ```

# clustifyr

<details>

* Version: 1.0.0
* GitHub: https://github.com/rnabioco/clustifyr
* Source code: https://github.com/cran/clustifyr
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 117

Run `revdep_details(, "clustifyr")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘clustifyR.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 33-41 (clustifyR.Rmd) 
    Error: processing vignette 'clustifyR.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘clustifyR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘clustifyR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cmapR

<details>

* Version: 1.0.0
* GitHub: https://github.com/cmap/cmapR
* Source code: https://github.com/cran/cmapR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 67

Run `revdep_details(, "cmapR")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘ids<-’ ‘mat<-’ ‘meta<-’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tutorial.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 29-30 (tutorial.Rmd) 
    Error: processing vignette 'tutorial.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘tutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘tutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .dockerignore
      docs/build/html/.buildinfo
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data      2.3Mb
        extdata   2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    subset_gct,GCT: warning in meta(g, dim = "col"): partial argument match
      of 'dim' to 'dimension'
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘ggplot2’
    ```

# cna

<details>

* Version: 3.0.0
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2020-09-13 13:10:14 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "cna")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'cna_vignette.Rnw' failed with diagnostics:
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
    --- failed re-building 'cna_vignette.Rnw'
    
    SUMMARY: processing the following file failed:
      'cna_vignette.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# coin

<details>

* Version: 1.3-1
* GitHub: NA
* Source code: https://github.com/cran/coin
* Date/Publication: 2019-08-28 11:50:06 UTC
* Number of recursive dependencies: 19

Run `revdep_details(, "coin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
            
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘LegoCondInf.Rnw’
    
    --- re-building ‘MAXtest.Rnw’ using Sweave
    Loading required package: survival
    --- finished re-building ‘MAXtest.Rnw’
    
    --- re-building ‘coin.Rnw’ using Sweave
    Loading required package: coin
    Loading required package: survival
    Warning in .local(object, ...) :
      p-values may be incorrect due to violation
      of the subset pivotality condition
    --- finished re-building ‘coin.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘LegoCondInf.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cola

<details>

* Version: 1.4.1
* GitHub: https://github.com/jokergoo/cola
* Source code: https://github.com/cran/cola
* Date/Publication: 2020-05-06
* Number of recursive dependencies: 208

Run `revdep_details(, "cola")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘cola-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: collect_plots-ConsensusPartitionList-method
    > ### Title: Collect plots from ConsensusPartitionList object
    > ### Aliases: collect_plots,ConsensusPartitionList-method
    > 
    > ### ** Examples
    > 
    > data(cola_rl)
    > collect_plots(cola_rl, k = 3)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Documentation: https://jokergoo.github.io/cola/
    Examples: https://jokergoo.github.io/cola_collection/
    
    This message can be suppressed by:
      suppressPackageStartupMessages(library(cola))
    ========================================
    
    Loading required namespace: genefilter
    Warning: Quick-TRANSfer stage steps exceeded maximum (= 250000)
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 65-67 (functional_enrichment.Rmd) 
    Error: processing vignette 'functional_enrichment.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘functional_enrichment.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘cola.Rmd’ ‘functional_enrichment.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       3.0Mb
        extdata   1.0Mb
        libs      1.3Mb
    ```

# collapse

<details>

* Version: 1.3.2
* GitHub: https://github.com/SebKrantz/collapse
* Source code: https://github.com/cran/collapse
* Date/Publication: 2020-09-13 04:50:09 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "collapse")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc    1.9Mb
        libs   2.0Mb
    ```

# consensus

<details>

* Version: 1.6.1
* GitHub: NA
* Source code: https://github.com/cran/consensus
* Date/Publication: 2020-05-22
* Number of recursive dependencies: 27

Run `revdep_details(, "consensus")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'consensus.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'consensus.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.27 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘consensus.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘consensus.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# consensusOV

<details>

* Version: 1.10.0
* GitHub: https://github.com/bhklab/consensusOV
* Source code: https://github.com/cran/consensusOV
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 150

Run `revdep_details(, "consensusOV")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘consensusOV.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-14 (consensusOV.Rmd) 
    Error: processing vignette 'consensusOV.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘consensusOV.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘consensusOV.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R   3.8Mb
    ```

# CopywriteR

<details>

* Version: 2.20.0
* GitHub: https://github.com/PeeperLab/CopywriteR
* Source code: https://github.com/cran/CopywriteR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 61

Run `revdep_details(, "CopywriteR")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘CopywriteR.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘CopywriteR.Rnw’
      ...
    Plotting to file /scratch/henrik/Rtmpyxf2B3/file7467232f8189/vignettes/CNAprofiles/qc/read.counts.compensated.T43_4.bam.png 
    Warning in png(plot, width = 700, height = 1400) :
      unable to open connection to X11 display ''
    
      When sourcing ‘CopywriteR.R’:
    Error: The GC-content and mappability normalization did not work due to a
      failure to calculate loesses. This can generally be solved by using
      larger bin sizes. Stopping execution of the remaining part of the
      script...
    Execution halted
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
      par pdf png points ppois predict read.table rgb segments text
      write.table
    Consider adding
      importFrom("grDevices", "dev.off", "pdf", "png", "rgb")
      importFrom("graphics", "abline", "axis", "lines", "par", "points",
                 "segments", "text")
      importFrom("methods", "as", "getClass")
      importFrom("stats", "dpois", "ecdf", "loess", "ppois", "predict")
      importFrom("utils", "packageVersion", "read.table", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
      ...
    --- re-building ‘CopywriteR.Rnw’ using Sweave
    Loading required package: BiocParallel
    Warning in png(plot, width = 700, height = 1400) :
      unable to open connection to X11 display ''
    
    Error: processing vignette 'CopywriteR.Rnw' failed with diagnostics:
     chunk 10 (label = CopywriteR) 
    Error in value[[3L]](cond) : 
      The GC-content and mappability normalization did not work due to a
      failure to calculate loesses. This can generally be solved by using
      larger bin sizes. Stopping execution of the remaining part of the
      script...
    
    --- failed re-building ‘CopywriteR.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘CopywriteR.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# corrcoverage

<details>

* Version: 1.2.1
* GitHub: https://github.com/annahutch/corrcoverage
* Source code: https://github.com/cran/corrcoverage
* Date/Publication: 2019-12-06 23:20:12 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "corrcoverage")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        extdata   3.8Mb
        libs      1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

# crlmm

<details>

* Version: 1.46.0
* GitHub: NA
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 66

Run `revdep_details(, "crlmm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
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
    Namespace in Imports field not imported from: ‘splines’
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

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 198

Run `revdep_details(, "crossmeta")` for more info

</details>

## In both

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
    Packages unavailable to check Rd xrefs: ‘PADOG’, ‘GeneMeta’
    ```

# cSEM

<details>

* Version: 0.2.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2020-03-29 11:00:20 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
     $ :List of 10
      ..$ 1 :'data.frame':	10 obs. of  3 variables:
      .. ..$ x1   : num [1:10] 0.919 -0.135 -0.394 0.763 1.98 ...
      .. ..$ x2   : num [1:10] -0.506 0.9839 -0.301 -0.0569 -1.0752 ...
      .. ..$ group: chr [1:10] "female" "male" "female" "female" ...
      ..$ 2 :'data.frame':	10 obs. of  3 variables:
      .. ..$ x1   : num [1:10] -0.836 1.178 -0.569 1.595 0.333 ...
      .. ..$ x2   : num [1:10] -0.911 0.22 -1.231 0.158 -0.159 ...
      .. ..$ group: chr [1:10] "male" "male" "female" "female" ...
      ..$ 3 :'data.frame':	10 obs. of  3 variables:
      .. ..$ x1   : num [1:10] 2.173 -1.471 -1.524 0.39 -0.743 ...
      .. ..$ x2   : num [1:10] 0.2075 -0.0376 -1.4673 -0.4616 -0.6192 ...
      .. ..$ group: chr [1:10] "male" "female" "male" "male" ...
      .. [list output truncated]
      [list output truncated]
    > 
    > # Cross-validation can be done by group if a group identifyer is provided:
    > cv_10 <- resampleData(.data = dat, .resample_method = "cross-validation", 
    +                       .id = "group", .R = 100)
    Error: UNRELIABLE VALUE: Future (‘future_lapply-1’) unexpectedly generated random numbers without specifying argument '[future.]seed'. There is a risk that those random numbers are not statistically sound and the overall results might be invalid. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. This ensures that proper, parallel-safe random numbers are produced via the L'Ecuyer-CMRG method. To disable this check, use [future].seed=NULL, or set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# DatabionicSwarm

<details>

* Version: 1.1.3
* GitHub: https://github.com/Mthrun/DatabionicSwarm
* Source code: https://github.com/cran/DatabionicSwarm
* Date/Publication: 2020-02-03 14:00:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "DatabionicSwarm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs   6.1Mb
    ```

# DeepBlueR

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 154

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
            errors, "errors"))
        if (!is.null(target.directory)) 
            message(paste("All result files saved to directory", 
                target.directory))
        return(all.results)
    }
    <bytecode: 0x40fb5c28>
    <environment: namespace:DeepBlueR>
     --- function search by body ---
    Function deepblue_batch_export_results in namespace DeepBlueR has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Quitting from lines 944-945 (DeepBlueR.Rmd) 
    Error: processing vignette 'DeepBlueR.Rmd' failed with diagnostics:
    'length(x) = 66 > 1' in coercion to 'logical(1)'
    --- failed re-building ‘DeepBlueR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DeepBlueR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DelayedArray

<details>

* Version: 0.14.1
* GitHub: NA
* Source code: https://github.com/cran/DelayedArray
* Date/Publication: 2020-07-14
* Number of recursive dependencies: 68

Run `revdep_details(, "DelayedArray")` for more info

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
      generic 'type<-' and siglist 'DelayedArray'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette '01-Working_with_large_arrays.Rnw' failed with diagnostics:
    Running 'texi2dvi' on '01-Working_with_large_arrays.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.40 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘01-Working_with_large_arrays.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘01-Working_with_large_arrays.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
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

* Version: 1.10.1
* GitHub: https://github.com/PeteHaitch/DelayedMatrixStats
* Source code: https://github.com/cran/DelayedMatrixStats
* Date/Publication: 2020-07-03
* Number of recursive dependencies: 67

Run `revdep_details(, "DelayedMatrixStats")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘DelayedMatrixStatsOverview.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-17 (DelayedMatrixStatsOverview.Rmd) 
    Error: processing vignette 'DelayedMatrixStatsOverview.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘DelayedMatrixStatsOverview.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DelayedMatrixStatsOverview.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 73

Run `revdep_details(, "DeMixT")` for more info

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

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        data   3.8Mb
        libs   2.8Mb
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

* Version: 1.4.1
* GitHub: NA
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2020-07-02
* Number of recursive dependencies: 96

Run `revdep_details(, "DepecheR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘DepecheR_test.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 20-24 (DepecheR_test.Rmd) 
    Error: processing vignette 'DepecheR_test.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘DepecheR_test.Rmd’
    
    --- re-building ‘GroupProbPlot_usage.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 20-24 (GroupProbPlot_usage.Rmd) 
    Error: processing vignette 'GroupProbPlot_usage.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘GroupProbPlot_usage.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘DepecheR_test.Rmd’ ‘GroupProbPlot_usage.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    depecheCoFunction: no visible global function definition for
      ‘order.dendrogram’
    Undefined global functions or variables:
      order.dendrogram
    Consider adding
      importFrom("stats", "order.dendrogram")
    to your NAMESPACE file.
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

* Version: 1.6.0
* GitHub: https://github.com/yafeng/DEqMS
* Source code: https://github.com/cran/DEqMS
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 114

Run `revdep_details(, "DEqMS")` for more info

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
    > eh = ExperimentHub(localHub=TRUE)
    using temporary cache /scratch/henrik/RtmprYxuXG/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘DEqMS-package-vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 50-51 (DEqMS-package-vignette.Rmd) 
    Error: processing vignette 'DEqMS-package-vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘DEqMS-package-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DEqMS-package-vignette.Rmd’
    
    Error: Vignette re-building failed.
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

* Version: 0.6.9
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2020-09-03 05:20:03 UTC
* Number of recursive dependencies: 102

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        libs   7.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# diffloop

<details>

* Version: 1.16.0
* GitHub: https://github.com/aryeelab/diffloop
* Source code: https://github.com/cran/diffloop
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 133

Run `revdep_details(, "diffloop")` for more info

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

* Version: 1.4.1
* GitHub: https://github.com/matthewcarlucci/DiscoRhythm
* Source code: https://github.com/cran/DiscoRhythm
* Date/Publication: 2020-07-10
* Number of recursive dependencies: 150

Run `revdep_details(, "DiscoRhythm")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > # Batch execute (on demo data) to generate a DiscoRhythm_report.html report.
    > # Returns the results of discoODAs
    > discoODAres <- discoBatch(indata,
    + report="DiscoRhythm_report.html",
    + osc_method="CS")
    [WARNING] Could not parse YAML metadata at line 14 column 1: Duplicate key in mapping: Scalar (Pos {posByteOffset = 207, posCharOffset = 207, posLine = 11, posColumn = 0}) (SUnknown Nothing "date")
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    
    
    processing file: DiscoRhythm_report.Rmd
       inline R code fragments
    
    label: unnamed-chunk-1
    Quitting from lines 31-39 (DiscoRhythm_report.Rmd) 
    Error in if (is.na(options$out.width.px)) options$out.width.px = options$fig.width *  : 
      argument is of length zero
    Calls: discoBatch ... process_group.block -> call_block -> as.strict_list -> hook
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘disco_workflow_vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 288-296 (disco_workflow_vignette.Rmd) 
    Error: processing vignette 'disco_workflow_vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘disco_workflow_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘disco_workflow_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

* Version: 1.2.0
* GitHub: https://github.com/shokoohi/DMCFB
* Source code: https://github.com/cran/DMCFB
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 128

Run `revdep_details(, "DMCFB")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘DMCFB-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: readBismark-method
    > ### Title: readBismark method
    > ### Aliases: readBismark-method readBismark,character,DataFrame-method
    > ###   readBismark readBismark,character,data.frame-method
    > ###   readBismark,character,character-method
    > 
    > ### ** Examples
    > 
    > fn <- list.files(system.file("extdata", package = "DMCHMM"))
    > fn.f <- list.files(system.file("extdata", package = "DMCHMM"),
    +   full.names = TRUE
    + )
    > OBJ <- readBismark(fn.f, fn)
    Building BSDMC object.
    Error in methData[[1]] : subscript out of bounds
    Calls: readBismark -> readBismark -> .readBismark
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘DMCFB.Rmd’ using rmarkdown
    Error: processing vignette 'DMCFB.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘DMCFB.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DMCFB.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# dmrseq

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 156

Run `revdep_details(, "dmrseq")` for more info

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

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘dmrseq.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 44-47 (dmrseq.Rmd) 
    Error: processing vignette 'dmrseq.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘dmrseq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘dmrseq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        data   8.8Mb
        doc    1.3Mb
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

* Version: 1.10.4
* GitHub: NA
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2020-09-17
* Number of recursive dependencies: 157

Run `revdep_details(, "Doscheda")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Doscheda.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 74-89 (Doscheda.Rmd) 
    Error: processing vignette 'Doscheda.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘Doscheda.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Doscheda.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              1.6Mb
        shiny-examples   2.0Mb
    ```

# doseR

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/doseR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 51

Run `revdep_details(, "doseR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘doseR.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-17 (doseR.Rmd) 
    Error: processing vignette 'doseR.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘doseR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘doseR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# dplR

<details>

* Version: 1.7.1
* GitHub: https://github.com/AndyBunn/dplR
* Source code: https://github.com/cran/dplR
* Date/Publication: 2020-03-19 13:20:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "dplR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > nrad <- 16
    > minrad <- maxrad / nrad
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
    Warning in png(fname, width = pngWidthHeight[1], height = pngWidthHeight[2],  :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: rasterPlot -> png
    Execution halted
    ```

# EasyqpcR

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/EasyqpcR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 61

Run `revdep_details(, "EasyqpcR")` for more info

</details>

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

# ecospat

<details>

* Version: 3.1
* GitHub: https://github.com/ecospat/ecospat
* Source code: https://github.com/cran/ecospat
* Date/Publication: 2020-03-25 15:20:03 UTC
* Number of recursive dependencies: 171

Run `revdep_details(, "ecospat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# EMDomics

<details>

* Version: 2.18.0
* GitHub: NA
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 64

Run `revdep_details(, "EMDomics")` for more info

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

* Version: 1.25.1
* GitHub: NA
* Source code: https://github.com/cran/ENmix
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 150

Run `revdep_details(, "ENmix")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'ENmix.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'ENmix.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    {parskip}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘ENmix.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘ENmix.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# EnrichedHeatmap

<details>

* Version: 1.18.2
* GitHub: https://github.com/jokergoo/EnrichedHeatmap
* Source code: https://github.com/cran/EnrichedHeatmap
* Date/Publication: 2020-05-04
* Number of recursive dependencies: 75

Run `revdep_details(, "EnrichedHeatmap")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    `use_raster` is automatically set to TRUE for a matrix with more than
    2000 rows. You can control `use_raster` arugment by explicitly setting
    TRUE/FALSE to it. Set `ht_opt$message = FALSE` to turn off this
    message.
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 91-112 (row_odering.Rmd) 
    Error: processing vignette 'row_odering.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘row_odering.Rmd’
    
    --- re-building ‘visualize_categorical_signals_wrapper.Rmd’ using knitr
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘visualize_categorical_signals_wrapper.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘EnrichedHeatmap.Rmd’ ‘roadmap.Rmd’ ‘row_odering.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        doc       5.8Mb
        extdata   2.6Mb
    ```

# EpiDISH

<details>

* Version: 2.4.0
* GitHub: https://github.com/sjczheng/EpiDISH
* Source code: https://github.com/cran/EpiDISH
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 76

Run `revdep_details(, "EpiDISH")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘EpiDISH.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 28-31 (EpiDISH.Rmd) 
    Error: processing vignette 'EpiDISH.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘EpiDISH.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘EpiDISH.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# evaluomeR

<details>

* Version: 1.4.0
* GitHub: https://github.com/neobernad/evaluomeR
* Source code: https://github.com/cran/evaluomeR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 113

Run `revdep_details(, "evaluomeR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘manual.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 33-37 (manual.Rmd) 
    Error: processing vignette 'manual.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘manual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘manual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# EventPointer

<details>

* Version: 2.6.0
* GitHub: https://github.com/jpromeror/EventPointer
* Source code: https://github.com/cran/EventPointer
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 149

Run `revdep_details(, "EventPointer")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘EventPointer.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 23-28 (EventPointer.Rmd) 
    Error: processing vignette 'EventPointer.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘EventPointer.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘EventPointer.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 31

Run `revdep_details(, "ExCluster")` for more info

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

* Version: 1.14.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 107

Run `revdep_details(, "ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: /home/henrik/c4/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: /home/henrik/c4/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
      Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
      Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘genExpNrm.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 70-84 (genExpNrm.Rmd) 
    Error: processing vignette 'genExpNrm.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘genExpNrm.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘genExpNrm.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   4.7Mb
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

* Version: 0.0.7
* GitHub: NA
* Source code: https://github.com/cran/FastHCS
* Date/Publication: 2020-05-10 12:50:03 UTC
* Number of recursive dependencies: 5

Run `revdep_details(, "FastHCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.7Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  18.3Mb
    ```

# FastPCS

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/FastPCS
* Date/Publication: 2018-05-22 16:49:12 UTC
* Number of recursive dependencies: 6

Run `revdep_details(, "FastPCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        libs  10.0Mb
    ```

# FastRCS

<details>

* Version: 0.0.8
* GitHub: NA
* Source code: https://github.com/cran/FastRCS
* Date/Publication: 2018-05-13 19:59:51 UTC
* Number of recursive dependencies: 6

Run `revdep_details(, "FastRCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.7Mb
      sub-directories of 1Mb or more:
        libs  21.6Mb
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 77

Run `revdep_details(, "FDb.FANTOM4.promoters.hg19")` for more info

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

* Version: 1.4.1
* GitHub: https://github.com/mikelove/fishpond
* Source code: https://github.com/cran/fishpond
* Date/Publication: 2020-05-12
* Number of recursive dependencies: 162

Run `revdep_details(, "fishpond")` for more info

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
      [ OK: 10 | SKIPPED: 2 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: Reading in Alevin EDS format works (@test_readEDS.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘swish.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 51-60 (swish.Rmd) 
    Error: processing vignette 'swish.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘swish.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘swish.Rmd’
    
    Error: Vignette re-building failed.
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

* Version: 2.0.1
* GitHub: NA
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2020-06-09
* Number of recursive dependencies: 110

Run `revdep_details(, "flowCore")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'HowTo-flowCore.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.35 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘HowTo-flowCore.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘HowTo-flowCore.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        data      5.0Mb
        extdata   1.1Mb
        libs      5.1Mb
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

*   checking compiled code ... NOTE
    ```
    File ‘flowCore/libs/flowCore.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Objects: ‘RcppExports.o’, ‘fcsTextParse.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# flowWorkspace

<details>

* Version: 4.0.6
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2020-06-11
* Number of recursive dependencies: 115

Run `revdep_details(, "flowWorkspace")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .github
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 74.5Mb
      sub-directories of 1Mb or more:
        doc    3.3Mb
        lib   52.1Mb
        libs  17.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RBGL’ ‘RProtoBufLib’ ‘ggplot2’ ‘grDevices’ ‘graphics’ ‘utils’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowCore:::.estimateLogicle’ ‘flowCore:::.spillover_pattern’
      ‘flowCore:::checkClass’ ‘flowCore:::guid’
      ‘flowCore:::logicle_transform’ ‘flowCore:::parse_pd_for_read_fs’
      ‘flowCore:::txt2spillmatrix’ ‘flowCore:::updateTransformKeywords’
      ‘flowCore:::validFilterResultList’ ‘graph:::.makeEdgeKeys’
      ‘ncdfFlow:::.isValidSamples’ ‘stats:::.splinefun’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setNode,GatingSet-character-ANY: no visible global function definition
      for ‘is’
    transform,GatingSet: no visible global function definition for ‘is’
    transform,GatingSet : <anonymous>: no visible global function
      definition for ‘is’
    transform,cytoset: no visible global function definition for ‘is’
    transform,cytoset : <anonymous>: no visible global function definition
      for ‘is’
    Undefined global functions or variables:
      . .cpp_computeGates .cpp_gating .hasSlot IQR Population as
      callNextMethod count desc extends gray is kwdError median modifyList
      new node obj old openCyto.count parallel percent sampleName
      selectMethod validObject xml.count
    Consider adding
      importFrom("grDevices", "gray")
      importFrom("methods", ".hasSlot", "as", "callNextMethod", "extends",
                 "is", "new", "selectMethod", "validObject")
      importFrom("stats", "IQR", "median")
      importFrom("utils", "modifyList")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘flowWorkspace/libs/flowWorkspace.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Objects: ‘R_GatingSet.o’, ‘RcppExports.o’, ‘cytoframeAPI.o’,
          ‘cytosetAPI.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Object: ‘R_GatingSet.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# FRASER

<details>

* Version: 1.0.2
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2020-09-04
* Number of recursive dependencies: 146

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘FRASER.Rnw’ using knitr
    Quitting from lines 13-16 (FRASER.Rnw) 
    Error: processing vignette 'FRASER.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘FRASER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘FRASER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        doc    1.6Mb
        libs   4.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotateRangesWithTxDb: no visible binding for global variable
      ‘uniqueID’
    extractChromosomeLengths: no visible binding for global variable
      ‘mapped’
    extractChromosomes: no visible binding for global variable ‘mapped’
    getAnnotationFeature: no visible binding for global variable
      ‘first_feature’
    getAnnotationFeature: no visible binding for global variable
      ‘other_features’
    Undefined global functions or variables:
      first_feature mapped other_features uniqueID
    ```

# funtooNorm

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 129

Run `revdep_details(, "funtooNorm")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'show,SampleSet-method':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# gap

<details>

* Version: 1.2.2
* GitHub: https://github.com/jinghuazhao/R
* Source code: https://github.com/cran/gap
* Date/Publication: 2020-02-02 15:10:02 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "gap")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genetics’
    ```

# gcapc

<details>

* Version: 1.12.0
* GitHub: https://github.com/tengmx/gcapc
* Source code: https://github.com/cran/gcapc
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 55

Run `revdep_details(, "gcapc")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘gcapc.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 22-27 (gcapc.Rmd) 
    Error: processing vignette 'gcapc.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘gcapc.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘gcapc.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# GenEst

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2020-06-08 18:20:03 UTC
* Number of recursive dependencies: 84

Run `revdep_details(, "GenEst")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmlwidgets’
      All declared Imports should be used.
    ```

# GeneTonic

<details>

* Version: 1.0.1
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2020-05-28
* Number of recursive dependencies: 178

Run `revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      fitting model and testing
      - Done!
      --- Running enrichGO...
      Found 500 gene sets in `topGOtableResult` object.
      Converting for usage in GeneTonic...
      - Done!
      --- Test setup script completed!
      ── 1. Error: Enhanced table is created (@test-enhance_tables.R#11)  ────────────
      unable to start device PNG
      Backtrace:
       1. plotly::ggplotly(p)
       2. plotly:::ggplotly.ggplot(p)
       3. plotly::gg2list(...)
       4. grDevices:::dev_fun(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 117 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: Enhanced table is created (@test-enhance_tables.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘GeneTonic_manual.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 33-45 (GeneTonic_manual.Rmd) 
    Error: processing vignette 'GeneTonic_manual.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘GeneTonic_manual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘GeneTonic_manual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        doc  12.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pcaExplorer’
    ```

# genomation

<details>

* Version: 1.20.0
* GitHub: https://github.com/BIMSBbioinfo/genomation
* Source code: https://github.com/cran/genomation
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 100

Run `revdep_details(, "genomation")` for more info

</details>

## In both

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'GenomicRangesList' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘GenomationManual.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 36-38 (GenomationManual.Rmd) 
    Error: processing vignette 'GenomationManual.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘GenomationManual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘GenomationManual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   1.2Mb
        libs      1.6Mb
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

* Version: 1.15.0
* GitHub: https://github.com/chakri9/GenRank
* Source code: https://github.com/cran/GenRank
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 59

Run `revdep_details(, "GenRank")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GenRank-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: ComputeRP
    > ### Title: Convergent evidence based on rank product method.
    > ### Aliases: ComputeRP
    > 
    > ### ** Examples
    > 
    > input_file <- system.file("extdata","RP_toydata.txt",package="GenRank")
    > signif.val <- c('L','L','H','L','H','L')
    > RP_ranks <- ComputeRP(input_file, signif.type = signif.val)
    Error in prod(rankrow) : invalid 'type' (character) of argument
    Calls: ComputeRP -> apply -> FUN
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ── 1. Failure: Output of CombP is correct (@test_CombP.R#8)  ───────────────────
      `x` isn't true.
      
      ── 2. Failure: Output of ComputeCE is correct (@test_compute_CE.R#8)  ──────────
      `x` isn't true.
      
      ── 3. Error: Output of ComputeRP is correct (@test_compute_RP.R#6)  ────────────
      invalid 'type' (character) of argument
      Backtrace:
       1. GenRank::ComputeRP(input_file, signif, 100, 1234)
       2. base::apply(ranks.matrix, 1, function(rankrow) prod(rankrow)^(1/ncol(ranks.matrix)))
       3. GenRank:::FUN(newX[, i], ...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 33 | SKIPPED: 0 | WARNINGS: 21 | FAILED: 3 ]
      1. Failure: Output of CombP is correct (@test_CombP.R#8) 
      2. Failure: Output of ComputeCE is correct (@test_compute_CE.R#8) 
      3. Error: Output of ComputeRP is correct (@test_compute_RP.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘GenRank_Vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 115-120 (GenRank_Vignette.Rmd) 
    Error: processing vignette 'GenRank_Vignette.Rmd' failed with diagnostics:
    invalid 'type' (character) of argument
    --- failed re-building ‘GenRank_Vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘GenRank_Vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

# ggdmc

<details>

* Version: 0.2.6.0
* GitHub: https://github.com/yxlin/ggdmc
* Source code: https://github.com/cran/ggdmc
* Date/Publication: 2019-04-29 05:10:03 UTC
* Number of recursive dependencies: 50

Run `revdep_details(, "ggdmc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        libs   6.9Mb
    ```

# GGPA

<details>

* Version: 1.0.0
* GitHub: https://github.com/dongjunchung/GGPA
* Source code: https://github.com/cran/GGPA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 73

Run `revdep_details(, "GGPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   3.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘network’ ‘scales’ ‘sna’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘GGPA/libs/GGPA.so’:
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Object: ‘3_Param.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'GGPA-example.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'GGPA-example.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `subfigure.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.16 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘GGPA-example.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘GGPA-example.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# GJRM

<details>

* Version: 0.2-3
* GitHub: NA
* Source code: https://github.com/cran/GJRM
* Date/Publication: 2020-09-07 18:20:03 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "GJRM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# GNET2

<details>

* Version: 1.4.0
* GitHub: https://github.com/chrischen1/GNET2
* Source code: https://github.com/cran/GNET2
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 95

Run `revdep_details(, "GNET2")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > reg_names <- paste0('TF',1:5)
    > rownames(exp_data) <- c(reg_names,paste0('gene',1:(nrow(exp_data)-length(reg_names))))
    > colnames(exp_data) <- paste0('condition_',1:ncol(exp_data))
    > se <- SummarizedExperiment::SummarizedExperiment(assays=list(counts=exp_data))
    > gnet_result <- gnet(se,reg_names,init_method,init_group_num)
    Determining initial group number...
    Building module networks...
    Iteration 1
    Iteration 2
    Iteration 3
    Iteration 4
    Converged.
    Generating final network modules...
    Done.
    > save_gnet(gnet_result)
    Warning in tiff(paste0(save_path, "/module_", i, ".tiff"), compression = "lzw") :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("tiff::", comp, ":", filename), g$width,  : 
      unable to start device TIFF
    Calls: save_gnet -> tiff
    Execution halted
    ```

# GPrank

<details>

* Version: 0.1.4
* GitHub: https://github.com/PROBIC/GPrank
* Source code: https://github.com/cran/GPrank
* Date/Publication: 2018-08-17 15:00:03 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "GPrank")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GPrank-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: bitseq_setPlot
    > ### Title: Configuring the settings of the plots for the BitSeq example
    > ### Aliases: bitseq_setPlot
    > ### Keywords: internal plot
    > 
    > ### ** Examples
    > 
    > bitseq_setPlot("geneA_GPprofile.pdf")
    > bitseq_setPlot("geneA_GPprofile.png")
    Warning in png(filename = plotName) :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: bitseq_setPlot -> png
    Execution halted
    ```

# graper

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 66

Run `revdep_details(, "graper")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘example_linear.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-17 (example_linear.Rmd) 
    Error: processing vignette 'example_linear.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘example_linear.Rmd’
    
    --- re-building ‘example_logistic.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-17 (example_logistic.Rmd) 
    Error: processing vignette 'example_logistic.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘example_logistic.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘example_linear.Rmd’ ‘example_logistic.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   5.5Mb
    ```

# GUIDEseq

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 116

Run `revdep_details(, "GUIDEseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        extdata  10.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
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
    getUniqueCleavageEvents: no visible binding for global variable 'UMI'
    offTargetAnalysisOfPeakRegions: no visible binding for global variable
      'thePeak'
    offTargetAnalysisOfPeakRegions: no visible binding for global variable
      'gRNAPlusPAM'
    offTargetAnalysisOfPeakRegions: no visible binding for global variable
      'offTarget'
    Undefined global functions or variables:
      SNratio UMI adjusted.p.value exons gRNAPlusPAM genes offTarget
      offTarget_Start qwidth.first qwidth.last readName seqlevelsStyle<-
      strand.first strand.last thePeak
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
    Error: processing vignette 'GUIDEseq.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'GUIDEseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.92 \def
             \mdhelvet{\fontfamily{phv}\selectfont\mdseries}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'GUIDEseq.Rnw'
    
    SUMMARY: processing the following file failed:
      'GUIDEseq.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# Gviz

<details>

* Version: 1.32.0
* GitHub: https://github.com/ivanek/Gviz
* Source code: https://github.com/cran/Gviz
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 138

Run `revdep_details(, "Gviz")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Gviz.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 33-59 (Gviz.Rmd) 
    Error: processing vignette 'Gviz.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘Gviz.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Gviz.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        doc       6.6Mb
        extdata   2.5Mb
    ```

# gwasurvivr

<details>

* Version: 1.6.0
* GitHub: https://github.com/suchestoncampbelllab/gwasurvivr
* Source code: https://github.com/cran/gwasurvivr
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 115

Run `revdep_details(, "gwasurvivr")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘gwasurvivr_Introduction.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 26-27 (gwasurvivr_Introduction.Rmd) 
    Error: processing vignette 'gwasurvivr_Introduction.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘gwasurvivr_Introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘gwasurvivr_Introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# haploReconstruct

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/haploReconstruct
* Date/Publication: 2016-10-10 18:18:49
* Number of recursive dependencies: 19

Run `revdep_details(, "haploReconstruct")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        data   9.4Mb
    ```

# hipathia

<details>

* Version: 2.4.0
* GitHub: NA
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 117

Run `revdep_details(, "hipathia")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘hipathia-vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 86-90 (hipathia-vignette.Rmd) 
    Error: processing vignette 'hipathia-vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘hipathia-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘hipathia-vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        data      4.9Mb
        doc       1.7Mb
        extdata   4.3Mb
    ```

# IMIFA

<details>

* Version: 2.1.3
* GitHub: https://github.com/Keefe-Murphy/IMIFA
* Source code: https://github.com/cran/IMIFA
* Date/Publication: 2020-05-12 16:10:02 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "IMIFA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘IMIFA.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 38-40 (IMIFA.Rmd) 
    Error: processing vignette 'IMIFA.Rmd' failed with diagnostics:
    unused argument (type = "cairo")
    --- failed re-building ‘IMIFA.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘IMIFA.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# InfiniumPurify

<details>

* Version: 1.3.1
* GitHub: NA
* Source code: https://github.com/cran/InfiniumPurify
* Date/Publication: 2017-01-14 12:12:25
* Number of recursive dependencies: 1

Run `revdep_details(, "InfiniumPurify")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘minfi’
    ```

# jointseg

<details>

* Version: 1.0.2
* GitHub: https://github.com/mpierrejean/jointseg
* Source code: https://github.com/cran/jointseg
* Date/Publication: 2019-01-11 12:30:03 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "jointseg")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      unable to open connection to X11 display ''
    Quitting from lines 22-23 (PSSeg.Rmd) 
    Error: processing vignette 'PSSeg.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘PSSeg.Rmd’
    
    --- re-building ‘dataGeneration.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 33-34 (dataGeneration.Rmd) 
    Error: processing vignette 'dataGeneration.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘dataGeneration.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘PSSeg.Rmd’ ‘dataGeneration.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# kissDE

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/kissDE
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 128

Run `revdep_details(, "kissDE")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library("kissDE")
      > 
      > test_check("kissDE")
      ── 1. Error: qualityControl work as expected (@test_qualityControl.R#11)  ──────
      unable to start device PNG
      Backtrace:
       1. kissDE::qualityControl(mySNVcounts, mySNVconditions, storeFigs = TRUE)
       2. grDevices::png(filename)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 64 | SKIPPED: 0 | WARNINGS: 19 | FAILED: 1 ]
      1. Error: qualityControl work as expected (@test_qualityControl.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'kissDE.rnw' failed with diagnostics:
    Running 'texi2dvi' on 'kissDE.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.92 \def
             \mdhelvet{\fontfamily{phv}\selectfont\mdseries}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘kissDE.rnw’
    
    SUMMARY: processing the following file failed:
      ‘kissDE.rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# LFDREmpiricalBayes

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/LFDREmpiricalBayes
* Date/Publication: 2017-09-27 09:08:46 UTC
* Number of recursive dependencies: 26

Run `revdep_details(, "LFDREmpiricalBayes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'LFDREmpiricalBayes.Rnw' failed with diagnostics:
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
    --- failed re-building ‘LFDREmpiricalBayes.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘LFDREmpiricalBayes.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# liger

<details>

* Version: 1.1.2
* GitHub: https://github.com/JEFworks/liger
* Source code: https://github.com/cran/liger
* Date/Publication: 2020-07-16 15:10:07 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "liger")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'permpvals.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/liger/new/liger.Rcheck/vign_test/liger/vignettes/permpvals.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See permpvals.log for more info.
    --- failed re-building ‘permpvals.Rmd’
    
    --- re-building ‘simulation.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'simulation.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/liger/new/liger.Rcheck/vign_test/liger/vignettes/simulation.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See simulation.log for more info.
    --- failed re-building ‘simulation.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘gsea.Rmd’ ‘interpreting.Rmd’ ‘permpvals.Rmd’ ‘simulation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    2.1Mb
        libs   1.4Mb
    ```

# loo

<details>

* Version: 2.3.1
* GitHub: https://github.com/stan-dev/loo
* Source code: https://github.com/cran/loo
* Date/Publication: 2020-07-14 22:50:10 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "loo")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘loo2-weights.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 63-65 (loo2-weights.Rmd) 
    Error: processing vignette 'loo2-weights.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘loo2-weights.Rmd’
    
    --- re-building ‘loo2-with-rstan.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘loo2-with-rstan.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘loo2-example.Rmd’ ‘loo2-lfo.Rmd’ ‘loo2-moment-matching.Rmd’
      ‘loo2-non-factorized.Rmd’ ‘loo2-weights.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# LSAmitR

<details>

* Version: 1.0-2
* GitHub: NA
* Source code: https://github.com/cran/LSAmitR
* Date/Publication: 2018-06-08 13:23:05 UTC
* Number of recursive dependencies: 163

Run `revdep_details(, "LSAmitR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

<details>

* Version: 0.9.7
* GitHub: https://github.com/R-Lum/Luminescence
* Source code: https://github.com/cran/Luminescence
* Date/Publication: 2020-01-08 23:02:25 UTC
* Number of recursive dependencies: 142

Run `revdep_details(, "Luminescence")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RLumShiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        help   1.1Mb
        libs   2.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RLumShiny’
    ```

# M3Drop

<details>

* Version: 1.14.0
* GitHub: https://github.com/tallulandrews/M3Drop
* Source code: https://github.com/cran/M3Drop
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 205

Run `revdep_details(, "M3Drop")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        doc  12.6Mb
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

* Version: 2.8.0
* GitHub: NA
* Source code: https://github.com/cran/maEndToEnd
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 227

Run `revdep_details(, "maEndToEnd")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MA-Workflow.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 50-71 (MA-Workflow.Rmd) 
    Error: processing vignette 'MA-Workflow.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘MA-Workflow.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MA-Workflow.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
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

# mcmcsae

<details>

* Version: 0.5.0
* GitHub: NA
* Source code: https://github.com/cran/mcmcsae
* Date/Publication: 2020-09-01 16:00:03 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "mcmcsae")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        libs  14.3Mb
    ```

# MEAL

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 205

Run `revdep_details(, "MEAL")` for more info

</details>

## In both

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'runRegionAnalysis' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘MEAL.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 26-27 (MEAL.Rmd) 
    Error: processing vignette 'MEAL.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘MEAL.Rmd’
    
    --- re-building ‘caseExample.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 27-28 (caseExample.Rmd) 
    Error: processing vignette 'caseExample.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘caseExample.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘MEAL.Rmd’ ‘caseExample.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotRegion: no visible global function definition for
      ‘subsetByOverlaps’
    plotRegion: no visible global function definition for ‘mcols<-’
    runRDA: no visible global function definition for ‘rowData’
    runSVA: no visible global function definition for ‘resid’
    Undefined global functions or variables:
      mcols<- resid rowData subsetByOverlaps
    Consider adding
      importFrom("stats", "resid")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘DMRcate’
    ```

# MEDseq

<details>

* Version: 1.1.1
* GitHub: https://github.com/Keefe-Murphy/MEDseq
* Source code: https://github.com/cran/MEDseq
* Date/Publication: 2020-05-12 20:10:02 UTC
* Number of recursive dependencies: 93

Run `revdep_details(, "MEDseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MEDseq.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 36-38 (MEDseq.Rmd) 
    Error: processing vignette 'MEDseq.Rmd' failed with diagnostics:
    unused argument (type = "cairo")
    --- failed re-building ‘MEDseq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MEDseq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# metagene

<details>

* Version: 2.20.0
* GitHub: https://github.com/CharlesJB/metagene
* Source code: https://github.com/cran/metagene
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 136

Run `revdep_details(, "metagene")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘metagene.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-15 (metagene.Rmd) 
    Error: processing vignette 'metagene.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘metagene.Rmd’
    
    --- re-building ‘metagene_rnaseq.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-15 (metagene_rnaseq.Rmd) 
    Error: processing vignette 'metagene_rnaseq.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘metagene_rnaseq.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘metagene.Rmd’ ‘metagene_rnaseq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        doc       3.2Mb
        extdata   5.4Mb
    ```

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

* Version: 1.30.0
* GitHub: https://github.com/nosson/metagenomeSeq
* Source code: https://github.com/cran/metagenomeSeq
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 121

Run `revdep_details(, "metagenomeSeq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'metagenomeSeq.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'metagenomeSeq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.29 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘metagenomeSeq.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘fitTimeSeries.Rnw’ ‘metagenomeSeq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MetaNeighbor

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 60

Run `revdep_details(, "MetaNeighbor")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following objects are masked from 'package:base':
    
        aperm, apply, rowsum
    
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'MetaNeighbor.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/MetaNeighbor/new/MetaNeighbor.Rcheck/vign_test/MetaNeighbor/vignettes/MetaNeighbor.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See MetaNeighbor.log for more info.
    --- failed re-building ‘MetaNeighbor.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MetaNeighbor.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        data   7.1Mb
        libs   1.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenomicRanges’ ‘RColorBrewer’ ‘gplots’
      All declared Imports should be used.
    ```

# metavizr

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/metavizr
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 180

Run `revdep_details(, "metavizr")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘IntroToMetavizr.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 21-24 (IntroToMetavizr.Rmd) 
    Error: processing vignette 'IntroToMetavizr.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘IntroToMetavizr.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘IntroToMetavizr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# methrix

<details>

* Version: 1.2.06
* GitHub: NA
* Source code: https://github.com/cran/methrix
* Date/Publication: 2020-05-30
* Number of recursive dependencies: 147

Run `revdep_details(, "methrix")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'DelayedArray'
    
    The following objects are masked from 'package:matrixStats':
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following objects are masked from 'package:base':
    
        aperm, apply, rowsum
    
    Quitting from lines 87-89 (methrix.Rmd) 
    Error: processing vignette 'methrix.Rmd' failed with diagnostics:
    
    --- failed re-building ‘methrix.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘methrix.Rmd’
    
    Error: Vignette re-building failed.
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
    write_bedgraphs: no visible global function definition for
      ‘seqlevelsStyle<-’
    Undefined global functions or variables:
      seqlevelsStyle<-
    ```

# MethylAid

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 166

Run `revdep_details(, "MethylAid")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MethylAid.Rnw’ using knitr
    Quitting from lines 22-26 (MethylAid.Rnw) 
    Error: processing vignette 'MethylAid.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘MethylAid.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MethylAid.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

# methylationArrayAnalysis

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 211

Run `revdep_details(, "methylationArrayAnalysis")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘methylationArrayAnalysis.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 38-39 (methylationArrayAnalysis.Rmd) 
    Error: processing vignette 'methylationArrayAnalysis.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘methylationArrayAnalysis.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘methylationArrayAnalysis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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

*   checking installed package size ... NOTE
    ```
      installed size is 322.8Mb
      sub-directories of 1Mb or more:
        doc        2.5Mb
        extdata  320.2Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# methylumi

<details>

* Version: 2.34.0
* GitHub: https://github.com/seandavi/methylumi
* Source code: https://github.com/cran/methylumi
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 189

Run `revdep_details(, "methylumi")` for more info

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

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'methylumi450k.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'methylumi450k.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.36 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘methylumi450k.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘methylumi.Rnw’ ‘methylumi450k.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
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

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        R         1.3Mb
        data      6.8Mb
        doc       1.9Mb
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

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/MFHD
* Date/Publication: 2013-10-23 23:50:20
* Number of recursive dependencies: 58

Run `revdep_details(, "MFHD")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot.bagplot : cut.z.pg: no visible global function definition for
      ‘points’
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      ‘points’
    plot.bagplot : find.cut.z.pg: no visible global function definition for
      ‘lines’
    plot.bagplot: no visible global function definition for ‘boxplot’
    plot.bagplot: no visible global function definition for ‘points’
    plot.bagplot: no visible global function definition for ‘segments’
    plot.bagplot: no visible global function definition for ‘text’
    plot.bagplot: no visible global function definition for ‘lines’
    plot.bagplot: no visible global function definition for ‘polygon’
    Undefined global functions or variables:
      boxplot chull complete.cases identify lines points polygon prcomp
      quantile sd segments text xy.coords
    Consider adding
      importFrom("grDevices", "chull", "xy.coords")
      importFrom("graphics", "boxplot", "identify", "lines", "points",
                 "polygon", "segments", "text")
      importFrom("stats", "complete.cases", "prcomp", "quantile", "sd")
    to your NAMESPACE file.
    ```

# mgcViz

<details>

* Version: 0.1.6
* GitHub: https://github.com/mfasiolo/mgcViz
* Source code: https://github.com/cran/mgcViz
* Date/Publication: 2020-03-04 15:10:02 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "mgcViz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   4.4Mb
    ```

# MHTcop

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/MHTcop
* Date/Publication: 2019-01-21 16:10:03 UTC
* Number of recursive dependencies: 41

Run `revdep_details(, "MHTcop")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MCMCpack’ ‘copula’
      All declared Imports should be used.
    ```

# microsamplingDesign

<details>

* Version: 1.0.7
* GitHub: NA
* Source code: https://github.com/cran/microsamplingDesign
* Date/Publication: 2020-04-05 19:30:02 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "microsamplingDesign")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘microsamplingDesign.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Loading required package: Rcpp
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'microsamplingDesign.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/microsamplingDesign/new/microsamplingDesign.Rcheck/vign_test/microsamplingDesign/vignettes/microsamplingDesign.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See microsamplingDesign.log for more info.
    --- failed re-building ‘microsamplingDesign.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘microsamplingDesign.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MIGSA

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/MIGSA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 119

Run `revdep_details(, "MIGSA")` for more info

</details>

## In both

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
      ‘MIGSA.Rnw’ using ‘UTF-8’... failed
      ‘gettingPbcmcData.Rnw’ using ‘UTF-8’... OK
      ‘gettingTcgaData.Rnw’ using ‘UTF-8’... OK
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MIGSA.Rnw’
      ...
            term        minHeight allParents
    target  "character" "logical" "list"    
    defined "character" "logical" "list"    
     --- function search by body ---
    S4 Method getHeight:MIGSA defined in namespace MIGSA with signature character#logical#list has this body.
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘MIGSA.R’:
    Error: 'length(x) = 2 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'gettingTcgaData.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'gettingTcgaData.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `multirow.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.7 \DeclareMathOperator
                            *{\argmax}{arg\,max}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘gettingTcgaData.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘MIGSA.Rnw’ ‘gettingPbcmcData.Rnw’ ‘gettingTcgaData.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MinimumDistance

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 72

Run `revdep_details(, "MinimumDistance")` for more info

</details>

## In both

*   checking Rd files ... WARNING
    ```
    checkRd: (5) MinimumDistance.Rd:0-7: Must have a \description
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Functions or methods with usage in documentation object 'coerce' but not in code:
      ‘as’
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Objects in \usage without \alias in documentation object 'coerce':
      ‘as’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doSNOW’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘VanillaICE:::plotIdiogram’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    callDenovoSegments: no visible global function definition for
      ‘read.bsfiles’
    pruneMD: no visible global function definition for ‘RangedDataCBS’
    pruneTrioSet: no visible global function definition for
      ‘RangedDataList’
    read.bsfiles2: no visible binding for global variable ‘read.bsfiles’
    GenomeAnnotatedDataFrameFrom,character: no visible global function
      definition for ‘read.bsfiles’
    calculateMindist,list: no visible binding for global variable ‘elt’
    Undefined global functions or variables:
      RangedDataCBS RangedDataList elt read.bsfiles
    ```

*   checking contents of ‘data’ directory ... NOTE
    ```
    Output for data("trioSetListExample", package = "MinimumDistance"):
      No methods found in package ‘oligoClasses’ for request: ‘mean’ when loading ‘crlmm’
    ```

# mixOmics

<details>

* Version: 6.12.2
* GitHub: https://github.com/mixOmicsTeam/mixOmics
* Source code: https://github.com/cran/mixOmics
* Date/Publication: 2020-08-26
* Number of recursive dependencies: 95

Run `revdep_details(, "mixOmics")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      Performing repeated cross-validation...
      
        |                                                                            
        |                                                                      |   0%
        |                                                                            
        |=======================                                               |  33%
        |                                                                            
        |===============================================                       |  67%
        |                                                                            
        |======================================================================| 100%
      Performing repeated cross-validation...
      
        |                                                                            
        |                                                                      |   0%══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 101 | SKIPPED: 0 | WARNINGS: 2 | FAILED: 2 ]
      1. Error: network works for rcc (@test-network.R#13) 
      2. Error: network works for spls (@test-network.R#28) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 30-31 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        data   3.0Mb
        doc    5.9Mb
    ```

# mnem

<details>

* Version: 1.4.5
* GitHub: NA
* Source code: https://github.com/cran/mnem
* Date/Publication: 2020-09-08
* Number of recursive dependencies: 154

Run `revdep_details(, "mnem")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mnem.Rmd’ using rmarkdown
    Error: processing vignette 'mnem.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘mnem.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mnem.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘epiNEM’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    3.8Mb
        libs   2.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    createApp: no visible binding for global variable ‘..tmp’
    Undefined global functions or variables:
      ..tmp
    ```

# moc.gapbk

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/moc.gapbk
* Date/Publication: 2019-03-07 17:20:03 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "moc.gapbk")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    --------------------------------------------------------------------------
    [[50613,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    --------------------------------------------------------------------------
    [[50661,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    --------------------------------------------------------------------------
    [[51870,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    --------------------------------------------------------------------------
    --------------------------------------------------------------------------
    [[51932,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    --------------------------------------------------------------------------
    [[51748,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

*   checking dependencies in R code ... NOTE
    ```
    --------------------------------------------------------------------------
    [[50606,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    Namespaces in Imports field not imported from:
      ‘Rmisc’ ‘amap’ ‘fields’ ‘matrixStats’ ‘mco’ ‘miscTools’ ‘plyr’
      ‘reshape2’
      All declared Imports should be used.
    ```

*   checking foreign function calls ... NOTE
    ```
    --------------------------------------------------------------------------
    [[50686,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    --------------------------------------------------------------------------
    [[50437,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

*   checking Rd \usage sections ... NOTE
    ```
    --------------------------------------------------------------------------
    [[51734,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev1
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# MoEClust

<details>

* Version: 1.3.1
* GitHub: https://github.com/Keefe-Murphy/MoEClust
* Source code: https://github.com/cran/MoEClust
* Date/Publication: 2020-05-12 17:00:12 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "MoEClust")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MoEClust.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 44-46 (MoEClust.Rmd) 
    Error: processing vignette 'MoEClust.Rmd' failed with diagnostics:
    unused argument (type = "cairo")
    --- failed re-building ‘MoEClust.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MoEClust.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# monocle

<details>

* Version: 2.16.0
* GitHub: NA
* Source code: https://github.com/cran/monocle
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 241

Run `revdep_details(, "monocle")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘monocle-vignette.Rnw’ using knitr
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 58-59 (monocle-vignette.Rnw) 
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘monocle-vignette.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘monocle-vignette.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

# MOSim

<details>

* Version: 1.2.0
* GitHub: https://github.com/Neurergus/MOSim
* Source code: https://github.com/cran/MOSim
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 75

Run `revdep_details(, "MOSim")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MOSim.Rnw’ using knitr
    Quitting from lines 154-155 (MOSim.Rnw) 
    Error: processing vignette 'MOSim.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘MOSim.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MOSim.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

# motifbreakR

<details>

* Version: 2.2.0
* GitHub: https://github.com/Simon-Coetzee/motifbreakR
* Source code: https://github.com/cran/motifbreakR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 154

Run `revdep_details(, "motifbreakR")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'rs1006140' 'variants.from.file'
    Undocumented data sets:
      'rs1006140'
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'motifbreakR'
      ‘legacy.score’
    
    Undocumented arguments in documentation object 'scoreAllWindows'
      ‘snp.seq’ ‘snp.seq.rc’ ‘pwm’ ‘from’ ‘to’ ‘pwm.range’ ‘calcp’
    
    Undocumented arguments in documentation object 'snps.from.file'
      ‘indels’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'compiler' 'grImport'
      All declared Imports should be used.
    Package in Depends field not imported from: 'MotifDb'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    formatVcfOut: no visible binding for global variable 'search.genome'
    plotMotifLogoStack.2: no visible global function definition for 'par'
    preparePWM: no visible binding for global variable 'threshold'
    snps.from.file: no visible binding for global variable 'DNA_ALPHABET'
    wScore: no visible global function definition for 'scoreMotif'
    Undefined global functions or variables:
      DNA_ALPHABET par scoreMotif search.genome threshold
    Consider adding
      importFrom("graphics", "par")
    to your NAMESPACE file.
    ```

# mrfDepth

<details>

* Version: 1.0.13
* GitHub: https://github.com/PSegaert/mrfDepth
* Source code: https://github.com/cran/mrfDepth
* Date/Publication: 2020-08-26 16:10:33 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.8Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  18.7Mb
    ```

# MultiBD

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MultiBD
* Date/Publication: 2016-12-05 18:28:46
* Number of recursive dependencies: 71

Run `revdep_details(, "MultiBD")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error: processing vignette 'SIRtrans.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'SIRtrans.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.27 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘SIRtrans.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘SIR-MCMC.Rmd’ ‘SIRtrans.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        libs   7.9Mb
    ```

# muscat

<details>

* Version: 1.2.1
* GitHub: https://github.com/HelenaLC/muscat
* Source code: https://github.com/cran/muscat
* Date/Publication: 2020-06-10
* Number of recursive dependencies: 200

Run `revdep_details(, "muscat")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘analysis.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 44-46 (analysis.Rmd) 
    Error: processing vignette 'analysis.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘analysis.Rmd’
    
    --- re-building ‘simulation.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 55-62 (simulation.Rmd) 
    Error: processing vignette 'simulation.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘simulation.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘analysis.Rmd’ ‘simulation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    5.9Mb
    ```

# muscData

<details>

* Version: 1.2.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2020-05-07
* Number of recursive dependencies: 239

Run `revdep_details(, "muscData")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘Crowell19_4vs4’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘muscData.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 37-39 (muscData.Rmd) 
    Error: processing vignette 'muscData.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘muscData.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘muscData.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘SingleCellExperiment’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# NanoStringDiff

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 44

Run `revdep_details(, "NanoStringDiff")` for more info

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
      IQR abline glm lm median optim optimize p.adjust par pchisq poisson
      read.table rgamma rowVars rpois textxy title
    Consider adding
      importFrom("graphics", "abline", "par", "title")
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
    Error: processing vignette 'NanoStringDiff.Rnw' failed with diagnostics:
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
    --- failed re-building ‘NanoStringDiff.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘NanoStringDiff.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# NetLogoR

<details>

* Version: 0.3.7
* GitHub: https://github.com/PredictiveEcology/NetLogoR
* Source code: https://github.com/cran/NetLogoR
* Date/Publication: 2020-03-02 10:00:08 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "NetLogoR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
    ```

# NormalyzerDE

<details>

* Version: 1.6.0
* GitHub: https://github.com/ComputationalProteomics/NormalyzerDE
* Source code: https://github.com/cran/NormalyzerDE
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 147

Run `revdep_details(, "NormalyzerDE")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-21 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# omicplotR

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 75

Run `revdep_details(, "omicplotR")` for more info

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

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 117

Run `revdep_details(, "omicsPrint")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        data   7.4Mb
        doc    1.2Mb
    ```

# OptimalDesign

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/OptimalDesign
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 47

Run `revdep_details(, "OptimalDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'gurobi', 'slam'
    ```

# OUTRIDER

<details>

* Version: 1.6.0
* GitHub: https://github.com/gagneurlab/OUTRIDER
* Source code: https://github.com/cran/OUTRIDER
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 163

Run `revdep_details(, "OUTRIDER")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
     92:        312.80 124021.44    FALSE                0              0       5.5
     93:        829.59 144898.81    FALSE                0              0       5.5
     94:         65.67 102654.99    FALSE                0              0       5.5
     95:         51.78  64681.51    FALSE                0              0       5.5
     96:        176.16 153477.93    FALSE                0              0       5.5
     97:       1416.38 107837.16    FALSE                0              0       5.5
     98:         79.79 176300.28    FALSE                0              0       5.5
     99:        643.74 201805.85    FALSE                0              0       5.5
    100:       1076.47 244265.44    FALSE                0              0       5.5
         meanCorrected     theta aberrant AberrantBySample AberrantByGene padj_rank
    > 
    > plotAberrantPerSample(ods)
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 10 rows containing missing values (geom_bar).
    > plotVolcano(ods, 1)
    Warning in dev_fun(file = tempfile(), width = width %||% 640, height = height %||%  :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: plotVolcano -> ggplotly -> ggplotly.ggplot -> gg2list -> dev_fun
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      [1] "Evaluation loss: 0.588533311804322 for q=5"
      [1] "Thu Sep 24 16:35:11 2020: Initial PCA loss: 6.46616282459584"
      [1] "Thu Sep 24 16:35:14 2020: Iteration: 1 loss: 4.8154263846794"
      [1] "Thu Sep 24 16:35:16 2020: Iteration: 2 loss: 4.79016305976782"
      Time difference of 3.222826 secs
      [1] "Thu Sep 24 16:35:16 2020: 2 Final nb-AE loss: 4.79016305976782"
      ── 1. Error: plotting (@test_plotting.R#17)  ───────────────────────────────────
      unable to start device PNG
      Backtrace:
       1. testthat::expect_equal(...)
       4. OUTRIDER::plotVolcano(ods, 30)
       6. plotly:::ggplotly.ggplot(p, tooltip = "text")
       7. plotly::gg2list(...)
       8. grDevices:::dev_fun(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 81 | SKIPPED: 0 | WARNINGS: 2 | FAILED: 1 ]
      1. Error: plotting (@test_plotting.R#17) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘OUTRIDER.Rnw’ using knitr
    Quitting from lines 13-24 (OUTRIDER.Rnw) 
    Error: processing vignette 'OUTRIDER.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘OUTRIDER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘OUTRIDER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        libs   2.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotAberrantPerSample: no visible binding for global variable ‘y’
    plotAberrantPerSample: no visible binding for global variable ‘fill’
    plotSizeFactors: no visible binding for global variable ‘sizeFactor’
    Undefined global functions or variables:
      fill sizeFactor y
    ```

# pandaR

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 62

Run `revdep_details(, "pandaR")` for more info

</details>

## In both

*   checking package subdirectories ... WARNING
    ```
    Invalid citation information in ‘inst/CITATION’:
      Error in tools:::.parse_CITATION_file(file, meta$Encoding): non-ASCII input in a CITATION file without a declared encoding
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        data   9.0Mb
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      summary.panda
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'summary.panda':
      ‘summary.panda’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# PathoStat

<details>

* Version: 1.14.0
* GitHub: https://github.com/mani2012/PathoStat
* Source code: https://github.com/cran/PathoStat
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 185

Run `revdep_details(, "PathoStat")` for more info

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

* Version: 1.80.0
* GitHub: https://github.com/hredestig/pcamethods
* Source code: https://github.com/cran/pcaMethods
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 49

Run `revdep_details(, "pcaMethods")` for more info

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
    Package unavailable to check Rd xrefs: ‘ade4’
    ```

# PepsNMR

<details>

* Version: 1.6.1
* GitHub: https://github.com/ManonMartin/PepsNMR
* Source code: https://github.com/cran/PepsNMR
* Date/Publication: 2020-07-21
* Number of recursive dependencies: 69

Run `revdep_details(, "PepsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘PepsNMR_minimal_example.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 53-55 (PepsNMR_minimal_example.Rmd) 
    Error: processing vignette 'PepsNMR_minimal_example.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘PepsNMR_minimal_example.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘PepsNMR_minimal_example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# phosphonormalizer

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2020-05-07
* Number of recursive dependencies: 40

Run `revdep_details(, "phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

*   checking R code for possible problems ... NOTE
    ```
    normalizePhospho: no visible global function definition for ‘is’
    Undefined global functions or variables:
      is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# Pigengene

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 136

Run `revdep_details(, "Pigengene")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Title: Infers robust biological signatures from gene expression data
    > ### Aliases: Pigengene-package Pigengene
    > ### Keywords: package datasets documentation models
    > 
    > ### ** Examples
    > 
    > data(aml)
    > data(mds)
    > d1 <- rbind(aml,mds)
    > Labels <- c(rep("AML",nrow(aml)),rep("MDS",nrow(mds)))
    > names(Labels) <- rownames(d1)
    > p1 <- one.step.pigengene(Data=d1,saveDir='pigengene', bnNum=10, verbose=1,
    +    seed=1, Labels=Labels, toCompact=FALSE, doHeat=FALSE)
    Pigengene started analizing 366 samples using 1000 genes...
    Warning: executing %dopar% sequentially: no parallel backend registered
    Warning in png(filename = plotFile) :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: one.step.pigengene -> wgcna.one.step -> png
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Pigengene_inference.Rnw’ using knitr
    Quitting from lines 107-115 (Pigengene_inference.Rnw) 
    Error: processing vignette 'Pigengene_inference.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘Pigengene_inference.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘Pigengene_inference.Rnw’
    
    Error: Vignette re-building failed.
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
    
    combine.networks: no visible binding for global variable ‘netwok’
    Undefined global functions or variables:
      netwok
    ```

*   checking contents of ‘data’ directory ... NOTE
    ```
    Output for data("pigengene", package = "Pigengene"):
      
    ```

# pmp

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/pmp
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 96

Run `revdep_details(, "pmp")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      unable to open connection to X11 display ''
    Quitting from lines 32-38 (pmp_vignette_sbc_spectral_quality_assessment.Rmd) 
    Error: processing vignette 'pmp_vignette_sbc_spectral_quality_assessment.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘pmp_vignette_sbc_spectral_quality_assessment.Rmd’
    
    --- re-building ‘pmp_vignette_signal_batch_correction_mass_spectrometry.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 29-33 (pmp_vignette_signal_batch_correction_mass_spectrometry.Rmd) 
    Error: processing vignette 'pmp_vignette_signal_batch_correction_mass_spectrometry.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘pmp_vignette_signal_batch_correction_mass_spectrometry.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘pmp_vignette_peak_matrix_processing_for_metabolomics_datasets.Rmd’
      ‘pmp_vignette_sbc_spectral_quality_assessment.Rmd’
      ‘pmp_vignette_signal_batch_correction_mass_spectrometry.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    5.5Mb
    ```

# PrecisionTrialDrawer

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/PrecisionTrialDrawer
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 129

Run `revdep_details(, "PrecisionTrialDrawer")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘PrecisionTrialDrawer.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 30-31 (PrecisionTrialDrawer.Rmd) 
    Error: processing vignette 'PrecisionTrialDrawer.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘PrecisionTrialDrawer.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘PrecisionTrialDrawer.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘LowMACA’
    ```

# ProteoMM

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 95

Run `revdep_details(, "ProteoMM")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# PSCBS

<details>

* Version: 0.65.0
* GitHub: https://github.com/HenrikBengtsson/PSCBS
* Source code: https://github.com/cran/PSCBS
* Date/Publication: 2019-05-05 22:40:09 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "PSCBS")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
    ...
    +     aspectRatio = 0.35, {
    +         plotTracks(fit)
    +     })
    Warning in png("figures/PairedPSCBS,exData,chr01,CBS,tracks.png", width = 840,  :
      unable to open connection to X11 display ''
    
      When sourcing ‘CBS.R’:
    Error: unable to start device PNG
    Execution halted
    when running code in ‘PairedPSCBS.tex.rsp’
      ...
    > toPNG(fullname, tags = c(class(fit)[1], "tracks"), 
    +     aspectRatio = 0.6, {
    +         plotTracks(fit)
    +     })
    Warning in png("figures/PairedPSCBS,exData,chr01,PairedPSCBS,tracks.png",  :
      unable to open connection to X11 display ''
    
      When sourcing ‘PairedPSCBS.R’:
    Error: unable to start device PNG
    Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    9           1     5    1 1.99e+08 2.07e+08         2755    2.59          784
    10          1     6    1 2.07e+08 2.07e+08           14    3.87            9
    11          1     7    1 2.07e+08 2.47e+08        15581    2.64         4492
       tcnNbrOfHets  dhStart    dhEnd dhNbrOfLoci dhMean c1Mean c2Mean
    6             0       NA       NA          NA     NA     NA     NA
    7          3770 1.42e+08 1.86e+08        3770 0.0943  0.935   1.13
    8          1271 1.86e+08 1.99e+08        1271 0.2563  1.007   1.70
    9           784 1.99e+08 2.07e+08         784 0.2197  1.009   1.58
    10            9 2.07e+08 2.07e+08           9 0.2769  1.400   2.47
    11         4492 2.07e+08 2.47e+08        4492 0.2290  1.017   1.62
    Warning in png("figures/PairedPSCBS,exData,chr01,PairedPSCBS,tracks.png",  :
      unable to open connection to X11 display ''
    Error: processing vignette 'PairedPSCBS.tex.rsp' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘PairedPSCBS.tex.rsp’
    
    SUMMARY: processing the following files failed:
      ‘CBS.tex.rsp’ ‘PairedPSCBS.tex.rsp’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# QDNAseq

<details>

* Version: 1.24.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 70

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘QDNAseq.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘QDNAseq.Rnw’
      ...
    experimentData: use 'experimentData(object)'
    Annotation:  
    
    > png("rawprofile.png")
    Warning in png("rawprofile.png") :
      unable to open connection to X11 display ''
    
      When sourcing ‘QDNAseq.R’:
    Error: unable to start device PNG
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    Warning in png("rawprofile.png") :
      unable to open connection to X11 display ''
    
    Error: processing vignette 'QDNAseq.Rnw' failed with diagnostics:
     chunk 6 
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    
    --- failed re-building ‘QDNAseq.Rnw’
    
    Warning in file.remove(f) :
      cannot remove file '.nfs0000001e1ec38a74000000b2', reason 'Device or resource busy'
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# r2dRue

<details>

* Version: 1.0.4
* GitHub: NA
* Source code: https://github.com/cran/r2dRue
* Date/Publication: 2013-06-28 12:22:19
* Number of recursive dependencies: 4

Run `revdep_details(, "r2dRue")` for more info

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
      layout layout.show lines na.omit pf pt read.table readGDAL rect
      rowCounts rowMedians rowRanges rowSds rowVars setTxtProgressBar
      spplot title txtProgressBar write.table writeGDAL
    Consider adding
      importFrom("graphics", "abline", "axis.Date", "barplot", "boxplot",
                 "hist", "image", "layout", "layout.show", "lines", "rect",
                 "title")
      importFrom("stats", "cor", "density", "na.omit", "pf", "pt")
      importFrom("utils", "head", "read.table", "setTxtProgressBar",
                 "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# randomizationInference

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/randomizationInference
* Date/Publication: 2015-01-09 07:58:52
* Number of recursive dependencies: 2

Run `revdep_details(, "randomizationInference")` for more info

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
* GitHub: NA
* Source code: https://github.com/cran/regsem
* Date/Publication: 2020-02-19 12:00:03 UTC
* Number of recursive dependencies: 164

Run `revdep_details(, "regsem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# RJcluster

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/RJcluster
* Date/Publication: 2020-09-23 08:00:06 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "RJcluster")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘RJclust_Vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'RJclust_Vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/RJcluster/new/RJcluster.Rcheck/vign_test/RJcluster/vignettes/RJclust_Vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See RJclust_Vignette.log for more info.
    --- failed re-building ‘RJclust_Vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘RJclust_Vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘doParallel’ ‘parallel’
      All declared Imports should be used.
    ```

# RNAmodR

<details>

* Version: 1.2.3
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2020-08-30
* Number of recursive dependencies: 176

Run `revdep_details(, "RNAmodR")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    snapshotDate(): 2020-04-27
    see ?RNAmodR.Data and browseVignettes('RNAmodR.Data') for documentation
    downloading 1 resources
    retrieving 1 resource
    Warning: download failed
      web resource path: 'https://experimenthub.bioconductor.org/fetch/2552'
      local file path: '/scratch/henrik/RtmpJRLoyt/BiocFileCache/a7cb62ef9992_2552'
      reason: Internal Server Error (HTTP 500).
    Warning: bfcadd() failed; resource removed
      rid: BFC3
      fpath: 'https://experimenthub.bioconductor.org/fetch/2552'
      reason: download failed
    Warning: download failed
      hub path: 'https://experimenthub.bioconductor.org/fetch/2552'
      cache resource: 'EH2536 : 2552'
      reason: bfcadd() failed; see warnings()
    Error: failed to load resource
      name: EH2536
      title: RNAmodR.Data.example.man.gff3
      reason: 1 resources failed to download
    Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘RNAmodR.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-20 (RNAmodR.Rmd) 
    Error: processing vignette 'RNAmodR.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘RNAmodR.Rmd’
    
    --- re-building ‘RNAmodR.creation.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-20 (RNAmodR.creation.Rmd) 
    Error: processing vignette 'RNAmodR.creation.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘RNAmodR.creation.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘RNAmodR.Rmd’ ‘RNAmodR.creation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'BiocGenerics:::replaceSlots' 'Biostrings:::XString'
      'IRanges:::.valid.CompressedList' 'IRanges:::coerceToCompressedList'
      'S4Vectors:::.valid.DataFrame' 'S4Vectors:::labeledLine'
      'S4Vectors:::make_zero_col_DataFrame'
      'S4Vectors:::prepare_objects_to_bind'
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      '.get_inosine_score'
    ```

# RnBeads

<details>

* Version: 2.6.0
* GitHub: NA
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 245

Run `revdep_details(, "RnBeads")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      RUNIT TEST PROTOCOL -- Thu Sep 24 17:23:36 2020 
      *********************************************** 
      Number of test functions: 24 
      Number of errors: 1 
      Number of failures: 0 
      
       
      1 Test Suite : 
      RnBeads RUnit Tests - 24 test functions, 1 error, 0 failures
      ERROR in test_report_2: Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
        unable to start device PNG
      
      Test files with failing tests
      
         test_report_2.R 
           test_report_2 
      
      
      Error in BiocGenerics:::testPackage("RnBeads") : 
        unit tests failed for package RnBeads
      Execution halted
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

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   3.7Mb
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
      RGChannelSet Rd2HTML RefFreeEwasModel SNP Sample Segment Slide Target
      Term UcscTrack Value addSex as.profileCGH assayDataElement
      assayDataElementNames barcode browserSession bv calculateFDRs chrom
      clone close.ff combinedRank combinedRank.var comma covgMedian
      covgPercLow covgPercUp cv.glmnet daglad diffmeth diffmeth.p.adj.fdr
      diffmeth.p.val dinucleotideFrequency eps expectedCounts featureData
      featureData<- featureNames featureNames<- foreach geneCounts genome<-
      getCN getDoParWorkers getGreen getManifest getMeth getRed getSex
      getTable getUnmeth getVarCov glmnet grid.draw grid.newpage group
      group1 group2 i impute.knn is.subsegmentation k letterFrequency lme
      loadRegionDB log10FDR log10P mapToGenome mclapply mean.diff
      mean.quot.log2 melt mergeRegionDBs muted n.sites num.sites numSites
      numeric.names oddsRatios open.ff p.vals.t.na.adj pData percent_format
      phenoData phenoData<- plotAlphaDistributionOneChr
      plotFinalSegmentation plotTracks preprocessSWAN pvalues qvalue
      readMethylome readSNPTable refText reg.type region.size
      registerDoParallel relative.coord removeSNPs report runLOLA samples
      segmentPMDs segmentUMRsLMRs seqlengths seqlevels<- sigCategories
      sites2ignore size solve.QP stopCluster sva target texthere tsne type
      types ucscTableQuery universeCounts useMart v var.diff varFit
      varLabels x x2 xmlValue y y2 yint
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'RnBeads_Annotations.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'RnBeads_Annotations.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `vmargin.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    [english,american]{babel}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘RnBeads_Annotations.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘RnBeads.Rnw’ ‘RnBeads_Annotations.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# scDblFinder

<details>

* Version: 1.2.0
* GitHub: https://github.com/plger/scDblFinder
* Source code: https://github.com/cran/scDblFinder
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 115

Run `revdep_details(, "scDblFinder")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘scDblFinder.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-20 (scDblFinder.Rmd) 
    Error: processing vignette 'scDblFinder.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘scDblFinder.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘scDblFinder.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

# scmap

<details>

* Version: 1.10.0
* GitHub: https://github.com/hemberg-lab/scmap
* Source code: https://github.com/cran/scmap
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 86

Run `revdep_details(, "scmap")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘scmap.Rmd’ using rmarkdown
    Error: processing vignette 'scmap.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘scmap.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘scmap.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.1Mb
        libs   1.9Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Biobase’
      All declared Imports should be used.
    ```

# scone

<details>

* Version: 1.12.0
* GitHub: https://github.com/YosefLab/scone
* Source code: https://github.com/cran/scone
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 222

Run `revdep_details(, "scone")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘sconeTutorial.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-32 (sconeTutorial.Rmd) 
    Error: processing vignette 'sconeTutorial.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘sconeTutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘sconeTutorial.Rmd’
    
    Error: Vignette re-building failed.
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

# scPCA

<details>

* Version: 1.2.0
* GitHub: https://github.com/PhilBoileau/scPCA
* Source code: https://github.com/cran/scPCA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 179

Run `revdep_details(, "scPCA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘scpca_intro.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 17-18 (scpca_intro.Rmd) 
    Error: processing vignette 'scpca_intro.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘scpca_intro.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘scpca_intro.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# seeds

<details>

* Version: 0.9.1
* GitHub: https://github.com/Newmi1988/seeds
* Source code: https://github.com/cran/seeds
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 95

Run `revdep_details(, "seeds")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsbml’
    ```

# semtree

<details>

* Version: 0.9.14
* GitHub: NA
* Source code: https://github.com/cran/semtree
* Date/Publication: 2020-01-07 22:00:02 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "semtree")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘expm’ ‘matrixStats’ ‘matrixcalc’
      All declared Imports should be used.
    ```

# sesame

<details>

* Version: 1.6.0
* GitHub: https://github.com/zwdzwd/sesame
* Source code: https://github.com/cran/sesame
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 170

Run `revdep_details(, "sesame")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      Loading required package: AnnotationHub
      Loading required package: BiocFileCache
      Loading required package: dbplyr
      Loading sesameData.
      > 
      > test_check("sesame")
      ── 1. Error: RGChannelSetToSigSet gives correct results (@test_sesamize.R#16)  ─
      cannot load manifest package IlluminaHumanMethylation450kmanifest
      Backtrace:
       1. minfi::preprocessRaw(rgSet)
       2. minfi::getManifestInfo(rgSet, "locusNames")
       3. minfi::getProbeInfo(object, type = "I")
       5. minfi::getManifest(object)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 15 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: RGChannelSetToSigSet gives correct results (@test_sesamize.R#16) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Loading required package: IRanges
    
    Attaching package: 'IRanges'
    
    The following objects are masked from 'package:dplyr':
    
        collapse, desc, slice
    
    Loading required package: GenomeInfoDb
    Loading required package: wheatmap
    Loading required package: DNAcopy
    Loading required package: ggplot2
    Loading required package: scales
    --- finished re-building ‘sesame.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘QC.Rmd’ ‘minfi.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# Seurat

<details>

* Version: 3.2.1
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2020-09-07 10:20:15 UTC
* Number of recursive dependencies: 223

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      ── 4. Failure: SCTransform ncells param works (@test_preprocessing.R#316)  ─────
      as.numeric(colSums(GetAssayData(object = object[["SCT"]], slot = "counts"))[1]) not equal to 121.
      1/1 mismatches
      [1] 119 - 121 == -2
      
      ── 5. Failure: SCTransform ncells param works (@test_preprocessing.R#317)  ─────
      as.numeric(rowSums(GetAssayData(object = object[["SCT"]], slot = "counts"))[5]) not equal to 25.
      1/1 mismatches
      [1] 26 - 25 == 1
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 458 | SKIPPED: 0 | WARNINGS: 3 | FAILED: 5 ]
      1. Failure: SCTransform wrapper works as expected (@test_preprocessing.R#295) 
      2. Failure: SCTransform wrapper works as expected (@test_preprocessing.R#299) 
      3. Failure: SCTransform ncells param works (@test_preprocessing.R#312) 
      4. Failure: SCTransform ncells param works (@test_preprocessing.R#316) 
      5. Failure: SCTransform ncells param works (@test_preprocessing.R#317) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   9.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘loomR’
    ```

# SGP

<details>

* Version: 1.9-5.0
* GitHub: https://github.com/CenterForAssessment/SGP
* Source code: https://github.com/cran/SGP
* Date/Publication: 2020-01-30 22:40:09 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "SGP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   3.4Mb
    ```

# shinyMethyl

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 140

Run `revdep_details(, "shinyMethyl")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘shinyMethyl.Rnw’ using knitr
    Quitting from lines 60-63 (shinyMethyl.Rnw) 
    Error: processing vignette 'shinyMethyl.Rnw' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘shinyMethyl.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘shinyMethyl.Rnw’
    
    Error: Vignette re-building failed.
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
      mouse.click.indices palette par points prcomp rect write.csv
    Consider adding
      importFrom("grDevices", "palette")
      importFrom("graphics", "abline", "grid", "legend", "lines", "par",
                 "points", "rect")
      importFrom("stats", "complete.cases", "lm", "prcomp")
      importFrom("utils", "write.csv")
    to your NAMESPACE file.
    ```

# SIAMCAT

<details>

* Version: 1.8.1
* GitHub: NA
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2020-06-30
* Number of recursive dependencies: 111

Run `revdep_details(, "SIAMCAT")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘SIAMCAT_read-in.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 60-66 (SIAMCAT_read-in.Rmd) 
    Error: processing vignette 'SIAMCAT_read-in.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘SIAMCAT_read-in.Rmd’
    
    --- re-building ‘SIAMCAT_vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 49-53 (SIAMCAT_vignette.Rmd) 
    Error: processing vignette 'SIAMCAT_vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘SIAMCAT_vignette.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘SIAMCAT_holdout.Rmd’ ‘SIAMCAT_read-in.Rmd’ ‘SIAMCAT_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   2.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 10 marked UTF-8 strings
    ```

# SICtools

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 40

Run `revdep_details(, "SICtools")` for more info

</details>

## In both

*   checking whether package ‘SICtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      errmod.c:79:8: warning: self-comparison always evaluates to false [-Wtautological-compare]
      md5.c:155:26: warning: argument to ‘sizeof’ in ‘memset’ call is the same expression as the destination; did you mean to dereference it? [-Wsizeof-pointer-memaccess]
      Warning: replacing previous import ‘plyr::count’ by ‘matrixStats::count’ when loading ‘SICtools’
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
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

*   checking R code for possible problems ... NOTE
    ```
    .indelDiffFunc: no visible global function definition for ‘fisher.test’
    .indelDiffFunc: no visible global function definition for ‘dist’
    indelDiff: no visible global function definition for ‘read.delim’
    snpDiff : calcInfoRange : <anonymous>: no visible global function
      definition for ‘fisher.test’
    snpDiff : calcInfoRange : <anonymous>: no visible global function
      definition for ‘dist’
    Undefined global functions or variables:
      dist fisher.test read.delim
    Consider adding
      importFrom("stats", "dist", "fisher.test")
      importFrom("utils", "read.delim")
    to your NAMESPACE file.
    ```

# sindyr

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/sindyr
* Date/Publication: 2020-06-09 05:20:03 UTC
* Number of recursive dependencies: 23

Run `revdep_details(, "sindyr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘crqa’ ‘plot3D’
      All declared Imports should be used.
    ```

# Single.mTEC.Transcriptomes

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2020-05-07
* Number of recursive dependencies: 161

Run `revdep_details(, "Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mTECs.Rnw’ using knitr
    Warning in (function (filename = "Rplot%03d.png", width = 480, height = 480,  :
      unable to open connection to X11 display ''
    Quitting from lines 32-33 (mTECs.Rnw) 
    Error: processing vignette 'mTECs.Rnw' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘mTECs.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘mTECs.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 904.5Mb
      sub-directories of 1Mb or more:
        data  895.1Mb
        doc     9.3Mb
    ```

# singleCellTK

<details>

* Version: 1.8.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 257

Run `revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 58-61 (v01-Introduction_to_singleCellTK.Rmd) 
    Error: processing vignette 'v01-Introduction_to_singleCellTK.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘v01-Introduction_to_singleCellTK.Rmd’
    
    --- re-building ‘v02-Processing_and_Visualizing_Data_in_the_SingleCellTK.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 45-59 (v02-Processing_and_Visualizing_Data_in_the_SingleCellTK.Rmd) 
    Error: processing vignette 'v02-Processing_and_Visualizing_Data_in_the_SingleCellTK.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘v02-Processing_and_Visualizing_Data_in_the_SingleCellTK.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘v01-Introduction_to_singleCellTK.Rmd’
      ‘v02-Processing_and_Visualizing_Data_in_the_SingleCellTK.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data   1.0Mb
        doc    3.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘celda’ ‘shinyBS’ ‘shinythemes’
      All declared Imports should be used.
    Missing or unexported object: ‘SingleCellExperiment::isSpike’
    ```

# singscore

<details>

* Version: 1.8.0
* GitHub: https://github.com/DavisLaboratory/singscore
* Source code: https://github.com/cran/singscore
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 119

Run `revdep_details(, "singscore")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘singscore-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plotDispersion
    > ### Title: Plot the score v.s. despersion for all samples
    > ### Aliases: plotDispersion
    > 
    > ### ** Examples
    > 
    > ranked <- rankGenes(toy_expr_se)
    > scoredf <- simpleScore(ranked, upSet = toy_gs_up, downSet = toy_gs_dn)
    > plotDispersion(scoredf)
    > plotDispersion(scoredf, isInteractive = TRUE)
    Warning in dev_fun(file = tempfile(), width = width %||% 640, height = height %||%  :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: plotDispersion ... <Anonymous> -> ggplotly.ggplot -> gg2list -> dev_fun
    Execution halted
    ```

*   checking tests ...
    ```
    ...
       1. singscore::plotDispersion(scoredf, isInteractive = TRUE)
       3. plotly:::ggplotly.ggplot(p1)
       4. plotly::gg2list(...)
       5. grDevices:::dev_fun(...)
      
      ── 3. Error: projectScoreLandscape works for interactive plots (@test-projectSco
      unable to start device PNG
      Backtrace:
       1. singscore::projectScoreLandscape(...)
       3. plotly:::ggplotly.ggplot(p1)
       4. plotly::gg2list(...)
       5. grDevices:::dev_fun(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 123 | SKIPPED: 0 | WARNINGS: 25 | FAILED: 3 ]
      1. Error: plotDispersion interactive for single sigs (@test-plotDis.R#83) 
      2. Error: plotDispersion interactive for up/dn sigs (@test-plotDis.R#112) 
      3. Error: projectScoreLandscape works for interactive plots (@test-projectScoreLandscape.R#70) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘singscore.Rmd’ using rmarkdown
    Error: processing vignette 'singscore.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘singscore.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘singscore.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        data   1.9Mb
        doc    1.8Mb
    ```

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

* Version: 1.6.1
* GitHub: https://github.com/kstreet13/slingshot
* Source code: https://github.com/cran/slingshot
* Date/Publication: 2020-06-30
* Number of recursive dependencies: 218

Run `revdep_details(, "slingshot")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘conditionsVignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 18-22 (conditionsVignette.Rmd) 
    Error: processing vignette 'conditionsVignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘conditionsVignette.Rmd’
    
    --- re-building ‘vignette.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 19-29 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘vignette.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘conditionsVignette.Rmd’ ‘vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# sparseMatrixStats

<details>

* Version: 1.0.5
* GitHub: NA
* Source code: https://github.com/cran/sparseMatrixStats
* Date/Publication: 2020-05-24
* Number of recursive dependencies: 53

Run `revdep_details(, "sparseMatrixStats")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘sparseMatrixStats.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 13-17 (sparseMatrixStats.Rmd) 
    Error: processing vignette 'sparseMatrixStats.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘sparseMatrixStats.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘sparseMatrixStats.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# spathial

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/spathial
* Date/Publication: 2020-04-10 18:20:02 UTC
* Number of recursive dependencies: 29

Run `revdep_details(, "spathial")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘irlba’ ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# splatter

<details>

* Version: 1.12.0
* GitHub: https://github.com/Oshlack/splatter
* Source code: https://github.com/cran/splatter
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 222

Run `revdep_details(, "splatter")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    --- re-building ‘splat_params.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-19 (splat_params.Rmd) 
    Error: processing vignette 'splat_params.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘splat_params.Rmd’
    
    --- re-building ‘splatter.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-22 (splatter.Rmd) 
    Error: processing vignette 'splatter.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘splatter.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘splat_params.Rmd’ ‘splatter.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc   6.1Mb
    ```

# spqn

<details>

* Version: 1.0.0
* GitHub: https://github.com/hansenlab/spqn
* Source code: https://github.com/cran/spqn
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 80

Run `revdep_details(, "spqn")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘spqn.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 34-37 (spqn.Rmd) 
    Error: processing vignette 'spqn.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘spqn.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘spqn.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘BiocGenerics’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# SRGnet

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/SRGnet
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 100

Run `revdep_details(, "SRGnet")` for more info

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
    SRGnet: no visible binding for global variable
      ‘Differentially_expressed_genes’
    SRGnet: no visible binding for global variable ‘Transcriptomics’
    SRGnet: no visible binding for global variable ‘PLCRG’
    SRGnet: no visible global function definition for ‘ebPatterns’
    SRGnet: no visible global function definition for ‘par’
    SRGnet: no visible global function definition for ‘boxplot’
    SRGnet: no visible global function definition for ‘predict’
    SRGnet: no visible global function definition for ‘terrain.colors’
    SRGnet: no visible global function definition for ‘na.omit’
    SRGnet: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      Differentially_expressed_genes PLCRG Transcriptomics boxplot
      ebPatterns na.omit par predict terrain.colors write.table
    Consider adding
      importFrom("grDevices", "terrain.colors")
      importFrom("graphics", "boxplot", "par")
      importFrom("stats", "na.omit", "predict")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

# statar

<details>

* Version: 0.7.2
* GitHub: https://github.com/matthieugomez/statar
* Source code: https://github.com/cran/statar
* Date/Publication: 2020-07-27 17:50:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "statar")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# stm

<details>

* Version: 1.3.6
* GitHub: https://github.com/bstewart/stm
* Source code: https://github.com/cran/stm
* Date/Publication: 2020-09-18 13:50:02 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "stm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   2.5Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'stmVignette.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'stmVignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `ulem.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.57 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'stmVignette.Rnw'
    
    SUMMARY: processing the following file failed:
      'stmVignette.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# STROMA4

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 12

Run `revdep_details(, "STROMA4")` for more info

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
    Installing package into ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
    (as ‘lib’ is unspecified)
    
      When sourcing ‘STROMA4-vignette.R’:
    Error: trying to use CRAN without setting a mirror
    Execution halted
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘BiocManager’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘STROMA4-vignette.Rnw’ using Sweave
    Installing package into ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
    (as ‘lib’ is unspecified)
    
    Error: processing vignette 'STROMA4-vignette.Rnw' failed with diagnostics:
     chunk 1 
    Error in contrib.url(repos, type) : 
      trying to use CRAN without setting a mirror
    
    --- failed re-building ‘STROMA4-vignette.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘STROMA4-vignette.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# summarytools

<details>

* Version: 0.9.6
* GitHub: https://github.com/dcomtois/summarytools
* Source code: https://github.com/cran/summarytools
* Date/Publication: 2020-03-02 07:20:02 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "summarytools")` for more info

</details>

## In both

*   checking whether package ‘summarytools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/henrik/c4/repositories/matrixStats/revdep/checks/summarytools/new/summarytools.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Introduction.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    --- finished re-building ‘Introduction.Rmd’
    
    --- re-building ‘Recommendations-rmarkdown.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 150-151 (Recommendations-rmarkdown.Rmd) 
    Error: processing vignette 'Recommendations-rmarkdown.Rmd' failed with diagnostics:
    unable to start device PNG
    --- failed re-building ‘Recommendations-rmarkdown.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Recommendations-rmarkdown.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked UTF-8 strings
    ```

# SuperPCA

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/SuperPCA
* Date/Publication: 2020-03-04 11:10:02 UTC
* Number of recursive dependencies: 37

Run `revdep_details(, "SuperPCA")` for more info

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

* Version: 3.36.0
* GitHub: NA
* Source code: https://github.com/cran/sva
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 81

Run `revdep_details(, "sva")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'sva.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'sva.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.92 \def
             \mdhelvet{\fontfamily{phv}\selectfont\mdseries}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘sva.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘sva.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# TCA

<details>

* Version: 1.1.0
* GitHub: https://github.com/cozygene/TCA
* Source code: https://github.com/cran/TCA
* Date/Publication: 2019-11-16 17:10:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "TCA")` for more info

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

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/tenXplore
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 116

Run `revdep_details(, "tenXplore")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tenXplore.Rmd’ using rmarkdown
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available because the rmarkdown package is not available. Did you forget to add it to Suggests in DESCRIPTION? Please see https://github.com/yihui/knitr/issues/1864 for more information.
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 27-58 (tenXplore.Rmd) 
    Error: processing vignette 'tenXplore.Rmd' failed with diagnostics:
    could not find function "Biocpkg"
    --- failed re-building ‘tenXplore.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘tenXplore.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    apd: warning in dir(system.file("app", package = "tenXplore"), full =
      TRUE): partial argument match of 'full' to 'full.names'
    ```

# TOAST

<details>

* Version: 1.2.0
* GitHub: https://github.com/ziyili20/TOAST
* Source code: https://github.com/cran/TOAST
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 51

Run `revdep_details(, "TOAST")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘TOAST.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 123-127 (TOAST.Rmd) 
    Error: processing vignette 'TOAST.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘TOAST.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘TOAST.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# topGO

<details>

* Version: 2.40.0
* GitHub: NA
* Source code: https://github.com/cran/topGO
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 41

Run `revdep_details(, "topGO")` for more info

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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'topGO.Rnw' failed with diagnostics:
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
    --- failed re-building ‘topGO.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘topGO.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# treeHMM

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 10

Run `revdep_details(, "treeHMM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# VanillaICE

<details>

* Version: 1.50.0
* GitHub: NA
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 71

Run `revdep_details(, "VanillaICE")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R         1.2Mb
        extdata   2.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BSgenome.Hsapiens.UCSC.hg18’
      All declared Imports should be used.
    ```

# vasp

<details>

* Version: 1.0.0
* GitHub: https://github.com/yuhuihui2011/vasp
* Source code: https://github.com/cran/vasp
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 99

Run `revdep_details(, "vasp")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Huihui Yu <yuhuihui2011@foxmail.com> [aut, cre]
      Qian Du [aut, cre]
    ```

# wateRmelon

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 160

Run `revdep_details(, "wateRmelon")` for more info

</details>

## In both

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
      methylumiR n.sd preprocessRaw preprocessSWAN probeAnnotationsCategory
      projectName pval.detect<- pvals subsetByLoci unmethylated
      unmethylated<- warn
    ```

# XBSeq

<details>

* Version: 1.20.0
* GitHub: https://github.com/Liuy12/XBSeq
* Source code: https://github.com/cran/XBSeq
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 112

Run `revdep_details(, "XBSeq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘XBSeq.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 15-16 (XBSeq.Rmd) 
    Error: processing vignette 'XBSeq.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘XBSeq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘XBSeq.Rmd’
    
    Error: Vignette re-building failed.
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

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/yarn
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 154

Run `revdep_details(, "yarn")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘yarn.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'yarn.Rmd' failed with diagnostics:
    LaTeX failed to compile /home/henrik/c4/repositories/matrixStats/revdep/checks/yarn/new/yarn.Rcheck/vign_test/yarn/vignettes/yarn.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See yarn.log for more info.
    --- failed re-building ‘yarn.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘yarn.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# zinbwave

<details>

* Version: 1.10.0
* GitHub: https://github.com/drisso/zinbwave
* Source code: https://github.com/cran/zinbwave
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 191

Run `revdep_details(, "zinbwave")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘intro.Rmd’ using rmarkdown
    Warning in grDevices::png(f) :
      unable to open connection to X11 display ''
    Quitting from lines 23-25 (intro.Rmd) 
    Error: processing vignette 'intro.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘intro.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘intro.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

