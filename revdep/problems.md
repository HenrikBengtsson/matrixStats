# abcrf

<details>

* Version: 1.8.1
* GitHub: NA
* Source code: https://github.com/cran/abcrf
* Date/Publication: 2019-11-05 14:40:02 UTC
* Number of recursive dependencies: 41

Run `revdep_details(, "abcrf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   4.4Mb
    ```

# AlpsNMR

<details>

* Version: 3.1.5
* GitHub: NA
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2021-03-31
* Number of recursive dependencies: 162

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘AlpsNMR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: nmr_pca_plots
    > ### Title: Plotting functions for PCA
    > ### Aliases: nmr_pca_plots nmr_pca_plot_variance nmr_pca_scoreplot
    > ###   nmr_pca_loadingplot
    > 
    > ### ** Examples
    > 
    ...
        █
     1. ├─AlpsNMR::nmr_pca_scoreplot(dataset_1D, model)
     2. │ └─`%>%`(...)
     3. ├─dplyr::left_join(., nmr_metadata, by = "NMRExperiment")
     4. └─dplyr:::left_join.data.frame(., nmr_metadata, by = "NMRExperiment")
     5.   └─dplyr:::join_mutate(...)
     6.     └─dplyr:::join_cols(...)
     7.       └─dplyr:::standardise_join_by(by, x_names = x_names, y_names = y_names)
     8.         └─dplyr:::check_join_vars(by$x, x_names)
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(AlpsNMR)
      Loading required package: dplyr
      
      Attaching package: 'dplyr'
      
      The following object is masked from 'package:testthat':
    ...
       3. ├─dplyr::left_join(., nmr_metadata, by = "NMRExperiment")
       4. └─dplyr:::left_join.data.frame(., nmr_metadata, by = "NMRExperiment")
       5.   └─dplyr:::join_mutate(...)
       6.     └─dplyr:::join_cols(...)
       7.       └─dplyr:::standardise_join_by(by, x_names = x_names, y_names = y_names)
       8.         └─dplyr:::check_join_vars(by$x, x_names)
      
      [ FAIL 1 | WARN 1 | SKIP 1 | PASS 73 ]
      Error: Test failures
      Execution halted
    ```

*   checking Rd contents ... WARNING
    ```
    Argument items with no description in Rd object 'MUVR_model_plot':
      ‘ylim’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        dataset-demo   3.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘zip’
      All declared Imports should be used.
    ```

# AMARETTO

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 156

Run `revdep_details(, "AMARETTO")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data   3.4Mb
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

* Version: 1.14.0
* GitHub: https://github.com/valenlab/amplican
* Source code: https://github.com/cran/amplican
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 105

Run `revdep_details(, "amplican")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        doc   13.9Mb
        libs   1.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        R             4.0Mb
        help          2.1Mb
        testScripts   1.1Mb
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

* Version: 3.22.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2021-05-19
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

* Version: 1.0.1
* GitHub: https://github.com/bhagwataditya/autonomics
* Source code: https://github.com/cran/autonomics
* Date/Publication: 2021-06-06
* Number of recursive dependencies: 203

Run `revdep_details(, "autonomics")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘autonomics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: fit_limma
    > ### Title: Fit model and test for differential expression
    > ### Aliases: fit_limma fit_lm fit_lme fit_lmer fit_wilcoxon
    > 
    > ### ** Examples
    > 
    > require(magrittr)
    Loading required package: magrittr
    > file <- download_data('atkin18.somascan.adat')
    > object <- read_somascan(file, plot=FALSE)
    Error in file(con, "r") : invalid 'description' argument
    Calls: read_somascan -> .read_somascan -> readLines -> file
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Error (test_3_read_somascan_atkin18.R:30:5): read_somascan(file, pca=TRUE) ──
      Error: invalid 'description' argument
      Backtrace:
          █
       1. └─autonomics::read_somascan(file, pca = TRUE, plot = FALSE) test_3_read_somascan_atkin18.R:30:4
       2.   └─autonomics::.read_somascan(...)
       3.     └─base::readLines(file)
    ...
      Backtrace:
          █
       1. └─autonomics::read_somascan(file, plot = FALSE) test_8_fit.R:33:8
       2.   └─autonomics::.read_somascan(...)
       3.     └─base::readLines(file)
       4.       └─base::file(con, "r")
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 73 ]
      Error: Test failures
      Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘translate’
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

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   3.8Mb
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

* Version: 2.4.0
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 136

Run `revdep_details(, "BASiCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        data   3.9Mb
        doc    1.4Mb
        libs   7.8Mb
    ```

# BatchQC

<details>

* Version: 1.20.0
* GitHub: https://github.com/mani2012/BatchQC
* Source code: https://github.com/cran/BatchQC
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 160

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
* Number of recursive dependencies: 109

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

* Version: 1.8.0
* GitHub: https://github.com/lindsayrutter/bigPint
* Source code: https://github.com/cran/bigPint
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 167

Run `revdep_details(, "bigPint")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        data             6.0Mb
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

# BioNERO

<details>

* Version: 1.0.1
* GitHub: https://github.com/almeidasilvaf/BioNERO
* Source code: https://github.com/cran/BioNERO
* Date/Publication: 2021-07-04
* Number of recursive dependencies: 210

Run `revdep_details(, "BioNERO")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data   2.2Mb
        doc    4.4Mb
    ```

# biscuiteer

<details>

* Version: 1.6.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 216

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking whether package ‘biscuiteer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocParallel::bpstart’ by ‘QDNAseq::bpstart’ when loading ‘biscuiteer’
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
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

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/BloodGen3Module
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 163

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
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/BloodGen3Module/new/BloodGen3Module.Rcheck/00install.out’ for details.
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# bnbc

<details>

* Version: 1.14.0
* GitHub: https://github.com/hansenlab/bnbc
* Source code: https://github.com/cran/bnbc
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 92

Run `revdep_details(, "bnbc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   1.4Mb
    ```

# bnclassify

<details>

* Version: 0.4.5
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2020-03-12 17:40:02 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "bnclassify")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   8.2Mb
    ```

# bnem

<details>

* Version: 1.0.0
* GitHub: https://github.com/MartinFXP/bnem
* Source code: https://github.com/cran/bnem
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 157

Run `revdep_details(, "bnem")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage("bnem")
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rmarkdown’
      All declared Imports should be used.
    ```

# brms

<details>

* Version: 2.15.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2021-03-14 15:50:31 UTC
* Number of recursive dependencies: 227

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        R      5.0Mb
        doc    2.4Mb
        help   1.0Mb
    ```

# BSgenome

<details>

* Version: 1.60.0
* GitHub: https://github.com/Bioconductor/BSgenome
* Source code: https://github.com/cran/BSgenome
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 101

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
    Error in .form_assembly_report_url(assembly_accession) : 
      don't know where to find assembly report for GCF_000001405.38
    Calls: seqlevelsStyle<- ... .get_NCBI_chrom_info_from_accession -> fetch_assembly_report -> .form_assembly_report_url
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
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        extdata   5.8Mb
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

# BSW

<details>

* Version: 0.1.1
* GitHub: https://github.com/adam-bec/BSW
* Source code: https://github.com/cran/BSW
* Date/Publication: 2021-03-22 16:20:09 UTC
* Number of recursive dependencies: 47

Run `revdep_details(, "BSW")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# bumphunter

<details>

* Version: 1.34.0
* GitHub: https://github.com/rafalab/bumphunter
* Source code: https://github.com/cran/bumphunter
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 112

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

* Version: 3.2.1
* GitHub: https://github.com/duncanplee/CARBayesST
* Source code: https://github.com/cran/CARBayesST
* Date/Publication: 2021-05-31 07:30:09 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "CARBayesST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   6.1Mb
    ```

# CATALYST

<details>

* Version: 1.16.2
* GitHub: https://github.com/HelenaLC/CATALYST
* Source code: https://github.com/cran/CATALYST
* Date/Publication: 2021-07-13
* Number of recursive dependencies: 259

Run `revdep_details(, "CATALYST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.1Mb
      sub-directories of 1Mb or more:
        data   6.6Mb
        doc    9.9Mb
    ```

# CDSeq

<details>

* Version: 1.0.8
* GitHub: https://github.com/kkang7/CDSeq_R_Package
* Source code: https://github.com/cran/CDSeq
* Date/Publication: 2021-02-10 16:10:02 UTC
* Number of recursive dependencies: 202

Run `revdep_details(, "CDSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
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

* Version: 1.8.1
* GitHub: https://github.com/campbio/celda
* Source code: https://github.com/cran/celda
* Date/Publication: 2021-05-30
* Number of recursive dependencies: 356

Run `revdep_details(, "celda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    featureModuleTable : <anonymous>: no visible global function definition
      for ‘rowData’
    Undefined global functions or variables:
      rowData
    ```

# CelliD

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/CelliD
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 249

Run `revdep_details(, "CelliD")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘CelliD-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: RunMCDMAP
    > ### Title: Diffusion Map on MCA coordinates
    > ### Aliases: RunMCDMAP RunMCDMAP.Seurat RunMCDMAP.SingleCellExperiment
    > 
    > ### ** Examples
    > 
    > seuratPbmc <- RunMCA(seuratPbmc, nmcs = 5)
    ...
    0.055 sec elapsed
    Computing Coordinates
    0.012 sec elapsed
    > seuratPbmc <- RunMCDMAP(seuratPbmc, dims = seq(5), k = 5)
    
    getting feature and cell coordinates
    
    Error in loadNamespace(x) : there is no package called ‘destiny’
    Calls: RunMCDMAP ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘destiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc    3.2Mb
        libs   3.0Mb
    ```

# cellmigRation

<details>

* Version: 1.0.0
* GitHub: https://github.com/ocbe-uio/cellmigRation
* Source code: https://github.com/cran/cellmigRation
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 154

Run `revdep_details(, "cellmigRation")` for more info

</details>

## In both

*   checking whether package ‘cellmigRation’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/cellmigRation/new/cellmigRation.Rcheck/00install.out’ for details.
    ```

# cellWise

<details>

* Version: 2.2.5
* GitHub: NA
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2021-03-09 11:00:06 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "cellWise")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GSE’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.9Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    2.1Mb
        libs   9.3Mb
    ```

# CEMiTool

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 183

Run `revdep_details(, "CEMiTool")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        data      5.1Mb
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

* Version: 2.22.0
* GitHub: NA
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 242

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
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out’ for details.
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

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/Chicago
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 172

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

* Version: 3.26.2
* GitHub: NA
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2021-07-15
* Number of recursive dependencies: 207

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
    don't know where to find assembly report for GCF_000001405.25
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
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
      
      [1] TRUE
      > test_check("ChIPpeakAnno")
      Error in x$.self$finalize() : attempt to apply non-function
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • empty test (5)
      
    ...
       6.         └─base::tryCatch(...)
       7.           └─base:::tryCatchList(expr, classes, parentenv, handlers)
       8.             └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       9.               └─value[[3L]](cond)
      
      [ FAIL 3 | WARN 1 | SKIP 5 | PASS 209 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 26.1Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        data     13.3Mb
        doc       6.0Mb
        extdata   5.2Mb
    ```

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 43

Run `revdep_details(, "cifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cliqueMS

<details>

* Version: 1.6.0
* GitHub: https://github.com/osenan/cliqueMS
* Source code: https://github.com/cran/cliqueMS
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 136

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

# clusterExperiment

<details>

* Version: 2.12.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 181

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.5Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        data   3.6Mb
        doc   10.4Mb
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

# clustifyr

<details>

* Version: 1.4.0
* GitHub: https://github.com/rnabioco/clustifyr
* Source code: https://github.com/cran/clustifyr
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 149

Run `revdep_details(, "clustifyr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.5Mb
        help   1.2Mb
    ```

# cmapR

<details>

* Version: 1.4.0
* GitHub: https://github.com/cmap/cmapR
* Source code: https://github.com/cran/cmapR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 74

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
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data      3.1Mb
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

* Version: 3.2.0
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2021-06-14 15:00:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "cna")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# CNVScope

<details>

* Version: 3.6.0
* GitHub: https://github.com/jamesdalg/CNVScope
* Source code: https://github.com/cran/CNVScope
* Date/Publication: 2021-05-24 11:10:03 UTC
* Number of recursive dependencies: 199

Run `revdep_details(, "CNVScope")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc       3.2Mb
        extdata   1.7Mb
    ```

# cola

<details>

* Version: 1.8.1
* GitHub: https://github.com/jokergoo/cola
* Source code: https://github.com/cran/cola
* Date/Publication: 2021-07-18
* Number of recursive dependencies: 233

Run `revdep_details(, "cola")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data      3.5Mb
        extdata   1.0Mb
        libs      1.9Mb
    ```

# collapse

<details>

* Version: 1.6.5
* GitHub: https://github.com/SebKrantz/collapse
* Source code: https://github.com/cran/collapse
* Date/Publication: 2021-07-24 10:00:02 UTC
* Number of recursive dependencies: 129

Run `revdep_details(, "collapse")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.9Mb
      sub-directories of 1Mb or more:
        data   1.0Mb
        libs  18.7Mb
    ```

# ComplexHeatmap

<details>

* Version: 2.8.0
* GitHub: https://github.com/jokergoo/ComplexHeatmap
* Source code: https://github.com/cran/ComplexHeatmap
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 100

Run `revdep_details(, "ComplexHeatmap")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘magick’
    ```

# conclus

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/conclus
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 250

Run `revdep_details(, "conclus")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘conclus-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: retrieveFromGEO
    > ### Title: retrieveFromGEO
    > ### Aliases: retrieveFromGEO
    > 
    > ### ** Examples
    > 
    > outputDirectory <- "./YourOutputDirectory"
    ...
    GSE96982-GPL19057_series_matrix.txt.gz
    trying URL 'https://ftp.ncbi.nlm.nih.gov/geo/series/GSE96nnn/GSE96982/matrix/GSE96982-GPL19057_series_matrix.txt.gz'
    Content type 'application/x-gzip' length 27102 bytes (26 KB)
    ==================================================
    downloaded 26 KB
    
    Error: The size of the connection buffer (131072) was not large enough
    to fit a complete line:
      * Increase it by setting `Sys.setenv("VROOM_CONNECTION_SIZE")`
    Execution halted
    ```

# condiments

<details>

* Version: 1.0.0
* GitHub: https://github.com/HectorRDB/condiments
* Source code: https://github.com/cran/condiments
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 167

Run `revdep_details(, "condiments")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘condiments-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: differentiationTest
    > ### Title: Differential Differentiation Test
    > ### Aliases: differentiationTest differentiationTest,matrix-method
    > ###   differentiationTest,SlingshotDataSet-method
    > ###   differentiationTest,SingleCellExperiment-method
    > ###   differentiationTest,PseudotimeOrdering-method
    > 
    ...
    > data('slingshotExample', package = "slingshot")
    > rd <- slingshotExample$rd
    > cl <- slingshotExample$cl
    > condition <- factor(rep(c('A','B'), length.out = nrow(rd)))
    > condition[110:139] <- 'A'
    > sds <- slingshot::slingshot(rd, cl)
    Error in loadNamespace(x) : 
      there is no package called ‘DelayedMatrixStats’
    Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       18.     └─base:::withOneRestart(expr, restarts[[1L]])
       19.       └─base:::doWithOneRestart(return(expr), restart)
      ── Error (test_topology.R:12:1): (code run outside of `test_that()`) ───────────
      Error: there is no package called 'DelayedMatrixStats'
      Backtrace:
           █
        1. ├─slingshot::slingshot(rd, cl) test_topology.R:12:0
    ...
       14. │               └─TrajectoryUtils:::FUN(x, clusters)
       15. │                 └─TrajectoryUtils:::.rowstats_w(...)
       16. └─base::loadNamespace(x)
       17.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       18.     └─base:::withOneRestart(expr, restarts[[1L]])
       19.       └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    .differentiationTest: no visible binding for global variable ‘pair’
    .differentiationTest: no visible binding for global variable
      ‘statistic’
    .differentiationTest: no visible binding for global variable ‘p.value’
    .progressionTest: no visible binding for global variable ‘lineage’
    .progressionTest: no visible binding for global variable ‘statistic’
    .progressionTest: no visible binding for global variable ‘p.value’
    Undefined global functions or variables:
      lineage p.value pair statistic
    ```

# consensusOV

<details>

* Version: 1.14.0
* GitHub: https://github.com/bhklab/consensusOV
* Source code: https://github.com/cran/consensusOV
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 151

Run `revdep_details(, "consensusOV")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        R   6.4Mb
    ```

# CopywriteR

<details>

* Version: 2.24.0
* GitHub: https://github.com/PeeperLab/CopywriteR
* Source code: https://github.com/cran/CopywriteR
* Date/Publication: 2021-05-19
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

# corrcoverage

<details>

* Version: 1.2.1
* GitHub: https://github.com/annahutch/corrcoverage
* Source code: https://github.com/cran/corrcoverage
* Date/Publication: 2019-12-06 23:20:12 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "corrcoverage")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        extdata   3.8Mb
        libs      1.2Mb
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

* Version: 1.50.0
* GitHub: NA
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 58

Run `revdep_details(, "crlmm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
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

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/crossmeta
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 171

Run `revdep_details(, "crossmeta")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘crossmeta-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: es_meta
    > ### Title: Effect size combination meta analysis.
    > ### Aliases: es_meta
    > 
    > ### ** Examples
    > 
    > 
    ...
    > 
    > # add tissue sources to perform seperate meta-analyses for each source (optional)
    > # anals <- add_sources(anals, data_dir)
    > 
    > # perform meta-analysis
    > es <- es_meta(anals, by_source = TRUE)
    Error in `[.data.frame`(top, , c("SYMBOL", "dprime", "vardprime")) : 
      undefined columns selected
    Calls: es_meta ... FUN -> get_es -> lapply -> FUN -> [ -> [.data.frame
    Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'add_vsd':
      ‘pbulk’ ‘vsd_path’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RColorBrewer’ ‘statmod’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘GEOquery:::parseGSEMatrix’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘getDirListing’ ‘getGEO’ ‘getGEOSuppFiles’
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

* Version: 1.4.1
* GitHub: https://github.com/BodenmillerGroup/cytomapper
* Source code: https://github.com/cran/cytomapper
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 136

Run `revdep_details(, "cytomapper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        R     1.9Mb
        doc   4.7Mb
    ```

# CytoTree

<details>

* Version: 1.2.0
* GitHub: https://github.com/JhuangLab/CytoTree
* Source code: https://github.com/cran/CytoTree
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 243

Run `revdep_details(, "CytoTree")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘destiny’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# decompr

<details>

* Version: 6.0.0
* GitHub: https://github.com/bquast/decompr
* Source code: https://github.com/cran/decompr
* Date/Publication: 2021-05-10 00:12:10 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "decompr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gvc’
    ```

# DeepBlueR

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 153

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DelayedMatrixStats

<details>

* Version: 1.14.0
* GitHub: https://github.com/PeteHaitch/DelayedMatrixStats
* Source code: https://github.com/cran/DelayedMatrixStats
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 70

Run `revdep_details(, "DelayedMatrixStats")` for more info

</details>

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

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 61

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
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        data   6.7Mb
        libs   2.7Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘calibrate’
    ```

# DepecheR

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 110

Run `revdep_details(, "DepecheR")` for more info

</details>

## In both

*   checking whether package ‘DepecheR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'dAllocate(inDataFrame = selectionDataSet, ': unused arguments (clusterCenters = x, log2Off = TRUE, noZeroNum = FALSE) 
      Note: possible error in 'dAllocate(inDataFrameScaled, ': unused arguments (log2Off = TRUE, noZeroNum = FALSE) 
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/DepecheR/new/DepecheR.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘reshape2’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    depecheCoFunction : <anonymous>: possible error in
      dAllocate(inDataFrame = selectionDataSet, clusterCenters = x, log2Off
      = TRUE, noZeroNum = FALSE): unused arguments (clusterCenters = x,
      log2Off = TRUE, noZeroNum = FALSE)
    depecheCoFunction: possible error in dAllocate(inDataFrameScaled,
      reducedClusterCenters, log2Off = TRUE, noZeroNum = FALSE): unused
      arguments (log2Off = TRUE, noZeroNum = FALSE)
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

* Version: 1.10.0
* GitHub: https://github.com/yafeng/DEqMS
* Source code: https://github.com/cran/DEqMS
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 115

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
    snapshotDate(): 2021-07-16
    > query(eh, "DEqMS")
    ExperimentHub with 0 records
    # snapshotDate(): 2021-07-16
    > dat.psm = eh[["EH1663"]]
    Error: File not previously downloaded.
      Run with 'localHub=FALSE'
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# detrendr

<details>

* Version: 0.6.14
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2021-05-16 05:00:05 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        libs   7.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DHS.rates

<details>

* Version: 0.9.0
* GitHub: NA
* Source code: https://github.com/cran/DHS.rates
* Date/Publication: 2021-06-18 08:20:11 UTC
* Number of recursive dependencies: 58

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

* Version: 1.20.0
* GitHub: https://github.com/aryeelab/diffloop
* Source code: https://github.com/cran/diffloop
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 148

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

# diffUTR

<details>

* Version: 1.0.0
* GitHub: https://github.com/ETHZ-INS/diffUTR
* Source code: https://github.com/cran/diffUTR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 143

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

# DiscoRhythm

<details>

* Version: 1.8.0
* GitHub: https://github.com/matthewcarlucci/DiscoRhythm
* Source code: https://github.com/cran/DiscoRhythm
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 155

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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2021-05-19
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

*   checking LazyData ... WARNING
    ```
      LazyData DB of 8.8 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.6Mb
      sub-directories of 1Mb or more:
        data  15.9Mb
        doc    1.3Mb
    ```

# Doscheda

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 159

Run `revdep_details(, "Doscheda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data             3.1Mb
        doc              1.6Mb
        shiny-examples   2.0Mb
    ```

# DSWE

<details>

* Version: 1.5.1
* GitHub: https://github.com/TAMU-AML/DSWE-Package
* Source code: https://github.com/cran/DSWE
* Date/Publication: 2021-01-11 10:30:07 UTC
* Number of recursive dependencies: 18

Run `revdep_details(, "DSWE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.2Mb
      sub-directories of 1Mb or more:
        data   4.8Mb
        libs   4.1Mb
    ```

# dtree

<details>

* Version: 0.4.2
* GitHub: NA
* Source code: https://github.com/cran/dtree
* Date/Publication: 2018-01-18 23:57:29 UTC
* Number of recursive dependencies: 82

Run `revdep_details(, "dtree")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# ecospat

<details>

* Version: 3.2
* GitHub: https://github.com/ecospat/ecospat
* Source code: https://github.com/cran/ecospat
* Date/Publication: 2021-02-19 09:10:03 UTC
* Number of recursive dependencies: 237

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

* Version: 2.22.0
* GitHub: NA
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 51

Run `revdep_details(, "EMDomics")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Sadhika Malladi <contact@sadhikamalladi.com> [aut, cre]
      Daniel Schmolze <emd@schmolze.com> [aut, cre]
    ```

# EnrichedHeatmap

<details>

* Version: 1.22.0
* GitHub: https://github.com/jokergoo/EnrichedHeatmap
* Source code: https://github.com/cran/EnrichedHeatmap
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 93

Run `revdep_details(, "EnrichedHeatmap")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        doc       6.0Mb
        extdata   2.6Mb
        libs      1.0Mb
    ```

# EpiDISH

<details>

* Version: 2.8.0
* GitHub: https://github.com/sjczheng/EpiDISH
* Source code: https://github.com/cran/EpiDISH
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 84

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

# EstimationTools

<details>

* Version: 2.1.0
* GitHub: https://github.com/Jaimemosg/EstimationTools
* Source code: https://github.com/cran/EstimationTools
* Date/Publication: 2021-03-10 18:40:05 UTC
* Number of recursive dependencies: 106

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

* Version: 1.8.0
* GitHub: https://github.com/neobernad/evaluomeR
* Source code: https://github.com/cran/evaluomeR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 107

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

* Version: 3.0.0
* GitHub: https://github.com/jpromeror/EventPointer
* Source code: https://github.com/cran/EventPointer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 161

Run `revdep_details(, "EventPointer")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives persons with no role:
      Pablo Sacristan
      Ander Muniategui
      Fernando Carazo
      Ander Aramburu
      Angel Rubio
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
    annotate2: no visible global function definition for
      ‘addDummySpliceSites’
    annotate2: no visible global function definition for ‘annotatePaths’
    annotateFeatures2: no visible global function definition for
      ‘matchTxFeatures’
    callGRseq_parallel: no visible global function definition for
      ‘makeCluster’
    callGRseq_parallel: no visible binding for global variable ‘i’
    ...
    call_get_table_Bootstrap: no visible binding for global variable ‘ii’
    call_get_table_Bootstrap: no visible global function definition for
      ‘stopCluster’
    fitgl: no visible binding for global variable ‘hist’
    Undefined global functions or variables:
      addDummySpliceSites annotatePaths hist i ii jj makeCluster
      matchTxFeatures stopCluster
    Consider adding
      importFrom("graphics", "hist")
    to your NAMESPACE file.
    ```

# ExCluster

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 36

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

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/ExpHunterSuite
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 215

Run `revdep_details(, "ExpHunterSuite")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    functional_hunter: no visible binding for global variable ‘genes_tag’
    get_stats_by_group: no visible binding for global variable
      ‘known_miRNA’
    get_stats_by_group: no visible binding for global variable
      ‘possible_positives’
    main_targets_functional: no visible binding for global variable
      ‘main_path_script’
    Undefined global functions or variables:
      genes_tag known_miRNA main_path_script possible_positives
    ```

# ExpressionNormalizationWorkflow

<details>

* Version: 1.18.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 106

Run `revdep_details(, "ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: /scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: /scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00_pkg_src/ExpressionNormalizationWorkflow/man/ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
      Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
      Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   4.7Mb
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
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  18.5Mb
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
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        libs  10.1Mb
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
      installed size is 21.9Mb
      sub-directories of 1Mb or more:
        libs  21.8Mb
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 89

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

# FEAST

<details>

* Version: 1.0.0
* GitHub: https://github.com/suke18/FEAST
* Source code: https://github.com/cran/FEAST
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 234

Run `revdep_details(, "FEAST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   3.9Mb
        doc    1.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FEAST: multiple local function definitions for ‘bp_fun’ with different
      formal arguments
    SC3_Clust: no visible global function definition for ‘metadata’
    Seurat_Clust: no visible global function definition for
      ‘CreateSeuratObject’
    Seurat_Clust: no visible global function definition for ‘NormalizeData’
    Seurat_Clust: no visible global function definition for
      ‘FindVariableFeatures’
    Seurat_Clust: no visible global function definition for ‘ScaleData’
    Seurat_Clust: no visible global function definition for ‘RunPCA’
    ...
    Visual_Rslt: no visible global function definition for ‘guides’
    Visual_Rslt: no visible global function definition for ‘guide_legend’
    Visual_Rslt: no visible global function definition for ‘ggarrange’
    aricode_NMI : entropy: no visible global function definition for
      ‘sortPairs’
    Undefined global functions or variables:
      CreateSeuratObject FindClusters FindNeighbors FindVariableFeatures
      Idents NormalizeData RunPCA ScaleData VariableFeatures element_text
      get_palette ggarrange ggbarplot ggline guide_legend guides metadata
      scale_y_continuous sortPairs theme
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
* Number of recursive dependencies: 21

Run `revdep_details(, "fipp")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fishpond

<details>

* Version: 1.8.0
* GitHub: https://github.com/mikelove/fishpond
* Source code: https://github.com/cran/fishpond
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 179

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

* Version: 2.4.0
* GitHub: NA
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 134

Run `revdep_details(, "flowCore")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.4Mb
      sub-directories of 1Mb or more:
        R         1.9Mb
        data      5.0Mb
        extdata   1.1Mb
        libs     10.1Mb
    ```

# flowGraph

<details>

* Version: 1.0.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 83

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

* Version: 4.4.0
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 136

Run `revdep_details(, "flowWorkspace")` for more info

</details>

## In both

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
    
    Undocumented arguments in documentation object 'cf_append_cols'
      ‘ctx’
    
    Undocumented arguments in documentation object 'convert'
      ‘backend’
    
    Undocumented arguments in documentation object 'cs_get_uri'
    ...
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    S3 methods shown with full name in documentation object 'cytoctx':
      ‘print.cytoctx’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... WARNING
    ```
      apparently using $(BLAS_LIBS) without following $(FLIBS) in ‘src/Makevars’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 70.7Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs  65.7Mb
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
      ‘DelayedArray:::simplify_NULL_dimnames’ ‘flowCore:::.estimateLogicle’
      ‘flowCore:::.spillover_pattern’ ‘flowCore:::checkClass’
      ‘flowCore:::guid’ ‘flowCore:::logicle_transform’
      ‘flowCore:::parse_pd_for_read_fs’ ‘flowCore:::txt2spillmatrix’
      ‘flowCore:::updateTransformKeywords’
      ‘flowCore:::validFilterResultList’ ‘graph:::.makeEdgeKeys’
      ‘ncdfFlow:::.isValidSamples’ ‘stats:::.splinefun’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      print.cytoctx
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# FRASER

<details>

* Version: 1.4.0
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 185

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        doc    1.6Mb
        libs   4.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# funtooNorm

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 143

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

# GAPGOM

<details>

* Version: 1.8.0
* GitHub: https://github.com/Berghopper/GAPGOM
* Source code: https://github.com/cran/GAPGOM
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 149

Run `revdep_details(, "GAPGOM")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        R   3.8Mb
    ```

# GenEst

<details>

* Version: 1.4.6
* GitHub: NA
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2021-06-17 07:10:08 UTC
* Number of recursive dependencies: 89

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

* Version: 1.4.1
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2021-06-06
* Number of recursive dependencies: 200

Run `revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.6Mb
      sub-directories of 1Mb or more:
        data      1.2Mb
        doc      14.1Mb
        extdata   1.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pcaExplorer’
    ```

# genomation

<details>

* Version: 1.24.0
* GitHub: https://github.com/BIMSBbioinfo/genomation
* Source code: https://github.com/cran/genomation
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 100

Run `revdep_details(, "genomation")` for more info

</details>

## In both

*   checking whether package ‘genomation’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘Biostrings::pattern’ by ‘grid::pattern’ when loading ‘genomation’
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/genomation/new/genomation.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   1.2Mb
        libs      1.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
      See the note in ?`:::` about the use of this operator.
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
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        libs   7.1Mb
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GGPA

<details>

* Version: 1.4.0
* GitHub: https://github.com/dongjunchung/GGPA
* Source code: https://github.com/cran/GGPA
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 68

Run `revdep_details(, "GGPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   3.8Mb
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

* Version: 0.2-4
* GitHub: NA
* Source code: https://github.com/cran/GJRM
* Date/Publication: 2021-04-12 18:00:11 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "GJRM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# glmGamPoi

<details>

* Version: 1.4.0
* GitHub: https://github.com/const-ae/glmGamPoi
* Source code: https://github.com/cran/glmGamPoi
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 168

Run `revdep_details(, "glmGamPoi")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs   8.3Mb
    ```

# graper

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 66

Run `revdep_details(, "graper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   5.6Mb
    ```

# GUIDEseq

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 142

Run `revdep_details(, "GUIDEseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        extdata  10.5Mb
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

* Version: 1.36.2
* GitHub: https://github.com/ivanek/Gviz
* Source code: https://github.com/cran/Gviz
* Date/Publication: 2021-07-04
* Number of recursive dependencies: 150

Run `revdep_details(, "Gviz")` for more info

</details>

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      The following objects are masked from 'package:base':
      
          I, expand.grid, unname
      
      Loading required package: IRanges
      Loading required package: GenomicRanges
    ...
       12.               └─biomaRt:::bmRequest(...)
       13.                 └─httr::GET(request2, config = httr_config, content_type("text/plain"))
       14.                   └─httr:::request_perform(req, hu$handle$handle)
       15.                     ├─httr:::request_fetch(req$output, req$url, handle)
       16.                     └─httr:::request_fetch.write_memory(req$output, req$url, handle)
       17.                       └─curl::curl_fetch_memory(url, handle = handle)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 293 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        R         1.9Mb
        doc       4.7Mb
        extdata   2.5Mb
    ```

# GWENA

<details>

* Version: 1.2.0
* GitHub: https://github.com/Kumquatum/GWENA
* Source code: https://github.com/cran/GWENA
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 143

Run `revdep_details(, "GWENA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    5.1Mb
    ```

# haldensify

<details>

* Version: 0.0.6
* GitHub: https://github.com/nhejazi/haldensify
* Source code: https://github.com/cran/haldensify
* Date/Publication: 2020-09-16 06:40:13 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "haldensify")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# HDSpatialScan

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/HDSpatialScan
* Date/Publication: 2021-07-16 15:10:10 UTC
* Number of recursive dependencies: 88

Run `revdep_details(, "HDSpatialScan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.3Mb
    ```

# hipathia

<details>

* Version: 2.8.0
* GitHub: NA
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 127

Run `revdep_details(, "hipathia")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.1Mb
      sub-directories of 1Mb or more:
        data      8.6Mb
        doc       1.7Mb
        extdata   4.3Mb
    ```

# IMIFA

<details>

* Version: 2.1.6
* GitHub: https://github.com/Keefe-Murphy/IMIFA
* Source code: https://github.com/cran/IMIFA
* Date/Publication: 2021-05-24 16:50:05 UTC
* Number of recursive dependencies: 33

Run `revdep_details(, "IMIFA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data   6.4Mb
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

* Version: 0.1-7
* GitHub: https://github.com/drizopoulos/JMbayes2
* Source code: https://github.com/cran/JMbayes2
* Date/Publication: 2021-07-07 10:50:06 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "JMbayes2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        libs   8.1Mb
    ```

# kgschart

<details>

* Version: 1.3.5
* GitHub: https://github.com/kota7/kgschart
* Source code: https://github.com/cran/kgschart
* Date/Publication: 2017-07-02 22:16:15 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "kgschart")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# landmap

<details>

* Version: 0.0.11
* GitHub: https://github.com/envirometrix/landmap
* Source code: https://github.com/cran/landmap
* Date/Publication: 2021-05-27 06:40:07 UTC
* Number of recursive dependencies: 139

Run `revdep_details(, "landmap")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 23 marked UTF-8 strings
    ```

# latrend

<details>

* Version: 1.1.2
* GitHub: https://github.com/philips-software/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2021-04-14 13:50:10 UTC
* Number of recursive dependencies: 194

Run `revdep_details(, "latrend")` for more info

</details>

## In both

*   checking whether package ‘latrend’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/latrend/new/latrend.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: no DISPLAY variable so Tk is not available
    ```

# ldsep

<details>

* Version: 2.1.0
* GitHub: https://github.com/dcgerard/ldsep
* Source code: https://github.com/cran/ldsep
* Date/Publication: 2021-06-11 18:00:02 UTC
* Number of recursive dependencies: 159

Run `revdep_details(, "ldsep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
    ```

# liger

<details>

* Version: 2.0.1
* GitHub: https://github.com/JEFworks/liger
* Source code: https://github.com/cran/liger
* Date/Publication: 2021-01-25 05:50:09 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "liger")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        data   3.3Mb
        doc    2.1Mb
        libs   1.9Mb
    ```

# liminal

<details>

* Version: 0.1.2
* GitHub: https://github.com/sa-lee/liminal
* Source code: https://github.com/cran/liminal
* Date/Publication: 2021-05-28 07:30:05 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "liminal")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   7.1Mb
    ```

# LSAmitR

<details>

* Version: 1.0-2
* GitHub: NA
* Source code: https://github.com/cran/LSAmitR
* Date/Publication: 2018-06-08 13:23:05 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "LSAmitR")` for more info

</details>

## In both

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
* Number of recursive dependencies: 38

Run `revdep_details(, "lspartition")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Luminescence

<details>

* Version: 0.9.14
* GitHub: https://github.com/R-Lum/Luminescence
* Source code: https://github.com/cran/Luminescence
* Date/Publication: 2021-07-21 11:00:02 UTC
* Number of recursive dependencies: 152

Run `revdep_details(, "Luminescence")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RLumShiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        help   1.3Mb
        libs   3.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RLumShiny’
    ```

# M3Drop

<details>

* Version: 1.18.0
* GitHub: https://github.com/tallulandrews/M3Drop
* Source code: https://github.com/cran/M3Drop
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 205

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
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        doc  12.6Mb
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

* Version: 2.12.0
* GitHub: NA
* Source code: https://github.com/cran/maEndToEnd
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 227

Run `revdep_details(, "maEndToEnd")` for more info

</details>

## In both

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
      installed size is  6.1Mb
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

* Version: 1.4.0
* GitHub: https://github.com/Bioconductor/MatrixGenerics
* Source code: https://github.com/cran/MatrixGenerics
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 50

Run `revdep_details(, "MatrixGenerics")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Length mismatch: comparison on first 6 components
      ── Failure (test-api_compatibility.R:1242:2): rowProds works  ──────────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Length mismatch: comparison on first 6 components
      ── Failure (test-api_compatibility.R:1262:2): rowQuantiles works  ──────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
    ...
      ── Failure (test-api_compatibility.R:1518:2): rowWeightedSds works  ────────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Length mismatch: comparison on first 6 components
      ── Failure (test-api_compatibility.R:1539:2): rowWeightedVars works  ───────────
      `matrixStats_formals` not identical to `MatrixGenerics_default_method_formals`.
      Length mismatch: comparison on first 6 components
      
      [ FAIL 70 | WARN 0 | SKIP 0 | PASS 240 ]
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

# matrixTests

<details>

* Version: 0.1.9
* GitHub: https://github.com/KKPMW/matrixTests
* Source code: https://github.com/cran/matrixTests
* Date/Publication: 2020-05-01 06:50:12 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "matrixTests")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# mcmcsae

<details>

* Version: 0.6.0
* GitHub: NA
* Source code: https://github.com/cran/mcmcsae
* Date/Publication: 2021-01-20 08:40:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "mcmcsae")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.2Mb
      sub-directories of 1Mb or more:
        libs  14.8Mb
    ```

# MEAL

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 220

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

* Version: 2.24.0
* GitHub: https://github.com/CharlesJB/metagene
* Source code: https://github.com/cran/metagene
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 125

Run `revdep_details(, "metagene")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
      [1] TRUE
      produce data table : ChIP-Seq
      [1] TRUE
      produce data table : ChIP-Seq
      [1] TRUE
      produce data table : ChIP-Seq
      [1] TRUE
    ...
         test_metagene.R 
           test.metagene_initialize_all_extra_seqnames_force_seqlevels 
           test.metagene_initialize_invalid_extra_seqnames 
           test.metagene_initialize_valid_regions_supplementary_seqlevels 
      
      
      Error in BiocGenerics:::testPackage("metagene") : 
        unit tests failed for package metagene
      In addition: There were 50 or more warnings (use warnings() to see the first 50)
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        data      1.6Mb
        doc       3.2Mb
        extdata   5.4Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘similaRpeak’
    A package should be listed in only one of these fields.
    ```

# metamicrobiomeR

<details>

* Version: 1.2
* GitHub: https://github.com/nhanhocu/metamicrobiomeR
* Source code: https://github.com/cran/metamicrobiomeR
* Date/Publication: 2020-11-09 11:20:05 UTC
* Number of recursive dependencies: 135

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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 90

Run `revdep_details(, "MetaNeighbor")` for more info

</details>

## In both

*   checking LazyData ... WARNING
    ```
      LazyData DB of 7.1 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.8Mb
      sub-directories of 1Mb or more:
        data  15.0Mb
    ```

# metavizr

<details>

* Version: 1.15.0
* GitHub: NA
* Source code: https://github.com/cran/metavizr
* Date/Publication: 2021-03-19
* Number of recursive dependencies: 199

Run `revdep_details(, "metavizr")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      The following objects are masked from 'package:parallel':
      
          clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
          clusterExport, clusterMap, parApply, parCapply, parLapply,
          parLapplyLB, parRapply, parSapply, parSapplyLB
      
      The following objects are masked from 'package:stats':
    ...
      ── Error (test-EpivizMetagenomicsInnerNodeData_class.R:8:1): (code run outside of `test_that()`) ──
      Error: ExpressionSet2MRexperiment is now irrelevant; there is no replacement
      Backtrace:
          █
       1. └─curatedMetagenomicData::ExpressionSet2MRexperiment(loman.eset) test-EpivizMetagenomicsInnerNodeData_class.R:8:0
       2.   └─base::.Defunct("", package = "curatedMetagenomicData", defunct_string)
      
      [ FAIL 1 | WARN 41 | SKIP 0 | PASS 17 ]
      Error: Test failures
      Execution halted
    ```

# MethReg

<details>

* Version: 1.2.1
* GitHub: https://github.com/TransBioInfoLab/MethReg
* Source code: https://github.com/cran/MethReg
* Date/Publication: 2021-05-30
* Number of recursive dependencies: 236

Run `revdep_details(, "MethReg")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Error: values must be length 1,
       but FUN(X[[2]]) result is length 0
      Backtrace:
          █
       1. └─MethReg::get_promoter_avg(dnam = dnam, genome = "hg38", arrayType = "450k") test-get_promoter_avg.R:37:4
       2.   ├─base::cbind(rownames(se), rbind(unique.promoter.genes, non.unique.promoter.genes))
       3.   └─base::rbind(unique.promoter.genes, non.unique.promoter.genes)
    ...
       13. │           └─BSgenome:::.getInstalledPkgnameFromGenome(genome, masked = masked)
       14. │             └─BSgenome:::.stopOnAvailablePkg(genome)
       15. │               └─base::stop(...)
       16. ├─SummarizedExperiment::assay(.)
       17. └─base::.handleSimpleError(...)
       18.   └─base:::h(simpleError(msg, call))
      
      [ FAIL 3 | WARN 4 | SKIP 0 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        R      2.6Mb
        data   1.9Mb
        doc    2.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘TCGAbiolinks’
    ```

# MethylAid

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 171

Run `revdep_details(, "MethylAid")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MethylAidData’
    ```

# methylationArrayAnalysis

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 217

Run `revdep_details(, "methylationArrayAnalysis")` for more info

</details>

## In both

*   checking whether package ‘methylationArrayAnalysis’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import 'rmarkdown::pdf_document' by 'BiocStyle::pdf_document' when loading 'methylationArrayAnalysis'
      Warning: replacing previous import 'rmarkdown::html_document' by 'BiocStyle::html_document' when loading 'methylationArrayAnalysis'
      Warning: replacing previous import 'rmarkdown::md_document' by 'BiocStyle::md_document' when loading 'methylationArrayAnalysis'
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/00install.out’ for details.
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
      installed size is 322.9Mb
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

* Version: 2.38.0
* GitHub: https://github.com/seandavi/methylumi
* Source code: https://github.com/cran/methylumi
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 193

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

*   checking installed package size ... NOTE
    ```
      installed size is 13.8Mb
      sub-directories of 1Mb or more:
        R         3.1Mb
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
* Number of recursive dependencies: 80

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
* Number of recursive dependencies: 106

Run `revdep_details(, "mgcViz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   4.4Mb
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# microbiomeExplorer

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/microbiomeExplorer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 205

Run `revdep_details(, "microbiomeExplorer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        doc       4.7Mb
        extdata   4.1Mb
        shiny     2.9Mb
    ```

# migest

<details>

* Version: 2.0.0
* GitHub: https://github.com/guyabel/migest
* Source code: https://github.com/cran/migest
* Date/Publication: 2021-07-25 06:20:02 UTC
* Number of recursive dependencies: 43

Run `revdep_details(, "migest")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# miloR

<details>

* Version: 1.0.0
* GitHub: https://github.com/MarioniLab/miloR
* Source code: https://github.com/cran/miloR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 194

Run `revdep_details(, "miloR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    3.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: findNhoodGroupMarkers.Rd:79-81: Dropping empty section \examples
    ```

# MinimumDistance

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 78

Run `revdep_details(, "MinimumDistance")` for more info

</details>

## In both

*   checking whether package ‘MinimumDistance’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ff::pattern’ by ‘grid::pattern’ when loading ‘MinimumDistance’
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/MinimumDistance/new/MinimumDistance.Rcheck/00install.out’ for details.
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

* Version: 6.16.2
* GitHub: https://github.com/mixOmicsTeam/mixOmics
* Source code: https://github.com/cran/mixOmics
* Date/Publication: 2021-07-18
* Number of recursive dependencies: 90

Run `revdep_details(, "mixOmics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        data   3.3Mb
        doc    6.1Mb
    ```

# mnem

<details>

* Version: 1.8.0
* GitHub: https://github.com/cbg-ethz/mnem
* Source code: https://github.com/cran/mnem
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 156

Run `revdep_details(, "mnem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    3.8Mb
        libs   2.1Mb
    ```

# moanin

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/moanin
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 116

Run `revdep_details(, "moanin")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘edge’
    Unknown packages ‘pkg’, ‘KEGGprofile’ in Rd xrefs
    ```

# monocle

<details>

* Version: 2.20.0
* GitHub: NA
* Source code: https://github.com/cran/monocle
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 210

Run `revdep_details(, "monocle")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘biocViews’
      All declared Imports should be used.
    Missing or unexported object: ‘scater::newSCESet’
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘destiny’
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

# MOSim

<details>

* Version: 1.6.0
* GitHub: https://github.com/Neurergus/MOSim
* Source code: https://github.com/cran/MOSim
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

Run `revdep_details(, "MOSim")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

# motifbreakR

<details>

* Version: 2.6.1
* GitHub: https://github.com/Simon-Coetzee/motifbreakR
* Source code: https://github.com/cran/motifbreakR
* Date/Publication: 2021-07-22
* Number of recursive dependencies: 150

Run `revdep_details(, "motifbreakR")` for more info

</details>

## In both

*   checking whether package ‘motifbreakR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘S4Vectors::as.data.frame’ by ‘motifStack::as.data.frame’ when loading ‘motifbreakR’
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/motifbreakR/new/motifbreakR.Rcheck/00install.out’ for details.
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

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        data   3.6Mb
        doc    1.3Mb
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

# mrfDepth

<details>

* Version: 1.0.13
* GitHub: https://github.com/PSegaert/mrfDepth
* Source code: https://github.com/cran/mrfDepth
* Date/Publication: 2020-08-26 16:10:33 UTC
* Number of recursive dependencies: 47

Run `revdep_details(, "mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.0Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  18.9Mb
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

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   7.9Mb
    ```

# multiviewtest

<details>

* Version: 2.0.0
* GitHub: NA
* Source code: https://github.com/cran/multiviewtest
* Date/Publication: 2019-08-27 06:10:12 UTC
* Number of recursive dependencies: 18

Run `revdep_details(, "multiviewtest")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# muscat

<details>

* Version: 1.6.0
* GitHub: https://github.com/HelenaLC/muscat
* Source code: https://github.com/cran/muscat
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 214

Run `revdep_details(, "muscat")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘muscat-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: pbDS
    > ### Title: pseudobulk DS analysis
    > ### Aliases: pbDS
    > 
    > ### ** Examples
    > 
    > # simulate 5 clusters, 20% of DE genes
    ...
      |==========================================                            |  60%
      |                                                                            
      |========================================================              |  80%
      |                                                                            
      |======================================================================| 100%
    Error: BiocParallel errors
      element index: 1, 2, 3, 4, 5
      first error: statmod package required but is not installed
    
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(muscat)
      > 
      > test_check("muscat")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-mmDS.R:70:9): mmDS-utils; .mm_vst ───────────────────────────────
      Error: statmod package required but is not installed
    ...
        first error: statmod package required but is not installed
      Backtrace:
          █
       1. └─muscat::pbDS(...) test-pbDS.R:52:12
       2.   ├─BiocParallel::bplapply(...)
       3.   └─BiocParallel::bplapply(...)
      
      [ FAIL 3 | WARN 1 | SKIP 0 | PASS 536 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    5.8Mb
    ```

# muscData

<details>

* Version: 1.6.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2021-05-20
* Number of recursive dependencies: 249

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
      .git_fetch_output.txt
      .git_merge_output.txt
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

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 50

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

# nearBynding

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 118

Run `revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        extdata   8.1Mb
    ```

# nempi

<details>

* Version: 1.0.0
* GitHub: https://github.com/cbg-ethz/nempi
* Source code: https://github.com/cran/nempi
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 112

Run `revdep_details(, "nempi")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage("nempi")
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

# NetLogoR

<details>

* Version: 0.3.8
* GitHub: https://github.com/PredictiveEcology/NetLogoR
* Source code: https://github.com/cran/NetLogoR
* Date/Publication: 2021-07-10 10:40:02 UTC
* Number of recursive dependencies: 158

Run `revdep_details(, "NetLogoR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
    ```

# NormalyzerDE

<details>

* Version: 1.10.0
* GitHub: https://github.com/ComputationalProteomics/NormalyzerDE
* Source code: https://github.com/cran/NormalyzerDE
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 159

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

# obfuscatoR

<details>

* Version: 0.2.1
* GitHub: https://github.com/edsandorf/obfuscatoR
* Source code: https://github.com/cran/obfuscatoR
* Date/Publication: 2020-11-19 08:20:09 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "obfuscatoR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# omicplotR

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 87

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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 130

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
      installed size is 16.6Mb
      sub-directories of 1Mb or more:
        data  15.3Mb
        doc    1.2Mb
    ```

# omicwas

<details>

* Version: 0.8.0
* GitHub: https://github.com/fumi-github/omicwas
* Source code: https://github.com/cran/omicwas
* Date/Publication: 2020-10-08 12:50:03 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "omicwas")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   6.8Mb
    ```

# OptimalDesign

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/OptimalDesign
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 29

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

* Version: 1.10.0
* GitHub: https://github.com/gagneurlab/OUTRIDER
* Source code: https://github.com/cran/OUTRIDER
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 172

Run `revdep_details(, "OUTRIDER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        libs   2.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# pandaR

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 49

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
      installed size is 17.0Mb
      sub-directories of 1Mb or more:
        data  16.6Mb
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

* Version: 1.18.0
* GitHub: https://github.com/mani2012/PathoStat
* Source code: https://github.com/cran/PathoStat
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 196

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

* Version: 1.84.0
* GitHub: https://github.com/hredestig/pcamethods
* Source code: https://github.com/cran/pcaMethods
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 35

Run `revdep_details(, "pcaMethods")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ade4’
    ```

# PDATK

<details>

* Version: 1.0.2
* GitHub: https://github.com/bhklab/PDATK
* Source code: https://github.com/cran/PDATK
* Date/Publication: 2021-06-24
* Number of recursive dependencies: 265

Run `revdep_details(, "PDATK")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘optimalKMinimizeAmbiguity’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
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

# peakPick

<details>

* Version: 0.11
* GitHub: NA
* Source code: https://github.com/cran/peakPick
* Date/Publication: 2015-12-04 15:40:34
* Number of recursive dependencies: 19

Run `revdep_details(, "peakPick")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# phosphonormalizer

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 46

Run `revdep_details(, "phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 139

Run `revdep_details(, "Pigengene")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Warning: S4 exports specified in 'NAMESPACE' but not defined in package ‘Pigengene’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘AnnotationDbi’ ‘biomaRt’ ‘energy’ ‘org.Hs.eg.db’ ‘org.Mm.eg.db’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Package in Depends field not imported from: ‘BiocStyle’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
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

# pipeComp

<details>

* Version: 1.2.0
* GitHub: https://github.com/plger/pipeComp
* Source code: https://github.com/cran/pipeComp
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 196

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
      installed size is  6.7Mb
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

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/pmp
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 97

Run `revdep_details(, "pmp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    5.5Mb
    ```

# PrecisionTrialDrawer

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/PrecisionTrialDrawer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 128

Run `revdep_details(, "PrecisionTrialDrawer")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘PrecisionTrialDrawer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: newCancerPanel
    > ### Title: CancerPanel object constructor
    > ### Aliases: newCancerPanel
    > 
    > ### ** Examples
    > 
    > # Load the panel example
    ...
    > mypanel <- newCancerPanel(panelexample[1:3 , ] , canonicalTranscript=FALSE)
    Checking panel construction...
    Calculating panel size...
    Connecting to ensembl biomart...
    Ensembl site unresponsive, trying uswest mirror
    Ensembl site unresponsive, trying asia mirror
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Peer's Certificate issuer is not recognized.
    Calls: newCancerPanel ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘LowMACA’
    ```

# ProteoMM

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 96

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

* Version: 1.28.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

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

* Version: 1.2.0
* GitHub: https://github.com/RforMassSpectrometry/QFeatures
* Source code: https://github.com/cran/QFeatures
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 132

Run `revdep_details(, "QFeatures")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’
      ‘MultiAssayExperiment:::.sampleMapFromData’
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

# RaceID

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/RaceID
* Date/Publication: 2021-04-08 06:10:08 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "RaceID")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        data   6.1Mb
        doc    5.8Mb
        libs   1.8Mb
    ```

# rADA

<details>

* Version: 1.1.9
* GitHub: NA
* Source code: https://github.com/cran/rADA
* Date/Publication: 2021-03-23 19:40:06 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "rADA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
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

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/RadioGx
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 132

Run `revdep_details(, "RadioGx")` for more info

</details>

## In both

*   checking whether package ‘RadioGx’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/RadioGx/new/RadioGx.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 14 marked UTF-8 strings
    ```

# regsem

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/regsem
* Date/Publication: 2021-06-03 15:00:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "regsem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# rhierbaps

<details>

* Version: 1.1.3
* GitHub: https://github.com/gtonkinhill/rhierbaps
* Source code: https://github.com/cran/rhierbaps
* Date/Publication: 2019-12-11 14:20:05 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "rhierbaps")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# RJcluster

<details>

* Version: 3.1.0
* GitHub: NA
* Source code: https://github.com/cran/RJcluster
* Date/Publication: 2021-07-21 22:10:13 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "RJcluster")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# RNAmodR

<details>

* Version: 1.6.0
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 190

Run `revdep_details(, "RNAmodR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        R     2.0Mb
        doc   2.4Mb
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

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 266

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
      preprocessSWAN pvalues qvalue readMethylome readSNPTable refText
      reg.type region.size registerDoParallel relative.coord removeSNPs
      report runLOLA samples segmentPMDs segmentUMRsLMRs seqlengths
      seqlevels<- setNames sigCategories sites2ignore size solve.QP
      stopCluster sva target texthere tsne type types ucscTableQuery
      universeCounts useMart v var.diff varFit varLabels x x2 xmlValue y y2
      yint
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# robustlm

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/robustlm
* Date/Publication: 2021-03-22 15:40:02 UTC
* Number of recursive dependencies: 20

Run `revdep_details(, "robustlm")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# scDataviz

<details>

* Version: 1.2.0
* GitHub: https://github.com/kevinblighe/scDataviz
* Source code: https://github.com/cran/scDataviz
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 182

Run `revdep_details(, "scDataviz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

# scDHA

<details>

* Version: 1.1.1
* GitHub: https://github.com/duct317/scDHA
* Source code: https://github.com/cran/scDHA
* Date/Publication: 2021-06-10 22:00:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "scDHA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        data   7.4Mb
        libs   3.4Mb
    ```

# scmap

<details>

* Version: 1.14.0
* GitHub: https://github.com/hemberg-lab/scmap
* Source code: https://github.com/cran/scmap
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 74

Run `revdep_details(, "scmap")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.1Mb
        libs   2.0Mb
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

* Version: 1.16.1
* GitHub: https://github.com/YosefLab/scone
* Source code: https://github.com/cran/scone
* Date/Publication: 2021-07-22
* Number of recursive dependencies: 250

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

* Version: 1.2.0
* GitHub: https://github.com/UCLouvain-CBIO/scp
* Source code: https://github.com/cran/scp
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 166

Run `revdep_details(, "scp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘MultiAssayExperiment:::.sampleMapFromData’ ‘QFeatures:::.get_Hits’
      See the note in ?`:::` about the use of this operator.
    ```

# scPCA

<details>

* Version: 1.6.2
* GitHub: https://github.com/PhilBoileau/scPCA
* Source code: https://github.com/cran/scPCA
* Date/Publication: 2021-05-27
* Number of recursive dependencies: 188

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

* Version: 0.3.2
* GitHub: https://github.com/ChristophH/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2020-12-16 14:40:03 UTC
* Number of recursive dependencies: 67

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
* Number of recursive dependencies: 46

Run `revdep_details(, "seagull")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        libs  10.1Mb
    ```

# seeds

<details>

* Version: 0.9.1
* GitHub: https://github.com/Newmi1988/seeds
* Source code: https://github.com/cran/seeds
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "seeds")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsbml’
    ```

# sesame

<details>

* Version: 1.10.4
* GitHub: https://github.com/zwdzwd/sesame
* Source code: https://github.com/cran/sesame
* Date/Publication: 2021-06-06
* Number of recursive dependencies: 190

Run `revdep_details(, "sesame")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 38.1Mb
      sub-directories of 1Mb or more:
        doc  36.5Mb
    ```

# Seurat

<details>

* Version: 4.0.3
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-06-10 21:20:02 UTC
* Number of recursive dependencies: 240

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs   9.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
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
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        data   1.0Mb
        doc    3.4Mb
    ```

# shinyMethyl

<details>

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/shinyMethyl
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 156

Run `revdep_details(, "shinyMethyl")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.5Mb
    ```

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

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 188

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
      installed size is 24.8Mb
      sub-directories of 1Mb or more:
        data      1.3Mb
        doc      18.4Mb
        extdata   2.1Mb
        help      2.0Mb
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

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2021-05-19
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
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
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

# sigminer

<details>

* Version: 2.0.3
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2021-07-18 23:10:07 UTC
* Number of recursive dependencies: 207

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        extdata   2.7Mb
        libs      1.1Mb
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

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2021-05-20
* Number of recursive dependencies: 164

Run `revdep_details(, "Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .git_fetch_output.txt
      .git_merge_output.txt
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
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

* Version: 2.2.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 371

Run `revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        extdata   1.5Mb
    ```

# singscore

<details>

* Version: 1.12.0
* GitHub: https://github.com/DavisLaboratory/singscore
* Source code: https://github.com/cran/singscore
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 124

Run `revdep_details(, "singscore")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(singscore)
      > 
      > test_check("singscore")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-projectScoreLandscape.R:70:2): projectScoreLandscape works for interactive plots ──
      Error: there is no package called 'hexbin'
    ...
        6. │       ├─plotly::to_basic(...)
        7. │       └─plotly:::to_basic.GeomHex(...)
        8. └─base::loadNamespace(x)
        9.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       10.     └─base:::withOneRestart(expr, restarts[[1L]])
       11.       └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 1 | WARN 39 | SKIP 0 | PASS 133 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   1.9Mb
        doc    1.8Mb
    ```

# SkeweDF

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/SkeweDF
* Date/Publication: 2021-01-16 09:40:05 UTC
* Number of recursive dependencies: 29

Run `revdep_details(, "SkeweDF")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# slingshot

<details>

* Version: 2.0.0
* GitHub: https://github.com/kstreet13/slingshot
* Source code: https://github.com/cran/slingshot
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 183

Run `revdep_details(, "slingshot")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘slingshot-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: SlingshotDataSet
    > ### Title: Extract Slingshot output
    > ### Aliases: SlingshotDataSet SlingshotDataSet,SingleCellExperiment-method
    > ###   SlingshotDataSet,SlingshotDataSet-method
    > ###   SlingshotDataSet,PseudotimeOrdering-method
    > 
    > ### ** Examples
    ...
    > library(SingleCellExperiment)
    > u <- matrix(rpois(140*50, 5), nrow = 50)
    > sce <- SingleCellExperiment(assays = list(counts = u), 
    +                             reducedDims = SimpleList(PCA = rd),
    +                             colData = data.frame(clus = cl))
    > sce <- slingshot(sce, clusterLabels = 'clus', reducedDim = 'PCA')
    Error in loadNamespace(x) : 
      there is no package called ‘DelayedMatrixStats’
    Calls: slingshot ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       16.       └─base:::doWithOneRestart(return(expr), restart)
      ── Error (test_slingshot.R:733:5): branchID functions work as expected ─────────
      Error: there is no package called 'DelayedMatrixStats'
      Backtrace:
           █
        1. ├─slingshot::slingshot(rd, cl) test_slingshot.R:733:4
        2. ├─slingshot::slingshot(rd, cl)
    ...
       15. │                 └─TrajectoryUtils:::FUN(x, clusters)
       16. │                   └─TrajectoryUtils:::.rowstats_w(...)
       17. └─base::loadNamespace(x)
       18.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       19.     └─base:::withOneRestart(expr, restarts[[1L]])
       20.       └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 13 | WARN 2 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# sparseMatrixStats

<details>

* Version: 1.4.0
* GitHub: https://github.com/const-ae/sparseMatrixStats
* Source code: https://github.com/cran/sparseMatrixStats
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 53

Run `revdep_details(, "sparseMatrixStats")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        libs   3.5Mb
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# splatter

<details>

* Version: 1.16.1
* GitHub: https://github.com/Oshlack/splatter
* Source code: https://github.com/cran/splatter
* Date/Publication: 2021-05-20
* Number of recursive dependencies: 247

Run `revdep_details(, "splatter")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        doc   9.6Mb
    ```

# spqn

<details>

* Version: 1.4.0
* GitHub: https://github.com/hansenlab/spqn
* Source code: https://github.com/cran/spqn
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 68

Run `revdep_details(, "spqn")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘BiocGenerics’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# stapler

<details>

* Version: 0.7.1
* GitHub: https://github.com/muschellij2/stapler
* Source code: https://github.com/cran/stapler
* Date/Publication: 2020-01-09 18:50:06 UTC
* Number of recursive dependencies: 58

Run `revdep_details(, "stapler")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# staRdom

<details>

* Version: 1.1.21
* GitHub: https://github.com/MatthiasPucher/staRdom
* Source code: https://github.com/cran/staRdom
* Date/Publication: 2021-04-20 11:00:03 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "staRdom")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        doc    2.8Mb
    ```

# stm

<details>

* Version: 1.3.6
* GitHub: https://github.com/bstewart/stm
* Source code: https://github.com/cran/stm
* Date/Publication: 2020-09-18 13:50:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "stm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        libs   2.7Mb
    ```

# STROMA4

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/STROMA4
* Date/Publication: 2021-05-19
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
    Installing package into ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/STROMA4/new/STROMA4.Rcheck’
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

* Version: 0.9.9
* GitHub: https://github.com/dcomtois/summarytools
* Source code: https://github.com/cran/summarytools
* Date/Publication: 2021-03-19 08:50:02 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "summarytools")` for more info

</details>

## In both

*   checking whether package ‘summarytools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/checks/summarytools/new/summarytools.Rcheck/00install.out’ for details.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 78 marked UTF-8 strings
    ```

# target

<details>

* Version: 1.6.0
* GitHub: https://github.com/MahShaaban/target
* Source code: https://github.com/cran/target
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 88

Run `revdep_details(, "target")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data      3.4Mb
        extdata   1.6Mb
    ```

# TCA

<details>

* Version: 1.2.1
* GitHub: https://github.com/cozygene/TCA
* Source code: https://github.com/cran/TCA
* Date/Publication: 2021-02-14 21:50:06 UTC
* Number of recursive dependencies: 62

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

# TOAST

<details>

* Version: 1.6.0
* GitHub: https://github.com/ziyili20/TOAST
* Source code: https://github.com/cran/TOAST
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 54

Run `revdep_details(, "TOAST")` for more info

</details>

## In both

*   checking package subdirectories ... WARNING
    ```
    Invalid citation information in ‘inst/CITATION’:
      Error in bibentry(bibtype = entry, textVersion = textVersion, header = header,     footer = footer, ...): object 'X' not found
    ```

# topGO

<details>

* Version: 2.44.0
* GitHub: NA
* Source code: https://github.com/cran/topGO
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 57

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

# tradeSeq

<details>

* Version: 1.6.0
* GitHub: https://github.com/statOmics/tradeSeq
* Source code: https://github.com/cran/tradeSeq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 195

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
    > ###   plotGeneCount,CellDataSet-method
    > 
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
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Loading required package: S4Vectors
      
      Attaching package: 'S4Vectors'
      
      The following objects are masked from 'package:Matrix':
      
          expand, unname
    ...
       4. │   └─TrajectoryUtils::rowmean(reducedDim(sds), slingClusterLabels(sds))
       5. │     └─TrajectoryUtils:::.rowstats_w(...)
       6. └─base::loadNamespace(x)
       7.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       8.     └─base:::withOneRestart(expr, restarts[[1L]])
       9.       └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 145 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
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

# TraRe

<details>

* Version: 1.0.0
* GitHub: https://github.com/ubioinformat/TraRe
* Source code: https://github.com/cran/TraRe
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 91

Run `revdep_details(, "TraRe")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       2.0Mb
        extdata   4.4Mb
    ```

# UPG

<details>

* Version: 0.2.2
* GitHub: NA
* Source code: https://github.com/cran/UPG
* Date/Publication: 2021-01-07 09:00:05 UTC
* Number of recursive dependencies: 50

Run `revdep_details(, "UPG")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppProgress’
      All declared Imports should be used.
    ```

# VanillaICE

<details>

* Version: 1.54.0
* GitHub: NA
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

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

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        extdata   2.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BSgenome.Hsapiens.UCSC.hg18’ ‘MatrixGenerics’
      All declared Imports should be used.
    ```

# VaSP

<details>

* Version: 1.4.0
* GitHub: https://github.com/yuhuihui2011/VaSP
* Source code: https://github.com/cran/VaSP
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 110

Run `revdep_details(, "VaSP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc       4.0Mb
        extdata   3.5Mb
    ```

# wateRmelon

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 162

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

# WGCNA

<details>

* Version: 1.70-3
* GitHub: NA
* Source code: https://github.com/cran/WGCNA
* Date/Publication: 2021-02-28 20:20:03 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "WGCNA")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'empiricalBayesLM.Rd':
      ‘rlm’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        help   2.0Mb
        libs   1.5Mb
    ```

# yarn

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/yarn
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 169

Run `revdep_details(, "yarn")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   7.1Mb
    ```

