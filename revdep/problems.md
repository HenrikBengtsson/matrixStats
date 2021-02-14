# abcrf

<details>

* Version: 1.8.1
* GitHub: NA
* Source code: https://github.com/cran/abcrf
* Date/Publication: 2019-11-05 14:40:02 UTC
* Number of recursive dependencies: 35

Run `revdep_details(, "abcrf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   3.7Mb
    ```

# AlpsNMR

<details>

* Version: 3.0.5
* GitHub: NA
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2021-01-20
* Number of recursive dependencies: 163

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'MUVR_model_plot'
      ‘MVObj’ ‘model’ ‘factCols’ ‘sampLabels’ ‘ylim’
    
    Undocumented arguments in documentation object 'confusion_matrix'
      ‘MVObj’ ‘model’
    
    Undocumented arguments in documentation object 'model_VIP'
      ‘model’
    
    Undocumented arguments in documentation object 'rdCV_PLS_RF'
    ...
    
    Undocumented arguments in documentation object 'rdCV_PLS_RF_ML'
      ‘scale’ ‘nRep’ ‘nOuter’ ‘nInner’ ‘varRatio’ ‘DA’ ‘fitness’ ‘method’
      ‘ML’ ‘modReturn’ ‘logg’ ‘parallel’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘zip’
      All declared Imports should be used.
    ```

# AMARETTO

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 152

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
    Error: failed to load resource
      name: EH622
      title: CHOL_RNASeq2GeneNorm-20160128
      reason: Corrupt Cache: resource path
      See vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/ExperimentHub
      potential duplicate files: 
        b93f7382989a_3697
        b96e433cd1a3_3697
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

* Version: 1.12.0
* GitHub: https://github.com/valenlab/amplican
* Source code: https://github.com/cran/amplican
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 108

Run `revdep_details(, "amplican")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.0Mb
      sub-directories of 1Mb or more:
        doc   13.8Mb
        libs   1.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

# antiProfiles

<details>

* Version: 1.30.0
* GitHub: https://github.com/HCBravoLab/antiProfiles
* Source code: https://github.com/cran/antiProfiles
* Date/Publication: 2020-10-27
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

# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
* Number of recursive dependencies: 47

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

* Version: 3.20.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2020-10-27
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

* Version: 2.2.2
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2021-02-03
* Number of recursive dependencies: 139

Run `revdep_details(, "BASiCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.5Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.4Mb
        libs   7.2Mb
    ```

# BatchQC

<details>

* Version: 1.18.0
* GitHub: https://github.com/mani2012/BatchQC
* Source code: https://github.com/cran/BatchQC
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 154

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
* Number of recursive dependencies: 108

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
* Number of recursive dependencies: 91

Run `revdep_details(, "bdynsys")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    bayfacfig: no visible global function definition for ‘dev.set’
    bayfacfig: no visible global function definition for ‘postscript’
    bayfacfig: no visible global function definition for ‘points’
    bayfacfig: no visible global function definition for ‘legend’
    bayfacfig: no visible global function definition for ‘dev.off’
    dysymod: no visible global function definition for ‘write.table’
    errorcorr: no visible global function definition for ‘sd’
    phaseportdat: no visible global function definition for ‘dev.set’
    phaseportdat: no visible global function definition for ‘postscript’
    phaseportdat: no visible global function definition for ‘grid’
    ...
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

* Version: 1.6.0
* GitHub: https://github.com/lindsayrutter/bigPint
* Source code: https://github.com/cran/bigPint
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 172

Run `revdep_details(, "bigPint")` for more info

</details>

## In both

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

* Version: 1.4.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 209

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘biscuiteer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: CpGindex
    > ### Title: Measure methylation status for PRCs or PMDs
    > ### Aliases: CpGindex
    > 
    > ### ** Examples
    > 
    > 
    ...
    Loading H9state23unmeth.hg19...
    Computing hypomethylation indices...
    Loading PMDs.hg19.rda from biscuiteerData...
    Error: Corrupt Cache: resource path
      See vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/ExperimentHub
      potential duplicate files: 
        b93f7382989a_3697
        b96e433cd1a3_3697
    Execution halted
    ```

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

# bnbc

<details>

* Version: 1.12.0
* GitHub: https://github.com/hansenlab/bnbc
* Source code: https://github.com/cran/bnbc
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 89

Run `revdep_details(, "bnbc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   1.3Mb
    ```

# bnclassify

<details>

* Version: 0.4.5
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2020-03-12 17:40:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "bnclassify")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        libs   8.0Mb
    ```

# brms

<details>

* Version: 2.14.4
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2020-11-03 06:40:22 UTC
* Number of recursive dependencies: 214

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   2.7Mb
    ```

# BSgenome

<details>

* Version: 1.58.0
* GitHub: https://github.com/Bioconductor/BSgenome
* Source code: https://github.com/cran/BSgenome
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 94

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
    > ###   providerVersion,SNPlocs-method releaseDate,SNPlocs-method
    > ###   releaseName,SNPlocs-method referenceGenome
    ...
    > seqlevels(my_cds, pruning.mode="coarse") <- c("chr22", "chrM")
    > seqlevelsStyle(my_cds)  # UCSC
    [1] "UCSC"
    > seqlevelsStyle(snps)    # NCBI
    [1] "NCBI"
    > seqlevelsStyle(my_cds) <- seqlevelsStyle(snps)
    Error in .make_assembly_report_URL(assembly_accession) : 
      don't know where to find assembly report for GCF_000001405.38
    Calls: seqlevelsStyle<- ... .get_NCBI_chrom_info_from_accession -> fetch_assembly_report -> .make_assembly_report_URL
    Execution halted
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

*   checking dependencies in R code ... NOTE
    ```
    ':::' calls which should be '::':
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘GenomeInfoDb:::compactPrintNamedAtomicVector’
      ‘GenomicRanges:::get_out_of_bound_index’ ‘IRanges:::.normargSEW’
      ‘IRanges:::unlist_as_integer’ ‘S4Vectors:::anyMissing’
      ‘S4Vectors:::anyMissingOrOutside’ ‘S4Vectors:::decodeRle’
      ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::make_zero_col_DataFrame’ ‘S4Vectors:::quick_unlist’
      ‘S4Vectors:::quick_unsplit’ ‘S4Vectors:::recycleVector’
      ‘rtracklayer:::.DNAString_to_twoBit’ ‘rtracklayer:::.TwoBits_export’
      ‘rtracklayer:::checkArgFormat’ ‘rtracklayer:::twoBitPath’
      See the note in ?`:::` about the use of this operator.
    ```

# bumphunter

<details>

* Version: 1.32.0
* GitHub: https://github.com/ririzarr/bumphunter
* Source code: https://github.com/cran/bumphunter
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 106

Run `revdep_details(, "bumphunter")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 50 lines of output:
      
          expand.grid
      
      Loading required package: IRanges
      Loading required package: GenomeInfoDb
      Loading required package: GenomicRanges
      Loading required package: foreach
    ...
       3.   ├─rtracklayer::import(FileForFormat(con), ...)
       4.   └─rtracklayer::import(FileForFormat(con), ...)
       5.     ├─rtracklayer::import(con, ...)
       6.     └─rtracklayer::import(con, ...)
       7.       └─rtracklayer:::.local(con, format, text, ...)
       8.         └─utils::download.file(resource(con), destfile)
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 13 ]
      Error: Test failures
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

* Version: 3.1.1
* GitHub: https://github.com/duncanplee/CARBayesST
* Source code: https://github.com/cran/CARBayesST
* Date/Publication: 2021-02-04 15:30:16 UTC
* Number of recursive dependencies: 106

Run `revdep_details(, "CARBayesST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   4.1Mb
    ```

# CATALYST

<details>

* Version: 1.14.0
* GitHub: https://github.com/HelenaLC/CATALYST
* Source code: https://github.com/cran/CATALYST
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 243

Run `revdep_details(, "CATALYST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.2Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    9.8Mb
    ```

# CDSeq

<details>

* Version: 1.0.8
* GitHub: https://github.com/kkang7/CDSeq_R_Package
* Source code: https://github.com/cran/CDSeq
* Date/Publication: 2021-02-10 16:10:02 UTC
* Number of recursive dependencies: 199

Run `revdep_details(, "CDSeq")` for more info

</details>

## In both

*   checking whether package ‘CDSeq’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘DBI’ is not available and has been replaced
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/CDSeq/new/CDSeq.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc    2.4Mb
        libs   2.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggpubr’ ‘matrixStats’ ‘qlcMatrix’
      All declared Imports should be used.
    ```

# celda

<details>

* Version: 1.6.1
* GitHub: https://github.com/campbio/celda
* Source code: https://github.com/cran/celda
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 249

Run `revdep_details(, "celda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# cellWise

<details>

* Version: 2.2.3
* GitHub: NA
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2020-12-03 11:00:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "cellWise")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GSE’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.0Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    2.0Mb
        libs   8.5Mb
    ```

# CEMiTool

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 163

Run `revdep_details(, "CEMiTool")` for more info

</details>

## In both

*   checking whether package ‘CEMiTool’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ggplot2::annotate’ by ‘ggpmisc::annotate’ when loading ‘CEMiTool’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/CEMiTool/new/CEMiTool.Rcheck/00install.out’ for details.
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

* Version: 2.20.1
* GitHub: NA
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2020-11-03
* Number of recursive dependencies: 248

Run `revdep_details(, "ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'dmrcate(myannotation, ': unused argument (mc.cores = cores) 
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

# Chicago

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/Chicago
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 168

Run `revdep_details(, "Chicago")` for more info

</details>

## In both

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

* Version: 3.24.1
* GitHub: NA
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2020-10-30
* Number of recursive dependencies: 185

Run `revdep_details(, "ChIPpeakAnno")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ChIPpeakAnno-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annoPeaks
    > ### Title: Annotate peaks
    > ### Aliases: annoPeaks
    > ### Keywords: misc
    > 
    > ### ** Examples
    > 
    ...
    
        filter
    
    >     library(EnsDb.Hsapiens.v75)
    >     data("myPeakList")
    >     annoGR <- toGRanges(EnsDb.Hsapiens.v75)
    Error in .make_assembly_report_URL(assembly_accession) : 
      don't know where to find assembly report for GCF_000001405.25
    Calls: toGRanges ... .get_NCBI_chrom_info_from_accession -> fetch_assembly_report -> .make_assembly_report_URL
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
       17.                   └─GenomeInfoDb:::.get_chrom_info_for_registered_UCSC_genome(...)
       18.                     ├─BiocGenerics::do.call(...)
       19.                     ├─base::do.call(...)
       20.                     └─(function (UCSC_chrom_info, assembly_accession, AssemblyUnits = NULL, ...
       21.                       └─GenomeInfoDb::getChromInfoFromNCBI(assembly_accession, assembly.units = AssemblyUnits)
       22.                         └─GenomeInfoDb:::.get_NCBI_chrom_info_from_accession(...)
       23.                           └─GenomeInfoDb:::fetch_assembly_report(accession)
    ...
       19.                     ├─base::do.call(...)
       20.                     └─(function (UCSC_chrom_info, assembly_accession, AssemblyUnits = NULL, ...
       21.                       └─GenomeInfoDb::getChromInfoFromNCBI(assembly_accession, assembly.units = AssemblyUnits)
       22.                         └─GenomeInfoDb:::.get_NCBI_chrom_info_from_accession(...)
       23.                           └─GenomeInfoDb:::fetch_assembly_report(accession)
       24.                             └─GenomeInfoDb:::.make_assembly_report_URL(assembly_accession)
      
      [ FAIL 3 | WARN 1 | SKIP 5 | PASS 195 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 32.8Mb
      sub-directories of 1Mb or more:
        data     20.5Mb
        doc       6.0Mb
        extdata   5.2Mb
    ```

# cliqueMS

<details>

* Version: 1.4.0
* GitHub: https://github.com/osenan/cliqueMS
* Source code: https://github.com/cran/cliqueMS
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 138

Run `revdep_details(, "cliqueMS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MSnbase’
      All declared Imports should be used.
    ```

# Clomial

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/Clomial
* Date/Publication: 2020-10-27
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

* Version: 2.10.1
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2021-02-09
* Number of recursive dependencies: 179

Run `revdep_details(, "clusterExperiment")` for more info

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
      installed size is 17.6Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   3.6Mb
        doc   10.3Mb
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
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# cmapR

<details>

* Version: 1.2.1
* GitHub: https://github.com/cmap/cmapR
* Source code: https://github.com/cran/cmapR
* Date/Publication: 2020-12-10
* Number of recursive dependencies: 77

Run `revdep_details(, "cmapR")` for more info

</details>

## In both

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

* Version: 3.0.1
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2020-11-06 11:10:03 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "cna")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

# CNVScope

<details>

* Version: 3.5.6
* GitHub: https://github.com/jamesdalg/CNVScope
* Source code: https://github.com/cran/CNVScope
* Date/Publication: 2021-01-10 23:20:07 UTC
* Number of recursive dependencies: 209

Run `revdep_details(, "CNVScope")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   1.7Mb
    ```

# cola

<details>

* Version: 1.6.0
* GitHub: https://github.com/jokergoo/cola
* Source code: https://github.com/cran/cola
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 208

Run `revdep_details(, "cola")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.7Mb
      sub-directories of 1Mb or more:
        data   3.7Mb
        doc    3.3Mb
        libs   1.5Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘cola/libs/cola.so’:
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘pdist.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# ComplexHeatmap

<details>

* Version: 2.6.2
* GitHub: https://github.com/jokergoo/ComplexHeatmap
* Source code: https://github.com/cran/ComplexHeatmap
* Date/Publication: 2020-11-12
* Number of recursive dependencies: 108

Run `revdep_details(, "ComplexHeatmap")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘magick’
    ```

# CopywriteR

<details>

* Version: 2.22.0
* GitHub: https://github.com/PeeperLab/CopywriteR
* Source code: https://github.com/cran/CopywriteR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 62

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

# corrcoverage

<details>

* Version: 1.2.1
* GitHub: https://github.com/annahutch/corrcoverage
* Source code: https://github.com/cran/corrcoverage
* Date/Publication: 2019-12-06 23:20:12 UTC
* Number of recursive dependencies: 75

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

* Version: 1.48.0
* GitHub: NA
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 74

Run `revdep_details(, "crlmm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
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

* Version: 1.16.1
* GitHub: NA
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2020-11-02
* Number of recursive dependencies: 165

Run `revdep_details(, "crossmeta")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘tibble’
    Namespace in Imports field not imported from: ‘statmod’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘GEOquery:::parseGSEMatrix’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘getDirListing’ ‘getGEO’ ‘getGEOSuppFiles’
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'add_sources':
    add_sources
      Code: function(diff_exprs, data_dir = getwd(), postfix = NULL)
      Docs: function(diff_exprs, data_dir = getwd())
      Argument names in code not in docs:
        postfix
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'ch2_subset'
      ‘prev_anal’
    
    Undocumented arguments in documentation object 'get_sva_mods'
      ‘pdata’
    Documented arguments not in \usage in documentation object 'get_sva_mods':
      ‘eset’
    
    Undocumented arguments in documentation object 'iqr_replicates'
      ‘eset’
    ...
      ‘mod’ ‘svobj’
    
    Undocumented arguments in documentation object 'run_select_contrasts'
      ‘port’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    add_contrasts: no visible global function definition for
      ‘select_contrasts’
    bulkAnnot : <anonymous>: no visible global function definition for
      ‘write.csv’
    bulkAnnot: no visible global function definition for ‘html’
    bulkAnnot: no visible global function definition for ‘toggleClass’
    bulkAnnot: no visible global function definition for ‘read.csv’
    diff_anal: no visible global function definition for ‘model.matrix’
    getAndParseGSEMatrices: no visible global function definition for
      ‘download.file’
    ...
      SYMBOL_9606 as capture.output download.file head html iqrange is
      model.matrix new read.csv read.table select_contrasts setNames
      toggleClass write.csv write.table
    Consider adding
      importFrom("methods", "as", "is", "new")
      importFrom("stats", "model.matrix", "setNames")
      importFrom("utils", "capture.output", "download.file", "head",
                 "read.csv", "read.table", "write.csv", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘GeneMeta’
    ```

# cSEM

<details>

* Version: 0.3.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2020-10-12 16:40:03 UTC
* Number of recursive dependencies: 124

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

* Version: 1.2.1
* GitHub: https://github.com/BodenmillerGroup/cytomapper
* Source code: https://github.com/cran/cytomapper
* Date/Publication: 2021-01-28
* Number of recursive dependencies: 117

Run `revdep_details(, "cytomapper")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc   3.8Mb
    ```

# CytoTree

<details>

* Version: 1.0.3
* GitHub: https://github.com/JhuangLab/CytoTree
* Source code: https://github.com/cran/CytoTree
* Date/Publication: 2020-11-08
* Number of recursive dependencies: 250

Run `revdep_details(, "CytoTree")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       3.2Mb
        figures   1.2Mb
        libs      1.2Mb
    ```

# DeepBlueR

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 162

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DelayedMatrixStats

<details>

* Version: 1.12.3
* GitHub: https://github.com/PeteHaitch/DelayedMatrixStats
* Source code: https://github.com/cran/DelayedMatrixStats
* Date/Publication: 2021-02-03
* Number of recursive dependencies: 80

Run `revdep_details(, "DelayedMatrixStats")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocParallel’ ‘HDF5Array’
      All declared Imports should be used.
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

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 78

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
        libs   2.6Mb
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

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘calibrate’
    ```

# DepecheR

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 108

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

# DEqMS

<details>

* Version: 1.8.0
* GitHub: https://github.com/yafeng/DEqMS
* Source code: https://github.com/cran/DEqMS
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 122

Run `revdep_details(, "DEqMS")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘DEqMS-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: Residualplot
    > ### Title: plot the residuals against the number of quantified
    > ###   peptides/PSMs.
    > ### Aliases: Residualplot
    > 
    > ### ** Examples
    > 
    ...
    Loading required package: dbplyr
    > eh = ExperimentHub(localHub=TRUE)
    snapshotDate(): 2021-01-20
    > query(eh, "DEqMS")
    ExperimentHub with 0 records
    # snapshotDate(): 2021-01-20
    > dat.psm = eh[["EH1663"]]
    Error: File not previously downloaded.
      Run with 'localHub=FALSE'
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

* Version: 0.6.12
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2021-02-08 06:00:03 UTC
* Number of recursive dependencies: 108

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DHS.rates

<details>

* Version: 0.8.0
* GitHub: NA
* Source code: https://github.com/cran/DHS.rates
* Date/Publication: 2020-10-11 23:30:06 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "DHS.rates")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# diffloop

<details>

* Version: 1.18.0
* GitHub: https://github.com/aryeelab/diffloop
* Source code: https://github.com/cran/diffloop
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 141

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

* Version: 1.6.0
* GitHub: https://github.com/matthewcarlucci/DiscoRhythm
* Source code: https://github.com/cran/DiscoRhythm
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 160

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

# dmrseq

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 169

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

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 172

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

* Version: 1.5.1
* GitHub: https://github.com/TAMU-AML/DSWE-Package
* Source code: https://github.com/cran/DSWE
* Date/Publication: 2021-01-11 10:30:07 UTC
* Number of recursive dependencies: 17

Run `revdep_details(, "DSWE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        libs   3.8Mb
    ```

# EasyqpcR

<details>

* Version: 1.31.0
* GitHub: NA
* Source code: https://github.com/cran/EasyqpcR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 69

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
* Number of recursive dependencies: 177

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

* Version: 2.20.0
* GitHub: NA
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 68

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

* Version: 1.20.0
* GitHub: https://github.com/jokergoo/EnrichedHeatmap
* Source code: https://github.com/cran/EnrichedHeatmap
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 91

Run `revdep_details(, "EnrichedHeatmap")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        doc       5.9Mb
        extdata   2.5Mb
        libs      1.0Mb
    ```

# evaluomeR

<details>

* Version: 1.6.2
* GitHub: https://github.com/neobernad/evaluomeR
* Source code: https://github.com/cran/evaluomeR
* Date/Publication: 2021-01-16
* Number of recursive dependencies: 117

Run `revdep_details(, "evaluomeR")` for more info

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

* Version: 2.8.0
* GitHub: https://github.com/jpromeror/EventPointer
* Source code: https://github.com/cran/EventPointer
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 156

Run `revdep_details(, "EventPointer")` for more info

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

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 32

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

* Version: 1.16.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* Date/Publication: 2020-10-30
* Number of recursive dependencies: 115

Run `revdep_details(, "ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: /c4/home/henrik/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: /c4/home/henrik/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
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
      installed size is 19.2Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  17.9Mb
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
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        libs   9.7Mb
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
      installed size is 21.2Mb
      sub-directories of 1Mb or more:
        libs  21.2Mb
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 82

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

# fishpond

<details>

* Version: 1.6.0
* GitHub: https://github.com/mikelove/fishpond
* Source code: https://github.com/cran/fishpond
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 173

Run `revdep_details(, "fishpond")` for more info

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

* Version: 2.2.0
* GitHub: NA
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 133

Run `revdep_details(, "flowCore")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.7Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        data      5.0Mb
        extdata   1.1Mb
        libs      5.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    eval,compensatedParameter-missing : <anonymous>: no visible binding for
      global variable ‘mat’
    eval,compensatedParameter-missing : <anonymous>: no visible binding for
      global variable ‘msv’
    show,flowFrame: no visible global function definition for
      ‘capture.output’
    Undefined global functions or variables:
      capture.output mat msv
    Consider adding
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
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

# flowSpy

<details>

* Version: 1.4.0
* GitHub: https://github.com/JhuangLab/flowSpy
* Source code: https://github.com/cran/flowSpy
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 250

Run `revdep_details(, "flowSpy")` for more info

</details>

## In both

*   checking whether package ‘flowSpy’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: Package 'flowSpy' is deprecated and will be removed from Bioconductor
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowSpy/new/flowSpy.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    3.2Mb
        libs   1.2Mb
    ```

# flowWorkspace

<details>

* Version: 4.2.0
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 135

Run `revdep_details(, "flowWorkspace")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘gs_clone’ ‘gs_copy_tree_only’
    Undocumented S4 methods:
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
    
    Undocumented arguments in documentation object 'cf_append_cols'
      ‘cred’
    
    Undocumented arguments in documentation object 'convert'
      ‘backend’
    
    Undocumented arguments in documentation object 'cs_get_uri'
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .github
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 88.2Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        lib   51.9Mb
        libs  31.6Mb
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
    .computeCV : <anonymous>: no visible binding for global variable
      ‘xml.count’
    .computeCV : <anonymous>: no visible binding for global variable
      ‘openCyto.count’
    .computeCV : <anonymous> : <anonymous>: no visible global function
      definition for ‘IQR’
    .computeCV : <anonymous> : <anonymous>: no visible global function
      definition for ‘median’
    .computeCV_gh : <anonymous>: no visible global function definition for
      ‘IQR’
    ...
    Undefined global functions or variables:
      . .hasSlot IQR Population as callNextMethod count desc extends is
      keys kwdError median na_idx new node obj old openCyto.count output
      parallel percent sampleName selectMethod validObject xml.count
    Consider adding
      importFrom("methods", ".hasSlot", "as", "callNextMethod", "extends",
                 "is", "new", "selectMethod", "validObject")
      importFrom("stats", "IQR", "median")
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
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# FRASER

<details>

* Version: 1.2.1
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2021-02-01
* Number of recursive dependencies: 184

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        doc    1.5Mb
        libs   4.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# funtooNorm

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 135

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
* Number of recursive dependencies: 147

Run `revdep_details(, "gap")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genetics’
    ```

# GenEst

<details>

* Version: 1.4.5
* GitHub: NA
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2020-11-22 00:00:06 UTC
* Number of recursive dependencies: 92

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

* Version: 1.2.0
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 181

Run `revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        data      1.2Mb
        doc      13.4Mb
        extdata   1.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pcaExplorer’
    ```

# genomation

<details>

* Version: 1.22.0
* GitHub: https://github.com/BIMSBbioinfo/genomation
* Source code: https://github.com/cran/genomation
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 105

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

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
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

# ggdmc

<details>

* Version: 0.2.6.0
* GitHub: https://github.com/yxlin/ggdmc
* Source code: https://github.com/cran/ggdmc
* Date/Publication: 2019-04-29 05:10:03 UTC
* Number of recursive dependencies: 54

Run `revdep_details(, "ggdmc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   6.5Mb
    ```

# GGPA

<details>

* Version: 1.2.0
* GitHub: https://github.com/dongjunchung/GGPA
* Source code: https://github.com/cran/GGPA
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 84

Run `revdep_details(, "GGPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   3.5Mb
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

* Version: 0.2-3
* GitHub: NA
* Source code: https://github.com/cran/GJRM
* Date/Publication: 2020-09-07 18:20:03 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "GJRM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# glmGamPoi

<details>

* Version: 1.2.0
* GitHub: https://github.com/const-ae/glmGamPoi
* Source code: https://github.com/cran/glmGamPoi
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 162

Run `revdep_details(, "glmGamPoi")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        libs   7.2Mb
    ```

# graper

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 69

Run `revdep_details(, "graper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   5.2Mb
    ```

# GUIDEseq

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 151

Run `revdep_details(, "GUIDEseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        extdata  10.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotateOffTargets: no visible binding for global variable
      'offTarget_Start'
    annotateOffTargets: no visible global function definition for 'exons'
    annotateOffTargets: no visible global function definition for
      'seqlevelsStyle<-'
    annotateOffTargets: no visible global function definition for 'genes'
    getPeaks: no visible binding for global variable 'adjusted.p.value'
    getPeaks: no visible binding for global variable 'SNratio'
    getUniqueCleavageEvents: no visible binding for global variable
      'qwidth.first'
    ...
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

# Gviz

<details>

* Version: 1.34.0
* GitHub: https://github.com/ivanek/Gviz
* Source code: https://github.com/cran/Gviz
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 146

Run `revdep_details(, "Gviz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        doc       4.7Mb
        extdata   2.5Mb
    ```

# GWENA

<details>

* Version: 1.0.0
* GitHub: https://github.com/Kumquatum/GWENA
* Source code: https://github.com/cran/GWENA
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 144

Run `revdep_details(, "GWENA")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(GWENA)
      
      > 
      > test_check("GWENA")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-biological_integration.R:61:3): gost objects in list are compatible ──
    ...
       3. │   ├─testthat:::.capture(...)
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─GWENA::join_gost(...)
       7.   └─base::lapply(gost_result, .check_gost)
       8.     └─GWENA:::FUN(X[[i]], ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 273 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        data   5.6Mb
        doc    4.5Mb
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
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        data   9.4Mb
    ```

# hipathia

<details>

* Version: 2.6.0
* GitHub: NA
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 126

Run `revdep_details(, "hipathia")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data      4.9Mb
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

# JMbayes2

<details>

* Version: 0.1-3
* GitHub: https://github.com/drizopoulos/JMbayes2
* Source code: https://github.com/cran/JMbayes2
* Date/Publication: 2021-01-18 16:20:24 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "JMbayes2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# landmap

<details>

* Version: 0.0.7
* GitHub: https://github.com/envirometrix/landmap
* Source code: https://github.com/cran/landmap
* Date/Publication: 2021-01-29 16:00:06 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "landmap")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 23 marked UTF-8 strings
    ```

# latrend

<details>

* Version: 1.0.1
* GitHub: https://github.com/philips-software/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2020-11-18 10:10:02 UTC
* Number of recursive dependencies: 199

Run `revdep_details(, "latrend")` for more info

</details>

## In both

*   checking whether package ‘latrend’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/latrend/new/latrend.Rcheck/00install.out’ for details.
    ```

# liger

<details>

* Version: 2.0.1
* GitHub: https://github.com/JEFworks/liger
* Source code: https://github.com/cran/liger
* Date/Publication: 2021-01-25 05:50:09 UTC
* Number of recursive dependencies: 49

Run `revdep_details(, "liger")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    2.1Mb
        libs   1.7Mb
    ```

# LSAmitR

<details>

* Version: 1.0-2
* GitHub: NA
* Source code: https://github.com/cran/LSAmitR
* Date/Publication: 2018-06-08 13:23:05 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "LSAmitR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

<details>

* Version: 0.9.10
* GitHub: https://github.com/R-Lum/Luminescence
* Source code: https://github.com/cran/Luminescence
* Date/Publication: 2020-12-10 17:10:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "Luminescence")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RLumShiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        help   1.1Mb
        libs   3.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RLumShiny’
    ```

# M3Drop

<details>

* Version: 1.16.0
* GitHub: https://github.com/tallulandrews/M3Drop
* Source code: https://github.com/cran/M3Drop
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 221

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

* Version: 2.10.1
* GitHub: NA
* Source code: https://github.com/cran/maEndToEnd
* Date/Publication: 2021-01-22
* Number of recursive dependencies: 228

Run `revdep_details(, "maEndToEnd")` for more info

</details>

## In both

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
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘AnnotationDbi’
    ```

# MatrixGenerics

<details>

* Version: 1.2.1
* GitHub: https://github.com/Bioconductor/MatrixGenerics
* Source code: https://github.com/cran/MatrixGenerics
* Date/Publication: 2021-01-30
* Number of recursive dependencies: 64

Run `revdep_details(, "MatrixGenerics")` for more info

</details>

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

* Version: 0.6.0
* GitHub: NA
* Source code: https://github.com/cran/mcmcsae
* Date/Publication: 2021-01-20 08:40:02 UTC
* Number of recursive dependencies: 108

Run `revdep_details(, "mcmcsae")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.7Mb
      sub-directories of 1Mb or more:
        libs  14.4Mb
    ```

# MEAL

<details>

* Version: 1.20.3
* GitHub: NA
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2021-02-01
* Number of recursive dependencies: 214

Run `revdep_details(, "MEAL")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'runDiffMeanAnalysis'
      ‘...’
    
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

# metabCombiner

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/metabCombiner
* Date/Publication: 2020-12-08
* Number of recursive dependencies: 94

Run `revdep_details(, "metabCombiner")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic 'getExtra' and siglist 'metabCombiner'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'getExtra':
    getExtra
      Code: function(object, data = "x")
      Docs: function(object, data = c("x", "y"))
      Mismatches in argument default values:
        Name: 'data' Code: "x" Docs: c("x", "y")
    
    Codoc mismatches from documentation object 'getSamples':
    getSamples
      Code: function(object, data = "x")
    ...
    nonmatched
      Code: function(object, data = "x")
      Docs: function(object, data = c("x", "y"))
      Mismatches in argument default values:
        Name: 'data' Code: "x" Docs: c("x", "y")
    \S4method{nonmatched}{metabCombiner}
      Code: function(object, data = "x")
      Docs: function(object, data = c("x", "y"))
      Mismatches in argument default values:
        Name: 'data' Code: "x" Docs: c("x", "y")
    ```

*   checking R code for possible problems ... NOTE
    ```
    metabData: no visible global function definition for ‘is’
    Undefined global functions or variables:
      is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# metagene

<details>

* Version: 2.22.0
* GitHub: https://github.com/CharlesJB/metagene
* Source code: https://github.com/cran/metagene
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 138

Run `revdep_details(, "metagene")` for more info

</details>

## In both

*   checking whether package ‘metagene’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘DESeq’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/metagene’


```
### CRAN

```
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘DESeq’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/old/metagene.Rcheck/metagene’


```
# metamicrobiomeR

<details>

* Version: 1.2
* GitHub: https://github.com/nhanhocu/metamicrobiomeR
* Source code: https://github.com/cran/metamicrobiomeR
* Date/Publication: 2020-11-09 11:20:05 UTC
* Number of recursive dependencies: 137

Run `revdep_details(, "metamicrobiomeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lmerTest’
      All declared Imports should be used.
    ```

# MetaNeighbor

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 93

Run `revdep_details(, "MetaNeighbor")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        data   7.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    MetaNeighbor : <anonymous>: no visible binding for global variable
      ‘cell_type’
    plotDotPlot: no visible binding for global variable ‘cluster’
    plotDotPlot: no visible binding for global variable ‘gene’
    plotDotPlot: no visible binding for global variable ‘cell_type’
    plotDotPlot: no visible binding for global variable
      ‘average_expression’
    plotDotPlot: no visible binding for global variable
      ‘percent_expressing’
    Undefined global functions or variables:
      average_expression cell_type cluster gene percent_expressing
    ```

# MethReg

<details>

* Version: 1.0.0
* GitHub: https://github.com/TransBioInfoLab/MethReg
* Source code: https://github.com/cran/MethReg
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 223

Run `revdep_details(, "MethReg")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MethReg-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: create_triplet_distance_based
    > ### Title: Map DNAm to target genes using distance approaches, and TF to
    > ###   the DNAm region using JASPAR2020 TFBS.
    > ### Aliases: create_triplet_distance_based
    > 
    > ### ** Examples
    > 
    ...
    o Get promoter regions for hg38
    o Remove promoter regions
    Looking for TFBS
    Error in h(simpleError(msg, call)) : 
      error in evaluating the argument 'x' in selecting a method for function 'assay': BSgenome.Hsapiens.UCSC.hg38 package is not currently installed.
      You first need to install it, which you can do with:
          library(BiocManager)
          install("BSgenome.Hsapiens.UCSC.hg38")
    Calls: create_triplet_distance_based -> get_tf_in_region
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       14. │             └─BSgenome:::.stopOnAvailablePkg(genome)
       15. │               └─base::stop(...)
       16. ├─SummarizedExperiment::assay(.)
       17. └─base::.handleSimpleError(...)
       18.   └─base:::h(simpleError(msg, call))
      ── Error (test-get_tf_in_region.R:18:5): get_tf_in_region accepts granges as input ──
      Error: error in evaluating the argument 'x' in selecting a method for function 'assay': BSgenome.Hsapiens.UCSC.hg19 package is not currently installed.
    ...
          █
       1. └─MethReg::make_dnam_se(dna.met.chr21) test-utils.R:52:4
       2.   └─MethReg::get_met_probes_info(genome = genome, arrayType = arrayType)
       3.     └─MethReg:::check_package("sesame")
       4.       └─base::suppressMessages(...)
       5.         └─base::withCallingHandlers(...)
      
      [ FAIL 7 | WARN 2 | SKIP 0 | PASS 147 ]
      Error: Test failures
      Execution halted
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
    interaction_model: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      .
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘TCGAbiolinks’
    ```

# methrix

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/methrix
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 157

Run `revdep_details(, "methrix")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_region_summary: no visible binding for global variable ‘..keep’
    write_bigwigs: no visible global function definition for ‘seqlengths<-’
    write_bigwigs: no visible global function definition for ‘seqlengths’
    Undefined global functions or variables:
      ..keep seqlengths seqlengths<-
    ```

# MethylAid

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 177

Run `revdep_details(, "MethylAid")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

# methylationArrayAnalysis

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2020-10-30
* Number of recursive dependencies: 223

Run `revdep_details(, "methylationArrayAnalysis")` for more info

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
      installed size is 322.7Mb
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

* Version: 2.36.0
* GitHub: https://github.com/seandavi/methylumi
* Source code: https://github.com/cran/methylumi
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 201

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

# MFHD

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/MFHD
* Date/Publication: 2013-10-23 23:50:20
* Number of recursive dependencies: 113

Run `revdep_details(, "MFHD")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    MFHD: no visible global function definition for ‘complete.cases’
    MFHD: no visible global function definition for ‘quantile’
    PIT: no visible global function definition for ‘xy.coords’
    PIT: no visible global function definition for ‘identify’
    PIT: no visible global function definition for ‘points’
    mfhd_compute.bagplot : cut.z.pg: no visible global function definition
      for ‘segments’
    mfhd_compute.bagplot : cut.z.pg: no visible global function definition
      for ‘points’
    mfhd_compute.bagplot : find.cut.z.pg: no visible global function
    ...
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
* Number of recursive dependencies: 112

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

# microbiomeExplorer

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/microbiomeExplorer
* Date/Publication: 2020-10-29
* Number of recursive dependencies: 202

Run `revdep_details(, "microbiomeExplorer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        doc       4.6Mb
        extdata   4.1Mb
        shiny     2.8Mb
    ```

# MinimumDistance

<details>

* Version: 1.34.0
* GitHub: NA
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 75

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

*   checking contents of ‘data’ directory ... NOTE
    ```
    Output for data("trioSetListExample", package = "MinimumDistance"):
      No methods found in package ‘oligoClasses’ for request: ‘mean’ when loading ‘crlmm’
    ```

# mixOmics

<details>

* Version: 6.14.0
* GitHub: https://github.com/mixOmicsTeam/mixOmics
* Source code: https://github.com/cran/mixOmics
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 105

Run `revdep_details(, "mixOmics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.7Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   2.9Mb
        doc    5.9Mb
    ```

# mnem

<details>

* Version: 1.6.5
* GitHub: NA
* Source code: https://github.com/cran/mnem
* Date/Publication: 2020-11-16
* Number of recursive dependencies: 162

Run `revdep_details(, "mnem")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘epiNEM’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
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
    [[26769,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    --------------------------------------------------------------------------
    [[26633,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    --------------------------------------------------------------------------
    [[30136,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    --------------------------------------------------------------------------
    [[30059,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ...
    --------------------------------------------------------------------------
    [[30002,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

*   checking dependencies in R code ... NOTE
    ```
    --------------------------------------------------------------------------
    [[26822,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
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
    [[30660,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    --------------------------------------------------------------------------
    [[30433,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

*   checking Rd \usage sections ... NOTE
    ```
    --------------------------------------------------------------------------
    [[29907,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# monocle

<details>

* Version: 2.18.0
* GitHub: NA
* Source code: https://github.com/cran/monocle
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 259

Run `revdep_details(, "monocle")` for more info

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
    assign_cell_lineage: no visible global function definition for ‘nei’
    buildBranchCellDataSet: no visible global function definition for ‘nei’
    clusterCells: no visible global function definition for ‘quantile’
    count_leaf_descendents: no visible global function definition for ‘nei’
    cth_classifier_cds: no visible global function definition for ‘nei’
    cth_classifier_cell: no visible global function definition for ‘nei’
    diff_test_helper: no visible binding for global variable ‘Size_Factor’
    exportCDS: no visible binding for global variable ‘use_for_ordering’
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
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

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# motifbreakR

<details>

* Version: 2.4.0
* GitHub: https://github.com/Simon-Coetzee/motifbreakR
* Source code: https://github.com/cran/motifbreakR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 158

Run `revdep_details(, "motifbreakR")` for more info

</details>

## In both

*   checking whether package ‘motifbreakR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘S4Vectors::as.data.frame’ by ‘motifStack::as.data.frame’ when loading ‘motifbreakR’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/00install.out’ for details.
    ```

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
* Number of recursive dependencies: 65

Run `revdep_details(, "mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.3Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  18.4Mb
    ```

# MultiBD

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MultiBD
* Date/Publication: 2016-12-05 18:28:46
* Number of recursive dependencies: 74

Run `revdep_details(, "MultiBD")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        libs   7.5Mb
    ```

# muscat

<details>

* Version: 1.4.0
* GitHub: https://github.com/HelenaLC/muscat
* Source code: https://github.com/cran/muscat
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 215

Run `revdep_details(, "muscat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    6.0Mb
    ```

# muscData

<details>

* Version: 1.4.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2020-10-29
* Number of recursive dependencies: 256

Run `revdep_details(, "muscData")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘muscData-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: Kang18_8vs8
    > ### Title: 'Kang18_8vs8' dataset
    > ### Aliases: Kang18 Kang18_8vs8
    > 
    > ### ** Examples
    > 
    > # load metadata only
    ...
    Error: failed to load resource
      name: EH2259
      title: Kang18_8vs8
      reason: Corrupt Cache: resource path
      See vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/ExperimentHub
      potential duplicate files: 
        b93f7382989a_3697
        b96e433cd1a3_3697
    Execution halted
    ```

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

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 53

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
    PlotsPositiveHousekeeping: no visible global function definition for
      ‘read.table’
    PlotsPositiveHousekeeping: no visible global function definition for
      ‘glm’
    PlotsPositiveHousekeeping: no visible global function definition for
      ‘poisson’
    PlotsPositiveHousekeeping: no visible global function definition for
      ‘rowVars’
    PlotsPositiveHousekeeping: no visible global function definition for
      ‘par’
    ...
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

# nearBynding

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 126

Run `revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        extdata   8.1Mb
    ```

# NetLogoR

<details>

* Version: 0.3.7
* GitHub: https://github.com/PredictiveEcology/NetLogoR
* Source code: https://github.com/cran/NetLogoR
* Date/Publication: 2020-03-02 10:00:08 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "NetLogoR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
    ```

# NormalyzerDE

<details>

* Version: 1.8.0
* GitHub: https://github.com/ComputationalProteomics/NormalyzerDE
* Source code: https://github.com/cran/NormalyzerDE
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 158

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

# omicplotR

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 84

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

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 123

Run `revdep_details(, "omicsPrint")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data   7.3Mb
        doc    1.2Mb
    ```

# OptimalDesign

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/OptimalDesign
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 55

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

* Version: 1.8.0
* GitHub: https://github.com/gagneurlab/OUTRIDER
* Source code: https://github.com/cran/OUTRIDER
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 171

Run `revdep_details(, "OUTRIDER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        libs   2.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# pandaR

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 66

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

# PathoStat

<details>

* Version: 1.16.0
* GitHub: https://github.com/mani2012/PathoStat
* Source code: https://github.com/cran/PathoStat
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 199

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

* Version: 1.82.0
* GitHub: https://github.com/hredestig/pcamethods
* Source code: https://github.com/cran/pcaMethods
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 53

Run `revdep_details(, "pcaMethods")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    BPCA_initmodel: no visible global function definition for ‘cov’
    Q2: no visible global function definition for ‘txtProgressBar’
    Q2: no visible global function definition for ‘setTxtProgressBar’
    Q2: no visible global function definition for ‘cor’
    RnipalsPca: no visible global function definition for ‘na.omit’
    cvseg : <anonymous>: no visible global function definition for
      ‘na.omit’
    llsImpute: no visible global function definition for ‘cor’
    nlpca: no visible global function definition for ‘runif’
    nlpca: no visible global function definition for ‘rnorm’
    ...
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

# phosphonormalizer

<details>

* Version: 1.14.3
* GitHub: NA
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2020-12-08
* Number of recursive dependencies: 49

Run `revdep_details(, "phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# Pigengene

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 143

Run `revdep_details(, "Pigengene")` for more info

</details>

## In both

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

# pipeComp

<details>

* Version: 1.0.0
* GitHub: https://github.com/plger/pipeComp
* Source code: https://github.com/cran/pipeComp
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 209

Run `revdep_details(, "pipeComp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
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

# pmp

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/pmp
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 100

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

# PrecisionTrialDrawer

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/PrecisionTrialDrawer
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 138

Run `revdep_details(, "PrecisionTrialDrawer")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘LowMACA’
    ```

# ProteoMM

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 101

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

* Version: 1.26.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 72

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# QFeatures

<details>

* Version: 1.0.0
* GitHub: https://github.com/RforMassSpectrometry/QFeatures
* Source code: https://github.com/cran/QFeatures
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 130

Run `revdep_details(, "QFeatures")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘MultiAssayExperiment:::.sampleMapFromData’
      See the note in ?`:::` about the use of this operator.
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
    .gdalWriteFormats: no visible global function definition for
      ‘gdalDrivers’
    aiObsEx: no visible global function definition for ‘readGDAL’
    aiObsEx: no visible global function definition for ‘txtProgressBar’
    aiObsEx: no visible global function definition for ‘setTxtProgressBar’
    aiObsMe: no visible global function definition for ‘txtProgressBar’
    aiObsMe: no visible global function definition for ‘readGDAL’
    aiObsMe: no visible global function definition for ‘setTxtProgressBar’
    assessment: no visible global function definition for ‘writeGDAL’
    assessment: no visible global function definition for ‘readGDAL’
    ...
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

# RadioGx

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/RadioGx
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 140

Run `revdep_details(, "RadioGx")` for more info

</details>

## In both

*   checking whether package ‘RadioGx’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/RadioGx/new/RadioGx.Rcheck/00install.out’ for details.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 14 marked UTF-8 strings
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

* Version: 1.6.2
* GitHub: NA
* Source code: https://github.com/cran/regsem
* Date/Publication: 2020-10-01 17:00:02 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "regsem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

# RJcluster

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/RJcluster
* Date/Publication: 2020-09-23 08:00:06 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "RJcluster")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘doParallel’ ‘parallel’
      All declared Imports should be used.
    ```

# RNAmodR

<details>

* Version: 1.4.2
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2020-12-13
* Number of recursive dependencies: 186

Run `revdep_details(, "RNAmodR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘RNAmodR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: CoverageSequenceData-class
    > ### Title: CoverageSequenceData
    > ### Aliases: CoverageSequenceData-class CoverageSequenceData
    > ###   CoverageSequenceDataFrame CoverageSequenceDataFrame-class
    > ###   getData,CoverageSequenceData,BamFileList,GRangesList,XStringSet,ScanBamParam-method
    > ###   aggregateData,CoverageSequenceData-method
    > ###   getDataTrack,CoverageSequenceData-method
    ...
    Error: failed to load resource
      name: EH2536
      title: RNAmodR.Data.example.man.gff3
      reason: Corrupt Cache: resource path
      See vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/ExperimentHub
      potential duplicate files: 
        b93f7382989a_3697
        b96e433cd1a3_3697
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        3. │   └─methods::new(gffFileClass(version), resource = resource)
        4. │     ├─methods::initialize(value, ...)
        5. │     └─methods::initialize(value, ...)
        6. └─ExperimentHub:::RNAmodR.Data.example.man.gff3()
        7.   ├─eh[[ehid]]
        8.   └─eh[[ehid]]
        9.     └─ExperimentHub:::.local(x, i, j = j, ...)
    ...
       14.         └─AnnotationHub:::.local(x, i, j = j, ...)
       15.           └─AnnotationHub:::.Hub_get1(x[idx], force = force, verbose = verbose)
       16.             └─base::tryCatch(...)
       17.               └─base:::tryCatchList(expr, classes, parentenv, handlers)
       18.                 └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       19.                   └─value[[3L]](cond)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 441 ]
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

# RnBeads

<details>

* Version: 2.8.0
* GitHub: NA
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 259

Run `revdep_details(, "RnBeads")` for more info

</details>

## In both

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
      mean.diff mean.quot.log2 melt mergeRegionDBs muted n.sites num.sites
      numSites numeric.names oddsRatios p.vals.t.na.adj pData
      percent_format phenoData phenoData<- plotAlphaDistributionOneChr
      plotFinalSegmentation plotTracks preprocessSWAN pvalues qvalue
      readMethylome readSNPTable refText reg.type region.size
      registerDoParallel relative.coord removeSNPs report runLOLA samples
      segmentPMDs segmentUMRsLMRs seqlengths seqlevels<- sigCategories
      sites2ignore size solve.QP stopCluster sva target texthere tsne type
      types ucscTableQuery universeCounts useMart v var.diff varFit
      varLabels x x2 xmlValue y y2 yint
    ```

# robustbase

<details>

* Version: 0.93-7
* GitHub: NA
* Source code: https://github.com/cran/robustbase
* Date/Publication: 2021-01-04 15:30:03 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "robustbase")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'robustX', 'quantreg', 'Hmisc'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘robustX’, ‘quantreg’, ‘Hmisc’
    ```

# scDataviz

<details>

* Version: 1.0.0
* GitHub: https://github.com/kevinblighe/scDataviz
* Source code: https://github.com/cran/scDataviz
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 191

Run `revdep_details(, "scDataviz")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
          pmin.int, rank, rbind, rownames, sapply, setdiff, sort, table,
          tapply, union, unique, unsplit, which.max, which.min
      
      
      Attaching package: 'S4Vectors'
      
      The following object is masked from 'package:base':
    ...
          rowMedians
      
      The following objects are masked from 'package:matrixStats':
      
          anyMissing, rowMedians
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

# scmap

<details>

* Version: 1.12.0
* GitHub: https://github.com/hemberg-lab/scmap
* Source code: https://github.com/cran/scmap
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 90

Run `revdep_details(, "scmap")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.1Mb
        libs   1.8Mb
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

* Version: 1.14.0
* GitHub: https://github.com/YosefLab/scone
* Source code: https://github.com/cran/scone
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 228

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

* Version: 1.0.0
* GitHub: https://github.com/UCLouvain-CBIO/scp
* Source code: https://github.com/cran/scp
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 153

Run `revdep_details(, "scp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MultiAssayExperiment:::.sampleMapFromData’ ‘QFeatures:::.get_Hits’
      See the note in ?`:::` about the use of this operator.
    ```

# scPCA

<details>

* Version: 1.4.0
* GitHub: https://github.com/PhilBoileau/scPCA
* Source code: https://github.com/cran/scPCA
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 189

Run `revdep_details(, "scPCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DelayedArray’
      All declared Imports should be used.
    ```

# sctransform

<details>

* Version: 0.3.2
* GitHub: https://github.com/ChristophH/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2020-12-16 14:40:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# seeds

<details>

* Version: 0.9.1
* GitHub: https://github.com/Newmi1988/seeds
* Source code: https://github.com/cran/seeds
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 99

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
* Number of recursive dependencies: 89

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

* Version: 1.8.2
* GitHub: https://github.com/zwdzwd/sesame
* Source code: https://github.com/cran/sesame
* Date/Publication: 2020-11-13
* Number of recursive dependencies: 181

Run `revdep_details(, "sesame")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          clusterExport, clusterMap, parApply, parCapply, parLapply,
          parLapplyLB, parRapply, parSapply, parSapplyLB
      
      The following objects are masked from 'package:stats':
      
          IQR, mad, sd, var, xtabs
      
    ...
          █
       1. └─minfi::preprocessRaw(rgSet) test_sesamize.R:16:4
       2.   └─minfi::getManifestInfo(rgSet, "locusNames")
       3.     └─minfi::getProbeInfo(object, type = "I")
       4.       ├─minfi::getManifest(object)
       5.       └─minfi::getManifest(object)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# Seurat

<details>

* Version: 4.0.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-01-30 00:00:02 UTC
* Number of recursive dependencies: 238

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   9.5Mb
    ```

# SGP

<details>

* Version: 1.9-5.0
* GitHub: https://github.com/CenterForAssessment/SGP
* Source code: https://github.com/cran/SGP
* Date/Publication: 2020-01-30 22:40:09 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "SGP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   3.4Mb
    ```

# shinyMethyl

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 148

Run `revdep_details(, "shinyMethyl")` for more info

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

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 116

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
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   2.0Mb
        help      1.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘randomForest’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 10 marked UTF-8 strings
    ```

# SICtools

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2020-10-27
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
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
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
* Number of recursive dependencies: 99

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

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2020-10-29
* Number of recursive dependencies: 172

Run `revdep_details(, "Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 904.4Mb
      sub-directories of 1Mb or more:
        data  895.1Mb
        doc     9.3Mb
    ```

# singleCellTK

<details>

* Version: 2.0.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 336

Run `revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘singleCellTK-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: importExampleData
    > ### Title: Retrieve example datasets
    > ### Aliases: importExampleData
    > 
    > ### ** Examples
    > 
    > sce <- importExampleData("pbmc3k")
    ...
    Error: failed to load resource
      name: EH1607
      title: PBMC, 3k scRNA-seq gene (row) annotation
      reason: Corrupt Cache: resource path
      See vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/ExperimentHub
      potential duplicate files: 
        b93f7382989a_3697
        b96e433cd1a3_3697
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'BiocGenerics' 'ggplotify' 'kableExtra' 'shinyBS' 'shinyFiles'
      'shinyWidgets' 'shinyjqui' 'shinythemes'
      All declared Imports should be used.
    ```

# singscore

<details>

* Version: 1.10.0
* GitHub: https://github.com/DavisLaboratory/singscore
* Source code: https://github.com/cran/singscore
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 124

Run `revdep_details(, "singscore")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       3. plotly:::ggplotly.ggplot(p1)
       4. plotly::gg2list(...)
       5. plotly:::layers2traces(data, prestats_data, layout, plot)
       7. plotly:::to_basic.GeomHex(...)
       8. ggplot2::resolution(data[["y"]], FALSE)
      ── Warning (test-scoring.R:12:3): checkGenes works ─────────────────────────────
      1 genes missing: 11
    ...
       10.               └─base::asNamespace(ns)
       11.                 └─base::getNamespace(ns)
       12.                   └─base::loadNamespace(name)
       13.                     └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       14.                       └─base:::withOneRestart(expr, restarts[[1L]])
       15.                         └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 1 | WARN 37 | SKIP 0 | PASS 133 ]
      Error: Test failures
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

# slingshot

<details>

* Version: 1.8.0
* GitHub: https://github.com/kstreet13/slingshot
* Source code: https://github.com/cran/slingshot
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 194

Run `revdep_details(, "slingshot")` for more info

</details>

## In both

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘mgcv’
    'library' or 'require' call not declared from: ‘mgcv’
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

* Version: 1.14.1
* GitHub: https://github.com/Oshlack/splatter
* Source code: https://github.com/cran/splatter
* Date/Publication: 2020-12-01
* Number of recursive dependencies: 244

Run `revdep_details(, "splatter")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        doc   8.9Mb
    ```

# spqn

<details>

* Version: 1.2.0
* GitHub: https://github.com/hansenlab/spqn
* Source code: https://github.com/cran/spqn
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 84

Run `revdep_details(, "spqn")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘BiocGenerics’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# SRGnet

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/SRGnet
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 104

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
    ...
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

# stm

<details>

* Version: 1.3.6
* GitHub: https://github.com/bstewart/stm
* Source code: https://github.com/cran/stm
* Date/Publication: 2020-09-18 13:50:02 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "stm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   2.5Mb
    ```

# STROMA4

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2020-10-27
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

# summarytools

<details>

* Version: 0.9.8
* GitHub: https://github.com/dcomtois/summarytools
* Source code: https://github.com/cran/summarytools
* Date/Publication: 2020-12-10 22:00:03 UTC
* Number of recursive dependencies: 70

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

# TCA

<details>

* Version: 1.1.0
* GitHub: https://github.com/cozygene/TCA
* Source code: https://github.com/cran/TCA
* Date/Publication: 2019-11-16 17:10:02 UTC
* Number of recursive dependencies: 71

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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/tenXplore
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 125

Run `revdep_details(, "tenXplore")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    apd: warning in dir(system.file("app", package = "tenXplore"), full =
      TRUE): partial argument match of 'full' to 'full.names'
    ```

# topGO

<details>

* Version: 2.42.0
* GitHub: NA
* Source code: https://github.com/cran/topGO
* Date/Publication: 2020-10-30
* Number of recursive dependencies: 49

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
    GOplot: no visible global function definition for ‘getDefaultAttrs’
    GOplot: no visible global function definition for ‘agopen’
    GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
      global function definition for ‘getNodeCenter’
    GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
      global function definition for ‘pieGlyph’
    GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
      global function definition for ‘getX’
    GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
      global function definition for ‘getY’
    ...
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

# tradeSeq

<details>

* Version: 1.4.0
* GitHub: https://github.com/statOmics/tradeSeq
* Source code: https://github.com/cran/tradeSeq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 193

Run `revdep_details(, "tradeSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc   6.6Mb
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
    .plotSmoothers_sce: no visible binding for global variable ‘time’
    .plotSmoothers_sce: no visible binding for global variable ‘gene_count’
    .plotSmoothers_sce: no visible binding for global variable ‘lineage’
    .plotSmoothers_sce: no visible binding for global variable ‘pCol’
    extract_monocle_info: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      . X1 X2 dim1 dim2 gene_count l1 lineage pCol t1 time
    Consider adding
      importFrom("stats", "time")
    to your NAMESPACE file.
    ```

# treeHMM

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 11

Run `revdep_details(, "treeHMM")` for more info

</details>

## In both

*   checking whether package ‘treeHMM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/treeHMM/new/treeHMM.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# UPG

<details>

* Version: 0.2.2
* GitHub: NA
* Source code: https://github.com/cran/UPG
* Date/Publication: 2021-01-07 09:00:05 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "UPG")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        libs   6.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppProgress’
      All declared Imports should be used.
    ```

# VanillaICE

<details>

* Version: 1.52.0
* GitHub: NA
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 73

Run `revdep_details(, "VanillaICE")` for more info

</details>

## In both

*   checking Rd files ... WARNING
    ```
    checkRd: (5) VanillaICE.Rd:0-7: Must have a \description
    ```

*   checking running R code from vignettes ...
    ```
      ‘VanillaICE.Rnw’ using ‘UTF-8’... OK
      ‘crlmmDownstream.Rnw’ using ‘UTF-8’... failed
     WARNING
    Errors in running code in vignettes:
    when running code in ‘crlmmDownstream.Rnw’
      ...
    > data(cnSetExample, package = "crlmm")
    
    > se <- as(cnSetExample, "SnpArrayExperiment")
    Warning: executing %dopar% sequentially: no parallel backend registered
    
    > library(ArrayTV)
    
      When sourcing ‘crlmmDownstream.R’:
    Error: there is no package called ‘ArrayTV’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ArrayTV’
    
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BSgenome.Hsapiens.UCSC.hg18’ ‘MatrixGenerics’
      All declared Imports should be used.
    ```

# vasp

<details>

* Version: 1.2.4
* GitHub: https://github.com/yuhuihui2011/vasp
* Source code: https://github.com/cran/vasp
* Date/Publication: 2021-01-23
* Number of recursive dependencies: 104

Run `revdep_details(, "vasp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        doc       4.0Mb
        extdata   3.4Mb
    ```

# wateRmelon

<details>

* Version: 1.34.0
* GitHub: NA
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 168

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
    IDATsToMatrices2: no visible global function definition for ‘.mclapply’
    NChannelSetToMethyLumiSet2: no visible global function definition for
      ‘betas’
    NChannelSetToMethyLumiSet2: no visible global function definition for
      ‘methylated’
    NChannelSetToMethyLumiSet2: no visible global function definition for
      ‘unmethylated’
    NChannelSetToMethyLumiSet2: no visible global function definition for
      ‘pval.detect<-’
    beadcount: no visible global function definition for ‘getNBeads’
    ...
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

* Version: 1.22.0
* GitHub: https://github.com/Liuy12/XBSeq
* Source code: https://github.com/cran/XBSeq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 123

Run `revdep_details(, "XBSeq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘DESeq’
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
    Loglikhood : <anonymous>: no visible global function definition for
      ‘ddelap’
    Loglikhood : <anonymous>: no visible global function definition for
      ‘dpois’
    Loglikhood_NB : <anonymous>: no visible global function definition for
      ‘dnbinom’
    MAplot: no visible binding for global variable ‘baseMean’
    MAplot: no visible global function definition for ‘quantile’
    MAplot: no visible binding for global variable ‘log2FoldChange’
    XBSeqDataSet: no visible global function definition for ‘DataFrame’
    ...
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

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/yarn
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 162

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
    Error in getBM(attributes = attributes, filters = filters, values = genes,  : 
      Multiple cache results found
    Calls: annotateFromBiomart -> getBM
    Execution halted
    ```

