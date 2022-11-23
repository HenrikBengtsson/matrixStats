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

* Version: 3.3.0
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2022-11-15 18:30:13 UTC
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

* Version: 2.10.1
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2022-11-14
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

* Version: 0.4.7
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2022-11-16 12:11:13 UTC
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

