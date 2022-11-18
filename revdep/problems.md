# abcrf

<details>

* Version: 1.9
* GitHub: NA
* Source code: https://github.com/cran/abcrf
* Date/Publication: 2022-08-09 15:30:19 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "abcrf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   5.2Mb
    ```

# AlpsNMR

<details>

* Version: 4.0.2
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2022-11-10
* Number of recursive dependencies: 169

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    Warning in has_utility("pdfcrop") :
      pdfcrop not installed or not in PATH
    sh: pdfcrop: command not found
    Warning in system2("pdfcrop", shQuote(c(x, x)), stdout = if (quiet) FALSE else "") :
      error in running command
    sh: pdfcrop: command not found
    Warning in system2("pdfcrop", shQuote(c(x, x)), stdout = if (quiet) FALSE else "") :
      error in running command
    ...
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig02-handling-metadata-and-annotations.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Vig01-introduction-to-alpsnmr.Rmd’
      ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’
      ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# AMARETTO

<details>

* Version: 1.13.0
* GitHub: NA
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2022-04-28
* Number of recursive dependencies: 156

Run `revdep_details(, "AMARETTO")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘AMARETTO-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: AMARETTO_Download
    > ### Title: AMARETTO_Download
    > ### Aliases: AMARETTO_Download
    > 
    > ### ** Examples
    > 
    > TargetDirectory <- file.path(getwd(),"Downloads/");dir.create(TargetDirectory)
    ...
    > DataSetDirectories <- AMARETTO_Download(CancerSite,TargetDirectory = TargetDirectory)
    Downloading Gene Expression and Copy Number Variation data for: CHOL
    
    This TCGA cancer site/type was not tested, continue at your own risk.
    
    Searching CNV data for:CHOL
    
    Error in urlData[, 2:dim(urlData)[2]] : subscript out of bounds
    Calls: AMARETTO_Download -> get_firehoseData
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘amaretto.Rmd’ using rmarkdown
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
      installed size is  5.2Mb
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
    AMARETTO_HTMLreport: no visible binding for global variable ‘ModuleNr’
    AMARETTO_HTMLreport: no visible binding for global variable ‘Weights’
    AMARETTO_HTMLreport: no visible binding for global variable
      ‘RegulatorIDs’
    AMARETTO_HTMLreport: no visible binding for global variable ‘TargetIDs’
    AMARETTO_HTMLreport: no visible binding for global variable ‘moduleNr’
    AMARETTO_HTMLreport: no visible binding for global variable ‘Testset’
    AMARETTO_HTMLreport: no visible binding for global variable ‘padj’
    AMARETTO_HTMLreport: no visible binding for global variable
      ‘n_Overlapping’
    ...
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

* Version: 1.20.0
* GitHub: https://github.com/valenlab/amplican
* Source code: https://github.com/cran/amplican
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 115

Run `revdep_details(, "amplican")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.3Mb
      sub-directories of 1Mb or more:
        doc   13.9Mb
        libs   1.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
* Number of recursive dependencies: 48

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

* Version: 3.28.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2022-11-01
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

# autonomics

<details>

* Version: 1.6.0
* GitHub: https://github.com/bhagwataditya/autonomics
* Source code: https://github.com/cran/autonomics
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 212

Run `revdep_details(, "autonomics")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘using_autonomics.Rmd’ using rmarkdown
    Error: processing vignette 'using_autonomics.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘using_autonomics.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘using_autonomics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' imports not declared from:
      ‘bit64’ ‘dplyr’
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'normimpute'
      ‘ref’ ‘pos’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
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
    un_int64: no visible global function definition for ‘where’
    Undefined global functions or variables:
      where
    ```

# bahc

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/bahc
* Date/Publication: 2020-09-21 16:40:02 UTC
* Number of recursive dependencies: 2

Run `revdep_details(, "bahc")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# BASiCS

<details>

* Version: 2.10.0
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 138

Run `revdep_details(, "BASiCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.5Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.4Mb
        libs  10.2Mb
    ```

# BatchQC

<details>

* Version: 1.26.0
* GitHub: https://github.com/mani2012/BatchQC
* Source code: https://github.com/cran/BatchQC
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 158

Run `revdep_details(, "BatchQC")` for more info

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
* GitHub: NA
* Source code: https://github.com/cran/baystability
* Date/Publication: 2018-03-13 15:55:34 UTC
* Number of recursive dependencies: 123

Run `revdep_details(, "baystability")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggfortify’ ‘ggplot2’ ‘matrixStats’ ‘reshape2’ ‘scales’
      All declared Imports should be used.
    ```

# bigPint

<details>

* Version: 1.14.0
* GitHub: https://github.com/lindsayrutter/bigPint
* Source code: https://github.com/cran/bigPint
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 171

Run `revdep_details(, "bigPint")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘bioconductor.Rmd’ using rmarkdown
    Error: processing vignette 'bioconductor.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘bioconductor.Rmd’
    
    --- re-building ‘manuscripts.Rmd’ using rmarkdown
    Error: processing vignette 'manuscripts.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    ...
    --- re-building ‘summarizedExperiment.Rmd’ using rmarkdown
    Error: processing vignette 'summarizedExperiment.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘summarizedExperiment.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘bioconductor.Rmd’ ‘manuscripts.Rmd’ ‘summarizedExperiment.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data             2.0Mb
        doc              2.3Mb
        shiny-examples   3.0Mb
    ```

# bingat

<details>

* Version: 1.3
* GitHub: NA
* Source code: https://github.com/cran/bingat
* Date/Publication: 2017-07-05 18:30:37 UTC
* Number of recursive dependencies: 32

Run `revdep_details(, "bingat")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genalg’
    ```

# BioNERO

<details>

* Version: 1.6.0
* GitHub: https://github.com/almeidasilvaf/BioNERO
* Source code: https://github.com/cran/BioNERO
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 180

Run `revdep_details(, "BioNERO")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        data   2.2Mb
        doc    4.3Mb
    ```

# biscuiteer

<details>

* Version: 1.12.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 218

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking whether package ‘biscuiteer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocParallel::bpstart’ by ‘QDNAseq::bpstart’ when loading ‘biscuiteer’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data      1.1Mb
        extdata   3.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘QDNAseq:::expectedVariance’
      See the note in ?`:::` about the use of this operator.
    ```

# BloodGen3Module

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/BloodGen3Module
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 171

Run `revdep_details(, "BloodGen3Module")` for more info

</details>

## In both

*   checking whether package ‘BloodGen3Module’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘SummarizedExperiment::rowRanges’ by ‘matrixStats::rowRanges’ when loading ‘BloodGen3Module’
      Warning: replacing previous import ‘SummarizedExperiment::start’ by ‘stats::start’ when loading ‘BloodGen3Module’
      Warning: replacing previous import ‘SummarizedExperiment::end’ by ‘stats::end’ when loading ‘BloodGen3Module’
      Warning: replacing previous import ‘matrixStats::rowRanges’ by ‘SummarizedExperiment::rowRanges’ when loading ‘BloodGen3Module’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/BloodGen3Module/new/BloodGen3Module.Rcheck/00install.out’ for details.
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# bnbc

<details>

* Version: 1.20.0
* GitHub: https://github.com/hansenlab/bnbc
* Source code: https://github.com/cran/bnbc
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 99

Run `revdep_details(, "bnbc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   2.4Mb
        libs   1.6Mb
    ```

# bnclassify

<details>

* Version: 0.4.6
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2021-10-29 23:10:05 UTC
* Number of recursive dependencies: 106

Run `revdep_details(, "bnclassify")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        libs  10.4Mb
    ```

# bnem

<details>

* Version: 1.6.0
* GitHub: https://github.com/MartinFXP/bnem
* Source code: https://github.com/cran/bnem
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 163

Run `revdep_details(, "bnem")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘runTests.R’
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage("bnem")
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘bnem.rmd’ using rmarkdown
    Error: processing vignette 'bnem.rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘bnem.rmd’
    
    SUMMARY: processing the following file failed:
      ‘bnem.rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rmarkdown’
      All declared Imports should be used.
    ```

# brms

<details>

* Version: 2.18.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2022-09-19 13:56:19 UTC
* Number of recursive dependencies: 175

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   3.6Mb
    ```

# BSgenome

<details>

* Version: 1.66.1
* GitHub: https://github.com/Bioconductor/BSgenome
* Source code: https://github.com/cran/BSgenome
* Date/Publication: 2022-11-03
* Number of recursive dependencies: 103

Run `revdep_details(, "BSgenome")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘BSgenome-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: SNPlocs-class
    > ### Title: SNPlocs objects
    > ### Aliases: class:SNPlocs SNPlocs-class SNPlocs class:ODLT_SNPlocs
    > ###   ODLT_SNPlocs-class ODLT_SNPlocs class:OldFashionSNPlocs
    > ###   OldFashionSNPlocs-class OldFashionSNPlocs provider,SNPlocs-method
    > ###   providerVersion,SNPlocs-method releaseDate,SNPlocs-method releaseName
    > ###   releaseName,SNPlocs-method referenceGenome
    ...
    > seqlevels(my_cds, pruning.mode="coarse") <- c("chr22", "chrM")
    > seqlevelsStyle(my_cds)  # UCSC
    [1] "UCSC"
    > seqlevelsStyle(snps)    # NCBI
    [1] "NCBI"
    > seqlevelsStyle(my_cds) <- seqlevelsStyle(snps)
    Error in find_NCBI_assembly_ftp_dir(assembly_accession, assembly_name = assembly_name) : 
      unable to find FTP dir for assembly GCF_000001405.39
    Calls: seqlevelsStyle<- ... .form_assembly_report_url -> find_NCBI_assembly_ftp_dir
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'export-methods.Rd':
      ‘[rtracklayer]{export}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘MaskedBSgenome’ ‘OnDiskLongTable’ ‘OnDiskLongTable_old’
      ‘as.data.frame.BSgenomeViews’ ‘batchsizes’ ‘blocksizes’ ‘breakpoints’
      ‘forgeMaskedBSgenomeDataPkg’
      ‘getBatchesByOverlapsFromOnDiskLongTable’
      ‘getBatchesBySeqnameFromOnDiskLongTable’
      ‘getBatchesFromOnDiskLongTable’ ‘getBatchesFromOnDiskLongTable_old’
      ‘getRowsByIdFromOnDiskLongTable’ ‘getRowsByIdFromOnDiskLongTable_old’
      ‘getRowsByIndexFromOnDiskLongTable_old’ ‘getRowsFromOnDiskLongTable’
      ‘rowids’ ‘saveAsOnDiskLongTable_old’
    ...
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

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics', 'S4Vectors', 'IRanges', 'GenomeInfoDb',
      'GenomicRanges', 'Biostrings', 'rtracklayer'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file path:
      BSgenome/inst/extdata/GentlemanLab/BSgenome.Gmellonella.NCBI.ASM364042v2-tools/fasta_to_sorted_2bit.R
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        extdata   5.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘methods’ ‘BiocGenerics’ ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘Biostrings’ ‘rtracklayer’
    A package should be listed in only one of these fields.
    ```

*   checking package subdirectories ... NOTE
    ```
    Found the following CITATION file in a non-standard place:
      inst/extdata/GentlemanLab/BSgenome.Creinhardtii.JGI.v5.6-tools/CITATION
    Most likely ‘inst/CITATION’ should be used instead.
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' calls which should be '::':
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘Biostrings:::toSeqSnippet’ ‘rtracklayer:::.DNAString_to_twoBit’
      ‘rtracklayer:::.TwoBits_export’ ‘rtracklayer:::checkArgFormat’
      ‘rtracklayer:::twoBitPath’
      See the note in ?`:::` about the use of this operator.
    ```

# BSW

<details>

* Version: 0.1.1
* GitHub: https://github.com/adam-bec/BSW
* Source code: https://github.com/cran/BSW
* Date/Publication: 2021-03-22 16:20:09 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "BSW")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# bulkAnalyseR

<details>

* Version: 1.0.0
* GitHub: https://github.com/Core-Bioinformatics/bulkAnalyseR
* Source code: https://github.com/cran/bulkAnalyseR
* Date/Publication: 2022-04-07 10:12:29 UTC
* Number of recursive dependencies: 185

Run `revdep_details(, "bulkAnalyseR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc       2.3Mb
        extdata   3.4Mb
    ```

# bumphunter

<details>

* Version: 1.40.0
* GitHub: https://github.com/rafalab/bumphunter
* Source code: https://github.com/cran/bumphunter
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 113

Run `revdep_details(, "bumphunter")` for more info

</details>

## In both

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

* Version: 3.3
* GitHub: https://github.com/duncanplee/CARBayesST
* Source code: https://github.com/cran/CARBayesST
* Date/Publication: 2022-05-12 16:30:05 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "CARBayesST")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘CARBayesST.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘CARBayesST.Rnw’
      ...
    5 261248.4 670928.0 0.4294583
    6 253764.4 670982.6 0.4128424
    
    > GGHB.IZ <- st_transform(x = GGHB.IZ, crs = "+proj=longlat +datum=WGS84 +no_defs")
    Warning in CPL_transform(x, crs, aoi, pipeline, reverse, desired_accuracy,  :
      GDAL Error 1: No PROJ.4 translation for source SRS, coordinate transformation initialization has failed.
    
      When sourcing ‘CARBayesST.R’:
    Error: OGRCreateCoordinateTransformation(): transformation not available
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        libs   9.2Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘CARBayesST.Rnw’ using Sweave
    Linking to GEOS 3.9.1, GDAL 2.4.4, PROJ 4.9.3; sf_use_s2() is TRUE
    
    Attaching package: ‘dplyr’
    
    The following objects are masked from ‘package:stats’:
    
        filter, lag
    
    ...
    Error in CPL_transform(x, crs, aoi, pipeline, reverse, desired_accuracy,  : 
      OGRCreateCoordinateTransformation(): transformation not available
    
    --- failed re-building ‘CARBayesST.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘CARBayesST.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cardelino

<details>

* Version: 1.0.0
* GitHub: https://github.com/single-cell-genetics/cardelino
* Source code: https://github.com/cran/cardelino
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 157

Run `revdep_details(, "cardelino")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doMC’
    ```

# CATALYST

<details>

* Version: 1.22.0
* GitHub: https://github.com/HelenaLC/CATALYST
* Source code: https://github.com/cran/CATALYST
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 211

Run `revdep_details(, "CATALYST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc   10.0Mb
    ```

# causalOT

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/causalOT
* Date/Publication: 2022-09-04 14:30:12 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "causalOT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 36.0Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        libs  34.2Mb
    ```

# ccdf

<details>

* Version: 1.1.4
* GitHub: https://github.com/mgauth/ccdf
* Source code: https://github.com/cran/ccdf
* Date/Publication: 2021-09-24 08:00:05 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "ccdf")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘statmod’
      All declared Imports should be used.
    ```

# ccImpute

<details>

* Version: 1.0.0
* GitHub: https://github.com/khazum/ccImpute
* Source code: https://github.com/cran/ccImpute
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 187

Run `revdep_details(, "ccImpute")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        libs   7.5Mb
    ```

# celda

<details>

* Version: 1.14.0
* GitHub: https://github.com/campbio/celda
* Source code: https://github.com/cran/celda
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 378

Run `revdep_details(, "celda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        doc    3.2Mb
        libs   7.3Mb
    ```

# CelliD

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/CelliD
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 273

Run `revdep_details(, "CelliD")` for more info

</details>

## In both

*   checking whether package ‘CelliD’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘data.table::shift’ by ‘tictoc::shift’ when loading ‘CelliD’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/CelliD/new/CelliD.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc    3.2Mb
        libs   3.4Mb
    ```

# cellWise

<details>

* Version: 2.4.0
* GitHub: NA
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2022-08-10 15:30:16 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "cellWise")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GSE’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    2.3Mb
        libs  14.1Mb
    ```

# CEMiTool

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 198

Run `revdep_details(, "CEMiTool")` for more info

</details>

## In both

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
    flip_vector: no visible global function definition for ‘setNames’
    select_genes: no visible global function definition for ‘var’
    get_hubs,CEMiTool : <anonymous>: no visible global function definition
      for ‘head’
    get_merged_mods,CEMiTool: no visible global function definition for
      ‘as.dist’
    get_mods,CEMiTool: no visible global function definition for ‘as.dist’
    get_phi,CEMiTool: no visible global function definition for ‘tail’
    get_phi,CEMiTool: no visible global function definition for ‘head’
    mod_gene_num,CEMiTool: no visible binding for global variable ‘modules’
    ...
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

* Version: 2.28.0
* GitHub: NA
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 245

Run `revdep_details(, "ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'dmrcate(myannotation, ': unused argument (mc.cores = cores) 
      Warning: replacing previous import 'plyr::summarise' by 'plotly::summarise' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::rename' by 'plotly::rename' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::arrange' by 'plotly::arrange' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::mutate' by 'plotly::mutate' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::is.discrete' by 'Hmisc::is.discrete' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::summarize' by 'Hmisc::summarize' when loading 'ChAMP'
      Warning: replacing previous import 'plotly::subplot' by 'Hmisc::subplot' when loading 'ChAMP'
      Warning: replacing previous import 'GenomicRanges::sort' by 'globaltest::sort' when loading 'ChAMP'
      Warning: replacing previous import 'plotly::last_plot' by 'ggplot2::last_plot' when loading 'ChAMP'
      Warning: replacing previous import 'globaltest::model.matrix' by 'stats::model.matrix' when loading 'ChAMP'
      Warning: replacing previous import 'globaltest::p.adjust' by 'stats::p.adjust' when loading 'ChAMP'
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out’ for details.
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

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'DMRcate', 'Illumina450ProbeVariants.db',
      'IlluminaHumanMethylationEPICmanifest', 'DT', 'RPMM'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
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
    champ.ebGSEA : gseaWTfn: no visible global function definition for
      'wilcox.test'
    champ.ebGSEA: no visible global function definition for 'stopCluster'
    champ.norm: no visible global function definition for 'stopCluster'
    champ.process: no visible global function definition for 'champ.EpiMod'
    Undefined global functions or variables:
      champ.EpiMod stopCluster wilcox.test
    Consider adding
      importFrom("stats", "wilcox.test")
    to your NAMESPACE file.
    ```

# ChIPpeakAnno

<details>

* Version: 3.32.0
* GitHub: NA
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 228

Run `revdep_details(, "ChIPpeakAnno")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ChIPpeakAnno-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: findEnhancers
    > ### Title: Find possible enhancers depend on DNA interaction data
    > ### Aliases: findEnhancers
    > ### Keywords: misc
    > 
    > ### ** Examples
    > 
    ...
    
     Try to keep the seqname style consistent.
    
     Try to keep the seqname style consistent.
    >   data("myPeakList")
    >   findEnhancers(myPeakList[500:1000], annoData, DNAinteractiveData)
    Error in findEnhancers(myPeakList[500:1000], annoData, DNAinteractiveData) : 
      length(intersect(seqlevelsStyle(peaks), seqlevelsStyle(annoData))) >  .... is not TRUE
    Calls: findEnhancers -> stopifnot
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘runTests.R’
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
      > require("TxDb.Hsapiens.UCSC.hg38.knownGene") || stop("unable to load TxDb.Hsapiens.UCSC.hg38.knownGene")
      Loading required package: TxDb.Hsapiens.UCSC.hg38.knownGene
      [1] TRUE
      > require("biomaRt") || stop("unable to load biomaRt")
      Loading required package: biomaRt
      [1] TRUE
    ...
        6.     └─BSgenome (local) .local(x, ...)
        7.       └─BSgenome:::.extractFromBSgenomeMultipleSequences(...)
        8.         ├─BiocGenerics::lapply(...)
        9.         └─base::lapply(...)
       10.           └─BSgenome (local) FUN(X[[i]], ...)
       11.             └─BSgenome:::.getOneSeqFromBSgenomeMultipleSequences(...)
      
      [ FAIL 1 | WARN 2 | SKIP 6 | PASS 312 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘ChIPpeakAnno.Rmd’ using rmarkdown
    duplicated or NA names found. Rename all the names by numbers.
    If you are importing files downloaded from ensembl,
              it will be better to import the files into a TxDb object,
              and then convert to GRanges by toGRanges. Here is the sample code:
              library(GenomicFeatures)
              txdb <- makeTxDbFromGFF('/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/ChIPpeakAnno/extdata/GFF_peaks.gff')
              anno <- toGRanges(txdb, format='gene')
    duplicated or NA names found. 
    ...
    Quitting from lines 65-72 (quickStart.Rmd) 
    Error: processing vignette 'quickStart.Rmd' failed with diagnostics:
    'length.out' must be a non-negative number
    --- failed re-building ‘quickStart.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘pipeline.Rmd’ ‘quickStart.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 24.9Mb
      sub-directories of 1Mb or more:
        data     12.6Mb
        doc       5.9Mb
        extdata   5.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    oligoFrequency : <anonymous>: no visible global function definition for
      'oligonucleotideFrequency'
    Undefined global functions or variables:
      oligonucleotideFrequency
    ```

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 49

Run `revdep_details(, "cifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cliqueMS

<details>

* Version: 1.12.0
* GitHub: https://github.com/osenan/cliqueMS
* Source code: https://github.com/cran/cliqueMS
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 146

Run `revdep_details(, "cliqueMS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        libs   7.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MSnbase’
      All declared Imports should be used.
    ```

# clusterExperiment

<details>

* Version: 2.18.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 181

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
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
      installed size is 18.1Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        data   3.6Mb
        doc   10.4Mb
        libs   2.3Mb
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
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# clustifyr

<details>

* Version: 1.10.0
* GitHub: https://github.com/rnabioco/clustifyr
* Source code: https://github.com/cran/clustifyr
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 202

Run `revdep_details(, "clustifyr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.1Mb
        doc    1.5Mb
        help   1.1Mb
    ```

# cmapR

<details>

* Version: 1.10.0
* GitHub: https://github.com/cmap/cmapR
* Source code: https://github.com/cran/cmapR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 78

Run `revdep_details(, "cmapR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘tutorial.Rmd’ using rmarkdown
    trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/BiocVersion_3.16.0.tar.gz'
    Content type 'application/x-gzip' length 965 bytes
    ==================================================
    downloaded 965 bytes
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
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data      2.3Mb
        extdata   2.1Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocManager’
    'library' or 'require' calls not declared from:
      ‘BiocManager’ ‘ggplot2’
    ```

# cna

<details>

* Version: 3.4.0
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2022-07-08 12:00:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "cna")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘cna.Rnw’ using Sweave
    Registered S3 method overwritten by 'cna':
      method          from
      some.data.frame car 
    Error: processing vignette 'cna.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'cna.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `nicefrac.sty' not found.
    
    ...
    l.12 \usepackage
                    {float}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'cna.Rnw'
    
    SUMMARY: processing the following file failed:
      'cna.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# CNVScope

<details>

* Version: 3.7.2
* GitHub: https://github.com/jamesdalg/CNVScope
* Source code: https://github.com/cran/CNVScope
* Date/Publication: 2022-03-30 23:40:08 UTC
* Number of recursive dependencies: 201

Run `revdep_details(, "CNVScope")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc       3.2Mb
        extdata   1.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'Hmisc'
      All declared Imports should be used.
    ```

# coin

<details>

* Version: 1.4-2
* GitHub: NA
* Source code: https://github.com/cran/coin
* Date/Publication: 2021-10-08 08:40:15 UTC
* Number of recursive dependencies: 20

Run `revdep_details(, "coin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Implementation.Rnw’ using Sweave
    Loading required package: survival
    Loading required package: grid
    --- finished re-building ‘Implementation.Rnw’
    
    --- re-building ‘LegoCondInf.Rnw’ using Sweave
    Error: processing vignette 'LegoCondInf.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'LegoCondInf.tex' failed.
    LaTeX errors:
    ...
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

* Version: 2.4.0
* GitHub: https://github.com/jokergoo/cola
* Source code: https://github.com/cran/cola
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 244

Run `revdep_details(, "cola")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data      3.5Mb
        extdata   1.0Mb
        libs      2.2Mb
    ```

# compcodeR

<details>

* Version: 1.34.0
* GitHub: https://github.com/csoneson/compcodeR
* Source code: https://github.com/cran/compcodeR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 192

Run `revdep_details(, "compcodeR")` for more info

</details>

## In both

*   checking whether package ‘compcodeR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/compcodeR/new/compcodeR.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'rpanel', 'DSS'
    ```

# ComplexHeatmap

<details>

* Version: 2.14.0
* GitHub: https://github.com/jokergoo/ComplexHeatmap
* Source code: https://github.com/cran/ComplexHeatmap
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 112

Run `revdep_details(, "ComplexHeatmap")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘magick’
    ```

# conclus

<details>

* Version: 1.5.0
* GitHub: NA
* Source code: https://github.com/cran/conclus
* Date/Publication: 2022-08-24
* Number of recursive dependencies: 264

Run `revdep_details(, "conclus")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Namespace dependency missing from DESCRIPTION Imports/Depends entries: ‘DT’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# condiments

<details>

* Version: 1.6.0
* GitHub: https://github.com/HectorRDB/condiments
* Source code: https://github.com/cran/condiments
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 218

Run `revdep_details(, "condiments")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    .condition_sling: no visible binding for global variable ‘.’
    .condition_sling : <anonymous>: no visible binding for global variable
      ‘.’
    .distinct_inputs: no visible binding for global variable ‘Samples’
    .distinct_inputs: no visible binding for global variable ‘.’
    .fateSelectionTest: no visible binding for global variable ‘pair’
    .fateSelectionTest: no visible binding for global variable ‘statistic’
    .fateSelectionTest: no visible binding for global variable ‘p.value’
    .multiple_samples: no visible binding for global variable ‘p.value’
    .progressionTest: no visible binding for global variable ‘lineage’
    ...
    .progressionTest: no visible binding for global variable ‘statistic’
    .progressionTest: no visible binding for global variable ‘p.value’
    .topologyTest_multipleSamples: no visible binding for global variable
      ‘p.value’
    fateSelectionTest_multipleSamples,SlingshotDataSet: no visible binding
      for global variable ‘condition’
    progressionTest_multipleSamples,SlingshotDataSet: no visible binding
      for global variable ‘condition’
    Undefined global functions or variables:
      . Samples condition lineage p.value pair statistic
    ```

# conquer

<details>

* Version: 1.3.1
* GitHub: https://github.com/XiaoouPan/conquer
* Source code: https://github.com/cran/conquer
* Date/Publication: 2022-09-13 07:30:07 UTC
* Number of recursive dependencies: 5

Run `revdep_details(, "conquer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.9Mb
      sub-directories of 1Mb or more:
        libs  22.7Mb
    ```

# CopywriteR

<details>

* Version: 2.29.0
* GitHub: https://github.com/PeeperLab/CopywriteR
* Source code: https://github.com/cran/CopywriteR
* Date/Publication: 2022-04-28
* Number of recursive dependencies: 76

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

*   checking R code for possible problems ... NOTE
    ```
    .peakCutoff: no visible global function definition for ‘dpois’
    .peakCutoff: no visible global function definition for ‘ppois’
    .tng: no visible global function definition for ‘png’
    .tng: no visible global function definition for ‘par’
    .tng: no visible global function definition for ‘dev.off’
    .tng: no visible global function definition for ‘loess’
    .tng: no visible global function definition for ‘predict’
    .tng: no visible global function definition for ‘points’
    .tng: no visible global function definition for ‘rgb’
    .tng: no visible global function definition for ‘lines’
    ...
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
    Error(s) in re-building vignettes:
    --- re-building ‘CopywriteR.Rnw’ using Sweave
    Loading required package: BiocParallel
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      pseudoinverse used at 0.979
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      neighborhood radius 0.001
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      reciprocal condition number  0
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
    ...
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
* Number of recursive dependencies: 74

Run `revdep_details(, "corrcoverage")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        extdata   3.8Mb
        libs      1.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# crlmm

<details>

* Version: 1.56.0
* GitHub: NA
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 59

Run `revdep_details(, "crlmm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
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

* Version: 1.24.0
* GitHub: https://github.com/alexvpickering/crossmeta
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 157

Run `revdep_details(, "crossmeta")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Illumina samples matched by pdata column.
      Illumina samples matched by pdata column.
      Illumina samples matched by pdata column.
      Illumina samples matched by pdata column.
      Array 1 corrected
      Array 2 corrected
    ...
          ▆
       1. └─crossmeta::diff_expr(...) at test-two-channel.R:60:2
       2.   └─crossmeta::run_limma(eset, annot, svobj, numsv)
       3.     └─crossmeta:::fit_lm(...)
       4.       └─crossmeta:::run_lmfit(eset, mod, rna_seq)
       5.         └─limma::intraspotCorrelation(MA, mod)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
      Error: Test failures
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘XML’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘GeneMeta’
    ```

# cSEM

<details>

* Version: 0.4.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2021-04-19 22:00:18 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# cytomapper

<details>

* Version: 1.10.0
* GitHub: https://github.com/BodenmillerGroup/cytomapper
* Source code: https://github.com/cran/cytomapper
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 170

Run `revdep_details(, "cytomapper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   4.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CATALYST’
    ```

# DCEtool

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/DCEtool
* Date/Publication: 2022-04-14 22:22:34 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "DCEtool")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘bslib’ ‘knitr’ ‘matrixStats’ ‘rmarkdown’ ‘shinythemes’ ‘tidyverse’
      All declared Imports should be used.
    ```

# decompr

<details>

* Version: 6.4.0
* GitHub: https://github.com/bquast/decompr
* Source code: https://github.com/cran/decompr
* Date/Publication: 2022-06-19 09:50:02 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "decompr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gvc’
    ```

# DeepBlueR

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 159

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DelayedMatrixStats

<details>

* Version: 1.20.0
* GitHub: https://github.com/PeteHaitch/DelayedMatrixStats
* Source code: https://github.com/cran/DelayedMatrixStats
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 76

Run `revdep_details(, "DelayedMatrixStats")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test_row_and_col_functions.R:72'): Non-NULL rows and cols ─────────
      c(R3 = 18, R2 = 18) not equal to c(18, 18).
      names for target but not for current
      Backtrace:
          ▆
       1. └─base::Map(expect_equal, observeds, expecteds, check.attributes = check.attributes) at test_row_and_col_functions.R:72:4
    ...
      names for target but not for current
      Backtrace:
          ▆
       1. └─base::Map(expect_equal, observeds, expecteds, check.attributes = check.attributes) at test_row_and_col_functions.R:72:4
       2.   └─base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
       3.     └─testthat (local) `<fn>`(dots[[1L]][[26L]], dots[[2L]][[2L]], check.attributes = dots[[3L]][[26L]])
      
      [ FAIL 3369 | WARN 0 | SKIP 0 | PASS 11363 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Missing object imported by a ':::' call: ‘DelayedArray:::.reduce_array_dimensions’
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’ ‘DelayedArray:::RleArraySeed’
      ‘DelayedArray:::get_Nindex_lengths’ ‘DelayedArray:::set_dim’
      ‘DelayedArray:::set_dimnames’ ‘DelayedArray:::subset_by_Nindex’
      ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DeMixT

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 132

Run `revdep_details(, "DeMixT")` for more info

</details>

## In both

*   checking whether package ‘DeMixT’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ggplot2::alpha’ by ‘psych::alpha’ when loading ‘DeMixT’
      Warning: replacing previous import ‘SummarizedExperiment::distance’ by ‘psych::distance’ when loading ‘DeMixT’
      Warning: replacing previous import ‘ggplot2::%+%’ by ‘psych::%+%’ when loading ‘DeMixT’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/DeMixT/new/DeMixT.Rcheck/00install.out’ for details.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'detect_suspicious_sample_by_hierarchical_clustering_2comp'
      ‘labels’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'parallel', 'Rcpp', 'SummarizedExperiment', 'knitr', 'KernSmooth',
      'matrixcalc', 'rmarkdown', 'DSS', 'dendextend', 'psych', 'sva'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        libs   3.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    DeMixT_GS: no visible global function definition for ‘qchisq’
    DeMixT_preprocessing: no visible global function definition for
      ‘quantile_normalization’
    detect_suspicious_sample_by_hierarchical_clustering_2comp :
      <anonymous>: no visible global function definition for ‘wilcox.test’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
      global function definition for ‘prcomp’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
      global function definition for ‘dist’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
    ...
    Undefined global functions or variables:
      DataFrame SimpleList abline as.dendrogram dist hclust legend median
      par points prcomp qchisq quantile_normalization rainbow segments
      wilcox.test
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "legend", "par", "points", "segments")
      importFrom("stats", "as.dendrogram", "dist", "hclust", "median",
                 "prcomp", "qchisq", "wilcox.test")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘calibrate’
    ```

# DepecheR

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 115

Run `revdep_details(, "DepecheR")` for more info

</details>

## In both

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

# DepInfeR

<details>

* Version: 1.2.0
* GitHub: https://github.com/Huber-group-EMBL/DepInfeR
* Source code: https://github.com/cran/DepInfeR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 95

Run `revdep_details(, "DepInfeR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘vignette.Rmd’ using rmarkdown
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# DEqMS

<details>

* Version: 1.16.0
* GitHub: https://github.com/yafeng/DEqMS
* Source code: https://github.com/cran/DEqMS
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 116

Run `revdep_details(, "DEqMS")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# detrendr

<details>

* Version: 0.6.14
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2021-05-16 05:00:05 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.0Mb
      sub-directories of 1Mb or more:
        libs   8.9Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DHS.rates

<details>

* Version: 0.9.1
* GitHub: NA
* Source code: https://github.com/cran/DHS.rates
* Date/Publication: 2021-12-09 19:00:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "DHS.rates")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# diffUTR

<details>

* Version: 1.6.0
* GitHub: https://github.com/ETHZ-INS/diffUTR
* Source code: https://github.com/cran/diffUTR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 146

Run `revdep_details(, "diffUTR")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    deuBinPlot: no visible binding for global variable 'x_start'
    deuBinPlot: no visible binding for global variable 'x_end'
    deuBinPlot: no visible binding for global variable 'y_start'
    deuBinPlot: no visible binding for global variable 'y_end'
    plotTopGenes: no visible binding for global variable 'sizeScore'
    plotTopGenes: no visible binding for global variable 'q.value'
    plotTopGenes: no visible binding for global variable 'density.ratio'
    plotTopGenes: no visible binding for global variable 'geneMeanDensity'
    plotTopGenes: no visible binding for global variable 'w.abs.coef'
    plotTopGenes: no visible binding for global variable 'tmp'
    plotTopGenes: no visible binding for global variable 'name'
    Undefined global functions or variables:
      density.ratio geneMeanDensity name q.value sizeScore tmp w.abs.coef
      x_end x_start y_end y_start
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘ggbio’
    ```

# Dino

<details>

* Version: 1.4.0
* GitHub: https://github.com/JBrownBiostat/Dino
* Source code: https://github.com/cran/Dino
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 241

Run `revdep_details(, "Dino")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    checkCounts: no visible global function definition for ‘as’
    Undefined global functions or variables:
      as
    Consider adding
      importFrom("methods", "as")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# disbayes

<details>

* Version: 1.0.0
* GitHub: https://github.com/chjackson/disbayes
* Source code: https://github.com/cran/disbayes
* Date/Publication: 2022-08-22 09:50:02 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "disbayes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘disbayes.Rmd’ using rmarkdown
    code for methods in class "Rcpp_model_base" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_model_base" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_stan_fit" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_stan_fit" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_rstantools_model_disbayes" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_rstantools_model_disbayes" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_rstantools_model_disbayes_hier" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    code for methods in class "Rcpp_rstantools_model_disbayes_hier" was not checked for suspicious field assignments (recommended package 'codetools' not available?)
    ...
    Quitting from lines 254-259 (disbayes.Rmd) 
    Error: processing vignette 'disbayes.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘disbayes.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘disbayes.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 81.5Mb
      sub-directories of 1Mb or more:
        libs  80.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DiscoRhythm

<details>

* Version: 1.14.0
* GitHub: https://github.com/matthewcarlucci/DiscoRhythm
* Source code: https://github.com/cran/DiscoRhythm
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 157

Run `revdep_details(, "DiscoRhythm")` for more info

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
    discoApp: no visible binding for global variable ‘.discorhythm_local’
    discoBatch: no visible binding for global variable ‘discoODAres’
    Undefined global functions or variables:
      .discorhythm_local .discorhythm_ncores discoODAres
    ```

# DMCFB

<details>

* Version: 1.12.0
* GitHub: https://github.com/shokoohi/DMCFB
* Source code: https://github.com/cran/DMCFB
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 111

Run `revdep_details(, "DMCFB")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
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

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 163

Run `revdep_details(, "dmrseq")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘dmrseq-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getAnnot
    > ### Title: Retrieve annotation information
    > ### Aliases: getAnnot
    > 
    > ### ** Examples
    > 
    > 
    ...
    Trying again (2 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Trying again (1 attempts remaining)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    
    Error in getAnnot("hg19") : Annotation could not be retrieved.
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘dmrseq.Rmd’ using rmarkdown
    Loading required package: bsseq
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
        IQR, mad, sd, var, xtabs
    ...
    Quitting from lines 543-548 (dmrseq.Rmd) 
    Error: processing vignette 'dmrseq.Rmd' failed with diagnostics:
    Annotation could not be retrieved.
    --- failed re-building ‘dmrseq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘dmrseq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   4.8Mb
        doc    1.3Mb
    ```

# Doscheda

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 148

Run `revdep_details(, "Doscheda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              1.6Mb
        shiny-examples   1.9Mb
    ```

# DSWE

<details>

* Version: 1.6.2
* GitHub: https://github.com/TAMU-AML/DSWE-Package
* Source code: https://github.com/cran/DSWE
* Date/Publication: 2022-09-11 20:02:54 UTC
* Number of recursive dependencies: 35

Run `revdep_details(, "DSWE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        libs   4.8Mb
    ```

# dwp

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/dwp
* Date/Publication: 2022-01-27 19:40:08 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "dwp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenEst’ ‘expint’ ‘numDeriv’
      All declared Imports should be used.
    ```

# easier

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/easier
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 196

Run `revdep_details(, "easier")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘reannotate_genes’
    ```

# EMDomics

<details>

* Version: 2.28.0
* GitHub: NA
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 48

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
    .cvm_pairwise_q: no visible global function definition for ‘combn’
    .cvm_pairwise_q : <anonymous>: no visible global function definition
      for ‘median’
    .emd_gene_pairwise: no visible global function definition for ‘hist’
    .emd_pairwise_q: no visible global function definition for ‘combn’
    .emd_pairwise_q : <anonymous>: no visible global function definition
      for ‘median’
    .ks_pairwise_table: no visible global function definition for ‘ks.test’
    calculate_cvm: no visible global function definition for ‘combn’
    calculate_cvm : <anonymous>: no visible global function definition for
    ...
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

<details>

* Version: 1.27.2
* GitHub: https://github.com/jokergoo/EnrichedHeatmap
* Source code: https://github.com/cran/EnrichedHeatmap
* Date/Publication: 2022-10-02
* Number of recursive dependencies: 101

Run `revdep_details(, "EnrichedHeatmap")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘EnrichedHeatmap.Rmd’ using knitr
    The automatically generated colors map from the 1^st and 99^th of the values in the
    matrix. There are outliers in the matrix whose patterns might be hidden by this color
    mapping. You can manually set the color to `col` argument.
    
    Use `suppressMessages()` to turn off this message.
    All signal values are within [0, 1], so we assume it is methylation signal. Automatically
    set limit [0, 1] to the smoothed values. If this is not the case, set argument `limit =
    NA` in the function to remove the limits. Set `verbose = FALSE` to turn off this message.
    ...
    --- re-building ‘visualize_categorical_signals_wrapper.Rmd’ using knitr
    Error: processing vignette 'visualize_categorical_signals_wrapper.Rmd' failed with diagnostics:
    non-character argument
    --- failed re-building ‘visualize_categorical_signals_wrapper.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘row_odering.Rmd’ ‘visualize_categorical_signals_wrapper.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        doc       6.0Mb
        extdata   1.6Mb
        libs      1.2Mb
    ```

# EpiDISH

<details>

* Version: 2.14.1
* GitHub: https://github.com/sjczheng/EpiDISH
* Source code: https://github.com/cran/EpiDISH
* Date/Publication: 2022-11-09
* Number of recursive dependencies: 88

Run `revdep_details(, "EpiDISH")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# epimutacions

<details>

* Version: 1.2.0
* GitHub: https://github.com/isglobal-brge/epimutacions
* Source code: https://github.com/cran/epimutacions
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 245

Run `revdep_details(, "epimutacions")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'IlluminaHumanMethylation450kanno.ilmn12.hg19'
      'IlluminaHumanMethylation450kmanifest'
      'IlluminaHumanMethylationEPICanno.ilm10b2.hg19'
      'IlluminaHumanMethylationEPICmanifest'
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘CompQuadForm’, ‘car’
    ```

# epistasisGA

<details>

* Version: 1.0.0
* GitHub: https://github.com/mnodzenski/epistasisGA
* Source code: https://github.com/cran/epistasisGA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 133

Run `revdep_details(, "epistasisGA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        doc    2.1Mb
        libs   7.3Mb
    ```

# eseis

<details>

* Version: 0.6.0
* GitHub: NA
* Source code: https://github.com/cran/eseis
* Date/Publication: 2021-11-26 14:00:02 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "eseis")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘EMMAgeo’ ‘limSolve’ ‘shinyFiles’
      All declared Imports should be used.
    ```

# EstimationTools

<details>

* Version: 2.1.0
* GitHub: https://github.com/Jaimemosg/EstimationTools
* Source code: https://github.com/cran/EstimationTools
* Date/Publication: 2021-03-10 18:40:05 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "EstimationTools")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘matrixStats’
      All declared Imports should be used.
    ```

# evaluomeR

<details>

* Version: 1.14.0
* GitHub: https://github.com/neobernad/evaluomeR
* Source code: https://github.com/cran/evaluomeR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 114

Run `revdep_details(, "evaluomeR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'SummarizedExperiment', 'MultiAssayExperiment', 'cluster', 'fpc',
      'randomForest', 'flexmix'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘kableExtra’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘flexmix’ ‘randomForest’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# EventPointer

<details>

* Version: 3.6.0
* GitHub: https://github.com/jpromeror/EventPointer
* Source code: https://github.com/cran/EventPointer
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 173

Run `revdep_details(, "EventPointer")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘EventPointer.Rmd’ using rmarkdown
    Loading required package: SGSeq
    Loading required package: IRanges
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
    ...
    Quitting from lines 754-772 (EventPointer.Rmd) 
    Error: processing vignette 'EventPointer.Rmd' failed with diagnostics:
    'NA' indices are not (yet?) supported for sparse Matrices
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
    EventDetection_transcriptome: no visible binding for global variable
      ‘jj’
    SF_Prediction: no visible binding for global variable ‘valueRanking’
    SF_Prediction: no visible binding for global variable ‘PSI_table’
    annotate2: no visible global function definition for
      ‘addDummySpliceSites’
    annotate2: no visible global function definition for ‘annotatePaths’
    annotateFeatures2: no visible global function definition for
      ‘matchTxFeatures’
    callGRseq_parallel: no visible global function definition for
    ...
      ‘stopCluster’
    fitgl: no visible binding for global variable ‘hist’
    myphyper: no visible global function definition for ‘dhyper’
    Undefined global functions or variables:
      PSI_table addDummySpliceSites annotatePaths dhyper hist i ii jj
      makeCluster matchTxFeatures stopCluster valueRanking
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "dhyper")
    to your NAMESPACE file.
    ```

# ExCluster

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 38

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

# ExpHunterSuite

<details>

* Version: 1.5.0
* GitHub: NA
* Source code: https://github.com/cran/ExpHunterSuite
* Date/Publication: 2022-05-13
* Number of recursive dependencies: 224

Run `revdep_details(, "ExpHunterSuite")` for more info

</details>

## In both

*   checking whether package ‘ExpHunterSuite’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ExpHunterSuite/new/ExpHunterSuite.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ExpHunterSuite’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in completeSubclasses(classDef2, class1, obj, where) : 
  trying to get slot "subclasses" from an object of a basic class ("NULL") with no slots
Error: .onLoad failed in loadNamespace() for 'dbplyr', details:
  call: setClass(cl, contains = c(prevClass, "VIRTUAL"), where = where)
  error: error in contained classes ("character") for class “ident”; class definition removed from ‘dbplyr’
Execution halted
ERROR: lazy loading failed for package ‘ExpHunterSuite’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ExpHunterSuite/new/ExpHunterSuite.Rcheck/ExpHunterSuite’


```
### CRAN

```
* installing *source* package ‘ExpHunterSuite’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in completeSubclasses(classDef2, class1, obj, where) : 
  trying to get slot "subclasses" from an object of a basic class ("NULL") with no slots
Error: .onLoad failed in loadNamespace() for 'dbplyr', details:
  call: setClass(cl, contains = c(prevClass, "VIRTUAL"), where = where)
  error: error in contained classes ("character") for class “ident”; class definition removed from ‘dbplyr’
Execution halted
ERROR: lazy loading failed for package ‘ExpHunterSuite’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ExpHunterSuite/old/ExpHunterSuite.Rcheck/ExpHunterSuite’


```
# ExpressionNormalizationWorkflow

<details>

* Version: 1.25.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 124

Run `revdep_details(, "ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
      Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
      Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
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
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        libs  11.4Mb
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
      installed size is 23.5Mb
      sub-directories of 1Mb or more:
        libs  23.4Mb
    ```

# fastverse

<details>

* Version: 0.2.4
* GitHub: https://github.com/fastverse/fastverse
* Source code: https://github.com/cran/fastverse
* Date/Publication: 2022-05-31 22:20:19 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "fastverse")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘collapse’ ‘data.table’ ‘fst’ ‘kit’ ‘magrittr’ ‘matrixStats’
      All declared Imports should be used.
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 91

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
    oecg: no visible global function definition for ‘is’
    oecg: no visible global function definition for ‘seqlengths’
    oecg: no visible binding for global variable ‘Hsapiens’
    oecg: no visible global function definition for ‘seqlevels’
    oecg: no visible global function definition for ‘seqnames’
    oecg: no visible global function definition for ‘resize’
    oecg: no visible global function definition for ‘start’
    oecg: no visible global function definition for ‘start<-’
    oecg: no visible global function definition for ‘end’
    oecg: no visible global function definition for ‘end<-’
    ...
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

# FEAST

<details>

* Version: 1.6.0
* GitHub: https://github.com/suke18/FEAST
* Source code: https://github.com/cran/FEAST
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 216

Run `revdep_details(, "FEAST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   3.9Mb
        doc    1.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FEAST: multiple local function definitions for ‘bp_fun’ with different
      formal arguments
    SC3_Clust: no visible global function definition for ‘metadata’
    Visual_Rslt: no visible global function definition for ‘ggbarplot’
    Visual_Rslt: no visible global function definition for ‘theme’
    Visual_Rslt: no visible global function definition for ‘element_text’
    Visual_Rslt: no visible global function definition for ‘ggline’
    Visual_Rslt: no visible global function definition for ‘get_palette’
    Visual_Rslt: no visible global function definition for
      ‘scale_y_continuous’
    Visual_Rslt: no visible global function definition for ‘guides’
    Visual_Rslt: no visible global function definition for ‘guide_legend’
    Visual_Rslt: no visible global function definition for ‘ggarrange’
    aricode_NMI : entropy: no visible global function definition for
      ‘sortPairs’
    Undefined global functions or variables:
      element_text get_palette ggarrange ggbarplot ggline guide_legend
      guides metadata scale_y_continuous sortPairs theme
    ```

# fergm

<details>

* Version: 1.1.4
* GitHub: https://github.com/benjamin-w-campbell/fergm
* Source code: https://github.com/cran/fergm
* Date/Publication: 2018-10-17 22:20:11 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "fergm")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("fergm.fit", package = "fergm"):
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘fergm.fit’
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘fergm.fit’
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘fergm.fit’
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘fergm.fit’
    ```

# fipp

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fipp
* Date/Publication: 2021-02-11 10:30:02 UTC
* Number of recursive dependencies: 28

Run `revdep_details(, "fipp")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fishpond

<details>

* Version: 2.4.0
* GitHub: https://github.com/mikelove/fishpond
* Source code: https://github.com/cran/fishpond
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 203

Run `revdep_details(, "fishpond")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘allelic.Rmd’ using rmarkdown
    using posterior mean for calculating ratio
    using posterior mean for calculating ratio
    Quitting from lines 264-266 (allelic.Rmd) 
    Error: processing vignette 'allelic.Rmd' failed with diagnostics:
    unable to find FTP dir for assembly GCF_000001405.39
    --- failed re-building ‘allelic.Rmd’
    
    --- re-building ‘swish.Rmd’ using rmarkdown
    ...
    [ myGENCODE - Homo sapiens - release 29 ]
    loading existing TxDb created: 2022-11-15 02:03:46
    loading existing transcript ranges created: 2022-11-15 02:03:49
    --- finished re-building ‘swish.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘allelic.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'samr:::localfdr' 'samr:::predictlocalfdr' 'samr:::qvalue.func'
      'samr:::samr.compute.delta.table.seq'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    getZscore: no visible global function definition for ‘colVars’
    importAllelicCounts: no visible global function definition for
      ‘CharacterList’
    Undefined global functions or variables:
      CharacterList colVars
    ```

# flowCore

<details>

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 118

Run `revdep_details(, "flowCore")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘HowTo-flowCore.Rnw’ using knitr
    Warning: replacing previous import 'flowViz::contour' by 'graphics::contour' when loading 'flowStats'
    Warning: 'getData' is deprecated.
    Use 'gs_pop_get_data' instead.
    See help("Deprecated")
    Warning: 'flowJo_biexp_trans' is deprecated.
    Use 'flowjo_biexp_trans' instead.
    See help("Deprecated")
    Warning: 'getData' is deprecated.
    ...
    l.65 \usepackage
                    {graphicx}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘HowTo-flowCore.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘HowTo-flowCore.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.3Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        data      5.4Mb
        extdata   1.1Mb
        libs      9.4Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘flowCore/libs/flowCore.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Object: ‘fcsTextParse.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# flowGraph

<details>

* Version: 1.6.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 91

Run `revdep_details(, "flowGraph")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_child: no visible binding for global variable ‘no_cores’
    get_paren: no visible binding for global variable ‘no_cores’
    ms_psig: no visible binding for global variable ‘meta’
    Undefined global functions or variables:
      meta no_cores
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘doParallel’
    ```

# flowWorkspace

<details>

* Version: 4.10.0
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 104

Run `revdep_details(, "flowWorkspace")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          intersect, setdiff, setequal, union
      
      Loading required package: BiocGenerics
      
      Attaching package: 'BiocGenerics'
      
    ...
      ── Error (???): (code run outside of `test_that()`) ────────────────────────────
      <packageNotFoundError/error/condition>
      Error in `library(CytoML)`: there is no package called 'CytoML'
      Backtrace:
          ▆
       1. └─base::library(CytoML)
      
      [ FAIL 1 | WARN 1 | SKIP 4 | PASS 883 ]
      Error: Test failures
      Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Package unavailable to check Rd xrefs: ‘flowStats’
    Missing link or links in documentation object 'gs_plot_pop_count_cv.Rd':
      ‘barchart’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘gs_clone’ ‘gs_copy_tree_only’
    Undocumented S4 methods:
      generic 'dimnames' and siglist 'cytoframe'
      generic 'rownames' and siglist 'cytoframe'
      generic 'rownames<-' and siglist 'cytoframe'
      generic 'show' and siglist 'cytoframe'
      generic 'transform' and siglist 'cytoframe'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'GatingSet-methods':
      ‘...’
    
    Undocumented arguments in documentation object 'convert'
      ‘backend’
    
    Undocumented arguments in documentation object 'cs_get_uri'
      ‘x’
    
    Undocumented arguments in documentation object 'gh_apply_to_new_fcs'
    ...
      ‘backend’ ‘backend_dir’
    
    Undocumented arguments in documentation object 'save_gs'
      ‘cdf’ ‘backend_readonly’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking compilation flags in Makevars ... WARNING
    ```
    Non-portable flags in variable 'PKG_CPPFLAGS':
      -Wno-pedantic
    ```

*   checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... WARNING
    ```
      apparently using $(BLAS_LIBS) without following $(FLIBS) in ‘src/Makevars’
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘CytoML’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 72.7Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs  68.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    Non-standard license specification:
      AGPL-3.0-only
    Standardizable: FALSE
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RBGL’ ‘RProtoBufLib’ ‘ggplot2’ ‘grDevices’ ‘graphics’ ‘utils’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::simplify_NULL_dimnames’ ‘flowCore:::.estimateLogicle’
      ‘flowCore:::.spillover_pattern’ ‘flowCore:::checkClass’
      ‘flowCore:::guid’ ‘flowCore:::logicle_transform’
      ‘flowCore:::parse_pd_for_read_fs’ ‘flowCore:::txt2spillmatrix’
      ‘flowCore:::updateTransformKeywords’
      ‘flowCore:::validFilterResultList’ ‘graph:::.makeEdgeKeys’
      ‘ncdfFlow:::.isValidSamples’ ‘stats:::.splinefun’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘flowWorkspace/libs/flowWorkspace.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Objects: ‘R_GatingSet.o’, ‘cytoframeAPI.o’, ‘cytosetAPI.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Object: ‘R_GatingSet.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# footBayes

<details>

* Version: 0.1.0
* GitHub: https://github.com/leoegidi/footbayes
* Source code: https://github.com/cran/footBayes
* Date/Publication: 2022-02-21 08:20:05 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "footBayes")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyverse’
      All declared Imports should be used.
    ```

# FRASER

<details>

* Version: 1.10.0
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 186

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘FRASER.Rnw’ using knitr
    Mon Nov 14 18:19:26 2022: Start counting the split reads ...
    Mon Nov 14 18:19:26 2022: Count split reads for sample: sample1
    Mon Nov 14 18:19:28 2022: Count split reads for sample: sample2
    Mon Nov 14 18:19:29 2022: Count split reads for sample: sample3
    Mon Nov 14 18:19:31 2022 : count ranges need to be merged ...
    Mon Nov 14 18:19:31 2022: Create splice site indices ...
    Mon Nov 14 18:19:32 2022: Writing split counts to folder: FRASER_output/savedObjects/Data_Analysis/splitCounts
    Mon Nov 14 18:19:32 2022: Identifying introns with read count <= 20 in all samples...
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘FRASER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘FRASER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        doc    1.6Mb
        libs   6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# funtooNorm

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 149

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

*   checking files in ‘vignettes’ ... WARNING
    ```
    Files in the 'vignettes' directory but no files in 'inst/doc':
      ‘MyEndnoteLibrary.bib’, ‘funtooNorm.Rmd’, ‘funtooNorm.pdf’,
        ‘validationcurvesPCRlow.jpg’
    Files named as vignettes but with no recognized vignette engine:
       ‘vignettes/funtooNorm.Rmd’
    (Is a VignetteBuilder field missing?)
    ```

# gap

<details>

* Version: 1.3-1
* GitHub: https://github.com/jinghuazhao/R
* Source code: https://github.com/cran/gap
* Date/Publication: 2022-10-21 12:25:07 UTC
* Number of recursive dependencies: 193

Run `revdep_details(, "gap")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘shiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc   5.5Mb
    ```

# GenEst

<details>

* Version: 1.4.6
* GitHub: NA
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2021-06-17 07:10:08 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "GenEst")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘GenEstGUI.Rmd’ using rmarkdown
    --- finished re-building ‘GenEstGUI.Rmd’
    
    --- re-building ‘command-line-example.Rmd’ using rmarkdown
    Warning in doTryCatch(return(expr), name, parentenv, handler) :
      graphical parameter "cin" cannot be set
    Warning in doTryCatch(return(expr), name, parentenv, handler) :
      graphical parameter "cra" cannot be set
    Warning in doTryCatch(return(expr), name, parentenv, handler) :
    ...
    Quitting from lines 669-670 (wind-examples.Rmd) 
    Error: processing vignette 'wind-examples.Rmd' failed with diagnostics:
    need finite 'ylim' values
    --- failed re-building ‘wind-examples.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘wind-examples.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmlwidgets’
      All declared Imports should be used.
    ```

# geneticae

<details>

* Version: 0.4.0
* GitHub: https://github.com/jangelini/geneticae
* Source code: https://github.com/cran/geneticae
* Date/Publication: 2022-07-20 15:40:06 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "geneticae")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GGEBiplots’ ‘calibrate’ ‘graphics’ ‘matrixStats’ ‘prettydoc’
      ‘reshape2’
      All declared Imports should be used.
    ```

# GeneTonic

<details>

* Version: 2.2.0
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 203

Run `revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        data      1.2Mb
        doc      13.6Mb
        extdata   1.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pcaExplorer’
    ```

# genomation

<details>

* Version: 1.30.0
* GitHub: https://github.com/BIMSBbioinfo/genomation
* Source code: https://github.com/cran/genomation
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 106

Run `revdep_details(, "genomation")` for more info

</details>

## In both

*   checking whether package ‘genomation’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘Biostrings::pattern’ by ‘grid::pattern’ when loading ‘genomation’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   1.2Mb
        libs      1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
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

# geocmeans

<details>

* Version: 0.3.1
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2022-10-16 00:23:35 UTC
* Number of recursive dependencies: 198

Run `revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        data      2.3Mb
        doc       1.7Mb
        extdata   1.1Mb
        libs      7.4Mb
    ```

# ggdmc

<details>

* Version: 0.2.6.0
* GitHub: https://github.com/yxlin/ggdmc
* Source code: https://github.com/cran/ggdmc
* Date/Publication: 2019-04-29 05:10:03 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "ggdmc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   9.1Mb
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GGPA

<details>

* Version: 1.10.0
* GitHub: https://github.com/dongjunchung/GGPA
* Source code: https://github.com/cran/GGPA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 74

Run `revdep_details(, "GGPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   4.5Mb
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

# GJRM

<details>

* Version: 0.2-6
* GitHub: NA
* Source code: https://github.com/cran/GJRM
* Date/Publication: 2022-04-01 10:30:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "GJRM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# glmGamPoi

<details>

* Version: 1.10.0
* GitHub: https://github.com/const-ae/glmGamPoi
* Source code: https://github.com/cran/glmGamPoi
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 167

Run `revdep_details(, "glmGamPoi")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs  11.3Mb
    ```

# grandR

<details>

* Version: 0.2.0
* GitHub: https://github.com/erhard-lab/grandR
* Source code: https://github.com/cran/grandR
* Date/Publication: 2022-09-20 07:56:10 UTC
* Number of recursive dependencies: 250

Run `revdep_details(, "grandR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lfc’
      All declared Imports should be used.
    ```

# GRaNIE

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/GRaNIE
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 245

Run `revdep_details(, "GRaNIE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        doc  11.8Mb
    ```

# graper

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 71

Run `revdep_details(, "graper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   7.1Mb
    ```

# GUIDEseq

<details>

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 187

Run `revdep_details(, "GUIDEseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        extdata  11.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': 'CRISPRseek:::translatePattern'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .maskSubSeq: no visible global function definition for '.getMatchedInd'
    .nucleotideSubstitutionMatrix: no visible binding for global variable
      'IUPAC_CODE_MAP'
    .nucleotideSubstitutionMatrix: no visible binding for global variable
      'DNA_BASES'
    GUIDEseqAnalysis: no visible binding for global variable 'offTarget'
    GUIDEseqAnalysis: no visible binding for global variable 'peak_score'
    GUIDEseqAnalysis: no visible binding for global variable
      'predicted_cleavage_score'
    GUIDEseqAnalysis: no visible binding for global variable 'gRNA.name'
    ...
      .getMatchedInd DNA_BASES IUPAC_CODE_MAP MR MR.all Offtargets SNratio
      Samples UMI adjusted.p.value chromosome end.first end.last feature
      gRNA.deletion gRNA.insertion gRNA.name gRNAPlusPAM
      guideAlignment2OffTarget h mismatch.distance2PAM n.DNA.bulge
      n.RNA.bulge n.deletion n.distinct.UMIs n.guide.mismatch n.insertion
      offTarget offTargetStrand offTarget_End offTarget_Start
      offTarget_sequence pa.f1 pa.r2 peak_score pos.deletion pos.insertion
      predicted_cleavage_score qwidth.first qwidth.last readName
      seqnames.first seqnames.last start.first start.last strand.first
      strand.last thePeak unit width.first width.last y
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: annotateOffTargets.Rd:35-37: Dropping empty section \details
    prepare_Rd: annotateOffTargets.Rd:63-65: Dropping empty section \references
    prepare_Rd: createBarcodeFasta.Rd:34-36: Dropping empty section \value
    prepare_Rd: createBarcodeFasta.Rd:59-61: Dropping empty section \references
    prepare_Rd: getUsedBarcodes.Rd:53-55: Dropping empty section \references
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘GUIDEseq.Rnw’ using Sweave
    Loading required package: GenomicRanges
    Loading required package: stats4
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'GUIDEseq.Rnw'
    
    SUMMARY: processing the following file failed:
      'GUIDEseq.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# Gviz

<details>

* Version: 1.42.0
* GitHub: https://github.com/ivanek/Gviz
* Source code: https://github.com/cran/Gviz
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 158

Run `revdep_details(, "Gviz")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Loading required package: IRanges
      Loading required package: GenomicRanges
      Loading required package: GenomeInfoDb
      Loading required package: grid
      > 
      > test_check("Gviz")
    ...
       15.                     ├─httr:::request_fetch(req$output, req$url, handle)
       16.                     └─httr:::request_fetch.write_memory(req$output, req$url, handle)
       17.                       └─curl::curl_fetch_memory(url, handle = handle)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 293 ]
      Error: Test failures
      In addition: Warning message:
      In download.file("http://www.biomart.org", tempfile(), quiet = TRUE) :
        downloaded length 7616 != reported length 0
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Gviz.Rmd’ using rmarkdown
    Warning in download.file("http://www.biomart.org", tempfile(), quiet = TRUE) :
      downloaded length 7616 != reported length 0
    Loading required package: S4Vectors
    Loading required package: stats4
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    ...
    Error: processing vignette 'Gviz.Rmd' failed with diagnostics:
    Multiple cache results found.
    Please clear your cache by running biomartCacheClear()
    --- failed re-building ‘Gviz.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Gviz.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        doc       4.7Mb
        extdata   2.5Mb
    ```

# GWENA

<details>

* Version: 1.8.0
* GitHub: https://github.com/Kumquatum/GWENA
* Source code: https://github.com/cran/GWENA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 150

Run `revdep_details(, "GWENA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    5.3Mb
    ```

# HACSim

<details>

* Version: 1.0.6-1
* GitHub: NA
* Source code: https://github.com/cran/HACSim
* Date/Publication: 2022-06-13 06:50:16 UTC
* Number of recursive dependencies: 38

Run `revdep_details(, "HACSim")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs    1.9Mb
        shiny   4.2Mb
    ```

# Harman

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/Harman
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 196

Run `revdep_details(, "Harman")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc    2.8Mb
        libs   2.2Mb
    ```

# HDSpatialScan

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/HDSpatialScan
* Date/Publication: 2022-08-05 12:00:06 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "HDSpatialScan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# hermes

<details>

* Version: 1.2.0
* GitHub: https://github.com/insightsengineering/hermes
* Source code: https://github.com/cran/hermes
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 161

Run `revdep_details(, "hermes")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘test_dplyr_compatibility.R’
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Loading required package: Biobase
      Welcome to Bioconductor
      
          Vignettes contain introductory material; view with
          'browseVignettes()'. To cite Bioconductor, see
    ...
        7.         └─biomaRt:::bmRequest(...)
        8.           └─httr::GET(...)
        9.             └─httr:::request_perform(req, hu$handle$handle)
       10.               ├─httr:::request_fetch(req$output, req$url, handle)
       11.               └─httr:::request_fetch.write_memory(req$output, req$url, handle)
       12.                 └─curl::curl_fetch_memory(url, handle = handle)
      
      [ FAIL 1 | WARN 1 | SKIP 16 | PASS 815 ]
      Error: Test failures
      Execution halted
    ```

# hipathia

<details>

* Version: 2.14.0
* GitHub: NA
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 127

Run `revdep_details(, "hipathia")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        data      2.8Mb
        doc       1.7Mb
        extdata   4.3Mb
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

# iPath

<details>

* Version: 1.4.0
* GitHub: https://github.com/suke18/iPath
* Source code: https://github.com/cran/iPath
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 129

Run `revdep_details(, "iPath")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    water_fall: no visible binding for global variable ‘value’
    water_fall: no visible binding for global variable ‘type’
    Undefined global functions or variables:
      type value
    ```

# JMbayes2

<details>

* Version: 0.3-0
* GitHub: https://github.com/drizopoulos/JMbayes2
* Source code: https://github.com/cran/JMbayes2
* Date/Publication: 2022-09-09 07:12:58 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "JMbayes2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        libs  11.0Mb
    ```

# kgschart

<details>

* Version: 1.3.5
* GitHub: https://github.com/kota7/kgschart
* Source code: https://github.com/cran/kgschart
* Date/Publication: 2017-07-02 22:16:15 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "kgschart")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# kissDE

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/kissDE
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 206

Run `revdep_details(, "kissDE")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘kissDE.rnw’ using Sweave
    Pre-processing the data...
    Trying to fit models on data...
    This can be a time-consuming step, so do not hesitate to have 
        a look at the very well-written vignette !
    Computing pvalues...
    Computing size of the effect and last cutoffs...
    Pre-processing the data...
    Trying to fit models on data...
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘kissDE.rnw’
    
    SUMMARY: processing the following file failed:
      ‘kissDE.rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ldsep

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/ldsep
* Source code: https://github.com/cran/ldsep
* Date/Publication: 2022-10-18 22:52:43 UTC
* Number of recursive dependencies: 169

Run `revdep_details(, "ldsep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   8.4Mb
    ```

# LFDREmpiricalBayes

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/LFDREmpiricalBayes
* Date/Publication: 2017-09-27 09:08:46 UTC
* Number of recursive dependencies: 33

Run `revdep_details(, "LFDREmpiricalBayes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘LFDREmpiricalBayes.Rnw’ using Sweave
    Error: processing vignette 'LFDREmpiricalBayes.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'LFDREmpiricalBayes.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `changepage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
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

* Version: 2.0.1
* GitHub: https://github.com/JEFworks/liger
* Source code: https://github.com/cran/liger
* Date/Publication: 2021-01-25 05:50:09 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "liger")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    2.1Mb
        libs   2.2Mb
    ```

# LSAmitR

<details>

* Version: 1.0-3
* GitHub: NA
* Source code: https://github.com/cran/LSAmitR
* Date/Publication: 2022-06-01 07:50:02 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "LSAmitR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘kerdiest’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# lspartition

<details>

* Version: 0.4
* GitHub: NA
* Source code: https://github.com/cran/lspartition
* Date/Publication: 2019-08-08 22:40:06 UTC
* Number of recursive dependencies: 34

Run `revdep_details(, "lspartition")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Luminescence

<details>

* Version: 0.9.20
* GitHub: https://github.com/R-Lum/Luminescence
* Source code: https://github.com/cran/Luminescence
* Date/Publication: 2022-07-17 02:20:14 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "Luminescence")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        libs   3.4Mb
    ```

# M3Drop

<details>

* Version: 1.24.0
* GitHub: https://github.com/tallulandrews/M3Drop
* Source code: https://github.com/cran/M3Drop
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 231

Run `revdep_details(, "M3Drop")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Package in Depends field not imported from: ‘numDeriv’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘scater::exprs’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        doc  12.5Mb
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

* Version: 2.17.0
* GitHub: NA
* Source code: https://github.com/cran/maEndToEnd
* Date/Publication: 2022-05-31
* Number of recursive dependencies: 249

Run `revdep_details(, "maEndToEnd")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MA-Workflow.Rmd’ using rmarkdown
    Quitting from lines 256-257 (MA-Workflow.Rmd) 
    Error: processing vignette 'MA-Workflow.Rmd' failed with diagnostics:
    1: StartTag: invalid element name
    2: Extra content at the end of the document
    
    --- failed re-building ‘MA-Workflow.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MA-Workflow.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... WARNING
    ```
    Invalid license file pointers: LICENSE
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Biobase', 'oligoClasses', 'ArrayExpress', 'pd.hugene.1.0.st.v1',
      'hugene10sttranscriptcluster.db', 'oligo', 'arrayQualityMetrics',
      'limma', 'topGO', 'ReactomePA', 'clusterProfiler', 'gplots',
      'ggplot2', 'geneplotter', 'pheatmap', 'RColorBrewer', 'dplyr',
      'tidyr', 'stringr', 'matrixStats', 'genefilter', 'openxlsx',
      'Rgraphviz', 'enrichplot'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
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

# MatrixGenerics

<details>

* Version: 1.10.0
* GitHub: https://github.com/Bioconductor/MatrixGenerics
* Source code: https://github.com/cran/MatrixGenerics
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 50

Run `revdep_details(, "MatrixGenerics")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test-api_compatibility.R:1217'): rowOrderStats works  ─────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Component "useNames": 'is.NA' value mismatch: 1 in current 0 in target
      ── Failure ('test-api_compatibility.R:1242'): rowProds works  ──────────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Component "useNames": 'is.NA' value mismatch: 1 in current 0 in target
    ...
      ── Failure ('test-api_compatibility.R:1518'): rowWeightedSds works  ────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Component "useNames": 'is.NA' value mismatch: 1 in current 0 in target
      ── Failure ('test-api_compatibility.R:1539'): rowWeightedVars works  ───────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Component "useNames": 'is.NA' value mismatch: 1 in current 0 in target
      
      [ FAIL 70 | WARN 0 | SKIP 0 | PASS 242 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘methods:::fromNextMethod’ ‘methods:::getGenericFromCall’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.load_next_suggested_package_to_search’
    ```

# mcmcsae

<details>

* Version: 0.7.1
* GitHub: NA
* Source code: https://github.com/cran/mcmcsae
* Date/Publication: 2022-09-02 13:30:02 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "mcmcsae")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.5Mb
      sub-directories of 1Mb or more:
        libs  18.2Mb
    ```

# MEAL

<details>

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2022-11-02
* Number of recursive dependencies: 228

Run `revdep_details(, "MEAL")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'sva'
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'getProbeResults'
      ‘robust’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'runRegionAnalysis' is deprecated.
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
    plotRegion: no visible global function definition for
      ‘subsetByOverlaps’
    plotRegion: no visible global function definition for ‘mcols<-’
    runRDA: no visible global function definition for ‘rowData’
    runSVA: no visible global function definition for ‘resid’
    runSVA: no visible global function definition for ‘quantile’
    Undefined global functions or variables:
      mcols<- quantile resid rowData subsetByOverlaps
    Consider adding
      importFrom("stats", "quantile", "resid")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘DMRcate’
    ```

# metagene

<details>

* Version: 2.30.0
* GitHub: https://github.com/CharlesJB/metagene
* Source code: https://github.com/cran/metagene
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 129

Run `revdep_details(, "metagene")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        doc       3.1Mb
        extdata   5.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    NCIS.internal: no visible global function definition for
      'est.norm.med.search'
    avoid_gaps_update: no visible binding for global variable 'value'
    avoid_gaps_update: no visible binding for global variable 'bam'
    avoid_gaps_update: no visible binding for global variable 'tab'
    avoid_gaps_update: no visible binding for global variable 'nuc'
    bin.data: no visible global function definition for 'hist'
    permutation_test: no visible global function definition for '.'
    permutation_test: no visible binding for global variable 'value'
    plot_metagene: no visible binding for global variable 'bin'
    ...
    plot_metagene: no visible binding for global variable 'group'
    plot_metagene: no visible binding for global variable 'nuc'
    plot_metagene: no visible binding for global variable 'design'
    plot_metagene: no visible binding for global variable 'nuctot'
    Undefined global functions or variables:
      . bam bin design est.norm.med.search group hist nuc nuctot qinf qsup
      tab value
    Consider adding
      importFrom("graphics", "hist")
    to your NAMESPACE file.
    ```

# metamicrobiomeR

<details>

* Version: 1.2
* GitHub: https://github.com/nhanhocu/metamicrobiomeR
* Source code: https://github.com/cran/metamicrobiomeR
* Date/Publication: 2020-11-09 11:20:05 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "metamicrobiomeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lmerTest’
      All declared Imports should be used.
    ```

# metavizr

<details>

* Version: 1.21.0
* GitHub: NA
* Source code: https://github.com/cran/metavizr
* Date/Publication: 2022-05-01
* Number of recursive dependencies: 194

Run `revdep_details(, "metavizr")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘IntroToMetavizr.Rmd’ using rmarkdown
    Loading required package: metavizr
    Loading required package: metagenomeSeq
    Loading required package: Biobase
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    ...
    Quitting from lines 95-124 (IntroToMetavizr.Rmd) 
    Error: processing vignette 'IntroToMetavizr.Rmd' failed with diagnostics:
    row dimension of design doesn't match column dimension of data object
    --- failed re-building ‘IntroToMetavizr.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘IntroToMetavizr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MethReg

<details>

* Version: 1.8.0
* GitHub: https://github.com/TransBioInfoLab/MethReg
* Source code: https://github.com/cran/MethReg
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 221

Run `revdep_details(, "MethReg")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' imports not declared from:
      ‘data.table’ ‘openxlsx’
    Missing or unexported object: ‘downloader::download.file’
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'methReg_analysis'
      ‘tf.dnam.classifier.pval.threshold’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        doc   2.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    readRemap2022: no visible binding for global variable ‘biotype’
    Undefined global functions or variables:
      biotype
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘TCGAbiolinks’
    ```

# methrix

<details>

* Version: 1.12.0
* GitHub: https://github.com/CompEpigen/methrix
* Source code: https://github.com/cran/methrix
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 160

Run `revdep_details(, "methrix")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘methrix.Rmd’ using rmarkdown
    Loading required package: data.table
    Loading required package: SummarizedExperiment
    Loading required package: MatrixGenerics
    Loading required package: matrixStats
    
    Attaching package: 'MatrixGenerics'
    
    The following objects are masked from 'package:matrixStats':
    ...
    Quitting from lines 108-110 (methrix.Rmd) 
    Error: processing vignette 'methrix.Rmd' failed with diagnostics:
    
    --- failed re-building ‘methrix.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘methrix.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    convert_HDF5_methrix: no visible global function definition for
      ‘metadata’
    convert_methrix: no visible global function definition for ‘metadata’
    extract_CPGs: no visible global function definition for
      ‘standardChromosomes’
    get_region_summary: no visible binding for global variable ‘..keep’
    get_stats: no visible global function definition for ‘metadata’
    is_h5: no visible global function definition for ‘metadata’
    methrix_pca: no visible global function definition for ‘barplot’
    methrix_pca: no visible global function definition for ‘points’
    ...
    write_bigwigs: no visible global function definition for ‘metadata’
    write_bigwigs: no visible global function definition for ‘seqlengths<-’
    write_bigwigs: no visible global function definition for ‘seqlengths’
    show,methrix: no visible global function definition for ‘metadata’
    Undefined global functions or variables:
      ..keep barplot metadata points seqlengths seqlengths<-
      seqlevelsStyle<- standardChromosomes
    Consider adding
      importFrom("graphics", "barplot", "points")
    to your NAMESPACE file.
    ```

# MethylAid

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 174

Run `revdep_details(, "MethylAid")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MethylAid.Rnw’ using knitr
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    Loading required package: minfi
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
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

* Version: 1.23.0
* GitHub: NA
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 220

Run `revdep_details(, "methylationArrayAnalysis")` for more info

</details>

## In both

*   checking whether package ‘methylationArrayAnalysis’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import 'rmarkdown::pdf_document' by 'BiocStyle::pdf_document' when loading 'methylationArrayAnalysis'
      Warning: replacing previous import 'rmarkdown::html_document' by 'BiocStyle::html_document' when loading 'methylationArrayAnalysis'
      Warning: replacing previous import 'rmarkdown::md_document' by 'BiocStyle::md_document' when loading 'methylationArrayAnalysis'
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/00install.out’ for details.
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
      installed size is 322.7Mb
      sub-directories of 1Mb or more:
        doc        2.6Mb
        extdata  320.2Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# methylumi

<details>

* Version: 2.44.0
* GitHub: https://github.com/seandavi/methylumi
* Source code: https://github.com/cran/methylumi
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 166

Run `revdep_details(, "methylumi")` for more info

</details>

## In both

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
      installed size is 11.8Mb
      sub-directories of 1Mb or more:
        R         1.3Mb
        data      2.7Mb
        doc       1.9Mb
        extdata   5.8Mb
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
    ...
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
    getBarcodes: warning in list.files(path = path, patt = "idat"): partial
      argument match of 'patt' to 'pattern'
    coerce,RangedSummarizedExperiment-GenomicMethylSet: warning in
      assays(from, withDim = F): partial argument match of 'withDim' to
      'withDimnames'
    .getFinalReportBlock: no visible global function definition for
      ‘read.table’
    .mclapply: no visible global function definition for ‘mclapply’
    .parallel : <anonymous>: no visible global function definition for
      ‘ecdf’
    ...
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

# mgcViz

<details>

* Version: 0.1.9
* GitHub: https://github.com/mfasiolo/mgcViz
* Source code: https://github.com/cran/mgcViz
* Date/Publication: 2021-10-05 07:10:12 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "mgcViz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc   4.6Mb
    ```

# microbiomeExplorer

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/microbiomeExplorer
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 195

Run `revdep_details(, "microbiomeExplorer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        doc       4.9Mb
        extdata   4.1Mb
        shiny     2.8Mb
    ```

# MicrobiomeStat

<details>

* Version: 1.1
* GitHub: NA
* Source code: https://github.com/cran/MicrobiomeStat
* Date/Publication: 2022-01-24 00:02:41 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "MicrobiomeStat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘Matrix’ ‘utils’
      All declared Imports should be used.
    ```

# migest

<details>

* Version: 2.0.3
* GitHub: https://github.com/guyabel/migest
* Source code: https://github.com/cran/migest
* Date/Publication: 2022-10-28 11:05:05 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "migest")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 9 marked UTF-8 strings
    ```

# MIGSA

<details>

* Version: 1.21.0
* GitHub: https://github.com/jcrodriguez1989/MIGSA
* Source code: https://github.com/cran/MIGSA
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 124

Run `revdep_details(, "MIGSA")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘MIGSA.Rnw’ using ‘UTF-8’... failed
      ‘gettingPbcmcData.Rnw’ using ‘UTF-8’... OK
      ‘gettingTcgaData.Rnw’ using ‘UTF-8’... OK
     WARNING
    Errors in running code in vignettes:
    when running code in ‘MIGSA.Rnw’
      ...
        geneIdType: NullIdentifier (1 total)
        collectionType: NullCollection (1 total)
    
    > library(BiocParallel)
    
    > library(mGSZ)
    
      When sourcing ‘MIGSA.R’:
    Error: there is no package called ‘mGSZ’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘mGSZ’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MIGSA.Rnw’ using Sweave
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
        IQR, mad, sd, var, xtabs
    
    ...
    --- finished re-building ‘gettingPbcmcData.Rnw’
    
    --- re-building ‘gettingTcgaData.Rnw’ using Sweave
    --- finished re-building ‘gettingTcgaData.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MIGSA.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# miloR

<details>

* Version: 1.6.0
* GitHub: https://github.com/MarioniLab/miloR
* Source code: https://github.com/cran/miloR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 201

Run `revdep_details(, "miloR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    5.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotDAbeeswarm: no visible binding for global variable ‘SpatialFDR’
    plotDAbeeswarm: no visible binding for global variable ‘is_signif’
    plotDAbeeswarm: no visible binding for global variable ‘logFC’
    plotDAbeeswarm: no visible binding for global variable ‘Nhood’
    plotDAbeeswarm: no visible binding for global variable ‘logFC_color’
    plotNhoodExpressionDA: no visible binding for global variable ‘Nhood’
    plotNhoodExpressionDA: no visible binding for global variable ‘logFC’
    plotNhoodExpressionDA: no visible binding for global variable
      ‘SpatialFDR’
    plotNhoodExpressionDA: no visible binding for global variable
    ...
    plotNhoodMA: no visible binding for global variable ‘logCPM’
    plotNhoodMA: no visible binding for global variable ‘logFC’
    plotNhoodMA: no visible binding for global variable ‘Sig’
    plotNhoodSizeHist: no visible binding for global variable ‘nh_size’
    Undefined global functions or variables:
      . Nhood NhoodGroup Sig SpatialFDR avg_expr feature is_signif label
      layout logCPM logFC logFC_color logFC_rank nh_size size weight
    Consider adding
      importFrom("graphics", "layout")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: findNhoodGroupMarkers.Rd:79-81: Dropping empty section \examples
    ```

# MinimumDistance

<details>

* Version: 1.42.0
* GitHub: NA
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 80

Run `revdep_details(, "MinimumDistance")` for more info

</details>

## In both

*   checking whether package ‘MinimumDistance’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ff::pattern’ by ‘grid::pattern’ when loading ‘MinimumDistance’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/MinimumDistance/new/MinimumDistance.Rcheck/00install.out’ for details.
    ```

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

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("trioSetListExample", package = "MinimumDistance"):
      Warning message:
      replacing previous import ‘ff::pattern’ by ‘grid::pattern’ when loading ‘MinimumDistance’ 
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doSNOW’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MatrixGenerics’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    callDenovoSegments: no visible global function definition for
      ‘read.bsfiles’
    combineRanges: no visible global function definition for ‘RangedData’
    getRefGene: no visible global function definition for ‘RangedData’
    overlapsCentromere: no visible global function definition for
      ‘RangedData’
    pruneMD: no visible global function definition for ‘RangedDataCBS’
    pruneTrioSet: no visible global function definition for
      ‘RangedDataList’
    read.bsfiles2: no visible binding for global variable ‘read.bsfiles’
    GenomeAnnotatedDataFrameFrom,character: no visible global function
      definition for ‘read.bsfiles’
    calculateMindist,list: no visible binding for global variable ‘elt’
    Undefined global functions or variables:
      RangedData RangedDataCBS RangedDataList elt read.bsfiles
    ```

# mixOmics

<details>

* Version: 6.22.0
* GitHub: https://github.com/mixOmicsTeam/mixOmics
* Source code: https://github.com/cran/mixOmics
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 95

Run `revdep_details(, "mixOmics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.2Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   3.3Mb
        doc    6.1Mb
    ```

# mnem

<details>

* Version: 1.14.0
* GitHub: https://github.com/cbg-ethz/mnem
* Source code: https://github.com/cran/mnem
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 177

Run `revdep_details(, "mnem")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
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

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    3.8Mb
        libs   2.4Mb
    ```

# moanin

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/moanin
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 121

Run `revdep_details(, "moanin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘documentation.Rmd’ using knitr
    Loading required package: SummarizedExperiment
    Loading required package: MatrixGenerics
    Loading required package: matrixStats
    
    Attaching package: 'MatrixGenerics'
    
    The following objects are masked from 'package:matrixStats':
    
    ...
    Quitting from lines 45-49 (documentation.Rmd) 
    Error: processing vignette 'documentation.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘documentation.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘documentation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘edge’
    Unknown package ‘KEGGprofile’ in Rd xrefs
    ```

# monocle

<details>

* Version: 2.26.0
* GitHub: NA
* Source code: https://github.com/cran/monocle
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 252

Run `revdep_details(, "monocle")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘monocle-vignette.Rnw’ using knitr
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'monocle-vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
    l.37 \sectionfont
                     {\sffamily\bfseries\color{RoyalBlue}\sectionrule{0pt}{0pt}{...
    !  ==> Fatal error occurred, no output PDF file produced!
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
    ```

*   checking R code for possible problems ... NOTE
    ```
    assign_cell_lineage: no visible global function definition for ‘nei’
    buildBranchCellDataSet: no visible global function definition for ‘nei’
    count_leaf_descendents: no visible global function definition for ‘nei’
    cth_classifier_cds: no visible global function definition for ‘nei’
    cth_classifier_cell: no visible global function definition for ‘nei’
    diff_test_helper: no visible binding for global variable ‘Size_Factor’
    exportCDS: no visible binding for global variable ‘use_for_ordering’
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
    get_next_node_id: no visible binding for '<<-' assignment to
    ...
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

# MOSim

<details>

* Version: 1.12.0
* GitHub: https://github.com/Neurergus/MOSim
* Source code: https://github.com/cran/MOSim
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 80

Run `revdep_details(, "MOSim")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MOSim.Rnw’ using knitr
    Generating simulation settings for RNA-seq.
    Creating settings to change count values on 1 DE genes with the same flat profile on all groups.
    Finishing generation of configuration settings.
    Configuration generated.
    
    Starting simulation of RNA-seq.
    - Simulating count values for group 1.
    	- Making replicates for group 1 on time 0.
    ...
    Quitting from lines 223-249 (MOSim.Rnw) 
    Error: processing vignette 'MOSim.Rnw' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘MOSim.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MOSim.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# motifbreakR

<details>

* Version: 2.12.0
* GitHub: https://github.com/Simon-Coetzee/motifbreakR
* Source code: https://github.com/cran/motifbreakR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 177

Run `revdep_details(, "motifbreakR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘motifbreakR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: snps.from.file
    > ### Title: Import SNPs from a BED file or VCF file for use in motifbreakR
    > ### Aliases: snps.from.file variants.from.file
    > 
    > ### ** Examples
    > 
    >  library(BSgenome.Drerio.UCSC.danRer7)
    Loading required package: BSgenome
    Loading required package: rtracklayer
    >  library(SNPlocs.Hsapiens.dbSNP142.GRCh37)
    Error in library(SNPlocs.Hsapiens.dbSNP142.GRCh37) : 
      there is no package called 'SNPlocs.Hsapiens.dbSNP142.GRCh37'
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘motifbreakR-vignette.Rmd’ using rmarkdown
    Loading required package: grid
    Loading required package: MotifDb
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
    ...
    Quitting from lines 105-112 (motifbreakR-vignette.Rmd) 
    Error: processing vignette 'motifbreakR-vignette.Rmd' failed with diagnostics:
    there is no package called 'SNPlocs.Hsapiens.dbSNP142.GRCh37'
    --- failed re-building ‘motifbreakR-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘motifbreakR-vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'SNPlocs.Hsapiens.dbSNP.20120608', 'SNPlocs.Hsapiens.dbSNP142.GRCh37'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: 'MotifDb'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# mrfDepth

<details>

* Version: 1.0.13
* GitHub: https://github.com/PSegaert/mrfDepth
* Source code: https://github.com/cran/mrfDepth
* Date/Publication: 2020-08-26 16:10:33 UTC
* Number of recursive dependencies: 44

Run `revdep_details(, "mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.7Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  20.7Mb
    ```

# MultiBD

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MultiBD
* Date/Publication: 2016-12-05 18:28:46
* Number of recursive dependencies: 75

Run `revdep_details(, "MultiBD")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SIR-MCMC.Rmd’ using rmarkdown
    Warning: The dot-dot notation (`..level..`) was deprecated in ggplot2 3.4.0.
    i Please use `after_stat(level)` instead.
    Warning: The `guide` argument in `scale_*()` cannot be `FALSE`. This was deprecated in
    ggplot2 3.3.4.
    i Please use "none" instead.
    --- finished re-building ‘SIR-MCMC.Rmd’
    
    --- re-building ‘SIRtrans.Rnw’ using knitr
    ...
    l.75 \usepackage
                    {amsmath}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘SIRtrans.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘SIRtrans.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        libs   9.0Mb
    ```

# muscat

<details>

* Version: 1.12.0
* GitHub: https://github.com/HelenaLC/muscat
* Source code: https://github.com/cran/muscat
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 231

Run `revdep_details(, "muscat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

# muscData

<details>

* Version: 1.12.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2022-11-03
* Number of recursive dependencies: 272

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

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 55

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

*   checking installed files from ‘inst/doc’ ... NOTE
    ```
    The following files look like leftovers/mistakes:
      ‘NanoStringDiff.log’
    Please remove them from your package.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘NanoStringDiff.Rnw’ using Sweave
    Loading required package: Biobase
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
        IQR, mad, sd, var, xtabs
    ...
    l.37 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘NanoStringDiff.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘NanoStringDiff.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# nearBynding

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 127

Run `revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        extdata   6.9Mb
    ```

# nempi

<details>

* Version: 1.6.0
* GitHub: https://github.com/cbg-ethz/nempi
* Source code: https://github.com/cran/nempi
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 119

Run `revdep_details(, "nempi")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘nempi.Rmd’ using rmarkdown
    Error: processing vignette 'nempi.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘nempi.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘nempi.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# netZooR

<details>

* Version: 1.2.0
* GitHub: https://github.com/netZoo/netZooR
* Source code: https://github.com/cran/netZooR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 222

Run `revdep_details(, "netZooR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      trying URL 'https://stringdb-static.org/download/protein.aliases.v11.0/83332.protein.aliases.v11.0.txt.gz'
      Content type 'application/octet-stream' length 614783 bytes (600 KB)
      ==================================================
      downloaded 600 KB
      
      trying URL 'https://stringdb-static.org/download/protein.info.v11.0/83332.protein.info.v11.0.txt.gz'
    ...
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─netZooR::pandaPy(T4_expression_file_path)
       7.   └─reticulate::source_python(pandapath, convert = TRUE)
       8.     └─reticulate::py_run_file(file, local = FALSE, convert = convert)
       9.       └─reticulate:::py_run_file_impl(file, local, convert)
      
      [ FAIL 2 | WARN 1 | SKIP 0 | PASS 39 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data      1.5Mb
        extdata   2.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    runEgret: no visible binding for global variable ‘NA12878’
    Undefined global functions or variables:
      NA12878
    ```

# NormalyzerDE

<details>

* Version: 1.16.0
* GitHub: https://github.com/ComputationalProteomics/NormalyzerDE
* Source code: https://github.com/cran/NormalyzerDE
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 162

Run `revdep_details(, "NormalyzerDE")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# numbat

<details>

* Version: 1.0.2
* GitHub: https://github.com/kharchenkolab/numbat
* Source code: https://github.com/cran/numbat
* Date/Publication: 2022-09-15 06:10:02 UTC
* Number of recursive dependencies: 179

Run `revdep_details(, "numbat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
        libs   6.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘argparse’ ‘tidyverse’ ‘vcfR’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# obfuscatoR

<details>

* Version: 0.2.1
* GitHub: https://github.com/edsandorf/obfuscatoR
* Source code: https://github.com/cran/obfuscatoR
* Date/Publication: 2020-11-19 08:20:09 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "obfuscatoR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# omicplotR

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 91

Run `revdep_details(, "omicplotR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘ALDEx2’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# omicsPrint

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 138

Run `revdep_details(, "omicsPrint")` for more info

</details>

## In both

*   checking LazyData ... WARNING
    ```
      LazyData DB of 7.3 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data   7.3Mb
        doc    1.2Mb
    ```

# omicsViewer

<details>

* Version: 1.2.0
* GitHub: https://github.com/mengchen18/omicsViewer
* Source code: https://github.com/cran/omicsViewer
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 182

Run `revdep_details(, "omicsViewer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        extdata   4.8Mb
    ```

# OncoBayes2

<details>

* Version: 0.8-7
* GitHub: NA
* Source code: https://github.com/cran/OncoBayes2
* Date/Publication: 2022-08-25 12:42:40 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "OncoBayes2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 54.8Mb
      sub-directories of 1Mb or more:
        libs  53.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# OptimalDesign

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/OptimalDesign
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 27

Run `revdep_details(, "OptimalDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'gurobi', 'slam'
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# OUTRIDER

<details>

* Version: 1.16.0
* GitHub: https://github.com/gagneurlab/OUTRIDER
* Source code: https://github.com/cran/OUTRIDER
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 174

Run `revdep_details(, "OUTRIDER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘OUTRIDER.Rnw’ using knitr
    The magick package is required to crop "figure/deVsOutlier-1.png" but not available.
    229 genes did not pass the filter due to zero counts. This is 22.9% of the genes.
    Mon Nov 14 18:49:26 2022: SizeFactor estimation ...
    Mon Nov 14 18:49:27 2022: Controlling for confounders ...
    Using estimated q with: 23
    Mon Nov 14 18:49:27 2022: Using the autoencoder implementation for controlling.
    Mon Nov 14 18:52:28 2022: Used the autoencoder implementation for controlling.
    Mon Nov 14 18:52:28 2022: P-value calculation ...
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘OUTRIDER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘OUTRIDER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        libs   3.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# pandaR

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 58

Run `revdep_details(, "pandaR")` for more info

</details>

## In both

*   checking package subdirectories ... WARNING
    ```
    Invalid citation information in ‘inst/CITATION’:
      Error in tools:::.parse_CITATION_file(file, meta$Encoding): non-ASCII input in a CITATION file without a declared encoding
    ```

*   checking LazyData ... WARNING
    ```
      LazyData DB of 9.0 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
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

# pARI

<details>

* Version: 1.1.1
* GitHub: https://github.com/angeella/pARI
* Source code: https://github.com/cran/pARI
* Date/Publication: 2022-01-10 08:22:42 UTC
* Number of recursive dependencies: 34

Run `revdep_details(, "pARI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# PathoStat

<details>

* Version: 1.24.0
* GitHub: https://github.com/mani2012/PathoStat
* Source code: https://github.com/cran/PathoStat
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 203

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

* Version: 1.90.0
* GitHub: https://github.com/hredestig/pcamethods
* Source code: https://github.com/cran/pcaMethods
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 32

Run `revdep_details(, "pcaMethods")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ade4’
    ```

# PDATK

<details>

* Version: 1.6.0
* GitHub: https://github.com/bhklab/PDATK
* Source code: https://github.com/cran/PDATK
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 265

Run `revdep_details(, "PDATK")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc   3.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .calculateMSMthresholds: no visible binding for global variable
      ‘funContext’
    .plotNetwork: no visible global function definition for ‘legend’
    NCSModel: no visible binding for global variable ‘metric’
    NCSModel: no visible binding for global variable ‘comparison’
    NCSModel: no visible binding for global variable ‘centroid_K’
    NCSModel: no visible binding for global variable ‘assay_K’
    NetworkCommunitySearchModel: no visible binding for global variable
      ‘metric’
    NetworkCommunitySearchModel: no visible binding for global variable
    ...
    trainModel,NCSModel: no visible binding for global variable
      ‘cor_threshold’
    Undefined global functions or variables:
      .error assay_K assay_cohort centroid_K centroid_cohort cluster_label
      comparison cor_threshold dev.off feature feature_rank feature_score
      funContext ingroup_proportion legend metric missignAssays pdf tmp
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("graphics", "legend")
    to your NAMESPACE file.
    ```

# penppml

<details>

* Version: 0.2.0
* GitHub: https://github.com/tomzylkin/penppml
* Source code: https://github.com/cran/penppml
* Date/Publication: 2022-10-24 10:32:37 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "penppml")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.5Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        libs   9.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fixest’
      All declared Imports should be used.
    ```

# phosphonormalizer

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 51

Run `revdep_details(, "phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 194

Run `revdep_details(, "Pigengene")` for more info

</details>

## Newly fixed

*   checking examples ... ERROR
    ```
    Running examples in ‘Pigengene-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: gene.mapping
    > ### Title: Maps gene IDs
    > ### Aliases: gene.mapping
    > ### Keywords: misc
    > 
    > ### ** Examples
    > 
    ...
    +         outputDb=list(org.Hs.eg.db,org.Mm.eg.db), verbose=1)
    Mapping to:  org.Hs.eg.db-SYMBOL 
    'select()' returned 1:1 mapping between keys and columns
    Loading required package: biomaRt
    Warning: Ensembl will soon enforce the use of https.
    Ensure the 'host' argument includes "https://"
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: [www.ensembl.org:80] Operation timed out after 10000 milliseconds with 499053 out of -1 bytes received
    Calls: gene.mapping ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Pigengene_inference.Rnw’ using knitr
    /bin/bash: line 1: /tmp/pdfcrop_0632/figure/loading-1.pdf.gs.out: No such file or directory
    could not overwrite /tmp/pdfcrop_0632/figure/loading-1.pdf.fix.qs at /software/c4/cbi/software/pdfcrop-0.4b/pdfcrop line 74.
    /bin/bash: line 1: /tmp/pdfcrop_0173/figure/tree-1.pdf.gs.out: No such file or directory
    could not overwrite /tmp/pdfcrop_0173/figure/tree-1.pdf.fix.qs at /software/c4/cbi/software/pdfcrop-0.4b/pdfcrop line 74.
    /bin/bash: line 1: /tmp/pdfcrop_0591/figure/pigengene-1.pdf.gs.out: No such file or directory
    could not overwrite /tmp/pdfcrop_0591/figure/pigengene-1.pdf.fix.qs at /software/c4/cbi/software/pdfcrop-0.4b/pdfcrop line 74.
    /bin/bash: line 1: /tmp/pdfcrop_0024/figure/bn-1.pdf.gs.out: No such file or directory
    could not overwrite /tmp/pdfcrop_0024/figure/bn-1.pdf.fix.qs at /software/c4/cbi/software/pdfcrop-0.4b/pdfcrop line 74.
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘Pigengene_inference.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘Pigengene_inference.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in completeSubclasses(classDef2, class1, obj, where) : 
      trying to get slot "subclasses" from an object of a basic class ("NULL") with no slots
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
    
    one.step.pigengene: no visible binding for global variable
      ‘org.Hs.eg.db’
    Undefined global functions or variables:
      org.Hs.eg.db
    ```

# pipeComp

<details>

* Version: 1.8.0
* GitHub: https://github.com/plger/pipeComp
* Source code: https://github.com/cran/pipeComp
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 207

Run `revdep_details(, "pipeComp")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("exampleDEAresults", package = "pipeComp"):
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘exampleDEAresults’
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘exampleDEAresults’
    Output for data("exampleResults", package = "pipeComp"):
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘exampleResults’
      Warning: namespace ‘DBI’ is not available and has been replaced
      by .GlobalEnv when processing object ‘exampleResults’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc   4.5Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.compileExcludedCells’ ‘.getMM’ ‘.homogenizeDEA’ ‘.runf’
    ```

*   checking R code for possible problems ... NOTE
    ```
    scrna_describeDatasets: no visible binding for global variable
      ‘cluster’
    scrna_describeDatasets: no visible binding for global variable ‘nb’
    scrna_describeDatasets : pf: no visible binding for global variable
      ‘.x’
    scrna_describeDatasets : rd: no visible binding for global variable ‘y’
    scrna_describeDatasets : rd: no visible binding for global variable
      ‘cluster’
    scrna_evalPlot_filtering: no visible binding for global variable
      ‘max.lost’
    ...
    scrna_evalPlot_filtering: no visible binding for global variable
      ‘doubletmethod’
    scrna_evalPlot_filtering: no visible binding for global variable
      ‘method’
    scrna_evalPlot_overall: no visible binding for global variable
      ‘true.nbClusts’
    scrna_evalPlot_overall: no visible binding for global variable ‘n_clus’
    Undefined global functions or variables:
      .x cluster doubletmethod filt max.lost mean_F1 method n_clus nb
      true.nbClusts y
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘edgeR’ ‘sva’
    ```

# PlackettLuce

<details>

* Version: 0.4.2
* GitHub: https://github.com/hturner/PlackettLuce
* Source code: https://github.com/cran/PlackettLuce
* Date/Publication: 2022-08-15 07:50:05 UTC
* Number of recursive dependencies: 183

Run `revdep_details(, "PlackettLuce")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘PLMIX’
    ```

# pmp

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/pmp
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 105

Run `revdep_details(, "pmp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    5.5Mb
    ```

# ProteoDisco

<details>

* Version: 1.4.0
* GitHub: https://github.com/ErasmusMC-CCBC/ProteoDisco
* Source code: https://github.com/cran/ProteoDisco
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 186

Run `revdep_details(, "ProteoDisco")` for more info

</details>

## In both

*   checking whether package ‘ProteoDisco’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘dplyr::failwith’ by ‘plyr::failwith’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::id’ by ‘plyr::id’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::summarize’ by ‘plyr::summarize’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::count’ by ‘plyr::count’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::desc’ by ‘plyr::desc’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::mutate’ by ‘plyr::mutate’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::arrange’ by ‘plyr::arrange’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::rename’ by ‘plyr::rename’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::summarise’ by ‘plyr::summarise’ when loading ‘ProteoDisco’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ProteoDisco/new/ProteoDisco.Rcheck/00install.out’ for details.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic 'show' and siglist 'ProteoDiscography'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘ProteoDisco’ for: ‘show’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error loading dataset 'ProteoDiscographyExample.hg19':
       Error in h(simpleError(msg, call)) : 
        error in evaluating the argument 'x' in selecting a method for function 'seqlevels': UCSC library operation failed
      
    ```

# ProteoMM

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 99

Run `revdep_details(, "ProteoMM")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# QDNAseq

<details>

* Version: 1.34.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 83

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# QFeatures

<details>

* Version: 1.8.0
* GitHub: https://github.com/RforMassSpectrometry/QFeatures
* Source code: https://github.com/cran/QFeatures
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 152

Run `revdep_details(, "QFeatures")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'QFeatures-aggregate.Rd':
      ‘sparseMatrix’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc   4.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’
      ‘MultiAssayExperiment:::.sampleMapFromData’
      See the note in ?`:::` about the use of this operator.
    ```

# RaceID

<details>

* Version: 0.2.7
* GitHub: NA
* Source code: https://github.com/cran/RaceID
* Date/Publication: 2022-11-01 14:02:40 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "RaceID")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        data   2.1Mb
        doc    6.6Mb
        libs   2.2Mb
    ```

# rADA

<details>

* Version: 1.1.9
* GitHub: NA
* Source code: https://github.com/cran/rADA
* Date/Publication: 2021-03-23 19:40:06 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "rADA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘rada_vignette.Rmd’ using knitr
    Loading required package: grid
    Loading required package: checkmate
    Loading required package: abind
    Quitting from lines 62-70 (rada_vignette.Rmd) 
    Error: processing vignette 'rada_vignette.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘rada_vignette.Rmd’
    ...
    Quitting from lines 62-70 (rada_vignette_supplemental.Rmd) 
    Error: processing vignette 'rada_vignette_supplemental.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘rada_vignette_supplemental.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘rada_vignette.Rmd’ ‘rada_vignette_supplemental.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        doc   5.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Hmisc’ ‘car’ ‘dplyr’ ‘grid’ ‘gridExtra’ ‘knitr’ ‘lmerTest’ ‘tidyr’
      All declared Imports should be used.
    ```

# RadioGx

<details>

* Version: 2.2.0
* GitHub: NA
* Source code: https://github.com/cran/RadioGx
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 141

Run `revdep_details(, "RadioGx")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'RadioSet'
      ‘name’ ‘molecularProfiles’ ‘cell’ ‘radiation’ ‘sensitivityInfo’
      ‘sensitivityRaw’ ‘sensitivityProfiles’ ‘sensitivityN’ ‘perturbationN’
      ‘curationCell’ ‘curationTissue’ ‘datasetType’ ‘verify’
    
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
        data   3.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    RadioSet: no visible binding for global variable ‘treatment’
    RadioSet: no visible binding for global variable ‘curationTreatment’
    RadioSet: no visible binding for global variable ‘curationSample’
    Undefined global functions or variables:
      curationSample curationTreatment treatment
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 14 marked UTF-8 strings
    ```

# RBesT

<details>

* Version: 1.6-4
* GitHub: NA
* Source code: https://github.com/cran/RBesT
* Date/Publication: 2022-08-08 13:40:24 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "RBesT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.5Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs  48.1Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# regsem

<details>

* Version: 1.9.3
* GitHub: https://github.com/Rjacobucci/regsem
* Source code: https://github.com/cran/regsem
* Date/Publication: 2022-08-23 18:10:02 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "regsem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# rhierbaps

<details>

* Version: 1.1.3
* GitHub: https://github.com/gtonkinhill/rhierbaps
* Source code: https://github.com/cran/rhierbaps
* Date/Publication: 2019-12-11 14:20:05 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "rhierbaps")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# RiboDiPA

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/RiboDiPA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 146

Run `revdep_details(, "RiboDiPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        data   2.9Mb
        doc    1.3Mb
        libs   1.3Mb
    ```

# RJcluster

<details>

* Version: 3.2.4
* GitHub: NA
* Source code: https://github.com/cran/RJcluster
* Date/Publication: 2022-02-14 21:30:02 UTC
* Number of recursive dependencies: 58

Run `revdep_details(, "RJcluster")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   7.0Mb
    ```

# RNAmodR

<details>

* Version: 1.12.0
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 192

Run `revdep_details(, "RNAmodR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/3646963461f0c_2549'
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/3646970d8920f_2537'
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/3646965b03d84_2539'
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/364692eccd278_2541'
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/3646972eee1ce_2543'
      [E::idx_find_and_load] Could not retrieve index file for '/c4/home/henrik/.cache/R/ExperimentHub/3646965f8c8ee_2545'
    ...
       1. ├─testthat::expect_error(...) at test-2Modifier.R:137:2
       2. │ └─testthat:::quasi_capture(...)
       3. │   ├─testthat (local) .capture(...)
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─RNAmodR:::.get_classname_for_ModifierSet_from_modifier_type("DataFrame")
      
      [ FAIL 1 | WARN 4 | SKIP 0 | PASS 898 ]
      Error: Test failures
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

# RNAseqQC

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/RNAseqQC
* Date/Publication: 2022-06-15 09:50:06 UTC
* Number of recursive dependencies: 176

Run `revdep_details(, "RNAseqQC")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        doc    2.2Mb
    ```

# RnBeads

<details>

* Version: 2.16.0
* GitHub: NA
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 267

Run `revdep_details(, "RnBeads")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘RnBeads-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: rnb.execute.pOOBAH
    > ### Title: rnb.execute.pOOBAH
    > ### Aliases: rnb.execute.pOOBAH
    > 
    > ### ** Examples
    > 
    > library(RnBeads.hg19) 
    > data(small.example.object)
    > filtered <- rnb.execute.pOOBAH(rnb.set.example)
    Error in stopAndCache(title) : 
    | File KYCG.HM450.mask.20220123 needs to be cached to be used in sesame.
    | Please make sure you have updated ExperimentHub and try
    | > sesameDataCache()
    | to retrieve and cache needed sesame data.
    Calls: rnb.execute.pOOBAH ... capture.output -> withVisible -> .sesameDataGet -> stopAndCache
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics', 'S4Vectors', 'GenomicRanges', 'MASS', 'cluster',
      'ff', 'fields', 'ggplot2', 'gplots', 'grid', 'gridExtra', 'limma',
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
      installed size is  9.0Mb
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
    Package in Depends field not imported from: 'grid'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported objects imported by ':::' calls:
      'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
      'grDevices:::.smoothScatterCalcDensity'
      'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
      'minfi:::.normalizeFunnorm450k'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .stopImplicitCluster: no visible global function definition for
      ‘stopCluster’
    MethyLumiSet2RnBeadSet: no visible global function definition for
      ‘phenoData’
    MethyLumiSet2RnBeadSet: no visible global function definition for
      ‘assayDataElementNames’
    MethyLumiSet2RnBeadSet: no visible global function definition for
      ‘featureNames’
    MethyLumiSet2RnBeadSet: no visible global function definition for
      ‘varLabels’
    ...
      plotTracks preprocessSWAN pvalues qvalue readMethylome readSNPTable
      refText reg.type region.size registerDoParallel relative.coord
      removeSNPs report runLOLA samples segmentPMDs segmentUMRsLMRs
      seqlengths seqlevels<- setNames sigCategories sigset.l sites2ignore
      size solve.QP stopCluster sva target texthere tsne type types
      ucscTableQuery universeCounts useMart v var.diff varFit varLabels x
      x2 xmlValue y y2 yint
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘RnBeads.Rnw’ using Sweave
    Error: processing vignette 'RnBeads.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'RnBeads.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `vmargin.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ...
    l.10 \usepackage
                    [english,american]{babel}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘RnBeads_Annotations.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘RnBeads.Rnw’ ‘RnBeads_Annotations.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# robustlm

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/robustlm
* Date/Publication: 2021-03-22 15:40:02 UTC
* Number of recursive dependencies: 27

Run `revdep_details(, "robustlm")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# scDataviz

<details>

* Version: 1.8.0
* GitHub: https://github.com/kevinblighe/scDataviz
* Source code: https://github.com/cran/scDataviz
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 187

Run `revdep_details(, "scDataviz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        doc   5.6Mb
    ```

# scDHA

<details>

* Version: 1.2.0
* GitHub: https://github.com/duct317/scDHA
* Source code: https://github.com/cran/scDHA
* Date/Publication: 2022-08-18 20:40:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "scDHA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   3.2Mb
        libs   4.4Mb
    ```

# SCFA

<details>

* Version: 1.8.0
* GitHub: https://github.com/duct317/SCFA
* Source code: https://github.com/cran/SCFA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 62

Run `revdep_details(, "SCFA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Example.Rmd’ using rmarkdown
    Error: processing vignette 'Example.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘Example.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# scISR

<details>

* Version: 0.1.1
* GitHub: https://github.com/duct317/scISR
* Source code: https://github.com/cran/scISR
* Date/Publication: 2022-06-30 06:20:08 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "scISR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘markdown’
      All declared Imports should be used.
    ```

# scITD

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/scITD
* Date/Publication: 2022-03-23 18:20:02 UTC
* Number of recursive dependencies: 230

Run `revdep_details(, "scITD")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ssvd’
    ```

# scmap

<details>

* Version: 1.20.0
* GitHub: https://github.com/hemberg-lab/scmap
* Source code: https://github.com/cran/scmap
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 77

Run `revdep_details(, "scmap")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
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
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.1Mb
        libs   2.3Mb
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

# scMET

<details>

* Version: 1.0.0
* GitHub: https://github.com/andreaskapou/scMET
* Source code: https://github.com/cran/scMET
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 106

Run `revdep_details(, "scMET")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.0Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs  45.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# scone

<details>

* Version: 1.22.0
* GitHub: https://github.com/YosefLab/scone
* Source code: https://github.com/cran/scone
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 262

Run `revdep_details(, "scone")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    sconeReport: no visible global function definition for
      ‘visNetworkOutput’
    sconeReport: no visible global function definition for ‘plotlyOutput’
    sconeReport : server: no visible global function definition for
      ‘renderVisNetwork’
    sconeReport : server: no visible global function definition for ‘%>%’
    sconeReport : server: no visible global function definition for
      ‘visNetwork’
    sconeReport : server: no visible global function definition for
      ‘visHierarchicalLayout’
    ...
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

# scp

<details>

* Version: 1.8.0
* GitHub: https://github.com/UCLouvain-CBIO/scp
* Source code: https://github.com/cran/scp
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 176

Run `revdep_details(, "scp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MultiAssayExperiment:::.sampleMapFromData’ ‘QFeatures:::.get_Hits’
      See the note in ?`:::` about the use of this operator.
    ```

# scPCA

<details>

* Version: 1.12.0
* GitHub: https://github.com/PhilBoileau/scPCA
* Source code: https://github.com/cran/scPCA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 186

Run `revdep_details(, "scPCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DelayedArray’ ‘matrixStats’
      All declared Imports should be used.
    ```

# sctransform

<details>

* Version: 0.3.5
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2022-09-21 17:10:07 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# seagull

<details>

* Version: 1.1.0
* GitHub: https://github.com/jklosa/seagull
* Source code: https://github.com/cran/seagull
* Date/Publication: 2021-04-20 12:10:02 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "seagull")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.2Mb
      sub-directories of 1Mb or more:
        libs  11.6Mb
    ```

# sechm

<details>

* Version: 1.6.0
* GitHub: https://github.com/plger/sechm
* Source code: https://github.com/cran/sechm
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 80

Run `revdep_details(, "sechm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ggplot2’
    ```

# seqArchR

<details>

* Version: 1.2.0
* GitHub: https://github.com/snikumbh/seqArchR
* Source code: https://github.com/cran/seqArchR
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 122

Run `revdep_details(, "seqArchR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘seqArchR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: seqArchR
    > ### Title: seqArchR: A package for de novo discovery of different sequence
    > ###   architectures
    > ### Aliases: seqArchR
    > 
    > ### ** Examples
    > 
    ...
    ── Outer chunk 1 of 1 [Size: 200] ──
    
    ── Inner chunk 1 of 2 [Size: 100] 
    Error: BiocParallel errors
      2 remote errors, element index: 1, 51
      98 unevaluated and other errors
      first remote error:
    Error in py_run_file_impl(file, local, convert): ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.local/share/r-miniconda/envs/r-reticulate/lib/python3.7/site-packages/scipy/sparse/_sparsetools.cpython-37m-x86_64-linux-gnu.so)
    
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        6.           └─seqArchR:::.stability_model_select_pyNMF2(...)
        7.             └─seqArchR:::.perform_multiple_NMF_runs(...)
        8.               ├─BiocParallel::bplapply(...)
        9.               └─BiocParallel::bplapply(...)
       10.                 └─BiocParallel:::.bpinit(...)
      ── Error ('test_seqArchR_main.R:149'): seqArchR (cv) works when timeFlag is FALSE ──
    ...
        5.         └─seqArchR:::.handle_chunk_w_NMF2(...)
        6.           └─seqArchR:::.stability_model_select_pyNMF2(...)
        7.             └─seqArchR:::.perform_multiple_NMF_runs(...)
        8.               ├─BiocParallel::bplapply(...)
        9.               └─BiocParallel::bplapply(...)
       10.                 └─BiocParallel:::.bpinit(...)
      
      [ FAIL 3 | WARN 0 | SKIP 4 | PASS 101 ]
      Error: Test failures
      Execution halted
    ```

# Seurat

<details>

* Version: 4.2.1
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2022-11-08 00:00:02 UTC
* Number of recursive dependencies: 251

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        libs  12.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SGP

<details>

* Version: 2.0-0.0
* GitHub: https://github.com/CenterForAssessment/SGP
* Source code: https://github.com/cran/SGP
* Date/Publication: 2022-05-27 23:40:06 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "SGP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   4.9Mb
    ```

# shinyMethyl

<details>

* Version: 1.34.0
* GitHub: NA
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 159

Run `revdep_details(, "shinyMethyl")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘shinyMethyl.Rnw’ using knitr
    Loading required package: minfi
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
        IQR, mad, sd, var, xtabs
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
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
    addHoverDensity: no visible global function definition for ‘lines’
    addHoverPoints: no visible global function definition for ‘points’
    addHoverQC: no visible global function definition for ‘points’
    densitiesPlot: no visible global function definition for ‘lines’
    plotDesign450k: no visible global function definition for ‘par’
    plotDiscrepancyGenders: no visible global function definition for
      ‘legend’
    plotInternalControls: no visible global function definition for ‘grid’
    plotInternalControls: no visible global function definition for
      ‘abline’
    ...
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

* Version: 2.2.0
* GitHub: NA
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 197

Run `revdep_details(, "SIAMCAT")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 23.4Mb
      sub-directories of 1Mb or more:
        doc      18.4Mb
        extdata   2.1Mb
        help      1.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ranger’
    ```

# SICtools

<details>

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 39

Run `revdep_details(, "SICtools")` for more info

</details>

## In both

*   checking whether package ‘SICtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      bam.c:128:2: warning: ‘__builtin_strncpy’ output truncated before terminating nul copying 4 bytes from a string of the same length [-Wstringop-truncation]
      razf.c:178:2: warning: ‘__builtin_strncpy’ output truncated before terminating nul copying 4 bytes from a string of the same length [-Wstringop-truncation]
      errmod.c:79:8: warning: self-comparison always evaluates to false [-Wtautological-compare]
      md5.c:155:26: warning: argument to ‘sizeof’ in ‘memset’ call is the same expression as the destination; did you mean to dereference it? [-Wsizeof-pointer-memaccess]
      Warning: replacing previous import ‘plyr::count’ by ‘matrixStats::count’ when loading ‘SICtools’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'applyPileups' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
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

# signifinder

<details>

* Version: 1.0.0
* GitHub: https://github.com/CaluraLab/signifinder
* Source code: https://github.com/cran/signifinder
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 264

Run `revdep_details(, "signifinder")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘SpatialExperiment’, ‘curatedTCGAData’, ‘EDASeq’
    ```

# SimBu

<details>

* Version: 1.0.0
* GitHub: https://github.com/omnideconv/SimBu
* Source code: https://github.com/cran/SimBu
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 192

Run `revdep_details(, "SimBu")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘SimBu-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: dataset_h5ad
    > ### Title: Build SummarizedExperiment using a h5ad file for the counts
    > ### Aliases: dataset_h5ad
    > 
    > ### ** Examples
    > 
    > h5 <- system.file("extdata", "anndata.h5ad", package = "SimBu")
    ...
    +   h5ad_file_counts = h5,
    +   name = "h5ad_dataset",
    +   cell_id_col = "id", # this will use the 'id' column of the metadata as cell identifiers
    +   cell_type_col = "group", # this will use the 'group' column of the metadata as cell type info
    +   cells_in_obs = TRUE
    + ) # in case your cell information is stored in the var layer, switch to FALSE
    Could not access h5ad file: /c4/home/henrik/repositories/matrixStats/revdep/checks/SimBu/new/SimBu.Rcheck/SimBu/extdata/anndata.h5ad
    Error in SimBu::dataset_h5ad(h5ad_file_counts = h5, name = "h5ad_dataset",  : 
      Cannot find "id" column in cell annotation of h5ad_file_counts.
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Finished simulation.
      Finished simulation.
      Finished simulation.
      Finished simulation.
      Finished simulation.
      Finished simulation.
    ...
      Backtrace:
          ▆
       1. ├─testthat::expect_s4_class(...) at test_dataset.R:77:2
       2. │ └─testthat::quasi_label(enquo(object), arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─SimBu::dataset_h5ad(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 28 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘SimBu.Rmd’ using rmarkdown
    --- finished re-building ‘SimBu.Rmd’
    
    --- re-building ‘sfaira_vignette.Rmd’ using rmarkdown
    --- finished re-building ‘sfaira_vignette.Rmd’
    
    --- re-building ‘simulator_input_output.Rmd’ using rmarkdown
    Quitting from lines 95-104 (simulator_input_output.Rmd) 
    ...
    --- failed re-building ‘simulator_input_output.Rmd’
    
    --- re-building ‘simulator_scaling_factors.Rmd’ using rmarkdown
    --- finished re-building ‘simulator_scaling_factors.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘simulator_input_output.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
      .pre-commit-config.yaml
      .prettierignore
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘SimBu’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/SimBu/new/SimBu.Rcheck/00install.out’ for details.
    ```

# simPop

<details>

* Version: 2.1.2
* GitHub: https://github.com/statistikat/simPop
* Source code: https://github.com/cran/simPop
* Date/Publication: 2022-11-07 15:10:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "simPop")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        libs   4.9Mb
    ```

# sindyr

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/sindyr
* Date/Publication: 2020-06-09 05:20:03 UTC
* Number of recursive dependencies: 98

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

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2022-11-03
* Number of recursive dependencies: 171

Run `revdep_details(, "Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘mTECs.Rnw’ using knitr
    Loading required package: S4Vectors
    Loading required package: stats4
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘mTECs.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘mTECs.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 904.4Mb
      sub-directories of 1Mb or more:
        data  895.1Mb
        doc     9.3Mb
    ```

# singleCellTK

<details>

* Version: 2.8.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 394

Run `revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        extdata   1.5Mb
        shiny     2.7Mb
    ```

# singscore

<details>

* Version: 1.18.0
* GitHub: https://github.com/DavisLaboratory/singscore
* Source code: https://github.com/cran/singscore
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 141

Run `revdep_details(, "singscore")` for more info

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
    ...
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

# SkeweDF

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/SkeweDF
* Date/Publication: 2021-01-16 09:40:05 UTC
* Number of recursive dependencies: 28

Run `revdep_details(, "SkeweDF")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# slasso

<details>

* Version: 1.0.0
* GitHub: https://github.com/unina-sfere/slasso
* Source code: https://github.com/cran/slasso
* Date/Publication: 2021-10-15 07:40:02 UTC
* Number of recursive dependencies: 97

Run `revdep_details(, "slasso")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppArmadillo’
      All declared Imports should be used.
    ```

# sparrow

<details>

* Version: 1.4.0
* GitHub: https://github.com/lianos/sparrow
* Source code: https://github.com/cran/sparrow
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 205

Run `revdep_details(, "sparrow")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        doc       2.0Mb
        extdata   2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    geneSetsStats: no visible binding for global variable ‘direction’
    Undefined global functions or variables:
      direction
    ```

# sparseMatrixStats

<details>

* Version: 1.10.0
* GitHub: https://github.com/const-ae/sparseMatrixStats
* Source code: https://github.com/cran/sparseMatrixStats
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 58

Run `revdep_details(, "sparseMatrixStats")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test-row_functions.R:271'): rowXXDiffs work ───────────────────────
      rowVarDiffs(sp_mat, diff = 0, rows = row_subset, cols = col_subset) not equal to matrixStats::rowVarDiffs(mat, diff = 0, rows = row_subset, cols = col_subset).
      names for target but not for current
      ── Failure ('test-row_functions.R:273'): rowXXDiffs work ───────────────────────
      rowSdDiffs(sp_mat, diff = 0) not equal to matrixStats::rowSdDiffs(mat, diff = 0).
      names for target but not for current
    ...
      ── Failure ('test-row_functions.R:288'): rowXXDiffs work ───────────────────────
      rowIQRDiffs(sp_mat, na.rm = TRUE) not equal to matrixStats::rowIQRDiffs(mat, na.rm = TRUE).
      names for target but not for current
      ── Failure ('test-row_functions.R:289'): rowXXDiffs work ───────────────────────
      rowIQRDiffs(sp_mat, diff = 0, rows = row_subset, cols = col_subset) not equal to matrixStats::rowIQRDiffs(mat, diff = 0, rows = row_subset, cols = col_subset).
      names for target but not for current
      
      [ FAIL 372 | WARN 1 | SKIP 21 | PASS 1383 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# spathial

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/spathial
* Date/Publication: 2020-04-10 18:20:02 UTC
* Number of recursive dependencies: 36

Run `revdep_details(, "spathial")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘irlba’ ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# spatzie

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/spatzie
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 187

Run `revdep_details(, "spatzie")` for more info

</details>

## In both

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# splatter

<details>

* Version: 1.22.0
* GitHub: https://github.com/Oshlack/splatter
* Source code: https://github.com/cran/splatter
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 249

Run `revdep_details(, "splatter")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        doc   9.0Mb
    ```

# SpliceWiz

<details>

* Version: 1.0.1
* GitHub: https://github.com/alexchwong/SpliceWiz
* Source code: https://github.com/cran/SpliceWiz
* Date/Publication: 2022-11-09
* Number of recursive dependencies: 197

Run `revdep_details(, "SpliceWiz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.7Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        doc    5.1Mb
        libs   9.8Mb
    ```

# SPOTlight

<details>

* Version: 1.2.0
* GitHub: https://github.com/MarcElosua/SPOTlight
* Source code: https://github.com/cran/SPOTlight
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 251

Run `revdep_details(, "SPOTlight")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    plotSpatialScatterpie: no visible binding for global variable ‘coord_x’
    plotSpatialScatterpie: no visible binding for global variable ‘coord_y’
    Undefined global functions or variables:
      coord_x coord_y
    ```

# spqn

<details>

* Version: 1.10.0
* GitHub: https://github.com/hansenlab/spqn
* Source code: https://github.com/cran/spqn
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 70

Run `revdep_details(, "spqn")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘BiocGenerics’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# SRTsim

<details>

* Version: 0.99.2
* GitHub: NA
* Source code: https://github.com/cran/SRTsim
* Date/Publication: 2022-06-24 08:10:02 UTC
* Number of recursive dependencies: 162

Run `revdep_details(, "SRTsim")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘SRTsim.Rmd’ using rmarkdown
    Quitting from lines 26-47 (SRTsim.Rmd) 
    Error: processing vignette 'SRTsim.Rmd' failed with diagnostics:
    there is no package called 'BiocFileCache'
    --- failed re-building ‘SRTsim.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘SRTsim.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# stabiliser

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/stabiliser
* Date/Publication: 2022-06-07 12:00:04 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "stabiliser")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘knitr’
      All declared Imports should be used.
    ```

# stapler

<details>

* Version: 0.7.1
* GitHub: https://github.com/muschellij2/stapler
* Source code: https://github.com/cran/stapler
* Date/Publication: 2020-01-09 18:50:06 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "stapler")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# stm

<details>

* Version: 1.3.6
* GitHub: https://github.com/bstewart/stm
* Source code: https://github.com/cran/stm
* Date/Publication: 2020-09-18 13:50:02 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "stm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   3.3Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘stmVignette.Rnw’ using Sweave
    stm v1.3.6 successfully loaded. See ?stm for help. 
     Papers, resources, and other materials at structuraltopicmodel.com
    Error: processing vignette 'stmVignette.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'stmVignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `ulem.sty' not found.
    
    ...
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

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 14

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
    Installing package into ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
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
    Installing package into ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
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

* Version: 1.0.1
* GitHub: https://github.com/dcomtois/summarytools
* Source code: https://github.com/cran/summarytools
* Date/Publication: 2022-05-20 07:30:05 UTC
* Number of recursive dependencies: 84

Run `revdep_details(, "summarytools")` for more info

</details>

## In both

*   checking whether package ‘summarytools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/summarytools/new/summarytools.Rcheck/00install.out’ for details.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked UTF-8 strings
    ```

# susieR

<details>

* Version: 0.12.27
* GitHub: https://github.com/stephenslab/susieR
* Source code: https://github.com/cran/susieR
* Date/Publication: 2022-09-06 12:50:02 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "susieR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘finemapping.Rmd’ using rmarkdown
    --- finished re-building ‘finemapping.Rmd’
    
    --- re-building ‘finemapping_summary_statistics.Rmd’ using rmarkdown
    --- finished re-building ‘finemapping_summary_statistics.Rmd’
    
    --- re-building ‘l0_initialization.Rmd’ using rmarkdown
    --- finished re-building ‘l0_initialization.Rmd’
    
    ...
    l.8 \usepackage
                   {xspace}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘trendfiltering_derivations.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘trendfiltering_derivations.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# sva

<details>

* Version: 3.46.0
* GitHub: NA
* Source code: https://github.com/cran/sva
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 104

Run `revdep_details(, "sva")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘sva.Rnw’ using Sweave
    Loading required package: mgcv
    Loading required package: nlme
    This is mgcv 1.8-41. For overview type 'help("mgcv-package")'.
    Loading required package: genefilter
    Loading required package: BiocParallel
    Loading required package: Biobase
    Loading required package: BiocGenerics
    
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘sva.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘sva.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# TCA

<details>

* Version: 1.2.1
* GitHub: https://github.com/cozygene/TCA
* Source code: https://github.com/cran/TCA
* Date/Publication: 2021-02-14 21:50:06 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "TCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘quadprog’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# tenXplore

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/tenXplore
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 129

Run `revdep_details(, "tenXplore")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tenXplore.Rmd’ using rmarkdown
    Error: processing vignette 'tenXplore.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘tenXplore.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘tenXplore.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tidybulk

<details>

* Version: 1.10.0
* GitHub: https://github.com/stemangiola/tidybulk
* Source code: https://github.com/cran/tidybulk
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 385

Run `revdep_details(, "tidybulk")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.1Mb
        doc    1.2Mb
        help   1.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .adjust_abundance_se: no visible binding for global variable ‘.’
    .adjust_abundance_se: no visible binding for global variable ‘x’
    .aggregate_duplicates_se: no visible binding for global variable ‘.’
    .aggregate_duplicates_se: no visible binding for global variable
      ‘group_name’
    .aggregate_duplicates_se: no visible binding for global variable
      ‘group’
    .as_SummarizedExperiment: no visible binding for global variable ‘.’
    .cluster_elements_se: no visible binding for global variable ‘.’
    .deconvolve_cellularity_se: no visible binding for global variable
    ...
      entrez feature fit geneID genes group group_name gs_cat item1
      library_size__ m med multiplier my_n n_aggr name nf nulldist pathway
      prop rc read count ref_genome rotated dimensions sample 1 sample 2
      sample a sample b sample_idx samples sdev seurat_clusters surv_test
      temp term test tot tot_filt transcript transcript_upper tt_columns
      value variable web_page where x
    Consider adding
      importFrom("base", "sample")
      importFrom("stats", "kmeans")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: remove_redundancy-methods.Rd:144-146: Dropping empty section \details
    ```

# topGO

<details>

* Version: 2.50.0
* GitHub: NA
* Source code: https://github.com/cran/topGO
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 58

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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘topGO.Rnw’ using Sweave
    
    Loading required package: xtable
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
    ...
    l.11 \usepackage
                    {caption}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘topGO.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘topGO.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tradeSeq

<details>

* Version: 1.12.0
* GitHub: https://github.com/statOmics/tradeSeq
* Source code: https://github.com/cran/tradeSeq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 174

Run `revdep_details(, "tradeSeq")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘tradeSeq-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plotGeneCount
    > ### Title: Plot gene expression in reduced dimension.
    > ### Aliases: plotGeneCount plotGeneCount,SlingshotDataSet-method
    > ###   plotGeneCount,PseudotimeOrdering-method
    > ###   plotGeneCount,SingleCellExperiment-method
    > 
    > ### ** Examples
    ...
    
    > data(crv, package="tradeSeq")
    > data(countMatrix, package="tradeSeq")
    > rd <- slingReducedDim(crv)
    > cl <- kmeans(rd, centers = 7)$cluster
    > lin <- getLineages(rd, clusterLabels = cl, start.clus = 4)
    Error in loadNamespace(x) : 
      there is no package called ‘DelayedMatrixStats’
    Calls: getLineages ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      Attaching package: 'Biobase'
      
      The following object is masked from 'package:MatrixGenerics':
      
          rowMedians
    ...
       4. │   └─TrajectoryUtils::rowmean(reducedDim(sds), slingClusterLabels(sds))
       5. │     └─TrajectoryUtils:::.rowstats_w(...)
       6. └─base::loadNamespace(x)
       7.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       8.     └─base (local) withOneRestart(expr, restarts[[1L]])
       9.       └─base (local) doWithOneRestart(return(expr), restart)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 136 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        doc   6.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Biobase’ ‘igraph’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .earlyDETest: no visible binding for global variable ‘X1’
    .earlyDETest: no visible binding for global variable ‘X2’
    .findKnots: no visible binding for global variable ‘t1’
    .findKnots: no visible binding for global variable ‘l1’
    .plotGeneCount: no visible binding for global variable ‘dim1’
    .plotGeneCount: no visible binding for global variable ‘dim2’
    .plotSmoothers: no visible binding for global variable ‘time’
    .plotSmoothers: no visible binding for global variable ‘gene_count’
    .plotSmoothers: no visible binding for global variable ‘lineage’
    .plotSmoothers_conditions: no visible binding for global variable
    ...
      ‘pCol’
    .plotSmoothers_sce: no visible binding for global variable ‘time’
    .plotSmoothers_sce: no visible binding for global variable ‘gene_count’
    .plotSmoothers_sce: no visible binding for global variable ‘lineage’
    .plotSmoothers_sce: no visible binding for global variable ‘pCol’
    Undefined global functions or variables:
      X1 X2 dim1 dim2 gene_count l1 lineage pCol t1 time
    Consider adding
      importFrom("stats", "time")
    to your NAMESPACE file.
    ```

# TraRe

<details>

* Version: 1.5.0
* GitHub: https://github.com/ubioinformat/TraRe
* Source code: https://github.com/cran/TraRe
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 97

Run `revdep_details(, "TraRe")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘vbsr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# VanillaICE

<details>

* Version: 1.60.0
* GitHub: NA
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 77

Run `revdep_details(, "VanillaICE")` for more info

</details>

## In both

*   checking Rd files ... WARNING
    ```
    checkRd: (5) VanillaICE.Rd:0-7: Must have a \description
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BSgenome.Hsapiens.UCSC.hg18’ ‘MatrixGenerics’
      All declared Imports should be used.
    ```

# VaSP

<details>

* Version: 1.10.0
* GitHub: https://github.com/yuhuihui2011/VaSP
* Source code: https://github.com/cran/VaSP
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 94

Run `revdep_details(, "VaSP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   3.4Mb
    ```

# vsclust

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/vsclust
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 165

Run `revdep_details(, "vsclust")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc    4.3Mb
        libs   1.7Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    runFuncEnrich: no visible global function definition for
      ‘compareCluster’
    runFuncEnrich: no visible global function definition for ‘new’
    Undefined global functions or variables:
      compareCluster new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: vsclust-package.Rd:29-31: Dropping empty section \seealso
    prepare_Rd: vsclust-package.Rd:32-33: Dropping empty section \examples
    ```

# wateRmelon

<details>

* Version: 2.4.0
* GitHub: NA
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 191

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
      ‘minfi:::.annoGet’ ‘minfi:::.availableAnnotation’
      ‘minfi:::.isRGOrStop’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .adjusted_normalizeFunnorm450k : unbiased_normalizeQuantiles: no
      visible global function definition for ‘colQuantiles’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘getMeth’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘getUnmeth’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘assay<-’
    .buildControlMatrix450k: no visible global function definition for
      ‘colMeans2’
    ...
      betas betas<- colCummaxs colData colMeans2 colMedians colQuantiles
      colSds detectionP ds epic.controls epic.ordering getAnnotation
      getAnnotationObject getBeta getCN getControlAddress getGreen
      getManifest getManifestInfo getMeth getNBeads getOOB getProbeInfo
      getProbeType getRed getSex getSnpBeta getUnmeth hm27.controls
      hm27.ordering hm450.controls hm450.ordering i intensitiesByChannel
      mapToGenome mclapply metadata methylated methylated<- methylumiR n.sd
      n_1 preprocessNoob preprocessRaw preprocessSWAN
      probeAnnotationsCategory projectName pval.detect<- pvals rowMeans2
      seqnames sex_coef subsetByLoci unmethylated unmethylated<- warn
    ```

# WGCNA

<details>

* Version: 1.71
* GitHub: NA
* Source code: https://github.com/cran/WGCNA
* Date/Publication: 2022-04-22 22:00:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "WGCNA")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'empiricalBayesLM.Rd':
      ‘rlm’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# yarn

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/yarn
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 174

Run `revdep_details(, "yarn")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘yarn-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annotateFromBiomart
    > ### Title: Annotate your Expression Set with biomaRt
    > ### Aliases: annotateFromBiomart
    > 
    > ### ** Examples
    > 
    > 
    ...
    > # subsetting and changing column name just for a silly example
    > skin <- skin[1:10,]
    > colnames(fData(skin)) = paste("names",1:6)
    > biomart<-"ENSEMBL_MART_ENSEMBL";
    > genes <- sapply(strsplit(rownames(skin),split="\\."),function(i)i[1])
    > newskin <-annotateFromBiomart(skin,genes=genes,biomar=biomart)
    Error in .readFromCache(bfc, hash) : Multiple cache results found.
    Please clear your cache by running biomartCacheClear()
    Calls: annotateFromBiomart -> getBM -> .readFromCache
    Execution halted
    ```

