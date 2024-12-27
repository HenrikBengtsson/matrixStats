# abcrf

<details>

* Version: 1.9
* GitHub: NA
* Source code: https://github.com/cran/abcrf
* Date/Publication: 2022-08-09 15:30:19 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::revdep_details(, "abcrf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   5.9Mb
    ```

# airpart

<details>

* Version: 1.14.0
* GitHub: https://github.com/Wancen/airpart
* Source code: https://github.com/cran/airpart
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 175

Run `revdepcheck::revdep_details(, "airpart")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) cellQC.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) cellQC.Rd:45: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) cellQC.Rd:46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) cellQC.Rd:47-49: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) cellQC.Rd:50-52: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) cellQC.Rd:53-55: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) featureQC.Rd:29-30: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) featureQC.Rd:31: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) featureQC.Rd:32-33: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) featureQC.Rd:34: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) makeSimulatedData.Rd:43: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) makeSimulatedData.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) makeSimulatedData.Rd:45-46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) summaryAllelicRatio.Rd:19: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) summaryAllelicRatio.Rd:20: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) summaryAllelicRatio.Rd:21: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# AlpsNMR

<details>

* Version: 4.8.0
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 189

Run `revdepcheck::revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01-introduction-to-alpsnmr.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01-introduction-to-alpsnmr.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig01-introduction-to-alpsnmr.Rmd’
    
    --- re-building ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01b-introduction-to-alpsnmr-old-api.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01b-introduction-to-alpsnmr-old-api.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
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

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/AMARETTO
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 154

Run `revdepcheck::revdep_details(, "AMARETTO")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'get_firehoseData.Rd':
    get_firehoseData
      Code: function(TargetDirectory = "./", TCGA_acronym_uppercase =
                     "LUAD", dataType = "stddata", dataFileTag =
                     "mRNAseq_Preprocess.Level_3", FFPE = FALSE, fileType =
                     "tar.gz", gdacURL =
                     "https://gdac.broadinstitute.org/runs/", untarUngzip =
                     TRUE, printDisease_abbr = FALSE)
      Docs: function(TargetDirectory = "./", TCGA_acronym_uppercase =
                     "LUAD", dataType = "stddata", dataFileTag =
                     "mRNAseq_Preprocess.Level_3", FFPE = FALSE, fileType =
                     "tar.gz", gdacURL =
                     "http://gdac.broadinstitute.org/runs/", untarUngzip =
                     TRUE, printDisease_abbr = FALSE)
      Mismatches in argument default values:
        Name: 'gdacURL' Code: "https://gdac.broadinstitute.org/runs/" Docs: "http://gdac.broadinstitute.org/runs/"
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        doc    2.4Mb
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

* Version: 1.28.0
* GitHub: https://github.com/valenlab/amplican
* Source code: https://github.com/cran/amplican
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 133

Run `revdepcheck::revdep_details(, "amplican")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.6Mb
      sub-directories of 1Mb or more:
        doc   15.1Mb
        libs   1.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘get_seq’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) amplicanAlign.Rd:64: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanAlign.Rd:65-68: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanAlign.Rd:69: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanAlign.Rd:70: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:58-59: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:60-70: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:71: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:72-73: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:106: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanPipeline.Rd:107-110: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) amplicanPipelineConservative.Rd:112: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanSummarize.Rd:26-27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) amplicanSummarize.Rd:28-29: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) makeAlignment.Rd:52: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) makeAlignment.Rd:53-56: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) makeAlignment.Rd:57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) makeAlignment.Rd:58: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plot_variants.Rd:74-75: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plot_variants.Rd:76: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plot_variants.Rd:77-78: Lost braces in \itemize; meant \describe ?
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'getEventInfo.Rd':
      ‘ampl_len’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# apollo

<details>

* Version: 0.3.4
* GitHub: NA
* Source code: https://github.com/cran/apollo
* Date/Publication: 2024-10-01 21:30:08 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::revdep_details(, "apollo")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        libs   3.3Mb
    ```

# aroma.affymetrix

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2024-02-18 20:40:03 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R             4.0Mb
        help          1.1Mb
        testScripts   1.1Mb
    ```

# aroma.core

<details>

* Version: 3.3.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2024-02-19 08:40:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.36.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 6

Run `revdepcheck::revdep_details(, "aroma.light")` for more info

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

* Version: 1.14.6
* GitHub: NA
* Source code: https://github.com/cran/autonomics
* Date/Publication: 2024-11-15
* Number of recursive dependencies: 278

Run `revdepcheck::revdep_details(, "autonomics")` for more info

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
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc   3.1Mb
    ```

# bage

<details>

* Version: 0.7.4
* GitHub: https://github.com/bayesiandemography/bage
* Source code: https://github.com/cran/bage
* Date/Publication: 2024-08-28 08:10:20 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::revdep_details(, "bage")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 91.7Mb
      sub-directories of 1Mb or more:
        libs  89.6Mb
    ```

# bahc

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/bahc
* Date/Publication: 2020-09-21 16:40:02 UTC
* Number of recursive dependencies: 2

Run `revdepcheck::revdep_details(, "bahc")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Banksy

<details>

* Version: 1.2.0
* GitHub: https://github.com/prabhakarlab/Banksy
* Source code: https://github.com/cran/Banksy
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 265

Run `revdepcheck::revdep_details(, "Banksy")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc    3.7Mb
        help   1.4Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) computeBanksy.Rd:81: Lost braces in \itemize; meant \describe ?
    ```

# BASiCS

<details>

* Version: 2.18.0
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 198

Run `revdepcheck::revdep_details(, "BASiCS")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.7Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.6Mb
        libs  10.1Mb
    ```

# BatchQC

<details>

* Version: 2.2.0
* GitHub: https://github.com/wejlab/BatchQC
* Source code: https://github.com/cran/BatchQC
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 235

Run `revdepcheck::revdep_details(, "BatchQC")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        data   1.0Mb
        doc    6.4Mb
    ```

# BayesfMRI

<details>

* Version: 0.3.11
* GitHub: https://github.com/mandymejia/BayesfMRI
* Source code: https://github.com/cran/BayesfMRI
* Date/Publication: 2023-12-18 08:50:21 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::revdep_details(, "BayesfMRI")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 23.1Mb
      sub-directories of 1Mb or more:
        libs  22.7Mb
    ```

# BayesianPlatformDesignTimeTrend

<details>

* Version: 1.2.3
* GitHub: https://github.com/ZXW834/BayesianPlatformDesignTimeTrend
* Source code: https://github.com/cran/BayesianPlatformDesignTimeTrend
* Date/Publication: 2023-12-07 11:00:02 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::revdep_details(, "BayesianPlatformDesignTimeTrend")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 126.6Mb
      sub-directories of 1Mb or more:
        data    1.3Mb
        help    1.9Mb
        libs  122.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# bcf

<details>

* Version: 2.0.2
* GitHub: NA
* Source code: https://github.com/cran/bcf
* Date/Publication: 2024-02-27 17:30:05 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "bcf")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.1Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# bingat

<details>

* Version: 1.3
* GitHub: NA
* Source code: https://github.com/cran/bingat
* Date/Publication: 2017-07-05 18:30:37 UTC
* Number of recursive dependencies: 32

Run `revdepcheck::revdep_details(, "bingat")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genalg’
    ```

# BioNERO

<details>

* Version: 1.14.0
* GitHub: https://github.com/almeidasilvaf/BioNERO
* Source code: https://github.com/cran/BioNERO
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 175

Run `revdepcheck::revdep_details(, "BioNERO")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data   2.2Mb
        doc    4.6Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) SFT_fit.Rd:23: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) SFT_fit.Rd:24: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) exp2grn.Rd:28: Lost braces
        28 | say (ij), is removed if its weight is below min{(ik),(jk)} - eps. Default: 0.}
           |                                                ^
    checkRd: (-1) grn_combined.Rd:27: Lost braces
        27 | is removed if its weight is below min{(ik),(jk)} - eps. Default: 0.1.}
           |                                      ^
    checkRd: (-1) grn_infer.Rd:39: Lost braces
        39 | is removed if its weight is below min{(ik),(jk)} - eps. Default: 0.1.}
           |                                      ^
    ```

# biscuiteer

<details>

* Version: 1.20.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 221

Run `revdepcheck::revdep_details(, "biscuiteer")` for more info

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
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data      1.1Mb
        extdata   3.4Mb
    ```

*   checking package subdirectories ... NOTE
    ```
    Problems with news in ‘NEWS.md’:
    No news entries found.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘QDNAseq:::expectedVariance’
      See the note in ?`:::` about the use of this operator.
    ```

# blackbox

<details>

* Version: 1.1.46
* GitHub: NA
* Source code: https://github.com/cran/blackbox
* Date/Publication: 2023-12-08 03:20:11 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::revdep_details(, "blackbox")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        libs  13.7Mb
    ```

# BloodGen3Module

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/BloodGen3Module
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 170

Run `revdepcheck::revdep_details(, "BloodGen3Module")` for more info

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

# bmm

<details>

* Version: 1.0.1
* GitHub: https://github.com/venpopov/bmm
* Source code: https://github.com/cran/bmm
* Date/Publication: 2024-05-27 18:10:05 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "bmm")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# bnbc

<details>

* Version: 1.28.0
* GitHub: https://github.com/hansenlab/bnbc
* Source code: https://github.com/cran/bnbc
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 145

Run `revdepcheck::revdep_details(, "bnbc")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        cooler   2.9Mb
        data     2.4Mb
        libs     1.6Mb
    ```

# bnclassify

<details>

* Version: 0.4.8
* GitHub: https://github.com/bmihaljevic/bnclassify
* Source code: https://github.com/cran/bnclassify
* Date/Publication: 2024-03-13 12:20:02 UTC
* Number of recursive dependencies: 101

Run `revdepcheck::revdep_details(, "bnclassify")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘methods.Rmd’ using rmarkdown
    --- finished re-building ‘methods.Rmd’
    
    --- re-building ‘overview.Rmd’ using rmarkdown
    --- finished re-building ‘overview.Rmd’
    
    --- re-building ‘usage.rmd’ using rmarkdown
    ! Undefined control sequence.
    ...
    
    Error: processing vignette 'usage.rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/bnclassify/new/bnclassify.Rcheck/vign_test/bnclassify/vignettes/usage.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See usage.log for more info.
    --- failed re-building ‘usage.rmd’
    
    SUMMARY: processing the following file failed:
      ‘usage.rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.5Mb
      sub-directories of 1Mb or more:
        libs  10.7Mb
    ```

# bnem

<details>

* Version: 1.14.0
* GitHub: https://github.com/MartinFXP/bnem
* Source code: https://github.com/cran/bnem
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 172

Run `revdepcheck::revdep_details(, "bnem")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rmarkdown’
      All declared Imports should be used.
    ```

# brms

<details>

* Version: 2.22.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2024-09-23 13:00:29 UTC
* Number of recursive dependencies: 203

Run `revdepcheck::revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        R     4.0Mb
        doc   3.6Mb
    ```

# BSgenome

<details>

* Version: 1.74.0
* GitHub: https://github.com/Bioconductor/BSgenome
* Source code: https://github.com/cran/BSgenome
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 83

Run `revdepcheck::revdep_details(, "BSgenome")` for more info

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
    [1] "UCSC"
    > seqlevelsStyle(snps)    # NCBI
    [1] "NCBI"
    > seqlevelsStyle(my_cds) <- seqlevelsStyle(snps)
    Warning in download.file(url, destfile, method, quiet = TRUE) :
      cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/': FTP status was '400 Unknown Error'
    Error in download.file(url, destfile, method, quiet = TRUE) : 
      cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/'
    Calls: seqlevelsStyle<- ... .form_assembly_report_url -> find_NCBI_assembly_ftp_dir
    Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘MaskedBSgenome’ ‘OnDiskLongTable’ ‘OnDiskLongTable_old’
      ‘as.data.frame.BSgenomeViews’ ‘batchsizes’ ‘blocksizes’ ‘breakpoints’
      ‘getBatchesByOverlapsFromOnDiskLongTable’
      ‘getBatchesBySeqnameFromOnDiskLongTable’
      ‘getBatchesFromOnDiskLongTable’ ‘getBatchesFromOnDiskLongTable_old’
      ‘getRowsByIdFromOnDiskLongTable’
      ‘getRowsByIndexFromOnDiskLongTable_old’ ‘getRowsFromOnDiskLongTable’
      ‘saveAsOnDiskLongTable_old’ ‘saveRowidsForOnDiskLongTable_old’
      ‘spatialIndex’ ‘writeOnDiskLongTable’ ‘writeOnDiskLongTableRowids’
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
      'GenomicRanges', 'Biostrings', 'BiocIO', 'rtracklayer'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        R         1.6Mb
        extdata   5.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' calls which should be '::':
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
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
* Number of recursive dependencies: 45

Run `revdepcheck::revdep_details(, "BSW")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# bulkAnalyseR

<details>

* Version: 1.1.0
* GitHub: https://github.com/Core-Bioinformatics/bulkAnalyseR
* Source code: https://github.com/cran/bulkAnalyseR
* Date/Publication: 2022-12-15 12:20:02 UTC
* Number of recursive dependencies: 195

Run `revdepcheck::revdep_details(, "bulkAnalyseR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc       2.3Mb
        extdata   3.4Mb
    ```

# bumphunter

<details>

* Version: 1.48.0
* GitHub: https://github.com/rafalab/bumphunter
* Source code: https://github.com/cran/bumphunter
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 118

Run `revdepcheck::revdep_details(, "bumphunter")` for more info

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

* Version: 4.0
* GitHub: https://github.com/duncanplee/CARBayesST
* Source code: https://github.com/cran/CARBayesST
* Date/Publication: 2023-10-30 16:40:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::revdep_details(, "CARBayesST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        libs  10.0Mb
    ```

# cardelino

<details>

* Version: 1.8.0
* GitHub: https://github.com/single-cell-genetics/cardelino
* Source code: https://github.com/cran/cardelino
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "cardelino")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doMC’
    ```

# CATALYST

<details>

* Version: 1.30.2
* GitHub: https://github.com/HelenaLC/CATALYST
* Source code: https://github.com/cran/CATALYST
* Date/Publication: 2024-12-02
* Number of recursive dependencies: 223

Run `revdepcheck::revdep_details(, "CATALYST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.7Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc   11.2Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) plotDiffHeatmap.Rd:87: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotDiffHeatmap.Rd:88: Lost braces in \itemize; meant \describe ?
    ```

# causalOT

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/causalOT
* Date/Publication: 2024-02-18 22:50:08 UTC
* Number of recursive dependencies: 105

Run `revdepcheck::revdep_details(, "causalOT")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rkeops’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R      2.3Mb
        libs   6.7Mb
    ```

# CDI

<details>

* Version: 1.4.0
* GitHub: https://github.com/jichunxie/CDI
* Source code: https://github.com/cran/CDI
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 174

Run `revdepcheck::revdep_details(, "CDI")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) one_batch_matrix_label_df.Rd:18: Lost braces; missing escapes or markup?
        18 | be {2,3,..., 7}. 
           |    ^
    checkRd: (-1) two_batch_matrix_label_df.Rd:20: Lost braces; missing escapes or markup?
        20 | The number of clusters are set to be {2,3,..., 10}. 
           |                                      ^
    ```

# celda

<details>

* Version: 1.22.0
* GitHub: https://github.com/campbio/celda
* Source code: https://github.com/cran/celda
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 391

Run `revdepcheck::revdep_details(, "celda")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘singleCellTK’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.2Mb
      sub-directories of 1Mb or more:
        doc    3.5Mb
        libs  10.2Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) semiPheatmap.Rd:319-323: Lost braces
       319 | callback = function(hc, mat) {
           |                              ^
    ```

# CelliD

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/CelliD
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 282

Run `revdepcheck::revdep_details(, "CelliD")` for more info

</details>

## In both

*   checking whether package ‘CelliD’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘data.table::shift’ by ‘tictoc::shift’ when loading ‘CelliD’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/CelliD/new/CelliD.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs   3.6Mb
    ```

# cellmigRation

<details>

* Version: 1.14.0
* GitHub: https://github.com/ocbe-uio/cellmigRation
* Source code: https://github.com/cran/cellmigRation
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 137

Run `revdepcheck::revdep_details(, "cellmigRation")` for more info

</details>

## In both

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'fixDA.Rd':
      ‘object’
    
    Documented arguments not in \usage in Rd file 'fixFM1.Rd':
      ‘object’
    
    Documented arguments not in \usage in Rd file 'fixFM2.Rd':
      ‘object’
    
    Documented arguments not in \usage in Rd file 'fixFM3.Rd':
    ...
      ‘x’
    
    Documented arguments not in \usage in Rd file 'innerBondRaster.Rd':
      ‘i’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# cellWise

<details>

* Version: 2.5.3
* GitHub: NA
* Source code: https://github.com/cran/cellWise
* Date/Publication: 2023-10-25 13:00:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "cellWise")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.2Mb
      sub-directories of 1Mb or more:
        data   3.2Mb
        doc    2.0Mb
        libs  14.5Mb
    ```

# CEMiTool

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/CEMiTool
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 196

Run `revdepcheck::revdep_details(, "CEMiTool")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        data      3.1Mb
        doc       2.4Mb
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

* Version: 2.36.0
* GitHub: NA
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 253

Run `revdepcheck::revdep_details(, "ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'dmrcate(myannotation, ': unused argument (mc.cores = cores) 
      Warning: replacing previous import 'plyr::mutate' by 'plotly::mutate' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::rename' by 'plotly::rename' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::arrange' by 'plotly::arrange' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::summarise' by 'plotly::summarise' when loading 'ChAMP'
      Warning: replacing previous import 'plotly::subplot' by 'Hmisc::subplot' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::summarize' by 'Hmisc::summarize' when loading 'ChAMP'
      Warning: replacing previous import 'plyr::is.discrete' by 'Hmisc::is.discrete' when loading 'ChAMP'
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
    Duplicated \argument entries in Rd file 'champ.SVD.Rd':
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

*   checking whether startup messages can be suppressed ... NOTE
    ```
    No methods found in package 'RSQLite' for request: 'dbListFields' when loading 'lumi'
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
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

# ChemoSpec2D

<details>

* Version: 0.5.0
* GitHub: https://github.com/bryanhanson/ChemoSpec2D
* Source code: https://github.com/cran/ChemoSpec2D
* Date/Publication: 2021-10-11 07:40:38 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::revdep_details(, "ChemoSpec2D")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘ChemoSpec2D.Rmd’ using rmarkdown
    ! Undefined control sequence.
    l.66 \NewDocumentCommand
                            \citeproctext{}{} 
    
    Error: processing vignette 'ChemoSpec2D.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/ChemoSpec2D/new/ChemoSpec2D.Rcheck/vign_test/ChemoSpec2D/vignettes/ChemoSpec2D.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See ChemoSpec2D.log for more info.
    --- failed re-building ‘ChemoSpec2D.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘ChemoSpec2D.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ChIPpeakAnno

<details>

* Version: 3.40.0
* GitHub: NA
* Source code: https://github.com/cran/ChIPpeakAnno
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 230

Run `revdepcheck::revdep_details(, "ChIPpeakAnno")` for more info

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
      INFO [2024-12-26 23:16:20] [1] "serif"
      INFO [2024-12-26 23:16:20] 
      INFO [2024-12-26 23:16:20] $x
      INFO [2024-12-26 23:16:20] $x$TF1
      INFO [2024-12-26 23:16:20] [1] 3 4 5
      INFO [2024-12-26 23:16:20] 
    ...
        6.     └─BSgenome (local) .local(x, ...)
        7.       └─BSgenome:::.extractFromBSgenomeMultipleSequences(...)
        8.         ├─BiocGenerics::lapply(...)
        9.         └─base::lapply(...)
       10.           └─BSgenome (local) FUN(X[[i]], ...)
       11.             └─BSgenome:::.getOneSeqFromBSgenomeMultipleSequences(...)
      
      [ FAIL 1 | WARN 3 | SKIP 6 | PASS 316 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘ChIPpeakAnno.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-9-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-9-2.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-9-3.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-11-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-18-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-19-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-20-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/ChIPpeakAnno/new/ChIPpeakAnno.Rcheck/vign_test/ChIPpeakAnno/vignettes/ChIPpeakAnno_files/figure-html/unnamed-chunk-21-1.png" but not available.
    ...
    Quitting from lines 1380-1385 [unnamed-chunk-76] (ChIPpeakAnno.Rmd)
    Error: processing vignette 'ChIPpeakAnno.Rmd' failed with diagnostics:
    length(intersect(seqlevelsStyle(peaks), seqlevelsStyle(annoData))) >  .... is not TRUE
    --- failed re-building ‘ChIPpeakAnno.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘ChIPpeakAnno.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 27.9Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        data     12.6Mb
        doc       6.8Mb
        extdata   7.2Mb
    ```

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::revdep_details(, "cifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cliqueMS

<details>

* Version: 1.20.0
* GitHub: https://github.com/osenan/cliqueMS
* Source code: https://github.com/cran/cliqueMS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 166

Run `revdepcheck::revdep_details(, "cliqueMS")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# clusterExperiment

<details>

* Version: 2.26.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 178

Run `revdepcheck::revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'renameClusters.Rd'
      ‘object’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

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

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        data   3.6Mb
        doc   12.0Mb
        libs   2.4Mb
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ClusterExperiment-class.Rd:177-180: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterExperiment-class.Rd:181-182: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:70: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:71-77: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:78-84: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:85-94: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:95-97: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:98-99: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:104-105: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ClusterFunction-class.Rd:106: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) plottingFunctions.Rd:155-161: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) plottingFunctions.Rd:162-167: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) plottingFunctions.Rd:173-174: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) plottingFunctions.Rd:175-176: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) plottingFunctions.Rd:177-178: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) reduceFunctions.Rd:191-192: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) reduceFunctions.Rd:193-194: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) seqCluster.Rd:80-83: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) seqCluster.Rd:85-88: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) seqCluster.Rd:90-91: Lost braces in \itemize; \value handles \item{}{} directly
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# clustifyr

<details>

* Version: 1.18.0
* GitHub: https://github.com/rnabioco/clustifyr
* Source code: https://github.com/cran/clustifyr
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 156

Run `revdepcheck::revdep_details(, "clustifyr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    1.7Mb
        help   1.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# cmapR

<details>

* Version: 1.18.0
* GitHub: https://github.com/cmap/cmapR
* Source code: https://github.com/cran/cmapR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 78

Run `revdepcheck::revdep_details(, "cmapR")` for more info

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
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data      2.3Mb
        extdata   2.1Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocManager’
    'library' or 'require' call not declared from: ‘BiocManager’
    ```

# cna

<details>

* Version: 3.6.2
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2024-07-05 09:30:02 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::revdep_details(, "cna")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘cna.Rnw’ using Sweave
    Registered S3 method overwritten by 'cna':
      method          from
      some.data.frame car 
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'cna.Rnw' failed with diagnostics:
    unable to run pdflatex on 'cna.tex'
    LaTeX errors:
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

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        libs   8.4Mb
    ```

# CNVScope

<details>

* Version: 3.7.2
* GitHub: https://github.com/jamesdalg/CNVScope
* Source code: https://github.com/cran/CNVScope
* Date/Publication: 2022-03-30 23:40:08 UTC
* Number of recursive dependencies: 206

Run `revdepcheck::revdep_details(, "CNVScope")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘HiCseg’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
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

* Version: 1.4-3
* GitHub: NA
* Source code: https://github.com/cran/coin
* Date/Publication: 2023-09-27 16:10:02 UTC
* Number of recursive dependencies: 20

Run `revdepcheck::revdep_details(, "coin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Implementation.Rnw’ using Sweave
    Loading required package: survival
    Loading required package: grid
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    --- finished re-building ‘Implementation.Rnw’
    
    --- re-building ‘LegoCondInf.Rnw’ using Sweave
    Loading required package: coin
    ...
      of the subset pivotality condition
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    --- finished re-building ‘coin.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘LegoCondInf.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cola

<details>

* Version: 2.12.0
* GitHub: https://github.com/jokergoo/cola
* Source code: https://github.com/cran/cola
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 241

Run `revdepcheck::revdep_details(, "cola")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        data      3.2Mb
        extdata   1.0Mb
        libs      2.5Mb
    ```

# compcodeR

<details>

* Version: 1.42.0
* GitHub: https://github.com/csoneson/compcodeR
* Source code: https://github.com/cran/compcodeR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 203

Run `revdepcheck::revdep_details(, "compcodeR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'rpanel', 'DSS'
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'generateLengthsPhylo.Rd':
      ‘lengths.lambda’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# ComplexHeatmap

<details>

* Version: 2.22.0
* GitHub: https://github.com/jokergoo/ComplexHeatmap
* Source code: https://github.com/cran/ComplexHeatmap
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 117

Run `revdepcheck::revdep_details(, "ComplexHeatmap")` for more info

</details>

## In both

*   checking package vignettes ... NOTE
    ```
    Package vignettes with \VignetteEngine{} not specifying an engine package:
      ‘complex_heatmap.rmd’
      ‘most_probably_asked_questions.Rmd’
    Engines should be specified as \VignetteEngine{PKG::ENG}.
    ```

# condiments

<details>

* Version: 1.14.0
* GitHub: https://github.com/HectorRDB/condiments
* Source code: https://github.com/cran/condiments
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 209

Run `revdepcheck::revdep_details(, "condiments")` for more info

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

* Version: 1.3.3
* GitHub: https://github.com/XiaoouPan/conquer
* Source code: https://github.com/cran/conquer
* Date/Publication: 2023-03-06 08:40:02 UTC
* Number of recursive dependencies: 5

Run `revdepcheck::revdep_details(, "conquer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.8Mb
      sub-directories of 1Mb or more:
        libs  24.6Mb
    ```

# consensus

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/consensus
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 35

Run `revdepcheck::revdep_details(, "consensus")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# cophescan

<details>

* Version: 1.4.1
* GitHub: https://github.com/ichcha-m/cophescan
* Source code: https://github.com/cran/cophescan
* Date/Publication: 2024-06-11 15:20:20 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "cophescan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        libs   3.1Mb
    ```

# corrcoverage

<details>

* Version: 1.2.1
* GitHub: https://github.com/annahutch/corrcoverage
* Source code: https://github.com/cran/corrcoverage
* Date/Publication: 2019-12-06 23:20:12 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::revdep_details(, "corrcoverage")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
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

# CRISPRball

<details>

* Version: 1.2.0
* GitHub: https://github.com/j-andrews7/CRISPRball
* Source code: https://github.com/cran/CRISPRball
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 248

Run `revdepcheck::revdep_details(, "CRISPRball")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# crlmm

<details>

* Version: 1.64.0
* GitHub: NA
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 68

Run `revdepcheck::revdep_details(, "crlmm")` for more info

</details>

## In both

*   checking Rd files ... WARNING
    ```
    checkRd: (5) CNSet-methods.Rd:39-41: \item in \describe must have non-empty label
    checkRd: (5) CNSet-methods.Rd:65-67: \item in \describe must have non-empty label
    checkRd: (5) CNSet-methods.Rd:69-71: \item in \describe must have non-empty label
    checkRd: (-1) constructInf.Rd:35: Escaped LaTeX specials: \_ \_
    checkRd: (-1) genotype.Illumina.Rd:48: Escaped LaTeX specials: \_ \_
    checkRd: (-1) genotype.Illumina.Rd:127: Lost braces
       127 |   Ritchie ME, Carvalho BS, Hetrick KN, Tavar\'{e} S, Irizarry RA.
           |                                               ^
    checkRd: (-1) preprocessInf.Rd:55: Escaped LaTeX specials: \_ \_
    checkRd: (-1) readGenCallOutput.Rd:39: Lost braces
        39 |   Ritchie ME, Carvalho BS, Hetrick KN, Tavar\'{e} S, Irizarry RA.
           |                                               ^
    checkRd: (-1) readIdatFiles.Rd:39: Escaped LaTeX specials: \_ \_
    checkRd: (-1) readIdatFiles.Rd:55: Escaped LaTeX specials: \_ \_
    checkRd: (-1) readIdatFiles.Rd:56: Escaped LaTeX specials: \_
    checkRd: (-1) readIdatFiles.Rd:68: Lost braces
        68 |   Ritchie ME, Carvalho BS, Hetrick KN, Tavar\'{e} S, Irizarry RA.
           |                                               ^
    checkRd: (-1) snprma.Rd:38: Escaped LaTeX specials: \_ \_
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        data   2.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘preprocessCore’ is only usable in R >= 3.0.2
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    No methods found in package ‘oligoClasses’ for request: ‘mean’ when loading ‘crlmm’
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
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

# cSEM

<details>

* Version: 0.5.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2022-11-24 17:50:05 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) calculateEffects.Rd:24: Lost braces; missing escapes or markup?
        24 | equals (I-B)^{-1}Gamma. The indirect effect equals the difference between
           |              ^
    ```

# cytofQC

<details>

* Version: 1.6.0
* GitHub: https://github.com/jillbo1000/cytofQC
* Source code: https://github.com/cran/cytofQC
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 230

Run `revdepcheck::revdep_details(, "cytofQC")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) initialGuess.Rd:20-22: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) initialGuess.Rd:23: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) initialGuess.Rd:24: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) initialGuess.Rd:25-26: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# cytomapper

<details>

* Version: 1.18.0
* GitHub: https://github.com/BodenmillerGroup/cytomapper
* Source code: https://github.com/cran/cytomapper
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 161

Run `revdepcheck::revdep_details(, "cytomapper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   5.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CATALYST’
    ```

# DCATS

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/DCATS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 211

Run `revdepcheck::revdep_details(, "DCATS")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   4.4Mb
    ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking package subdirectories ... NOTE
    ```
    Found the following CITATION file in a non-standard place:
      CITATION.cff
    Most likely ‘inst/CITATION’ should be used instead.
    ```

*   checking R code for possible problems ... NOTE
    ```
    svm_simMat: no visible binding for global variable ‘clusterRes’
    Undefined global functions or variables:
      clusterRes
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) multinom_EM.Rd:26: Lost braces
        26 |   \code{simMM}, the input of simMM, code{X}, the input of X, \code{X_prop},
           |                                         ^
    ```

# ddtlcm

<details>

* Version: 0.2.1
* GitHub: https://github.com/limengbinggz/ddtlcm
* Source code: https://github.com/cran/ddtlcm
* Date/Publication: 2024-04-04 02:32:57 UTC
* Number of recursive dependencies: 154

Run `revdepcheck::revdep_details(, "ddtlcm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   3.9Mb
    ```

# dearseq

<details>

* Version: 1.18.0
* GitHub: https://github.com/borishejblum/dearseq
* Source code: https://github.com/cran/dearseq
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 158

Run `revdepcheck::revdep_details(, "dearseq")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) plot.dearseq.Rd:12: Lost braces; missing escapes or markup?
        12 | \item{signif_threshold}{a value between \code{0} and {1} specifying the 
           |                                                      ^
    checkRd: (-1) plot_ord_pvals.Rd:13: Lost braces; missing escapes or markup?
        13 | \item{signif_threshold}{a value between \code{0} and {1} specifying the 
           |                                                      ^
    checkRd: (-1) summary.dearseq.Rd:15: Lost braces; missing escapes or markup?
        15 | \item{signif_threshold}{a value between \code{0} and {1} specifying the 
           |                                                      ^
    ```

# DelayedMatrixStats

<details>

* Version: 1.28.0
* GitHub: https://github.com/PeteHaitch/DelayedMatrixStats
* Source code: https://github.com/cran/DelayedMatrixStats
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 65

Run `revdepcheck::revdep_details(, "DelayedMatrixStats")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Missing object imported by a ':::' call: ‘DelayedArray:::.reduce_array_dimensions’
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’ ‘DelayedArray:::BLOCK_colVars’
      ‘DelayedArray:::BLOCK_rowVars’ ‘DelayedArray:::RleArraySeed’
      ‘DelayedArray:::get_Nindex_lengths’ ‘DelayedArray:::set_dim’
      ‘DelayedArray:::set_dimnames’ ‘DelayedArray:::subset_by_Nindex’
      ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DELocal

<details>

* Version: 1.6.0
* GitHub: https://github.com/dasroy/DELocal
* Source code: https://github.com/cran/DELocal
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 118

Run `revdepcheck::revdep_details(, "DELocal")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        extdata   8.5Mb
    ```

# DeMixT

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/DeMixT
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 138

Run `revdepcheck::revdep_details(, "DeMixT")` for more info

</details>

## In both

*   checking whether package ‘DeMixT’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ggplot2::%+%’ by ‘psych::%+%’ when loading ‘DeMixT’
      Warning: replacing previous import ‘SummarizedExperiment::distance’ by ‘psych::distance’ when loading ‘DeMixT’
      Warning: replacing previous import ‘ggplot2::alpha’ by ‘psych::alpha’ when loading ‘DeMixT’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/DeMixT/new/DeMixT.Rcheck/00install.out’ for details.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'DeMixT_preprocessing.Rd':
    DeMixT_preprocessing
      Code: function(count.matrix, normal.id, tumor.id, selected.genes =
                     9000, cutoff_normal_range = c(0.1, 1),
                     cutoff_tumor_range = c(0, 2.5), cutoff_step = 0.2)
      Docs: function(count.matrix, normal.id, tumor.id, cutoff_normal_range
                     = c(0.1, 1), cutoff_tumor_range = c(0, 2.5),
                     cutoff_step = 0.2)
      Argument names in code not in docs:
        selected.genes
      Mismatches in argument names:
        Position: 4 Code: selected.genes Docs: cutoff_normal_range
        Position: 5 Code: cutoff_normal_range Docs: cutoff_tumor_range
        Position: 6 Code: cutoff_tumor_range Docs: cutoff_step
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'detect_suspicious_sample_by_hierarchical_clustering_2comp.Rd'
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
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        doc    2.6Mb
        libs   4.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    DeMixT_GS: no visible global function definition for ‘qchisq’
    detect_suspicious_sample_by_hierarchical_clustering_2comp :
      <anonymous>: no visible global function definition for ‘wilcox.test’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
      global function definition for ‘prcomp’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
      global function definition for ‘dist’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
      global function definition for ‘hclust’
    detect_suspicious_sample_by_hierarchical_clustering_2comp: no visible
    ...
    simulate_3comp: no visible global function definition for ‘DataFrame’
    Undefined global functions or variables:
      DataFrame SimpleList abline as.dendrogram dist hclust legend median
      par points prcomp qchisq rainbow segments wilcox.test
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

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/DepecheR
* Date/Publication: 2024-10-30
* Number of recursive dependencies: 124

Run `revdepcheck::revdep_details(, "DepecheR")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
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
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# DEqMS

<details>

* Version: 1.24.0
* GitHub: https://github.com/yafeng/DEqMS
* Source code: https://github.com/cran/DEqMS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 101

Run `revdepcheck::revdep_details(, "DEqMS")` for more info

</details>

## Newly fixed

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
    Using 'localHub=TRUE'
      If offline, please also see BiocManager vignette section on offline use
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

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

# DESeq2

<details>

* Version: 1.46.0
* GitHub: https://github.com/thelovelab/DESeq2
* Source code: https://github.com/cran/DESeq2
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 192

Run `revdepcheck::revdep_details(, "DESeq2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        doc    3.0Mb
        libs   4.3Mb
    ```

# detrendr

<details>

* Version: 0.6.15
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2023-03-04 21:20:02 UTC
* Number of recursive dependencies: 115

Run `revdepcheck::revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        libs  10.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DHS.rates

<details>

* Version: 0.9.2
* GitHub: NA
* Source code: https://github.com/cran/DHS.rates
* Date/Publication: 2024-01-11 15:00:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::revdep_details(, "DHS.rates")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# diffUTR

<details>

* Version: 1.14.0
* GitHub: https://github.com/ETHZ-INS/diffUTR
* Source code: https://github.com/cran/diffUTR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 151

Run `revdepcheck::revdep_details(, "diffUTR")` for more info

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

* Version: 1.12.0
* GitHub: https://github.com/JBrownBiostat/Dino
* Source code: https://github.com/cran/Dino
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 252

Run `revdepcheck::revdep_details(, "Dino")` for more info

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

* Version: 1.1.0
* GitHub: https://github.com/chjackson/disbayes
* Source code: https://github.com/cran/disbayes
* Date/Publication: 2023-09-09 20:10:02 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::revdep_details(, "disbayes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘disbayes.Rmd’ using rmarkdown
    
    Quitting from lines 254-259 [unnamed-chunk-6] (disbayes.Rmd)
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
      installed size is 118.1Mb
      sub-directories of 1Mb or more:
        libs  117.2Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DiscoRhythm

<details>

* Version: 1.22.0
* GitHub: https://github.com/matthewcarlucci/DiscoRhythm
* Source code: https://github.com/cran/DiscoRhythm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 158

Run `revdepcheck::revdep_details(, "DiscoRhythm")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) discoParseMeta.Rd:28: Escaped LaTeX specials: \_
    checkRd: (-1) discoParseMeta.Rd:29: Escaped LaTeX specials: \_
    ```

# dmrseq

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/dmrseq
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 156

Run `revdepcheck::revdep_details(, "dmrseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        data   4.8Mb
        doc    1.3Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# Doscheda

<details>

* Version: 1.28.0
* GitHub: NA
* Source code: https://github.com/cran/Doscheda
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 157

Run `revdepcheck::revdep_details(, "Doscheda")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              1.8Mb
        shiny-examples   2.0Mb
    ```

*   checking Rd metadata ... NOTE
    ```
    Invalid package aliases in Rd file 'doscheda.Rd':
      ‘doscheda-package’
    ```

# DSWE

<details>

* Version: 1.8.2
* GitHub: https://github.com/TAMU-AML/DSWE-Package
* Source code: https://github.com/cran/DSWE
* Date/Publication: 2024-02-17 15:40:02 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::revdep_details(, "DSWE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        data   2.8Mb
        libs   7.5Mb
    ```

# dwp

<details>

* Version: 1.1
* GitHub: NA
* Source code: https://github.com/cran/dwp
* Date/Publication: 2023-07-01 07:40:05 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::revdep_details(, "dwp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenEst’ ‘expint’ ‘numDeriv’
      All declared Imports should be used.
    ```

# eaf

<details>

* Version: 2.5.1
* GitHub: https://github.com/MLopez-Ibanez/eaf
* Source code: https://github.com/cran/eaf
* Date/Publication: 2024-08-19 22:20:02 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::revdep_details(, "eaf")` for more info

</details>

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# easier

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/easier
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 194

Run `revdepcheck::revdep_details(, "easier")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘reannotate_genes’
    ```

*   checking R code for possible problems ... NOTE
    ```
    compute_TF_activity: no visible binding for global variable ‘condition’
    compute_TF_activity: no visible binding for global variable ‘score’
    Undefined global functions or variables:
      condition score
    ```

# EMDomics

<details>

* Version: 2.36.0
* GitHub: NA
* Source code: https://github.com/cran/EMDomics
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 46

Run `revdepcheck::revdep_details(, "EMDomics")` for more info

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

*   checking Rd metadata ... NOTE
    ```
    Invalid package aliases in Rd file 'emdomics-package.Rd':
      ‘emdomics-package’
    ```

# ENmix

<details>

* Version: 1.42.0
* GitHub: https://github.com/Bioconductor/ENmix
* Source code: https://github.com/cran/ENmix
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 172

Run `revdepcheck::revdep_details(, "ENmix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.0Mb
      sub-directories of 1Mb or more:
        doc   2.3Mb
    ```

# EnrichedHeatmap

<details>

* Version: 1.36.0
* GitHub: https://github.com/jokergoo/EnrichedHeatmap
* Source code: https://github.com/cran/EnrichedHeatmap
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "EnrichedHeatmap")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        doc      13.8Mb
        extdata   1.6Mb
        libs      1.2Mb
    ```

# EpiDISH

<details>

* Version: 2.22.0
* GitHub: https://github.com/sjczheng/EpiDISH
* Source code: https://github.com/cran/EpiDISH
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "EpiDISH")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘centCAB100i.m’
    Undocumented data sets:
      ‘centCAB100i.m’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: large data file saved inefficiently:
                       size ASCII compress
      centCAB100i.rda 317Kb FALSE     none
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# epimutacions

<details>

* Version: 1.10.0
* GitHub: https://github.com/isglobal-brge/epimutacions
* Source code: https://github.com/cran/epimutacions
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 241

Run `revdepcheck::revdep_details(, "epimutacions")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) add_ensemble_regulatory.Rd:29: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) add_ensemble_regulatory.Rd:30-31: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) add_ensemble_regulatory.Rd:32: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) add_ensemble_regulatory.Rd:33-35: Lost braces in \itemize; \value handles \item{}{} directly
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘CompQuadForm’, ‘car’
    ```

# epistasisGA

<details>

* Version: 1.8.0
* GitHub: https://github.com/mnodzenski/epistasisGA
* Source code: https://github.com/cran/epistasisGA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "epistasisGA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.5Mb
      sub-directories of 1Mb or more:
        doc    4.1Mb
        libs   9.9Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) GADGETS.Rd:158: Lost braces
       158 | the cluster. See code{run.gadgets} for additional details.}
           |                      ^
    ```

# eseis

<details>

* Version: 0.8.0
* GitHub: NA
* Source code: https://github.com/cran/eseis
* Date/Publication: 2024-11-24 13:40:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::revdep_details(, "eseis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   3.7Mb
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    code for methods in class “Rcpp_SpatCategories” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatCategories” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatDataFrame” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatDataFrame” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatExtent” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatExtent” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatFactor” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatFactor” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatGraph” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatGraph” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    ...
    code for methods in class “Rcpp_SpatTime_v” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVector” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVector” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorCollection” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorCollection” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorProxy” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorProxy” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
    ```

# EstimationTools

<details>

* Version: 4.0.0
* GitHub: https://github.com/Jaimemosg/EstimationTools
* Source code: https://github.com/cran/EstimationTools
* Date/Publication: 2022-12-10 07:20:02 UTC
* Number of recursive dependencies: 123

Run `revdepcheck::revdep_details(, "EstimationTools")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) integration.Rd:37-38: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) integration.Rd:39: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) integration.Rd:40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) integration.Rd:41-42: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) loess.options.Rd:25-26: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) loess.options.Rd:27-28: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) maxlogLreg.Rd:138: Lost braces; missing escapes or markup?
       138 | $j^{th}$ for all the observations.
           |    ^
    ```

# evaluomeR

<details>

* Version: 1.22.0
* GitHub: https://github.com/neobernad/evaluomeR
* Source code: https://github.com/cran/evaluomeR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 117

Run `revdepcheck::revdep_details(, "evaluomeR")` for more info

</details>

## In both

*   checking Rd metadata ... WARNING
    ```
    Rd files with duplicated alias 'getMetricRangeByCluster':
      ‘getMetricRangeByCluster.Rd’ ‘getMetricsRelevancy.Rd’
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘clusterbootWrapper’ ‘standardizeQualityData’
      ‘standardizeStabilityData’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'quality.Rd'
      ‘...’
    
    Undocumented arguments in Rd file 'qualityRange.Rd'
      ‘...’
    
    Undocumented arguments in Rd file 'qualitySet.Rd'
      ‘...’
    
    Undocumented arguments in Rd file 'stability.Rd'
    ...
      ‘...’
    
    Undocumented arguments in Rd file 'stabilitySet.Rd'
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
      'SummarizedExperiment', 'MultiAssayExperiment', 'cluster', 'fpc',
      'randomForest', 'flexmix', 'RSKC', 'sparcl'
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
      ‘RSKC’ ‘sparcl’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# EventPointer

<details>

* Version: 3.14.0
* GitHub: https://github.com/jpromeror/EventPointer
* Source code: https://github.com/cran/EventPointer
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 164

Run `revdepcheck::revdep_details(, "EventPointer")` for more info

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

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in Rd file 'InternalFunctions.Rd':
      ‘sort.exons’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# ExCluster

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/ExCluster
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 50

Run `revdepcheck::revdep_details(, "ExCluster")` for more info

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

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/ExpHunterSuite
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 304

Run `revdepcheck::revdep_details(, "ExpHunterSuite")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ExpHunterSuite-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: write_functional_report
    > ### Title: Write Main DEgenes Hunter functional report This function allows
    > ###   you to report the Functional analysis.
    > ### Aliases: write_functional_report
    > 
    > ### ** Examples
    > 
    ...
    
    
    processing file: ./func_top_genes.Rmd
    Error in enrich_density(enrich_obj, attributes = attr_vector, showCategory = n_category) : 
      object 'fortify.internal' not found
    Calls: write_functional_report ... withRestartList -> withOneRestart -> docall -> do.call -> fun
    
    Quitting from lines 49-77 [ORA_analysis] (functional_report.Rmd)
    Calling clean_tmpfiles_mod()
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        example   2.0Mb
        extData   3.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocGenerics’ ‘EnhancedVolcano’ ‘biomaRt’ ‘ggupset’
      All declared Imports should be used.
    Missing object imported by a ':::' call: ‘enrichplot:::fortify.internal’
    Unexported object imported by a ':::' call: ‘clusterProfiler:::enricher_internal’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘ExpHunterSuite/R/write_report.R’:
      assignInNamespace("clean_tmpfiles", clean_tmpfiles_mod, ns = "rmarkdown")
      assignInNamespace("clean_tmpfiles", clean_tmpfiles_mod, ns = "rmarkdown")
    
    enrich_density: no visible binding for global variable ‘attribute’
    enrich_density: no visible binding for global variable ‘Description’
    enrich_density: no visible binding for global variable ‘p.adjust’
    get_kegg_db_path: no visible binding for global variable ‘root_path’
    get_miRNA_ct: no visible binding for global variable ‘sig_pairs’
    ...
    get_sig_genes: no visible binding for global variable ‘genes_tag’
    main_degenes_Hunter: no visible binding for global variable ‘Row.names’
    write_global_cormit: no visible global function definition for
      ‘aggregate’
    Undefined global functions or variables:
      Description Row.names aggregate attribute genes_tag p.adjust
      root_path sig_pairs
    Consider adding
      importFrom("stats", "aggregate", "p.adjust")
    to your NAMESPACE file.
    ```

# ExpressionNormalizationWorkflow

<details>

* Version: 1.32.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/ExpressionNormalizationWorkflow
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 111

Run `revdepcheck::revdep_details(, "ExpressionNormalizationWorkflow")` for more info

</details>

## In both

*   checking whether package ‘ExpressionNormalizationWorkflow’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
      Warning: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
      Warning: replacing previous import ‘Biobase::rowMedians’ by ‘matrixStats::rowMedians’ when loading ‘ExpressionNormalizationWorkflow’
      Warning: replacing previous import ‘Biobase::anyMissing’ by ‘matrixStats::anyMissing’ when loading ‘ExpressionNormalizationWorkflow’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/ExpressionNormalizationWorkflow/new/ExpressionNormalizationWorkflow.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:29: All text must be in a section
    prepare_Rd: ExpressionNormalizationWorkflow-package.Rd:30: All text must be in a section
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc       2.9Mb
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

*   checking Rd contents ... NOTE
    ```
    Auto-generated content requiring editing in Rd file 'ExpressionNormalizationWorkflow-package.Rd':
      \references: ‘~~ Literature or other references for background information ~~’
      \seealso: ‘~~ Optional links to other man pages, e.g. ~~ ~~ \code{\link...’
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocManager’
    ```

# expss

<details>

* Version: 0.11.6
* GitHub: https://github.com/gdemin/expss
* Source code: https://github.com/cran/expss
* Date/Publication: 2023-07-15 21:40:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::revdep_details(, "expss")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) as.dichotomy.Rd:94-95: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) as.dichotomy.Rd:96: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) as.dichotomy.Rd:97-98: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) compute.Rd:51-52: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) compute.Rd:53-56: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) compute.Rd:57-61: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) count_if.Rd:121-123: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) count_if.Rd:124-127: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) criteria.Rd:162-163: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) criteria.Rd:164-165: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) write_labelled_csv.Rd:157-160: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:161-164: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:165-166: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:167-169: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:170-172: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:173-175: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:181-182: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:183: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:184-185: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) write_labelled_csv.Rd:186-191: Lost braces in \itemize; meant \describe ?
    ```

# extraChIPs

<details>

* Version: 1.10.0
* GitHub: https://github.com/smped/extraChIPs
* Source code: https://github.com/cran/extraChIPs
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 265

Run `revdepcheck::revdep_details(, "extraChIPs")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocParallel', 'GenomicRanges', 'ggplot2', 'ggside',
      'SummarizedExperiment', 'tibble'
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

# fastcpd

<details>

* Version: 0.14.6
* GitHub: https://github.com/doccstat/fastcpd
* Source code: https://github.com/cran/fastcpd
* Date/Publication: 2024-11-05 09:00:02 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::revdep_details(, "fastcpd")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.0Mb
      sub-directories of 1Mb or more:
        doc    2.5Mb
        help   3.8Mb
        libs  17.4Mb
    ```

# FastPCS

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/FastPCS
* Date/Publication: 2024-03-06 14:40:07 UTC
* Number of recursive dependencies: 4

Run `revdepcheck::revdep_details(, "FastPCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.8Mb
      sub-directories of 1Mb or more:
        libs  13.7Mb
    ```

# FastRCS

<details>

* Version: 0.0.9
* GitHub: NA
* Source code: https://github.com/cran/FastRCS
* Date/Publication: 2024-03-06 15:30:06 UTC
* Number of recursive dependencies: 4

Run `revdepcheck::revdep_details(, "FastRCS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.1Mb
      sub-directories of 1Mb or more:
        libs  19.0Mb
    ```

# FDb.FANTOM4.promoters.hg19

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FDb.FANTOM4.promoters.hg19
* Number of recursive dependencies: 70

Run `revdepcheck::revdep_details(, "FDb.FANTOM4.promoters.hg19")` for more info

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

* Version: 1.14.0
* GitHub: https://github.com/suke18/FEAST
* Source code: https://github.com/cran/FEAST
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 228

Run `revdepcheck::revdep_details(, "FEAST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        data   3.9Mb
        doc    1.4Mb
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

# fipp

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fipp
* Date/Publication: 2021-02-11 10:30:02 UTC
* Number of recursive dependencies: 29

Run `revdepcheck::revdep_details(, "fipp")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fishpond

<details>

* Version: 2.12.0
* GitHub: NA
* Source code: https://github.com/cran/fishpond
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 202

Run `revdepcheck::revdep_details(, "fishpond")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘allelic.Rmd’ using rmarkdown
    
    Quitting from lines 306-308 [unnamed-chunk-12] (allelic.Rmd)
    Error: processing vignette 'allelic.Rmd' failed with diagnostics:
    cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/'
    --- failed re-building ‘allelic.Rmd’
    
    --- re-building ‘swish.Rmd’ using rmarkdown
    --- finished re-building ‘swish.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘allelic.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'samr:::localfdr' 'samr:::predictlocalfdr' 'samr:::qvalue.func'
      'samr:::samr.compute.delta.table.seq'
      See the note in ?`:::` about the use of this operator.
    ```

# flowCore

<details>

* Version: 2.18.0
* GitHub: NA
* Source code: https://github.com/cran/flowCore
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 118

Run `revdepcheck::revdep_details(, "flowCore")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘multiRangeGate’
    Undocumented S4 classes:
      ‘multiRangeGate’
    Undocumented S4 methods:
      generic '%in%' and siglist 'flowFrame,multiRangeGate'
      generic 'show' and siglist 'multiRangeGate'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking compilation flags in Makevars ... WARNING
    ```
    Non-portable flags in variable 'PKG_CPPFLAGS':
      -w -Wfatal-errors
    ```

*   checking compiled code ... WARNING
    ```
    File ‘flowCore/libs/flowCore.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Object: ‘fcsTextParse.o’
      Found ‘sprintf’, possibly from ‘sprintf’ (C)
        Object: ‘Logicle.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘HowTo-flowCore.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    unable to run pdflatex on 'HowTo-flowCore.tex'
    LaTeX errors:
    ! LaTeX Error: File `comment.sty' not found.
    
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
      installed size is 18.2Mb
      sub-directories of 1Mb or more:
        R         1.2Mb
        data      5.4Mb
        extdata   1.1Mb
        libs      9.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) identifier-methods.Rd:36: Escaped LaTeX specials: \^
    checkRd: (-1) quadraticTransform.Rd:26: Escaped LaTeX specials: \^
    checkRd: (-1) read.FCS.Rd:26: Escaped LaTeX specials: \$
    ```

# flowGraph

<details>

* Version: 1.14.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 92

Run `revdepcheck::revdep_details(, "flowGraph")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) fg_get_graph.Rd:13: Lost braces
        13 | A list containing two data frames (\code{v} and ]code{e})
           |                                                      ^
    checkRd: (-1) ggdf.Rd:22: Lost braces
        22 | code{ggdf} adds to the data frames \code{v} and \code{e} in slot
           |     ^
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘doParallel’
    ```

# flowWorkspace

<details>

* Version: 4.18.0
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "flowWorkspace")` for more info

</details>

## In both

*   checking whether package ‘flowWorkspace’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/new/flowWorkspace.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘flowWorkspace’ ...
** package ‘flowWorkspace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++17
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_API.cpp -o R_API.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingHierarchy.cpp -o R_GatingHierarchy.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingSet.cpp -o R_GatingSet.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c getSingleCellExpression.cpp -o getSingleCellExpression.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c h5_error_r_handler.cpp -o h5_error_r_handler.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c setCounts.cpp -o setCounts.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -L/usr/local/lib64 -o flowWorkspace.so R_API.o R_GatingHierarchy.o R_GatingSet.o cpp11.o cytoframeAPI.o cytosetAPI.o getDescendants.o getPopStats.o getSingleCellExpression.o h5_error_r_handler.o setCounts.o /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/lib/libcytolib.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5_cpp.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5.a -lcrypto -lcurl -lsz -laec -lz -ldl -lm -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRlapack -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRblas -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lR
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -lsz: No such file or directory
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -laec: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/share/make/shlib.mk:10: flowWorkspace.so] Error 1
ERROR: compilation failed for package ‘flowWorkspace’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/new/flowWorkspace.Rcheck/flowWorkspace’


```
### CRAN

```
* installing *source* package ‘flowWorkspace’ ...
** package ‘flowWorkspace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++17
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_API.cpp -o R_API.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingHierarchy.cpp -o R_GatingHierarchy.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingSet.cpp -o R_GatingSet.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c getSingleCellExpression.cpp -o getSingleCellExpression.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c h5_error_r_handler.cpp -o h5_error_r_handler.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c setCounts.cpp -o setCounts.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -L/usr/local/lib64 -o flowWorkspace.so R_API.o R_GatingHierarchy.o R_GatingSet.o cpp11.o cytoframeAPI.o cytosetAPI.o getDescendants.o getPopStats.o getSingleCellExpression.o h5_error_r_handler.o setCounts.o /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/lib/libcytolib.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5_cpp.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5.a -lcrypto -lcurl -lsz -laec -lz -ldl -lm -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRlapack -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRblas -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lR
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -lsz: No such file or directory
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -laec: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/share/make/shlib.mk:10: flowWorkspace.so] Error 1
ERROR: compilation failed for package ‘flowWorkspace’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/old/flowWorkspace.Rcheck/flowWorkspace’


```
# footBayes

<details>

* Version: 0.2.0
* GitHub: https://github.com/leoegidi/footbayes
* Source code: https://github.com/cran/footBayes
* Date/Publication: 2023-08-31 14:50:02 UTC
* Number of recursive dependencies: 146

Run `revdepcheck::revdep_details(, "footBayes")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyverse’
      All declared Imports should be used.
    ```

# FRASER

<details>

* Version: 2.2.0
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 216

Run `revdepcheck::revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘FRASER.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'FRASER.Rnw' failed with diagnostics:
    unable to run pdflatex on 'FRASER.tex'
    LaTeX errors:
    ! LaTeX Error: File `nowidow.sty' not found.
    
    ...
    l.197 \RequirePackage
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
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        doc    2.1Mb
        libs   6.1Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'S4Vectors:::selectSome' 'ggbio:::.buildFacetsFromArgs'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotateRangesWithTxDb: no visible binding for global variable
      ‘include’
    calculatePadjValuesOnSubset : <anonymous>: no visible binding for
      global variable ‘gene_rowIdx’
    plotVolcano.FRASER: no visible binding for global variable
      ‘aberrantLabel’
    plotVolcano,FraserDataSet: no visible binding for global variable
      ‘aberrantLabel’
    results,FraserDataSet: no visible binding for global variable ‘padjust’
    results,FraserDataSet: no visible binding for global variable
      ‘pValueGene’
    results,FraserDataSet: no visible binding for global variable
      ‘padjustGene’
    Undefined global functions or variables:
      aberrantLabel gene_rowIdx include pValueGene padjust padjustGene
    ```

# funcharts

<details>

* Version: 1.6.0
* GitHub: https://github.com/unina-sfere/funcharts
* Source code: https://github.com/cran/funcharts
* Date/Publication: 2024-12-11 15:50:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::revdep_details(, "funcharts")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        libs   4.0Mb
    ```

# funtooNorm

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/funtooNorm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "funtooNorm")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in Rd file 'show-SampleSet-method.Rd':
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
      ‘MyEndnoteLibrary.bib’ ‘funtooNorm.Rmd’ ‘funtooNorm.pdf’
      ‘validationcurvesPCRlow.jpg’
    Files named as vignettes but with no recognized vignette engine:
       ‘vignettes/funtooNorm.Rmd’
    (Is a VignetteBuilder field missing?)
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) fromRGChannelSet.Rd:5: Lost braces; missing escapes or markup?
         5 | \title{Creates an object of class SampleSet from a RGChannelSet {minfi}}
           |                                                                 ^
    ```

*   checking package vignettes ... NOTE
    ```
    Package has ‘vignettes’ subdirectory but apparently no vignettes.
    Perhaps the ‘VignetteBuilder’ information is missing from the
    DESCRIPTION file?
    ```

# gap

<details>

* Version: 1.6
* GitHub: https://github.com/jinghuazhao/R
* Source code: https://github.com/cran/gap
* Date/Publication: 2024-08-27 04:40:06 UTC
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "gap")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘shiny’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        doc   7.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘car’
    ```

# gDNAx

<details>

* Version: 1.4.0
* GitHub: https://github.com/functionalgenomics/gDNAx
* Source code: https://github.com/cran/gDNAx
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "gDNAx")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomicAlignments:::.make_GAlignmentPairs_from_GAlignments’
      ‘GenomicAlignments:::.normargParam’ ‘S4Vectors:::makePowersOfTwo’
      See the note in ?`:::` about the use of this operator.
    ```

# GenEst

<details>

* Version: 1.4.9
* GitHub: NA
* Source code: https://github.com/cran/GenEst
* Date/Publication: 2023-05-25 16:10:03 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "GenEst")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) cpm.Rd:70: Lost braces; missing escapes or markup?
        70 | covariates included in \code{formula_l} or {formula_s} (required).}
           |                                            ^
    ```

# geneticae

<details>

* Version: 0.4.0
* GitHub: https://github.com/jangelini/geneticae
* Source code: https://github.com/cran/geneticae
* Date/Publication: 2022-07-20 15:40:06 UTC
* Number of recursive dependencies: 159

Run `revdepcheck::revdep_details(, "geneticae")` for more info

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

* Version: 3.0.0
* GitHub: https://github.com/federicomarini/GeneTonic
* Source code: https://github.com/cran/GeneTonic
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 226

Run `revdepcheck::revdep_details(, "GeneTonic")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.3Mb
      sub-directories of 1Mb or more:
        data      1.2Mb
        doc      14.7Mb
        extdata   1.4Mb
    ```

# genomation

<details>

* Version: 1.38.0
* GitHub: https://github.com/BIMSBbioinfo/genomation
* Source code: https://github.com/cran/genomation
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 116

Run `revdepcheck::revdep_details(, "genomation")` for more info

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
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        doc       3.7Mb
        extdata   1.2Mb
        libs      2.0Mb
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) plotMeta.Rd:57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotMeta.Rd:58: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotMeta.Rd:59-60: Lost braces in \itemize; meant \describe ?
    ```

# GenomAutomorphism

<details>

* Version: 1.8.0
* GitHub: https://github.com/genomaths/GenomAutomorphism
* Source code: https://github.com/cran/GenomAutomorphism
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 88

Run `revdepcheck::revdep_details(, "GenomAutomorphism")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic '[' and siglist 'AutomorphismList,ANY'
      generic '[' and siglist 'ListCodonMatrix,ANY'
      generic '[' and siglist 'MatrixSeq,ANY'
      generic '[[' and siglist 'AutomorphismList'
      generic '[[' and siglist 'ListCodonMatrix'
      generic 'names<-' and siglist 'AutomorphismList'
      generic 'names<-' and siglist 'MatrixSeq'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# geocmeans

<details>

* Version: 0.3.4
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-09-12 03:10:02 UTC
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        extdata   3.0Mb
        libs      9.0Mb
    ```

# geva

<details>

* Version: 1.14.0
* GitHub: https://github.com/sbcblab/geva
* Source code: https://github.com/cran/geva
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 125

Run `revdepcheck::revdep_details(, "geva")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘geva.Rmd’ using rmarkdown
    Warning in Sys.setlocale("LC_TIME", "English_United States") :
      OS reports request to set locale to "English_United States" cannot be honored
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva_files/figure-latex/plot-geva-summary-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva_files/figure-latex/plot-geva-quantiles-1-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva_files/figure-latex/plot-geva-quantiles-2-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva_files/figure-latex/plot-geva-cluster-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva_files/figure-latex/plot-geva-cluster-grouped-1.png" but not available.
    ...
    
    Error: processing vignette 'geva.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/geva/new/geva.Rcheck/vign_test/geva/vignettes/geva.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See geva.log for more info.
    --- failed re-building ‘geva.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘geva.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ggdmc

<details>

* Version: 0.2.6.0
* GitHub: https://github.com/yxlin/ggdmc
* Source code: https://github.com/cran/ggdmc
* Date/Publication: 2019-04-29 05:10:03 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::revdep_details(, "ggdmc")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        libs   9.7Mb
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GGPA

<details>

* Version: 1.18.0
* GitHub: https://github.com/dongjunchung/GGPA
* Source code: https://github.com/cran/GGPA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 76

Run `revdepcheck::revdep_details(, "GGPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   4.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘network’ ‘scales’ ‘sna’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) GGPA-class.Rd:37: Lost braces; missing escapes or markup?
        37 |     Nodes i and j are connected if the posterior probability of E_{ij} > \code{pCutoff} and the posterior probability of beta_{ij} > \code{betaCI}. }
           |                                                                   ^
    checkRd: (-1) GGPA-class.Rd:37: Lost braces; missing escapes or markup?
        37 |     Nodes i and j are connected if the posterior probability of E_{ij} > \code{pCutoff} and the posterior probability of beta_{ij} > \code{betaCI}. }
           |                                                                                                                               ^
    ```

*   checking compiled code ... NOTE
    ```
    File ‘GGPA/libs/GGPA.so’:
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Object: ‘3_Param.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# GJRM

<details>

* Version: 0.2-6.7
* GitHub: NA
* Source code: https://github.com/cran/GJRM
* Date/Publication: 2024-10-25 09:10:13 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::revdep_details(, "GJRM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# glmGamPoi

<details>

* Version: 1.18.0
* GitHub: https://github.com/const-ae/glmGamPoi
* Source code: https://github.com/cran/glmGamPoi
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "glmGamPoi")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        doc    2.5Mb
        libs  11.4Mb
    ```

# GPGame

<details>

* Version: 1.2.0
* GitHub: https://github.com/vpicheny/GPGame
* Source code: https://github.com/cran/GPGame
* Date/Publication: 2022-01-23 16:22:45 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "GPGame")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) solve_game.Rd:86: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) solve_game.Rd:87: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) solve_game.Rd:88: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) solve_game.Rd:89: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) solve_game.Rd:90: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# GPUmatrix

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/GPUmatrix
* Date/Publication: 2024-03-01 09:02:36 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::revdep_details(, "GPUmatrix")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Package unavailable to check Rd xrefs: ‘speedglm’
    Missing link or links in Rd file 'LR_GradientConjugate_gpumatrix.Rd':
      ‘Matrix-class’
    
    Missing link or links in Rd file 'gpu.matrix-class.Rd':
      ‘Matrix-class’
    
    Missing link or links in Rd file 'gpu.matrix.Rd':
      ‘Matrix-class’
    
    Missing link or links in Rd file 'matrix-product.Rd':
      ‘%&%’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# GRaNIE

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/GRaNIE
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 306

Run `revdepcheck::revdep_details(, "GRaNIE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.2Mb
      sub-directories of 1Mb or more:
        doc  13.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .performIHW: no visible binding for global variable 'adj_pvalue'
    Undefined global functions or variables:
      adj_pvalue
    ```

# graper

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 70

Run `revdepcheck::revdep_details(, "graper")` for more info

</details>

## In both

*   checking whether package ‘graper’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/new/graper.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++11
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from /c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/digamma.hpp:16,
                 from graper_linear_dense_ff.h:2,
...
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note: candidate: ‘template<class RT1, class RT2, class RT3, class Policy> boost::math::tools::promote_args_t<RT1, RT2, A> boost::math::beta(RT1, RT2, RT3, const Policy&)’
 1638 |    beta(RT1 a, RT2 b, RT3 x, const Policy&)
      |    ^~~~
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/binomial.hpp:49:61: note:   candidate expects 4 arguments, 3 provided
   49 |          result = static_cast<T>((n - k) * boost::math::beta(static_cast<T>(k+1), static_cast<T>(n-k), pol));
      |                                            ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/etc/Makeconf:204: fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/new/graper.Rcheck/graper’


```
### CRAN

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++11
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from /c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/digamma.hpp:16,
                 from graper_linear_dense_ff.h:2,
...
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note: candidate: ‘template<class RT1, class RT2, class RT3, class Policy> boost::math::tools::promote_args_t<RT1, RT2, A> boost::math::beta(RT1, RT2, RT3, const Policy&)’
 1638 |    beta(RT1 a, RT2 b, RT3 x, const Policy&)
      |    ^~~~
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/binomial.hpp:49:61: note:   candidate expects 4 arguments, 3 provided
   49 |          result = static_cast<T>((n - k) * boost::math::beta(static_cast<T>(k+1), static_cast<T>(n-k), pol));
      |                                            ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/etc/Makeconf:204: fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/old/graper.Rcheck/graper’


```
# GUIDEseq

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 200

Run `revdepcheck::revdep_details(, "GUIDEseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘GUIDEseq.Rnw’ using Sweave
    Loading required package: GenomicRanges
    Loading required package: stats4
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
    ...
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'GUIDEseq.Rnw'
    
    SUMMARY: processing the following file failed:
      'GUIDEseq.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.7Mb
      sub-directories of 1Mb or more:
        extdata  12.0Mb
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
      feature gRNA.deletion gRNA.insertion gRNA.name gRNAPlusPAM
      geom_smooth guideAlignment2OffTarget guide_legend guides h
      mismatch.distance2PAM n.DNA.bulge n.PAM.mismatch n.RNA.bulge
      n.deletion n.distinct.UMIs n.guide.mismatch n.insertion offTarget
      offTargetStrand offTarget_End offTarget_Start offTarget_sequence
      pa.f1 pa.r2 peak_score pos.deletion pos.insertion
      predicted_cleavage_score qwidth.first qwidth.last readName
      seqnames.first seqnames.last start.first start.last strand.first
      strand.last thePeak total.mismatch.bulge unit width.first width.last
      y
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: annotateOffTargets.Rd:35-37: Dropping empty section \details
    prepare_Rd: annotateOffTargets.Rd:63-65: Dropping empty section \references
    prepare_Rd: createBarcodeFasta.Rd:56-58: Dropping empty section \references
    prepare_Rd: getUsedBarcodes.Rd:53-55: Dropping empty section \references
    checkRd: (-1) mergePlusMinusPeaks.Rd:72: Escaped LaTeX specials: \_
    ```

# Gviz

<details>

* Version: 1.50.0
* GitHub: https://github.com/ivanek/Gviz
* Source code: https://github.com/cran/Gviz
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 162

Run `revdepcheck::revdep_details(, "Gviz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        R         1.7Mb
        doc       5.4Mb
        extdata   2.5Mb
    ```

# GWENA

<details>

* Version: 1.16.0
* GitHub: https://github.com/Kumquatum/GWENA
* Source code: https://github.com/cran/GWENA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 148

Run `revdepcheck::revdep_details(, "GWENA")` for more info

</details>

## In both

*   checking whether package ‘GWENA’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: bad markup (extra space?) at compare_conditions.Rd:91:72
      Warning: bad markup (extra space?) at compare_conditions.Rd:96:77
      Warning: bad markup (extra space?) at compare_conditions.Rd:98:74
      Warning: bad markup (extra space?) at compare_conditions.Rd:100:69
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/GWENA/new/GWENA.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:91:72
    prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:96:77
    prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:98:74
    prepare_Rd: bad markup (extra space?) at compare_conditions.Rd:100:69
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    5.7Mb
    ```

# HACSim

<details>

* Version: 1.0.6-1
* GitHub: NA
* Source code: https://github.com/cran/HACSim
* Date/Publication: 2022-06-13 06:50:16 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::revdep_details(, "HACSim")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        libs    2.1Mb
        shiny   4.3Mb
    ```

# Harman

<details>

* Version: 1.34.0
* GitHub: NA
* Source code: https://github.com/cran/Harman
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 212

Run `revdepcheck::revdep_details(, "Harman")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc    3.3Mb
        libs   2.2Mb
    ```

# hbamr

<details>

* Version: 2.3.2
* GitHub: https://github.com/jbolstad/hbamr
* Source code: https://github.com/cran/hbamr
* Date/Publication: 2024-09-23 12:20:07 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "hbamr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 340.4Mb
      sub-directories of 1Mb or more:
        libs  338.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# HDSpatialScan

<details>

* Version: 1.0.4
* GitHub: NA
* Source code: https://github.com/cran/HDSpatialScan
* Date/Publication: 2023-05-25 07:30:05 UTC
* Number of recursive dependencies: 112

Run `revdepcheck::revdep_details(, "HDSpatialScan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# hermes

<details>

* Version: 1.10.0
* GitHub: https://github.com/insightsengineering/hermes
* Source code: https://github.com/cran/hermes
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 161

Run `revdepcheck::revdep_details(, "hermes")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    2.9Mb
    ```

# hipathia

<details>

* Version: 3.6.0
* GitHub: NA
* Source code: https://github.com/cran/hipathia
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 165

Run `revdepcheck::revdep_details(, "hipathia")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘hipathia-vignette.Rmd’ using rmarkdown
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'hipathia-vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/hipathia/new/hipathia.Rcheck/vign_test/hipathia/vignettes/hipathia-vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See hipathia-vignette.log for more info.
    --- failed re-building ‘hipathia-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘hipathia-vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        data      4.1Mb
        doc       1.8Mb
        extdata   4.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    DAreport: no visible binding for global variable ‘ID’
    DAreport: no visible binding for global variable ‘FDRp.value’
    DAtop : <anonymous>: no visible binding for global variable
      ‘FDRp.value’
    DAtop : <anonymous>: no visible binding for global variable ‘statistic’
    DAtop : <anonymous>: no visible binding for global variable ‘p.value’
    DAtop : <anonymous>: no visible binding for global variable ‘name’
    DAtop : <anonymous>: no visible binding for global variable ‘logPV’
    DAtop : <anonymous>: no visible binding for global variable ‘feature’
    DAtop: no visible binding for global variable ‘name’
    ...
    summary_plot: no visible binding for global variable ‘UP.nodes’
    summary_plot: no visible binding for global variable ‘DOWN.nodes’
    summary_plot: no visible binding for global variable ‘nodes’
    summary_plot: no visible binding for global variable ‘ratio.sigs’
    summary_plot: no visible binding for global variable ‘ratio.UPs’
    summary_plot: no visible binding for global variable ‘ratio.DOWNs’
    Undefined global functions or variables:
      DOWN DOWN.nodes DOWNs FDRp.value ID Not UP UP.nodes UPs direction
      feature from functional logPV name nodes p.value ratio.DOWNs
      ratio.UPs ratio.sigs statistic status to total type value variable
    ```

# Hmsc

<details>

* Version: 3.0-13
* GitHub: https://github.com/hmsc-r/HMSC
* Source code: https://github.com/cran/Hmsc
* Date/Publication: 2022-08-11 14:10:14 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::revdep_details(, "Hmsc")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) sampleMcmc.Rd:93: Lost braces; missing escapes or markup?
        93 |   disable some of them, by adding a \code{$UPDATER_NAME=FALSE} pair to the {updater} argument. Another usage of
           |                                                                            ^
    ```

# Holomics

<details>

* Version: 1.1.1
* GitHub: https://github.com/MolinLab/Holomics
* Source code: https://github.com/cran/Holomics
* Date/Publication: 2024-06-07 19:10:02 UTC
* Number of recursive dependencies: 140

Run `revdepcheck::revdep_details(, "Holomics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        app   1.7Mb
        doc   3.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RSpectra’ ‘ggrepel’ ‘markdown’ ‘matrixStats’ ‘reshape2’ ‘tidyr’
      ‘uuid’
      All declared Imports should be used.
    ```

# hubEnsembles

<details>

* Version: 0.1.9
* GitHub: https://github.com/hubverse-org/hubEnsembles
* Source code: https://github.com/cran/hubEnsembles
* Date/Publication: 2024-10-02 20:20:09 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::revdep_details(, "hubEnsembles")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'hubExamples', 'hubVis'
    ```

# ICBioMark

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/ICBioMark
* Date/Publication: 2021-11-15 12:00:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::revdep_details(, "ICBioMark")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) get_p.Rd:29: Lost braces; missing escapes or markup?
        29 | \item A numeric p_norm, giving the factor between p_{gs} and phi_{0gs} (see paper for details).
           |                                                     ^
    checkRd: (-1) get_p.Rd:29: Lost braces; missing escapes or markup?
        29 | \item A numeric p_norm, giving the factor between p_{gs} and phi_{0gs} (see paper for details).
           |                                                                  ^
    ```

# incidental

<details>

* Version: 0.1
* GitHub: NA
* Source code: https://github.com/cran/incidental
* Date/Publication: 2020-09-16 09:50:03 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "incidental")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) make_likelihood_matrix.Rd:16: Lost braces; missing escapes or markup?
        16 | This function creates a matrix such that P[t, s] = P(C = t | I = s) = theta_{t-s} for s <= t and 0 otherwise.
           |                                                                             ^
    ```

# iNETgrate

<details>

* Version: 1.4.0
* GitHub: https://github.com/Bioconductor/BiocManager
* Source code: https://github.com/cran/iNETgrate
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 286

Run `revdepcheck::revdep_details(, "iNETgrate")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘iNETgrate_inference.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'iNETgrate_inference.Rnw' failed with diagnostics:
    unable to run pdflatex on 'iNETgrate_inference.tex'
    LaTeX errors:
    ! LaTeX Error: File `commath.sty' not found.
    
    ...
    l.48 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘iNETgrate_inference.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘iNETgrate_inference.Rnw’
    
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

Run `revdepcheck::revdep_details(, "InfiniumPurify")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘minfi’
    ```

# iPath

<details>

* Version: 1.12.0
* GitHub: https://github.com/suke18/iPath
* Source code: https://github.com/cran/iPath
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 121

Run `revdepcheck::revdep_details(, "iPath")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   2.5Mb
        doc    1.1Mb
        libs   1.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    water_fall: no visible binding for global variable ‘value’
    water_fall: no visible binding for global variable ‘type’
    Undefined global functions or variables:
      type value
    ```

# irace

<details>

* Version: 4.1
* GitHub: https://github.com/MLopez-Ibanez/irace
* Source code: https://github.com/cran/irace
* Date/Publication: 2024-12-17 08:30:02 UTC
* Number of recursive dependencies: 38

Run `revdepcheck::revdep_details(, "irace")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘irace-package.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'irace-package.Rnw' failed with diagnostics:
    unable to run pdflatex on 'irace-package.tex'
    LaTeX errors:
    ! LaTeX Error: File `relsize.sty' not found.
    
    ...
    l.78 \usepackage
                    {fancyvrb}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘irace-package.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘irace-package.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmpi’
    ```

# JMbayes2

<details>

* Version: 0.5-0
* GitHub: https://github.com/drizopoulos/JMbayes2
* Source code: https://github.com/cran/JMbayes2
* Date/Publication: 2024-05-30 07:30:03 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::revdep_details(, "JMbayes2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.6Mb
      sub-directories of 1Mb or more:
        libs  11.8Mb
    ```

# kgschart

<details>

* Version: 1.3.5
* GitHub: https://github.com/kota7/kgschart
* Source code: https://github.com/cran/kgschart
* Date/Publication: 2017-07-02 22:16:15 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::revdep_details(, "kgschart")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# kissDE

<details>

* Version: 1.26.0
* GitHub: https://github.com/lbbe-software/kissDE
* Source code: https://github.com/cran/kissDE
* Date/Publication: 2024-11-06
* Number of recursive dependencies: 204

Run `revdepcheck::revdep_details(, "kissDE")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘kissDE.rnw’
    
    SUMMARY: processing the following file failed:
      ‘kissDE.rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# kpmt

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/kpmt
* Date/Publication: 2017-08-01 04:51:06 UTC
* Number of recursive dependencies: 1

Run `revdepcheck::revdep_details(, "kpmt")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) kpmt.Rd:14: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) kpmt.Rd:15: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) kpmt.Rd:20: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) kpmt.Rd:21: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) kpmt.Rd:46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:47: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:48: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:49: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:50: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:51: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) kpmt.Rd:52: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# ldsep

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/ldsep
* Source code: https://github.com/cran/ldsep
* Date/Publication: 2022-10-18 22:52:43 UTC
* Number of recursive dependencies: 160

Run `revdepcheck::revdep_details(, "ldsep")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   8.7Mb
    ```

# lemur

<details>

* Version: 1.4.0
* GitHub: https://github.com/const-ae/lemur
* Source code: https://github.com/cran/lemur
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 165

Run `revdepcheck::revdep_details(, "lemur")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Missing or unexported object: ‘BiocNeighbors::findAnnoy’
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        doc    1.1Mb
        libs   2.8Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'fold_left.Rd':
      ‘x’ ‘FUN’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# LFDREmpiricalBayes

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/LFDREmpiricalBayes
* Date/Publication: 2017-09-27 09:08:46 UTC
* Number of recursive dependencies: 26

Run `revdepcheck::revdep_details(, "LFDREmpiricalBayes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘LFDREmpiricalBayes.Rnw’ using Sweave
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'LFDREmpiricalBayes.Rnw' failed with diagnostics:
    unable to run pdflatex on 'LFDREmpiricalBayes.tex'
    LaTeX errors:
    ! LaTeX Error: File `changepage.sty' not found.
    
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

# Linnorm

<details>

* Version: 2.30.0
* GitHub: NA
* Source code: https://github.com/cran/Linnorm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 103

Run `revdepcheck::revdep_details(, "Linnorm")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Linnorm_User_Manual.Rmd’ using rmarkdown
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'Linnorm_User_Manual.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/Linnorm/new/Linnorm.Rcheck/vign_test/Linnorm/vignettes/Linnorm_User_Manual.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Linnorm_User_Manual.log for more info.
    --- failed re-building ‘Linnorm_User_Manual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Linnorm_User_Manual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    1.9Mb
        libs   1.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) Linnorm.Cor.Rd:71: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:72: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:73: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:74: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:75: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:76: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:81: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:82: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:83: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.Cor.Rd:84: Lost braces in \itemize; \value handles \item{}{} directly
    ...
    checkRd: (-1) Linnorm.limma.Rd:40: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.limma.Rd:41: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.limma.Rd:42: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.limma.Rd:43: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.limma.Rd:48: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.limma.Rd:49: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.tSNE.Rd:50: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.tSNE.Rd:51: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.tSNE.Rd:52: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) Linnorm.tSNE.Rd:53: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# LSAmitR

<details>

* Version: 1.0-3
* GitHub: NA
* Source code: https://github.com/cran/LSAmitR
* Date/Publication: 2022-06-01 07:50:02 UTC
* Number of recursive dependencies: 182

Run `revdepcheck::revdep_details(, "LSAmitR")` for more info

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

Run `revdepcheck::revdep_details(, "lspartition")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Luminescence

<details>

* Version: 0.9.26
* GitHub: https://github.com/R-Lum/Luminescence
* Source code: https://github.com/cran/Luminescence
* Date/Publication: 2024-11-18 12:00:14 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::revdep_details(, "Luminescence")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        libs   3.8Mb
    ```

# M3Drop

<details>

* Version: 1.32.0
* GitHub: https://github.com/tallulandrews/M3Drop
* Source code: https://github.com/cran/M3Drop
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "M3Drop")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.0Mb
      sub-directories of 1Mb or more:
        doc  12.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scater’
      All declared Imports should be used.
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

* Version: 2.26.0
* GitHub: NA
* Source code: https://github.com/cran/maEndToEnd
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 254

Run `revdepcheck::revdep_details(, "maEndToEnd")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MA-Workflow.Rmd’ using rmarkdown
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/164_I_.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/183_I.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2114_I.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2209_A.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2209_B.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2255_I.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2255_II.CEL'
    trying URL 'ftp://ftp.ebi.ac.uk/biostudies/fire/E-MTAB-/967/E-MTAB-2967/Files/2400_I.CEL'
    ...
    	 /c4/home/henrik/.cache/R/maEndToEnd/848_B.CEL
    	 /c4/home/henrik/.cache/R/maEndToEnd/888_I.CEL
    	 /c4/home/henrik/.cache/R/maEndToEnd/888_II.CEL
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
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc   6.7Mb
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

# magpie

<details>

* Version: 1.6.0
* GitHub: https://github.com/dxd429/magpie
* Source code: https://github.com/cran/magpie
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 125

Run `revdepcheck::revdep_details(, "magpie")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'powerEval.Rd':
    powerEval
      Code: function(Input.file, IP.file, BamDir, annoDir, variable,
                     bam_factor, nsim = 10, N.reps = c(2, 3, 5),
                     depth_factor = c(1, 2, 5), thres = c(0.01, 0.05, 0.1,
                     0.2), dmrProp = NULL, Test_method = "TRESS")
      Docs: function(Input.file, IP.file, BamDir, annoDir, variable,
                     bam_factor, nsim = 10, N.reps = c(2, 3, 5),
                     depth_factor = c(1, 2, 5), thres = c(0.01, 0.05, 0.1,
                     0.2), Test_method = "TRESS")
      Argument names in code not in docs:
        dmrProp
      Mismatches in argument names:
        Position: 11 Code: dmrProp Docs: Test_method
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) QuickPower.Rd:28: Lost braces
        28 | {GSE46705: }{Human HeLa cell line: Two replicates of wild type (WT) and two replicates of knockdown (KD) of complex METTL3.}\cr
           |             ^
    checkRd: (-1) QuickPower.Rd:29: Lost braces; missing escapes or markup?
        29 | {GSE55575: }{Mouse embryonic fibroblasts: Two replicates of wild type (WT) and four replicates of knockdown (KD) of WTAP.}\cr
           | ^
    checkRd: (-1) QuickPower.Rd:29: Lost braces
        29 | {GSE55575: }{Mouse embryonic fibroblasts: Two replicates of wild type (WT) and four replicates of knockdown (KD) of WTAP.}\cr
           |             ^
    checkRd: (-1) QuickPower.Rd:30: Lost braces; missing escapes or markup?
    ...
           | ^
    checkRd: (-1) QuickPower.Rd:30: Lost braces
        30 | {GSE115105: }{Two sample types from WT and YTHDF1 KO mice. Each type has two replicates.}\cr
           |              ^
    checkRd: (-1) QuickPower.Rd:31: Lost braces; missing escapes or markup?
        31 | {GSE94613: }{Human leukemia cell line: Four replicates of wild type (WT) and eight replicates of knockdown (KD) of complex METTL3.}
           | ^
    checkRd: (-1) QuickPower.Rd:31: Lost braces
        31 | {GSE94613: }{Human leukemia cell line: Four replicates of wild type (WT) and eight replicates of knockdown (KD) of complex METTL3.}
           |             ^
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘htmltools’
    ```

# MatrixGenerics

<details>

* Version: 1.18.0
* GitHub: https://github.com/Bioconductor/MatrixGenerics
* Source code: https://github.com/cran/MatrixGenerics
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 51

Run `revdepcheck::revdep_details(, "MatrixGenerics")` for more info

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

* Version: 0.7.8
* GitHub: NA
* Source code: https://github.com/cran/mcmcsae
* Date/Publication: 2024-12-11 21:00:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "mcmcsae")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.1Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        libs  25.5Mb
    ```

# MEAL

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/MEAL
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 237

Run `revdepcheck::revdep_details(, "MEAL")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MEAL.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Manhattan 1-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Manhattan 1-2.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Manhattan 2-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Volcano 1-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/QQ-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Plot_Features-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/MEAL/new/MEAL.Rcheck/vign_test/MEAL/vignettes/MEAL_files/figure-html/Plot_Features-2.png" but not available.
    
    ...
    Quitting from lines 157-158 [Regional plot 2 exp] (caseExample.Rmd)
    Error: processing vignette 'caseExample.Rmd' failed with diagnostics:
    attempt to set an attribute on NULL
    --- failed re-building ‘caseExample.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘MEAL.Rmd’ ‘caseExample.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'sva'
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'getProbeResults.Rd'
      ‘robust’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
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

# memes

<details>

* Version: 1.14.0
* GitHub: https://github.com/snystrom/memes
* Source code: https://github.com/cran/memes
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 161

Run `revdepcheck::revdep_details(, "memes")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    motif_input:
      function(x, ...)
    motif_input.universalmotif_df:
      function(input, path)
    
    motif_input:
      function(x, ...)
    motif_input.universalmotif:
      function(input, path)
    
    ...
      function(x)
    sequence_input.BStringSet:
      function(input)
    
    sequence_input:
      function(x)
    sequence_input.AAStringSet:
      function(input)
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) runTomTom.Rd:51: Lost braces; missing escapes or markup?
        51 | \item{...}{additional flags passed to tomtom using {cmdfun} formating (see table below for details)}
           |                                                    ^
    ```

# metabCombiner

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/metabCombiner
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 114

Run `revdepcheck::revdep_details(, "metabCombiner")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) combineData.Rd:22: Lost braces
        22 | (quasi)merge of the /code{/link{combinedTable}} and /code{/link{featData}}
           |                          ^
    checkRd: (-1) combineData.Rd:22: Lost braces
        22 | (quasi)merge of the /code{/link{combinedTable}} and /code{/link{featData}}
           |                                ^
    checkRd: (-1) combineData.Rd:22: Lost braces
        22 | (quasi)merge of the /code{/link{combinedTable}} and /code{/link{featData}}
           |                                                          ^
    checkRd: (-1) combineData.Rd:22: Lost braces
        22 | (quasi)merge of the /code{/link{combinedTable}} and /code{/link{featData}}
           |                                                                ^
    ```

# MetabolicSurv

<details>

* Version: 1.1.2
* GitHub: https://github.com/OlajumokeEvangelina/MetabolicSurv
* Source code: https://github.com/cran/MetabolicSurv
* Date/Publication: 2021-06-11 08:30:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "MetabolicSurv")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) CVLasoelacox.Rd:68-69: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:70-71: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:72: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:73: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:74-76: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:77-79: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:80-81: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:82-85: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) CVLasoelacox.Rd:86-87: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# metagenomeSeq

<details>

* Version: 1.46.0
* GitHub: https://github.com/nosson/metagenomeSeq
* Source code: https://github.com/cran/metagenomeSeq
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 144

Run `revdepcheck::revdep_details(, "metagenomeSeq")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
          lapply, mapply, match, mget, order, paste, pmax, pmax.int, pmin,
          pmin.int, rank, rbind, rownames, sapply, saveRDS, setdiff, table,
          tapply, union, unique, unsplit, which.max, which.min
      
      Welcome to Bioconductor
    ...
      Component "eb": Component "s2.post": Mean relative difference: 0.002818974
      Component "eb": Component "t": Mean relative difference: 0.001476944
      Component "eb": Component "df.total": Mean relative difference: 0.002226407
      Component "eb": Component "p.value": Mean relative difference: 0.001045802
      Component "eb": Component "lods": Mean relative difference: 0.002124969
      Component "eb": Component "F": Mean relative difference: 0.002818882
      
      [ FAIL 2 | WARN 6 | SKIP 0 | PASS 13 ]
      Error: Test failures
      Execution halted
    ```

# metamicrobiomeR

<details>

* Version: 1.2
* GitHub: https://github.com/nhanhocu/metamicrobiomeR
* Source code: https://github.com/cran/metamicrobiomeR
* Date/Publication: 2020-11-09 11:20:05 UTC
* Number of recursive dependencies: 165

Run `revdepcheck::revdep_details(, "metamicrobiomeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lmerTest’
      All declared Imports should be used.
    ```

# MetaNeighbor

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/MetaNeighbor
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "MetaNeighbor")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) extractMetaClusters.Rd:25: Lost braces; missing escapes or markup?
        25 | if 1<->2 and 1<->3 are reciprocal top hits, {1, 2, 3} is a meta-cluster,
           |                                             ^
    ```

# methrix

<details>

* Version: 1.20.0
* GitHub: https://github.com/CompEpigen/methrix
* Source code: https://github.com/cran/methrix
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 158

Run `revdepcheck::revdep_details(, "methrix")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    extract_CPGs: no visible global function definition for
      ‘standardChromosomes’
    get_region_summary: no visible binding for global variable ‘..keep’
    Undefined global functions or variables:
      ..keep standardChromosomes
    ```

# MethylAid

<details>

* Version: 1.40.0
* GitHub: NA
* Source code: https://github.com/cran/MethylAid
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 177

Run `revdepcheck::revdep_details(, "MethylAid")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MethylAid.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'MethylAid.Rnw' failed with diagnostics:
    unable to run pdflatex on 'MethylAid.tex'
    LaTeX errors:
    ! LaTeX Error: File `nowidow.sty' not found.
    
    ...
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘MethylAid.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MethylAid.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# methylationArrayAnalysis

<details>

* Version: 1.29.0
* GitHub: NA
* Source code: https://github.com/cran/methylationArrayAnalysis
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "methylationArrayAnalysis")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘methylationArrayAnalysis.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure2-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure3-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure4-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure5-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure6-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure7-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/matrixStats/revdep/checks/methylationArrayAnalysis/new/methylationArrayAnalysis.Rcheck/vign_test/methylationArrayAnalysis/vignettes/methylationArrayAnalysis_files/figure-html/figure8-1.png" but not available.
    ...
    Quitting from lines 461-465 [figure10] (methylationArrayAnalysis.Rmd)
    Error: processing vignette 'methylationArrayAnalysis.Rmd' failed with diagnostics:
    attempt to set an attribute on NULL
    --- failed re-building ‘methylationArrayAnalysis.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘methylationArrayAnalysis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

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

* Version: 2.52.0
* GitHub: https://github.com/seandavi/methylumi
* Source code: https://github.com/cran/methylumi
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 174

Run `revdepcheck::revdep_details(, "methylumi")` for more info

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
      installed size is 11.9Mb
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
    checkRd: (-1) extractBarcodeAndPosition.Rd:14: Escaped LaTeX specials: \_ \_
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

# migest

<details>

* Version: 2.0.4
* GitHub: https://github.com/guyabel/migest
* Source code: https://github.com/cran/migest
* Date/Publication: 2023-11-18 08:40:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::revdep_details(, "migest")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 9 marked UTF-8 strings
    ```

# miloR

<details>

* Version: 2.2.0
* GitHub: https://github.com/MarioniLab/miloR
* Source code: https://github.com/cran/miloR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 212

Run `revdepcheck::revdep_details(, "miloR")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 35.0Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    7.9Mb
        libs  24.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotDAbeeswarm: no visible binding for global variable ‘SpatialFDR’
    plotDAbeeswarm: no visible binding for global variable ‘logFC’
    plotDAbeeswarm: no visible binding for global variable ‘is_signif’
    plotDAbeeswarm: no visible binding for global variable ‘Nhood’
    plotDAbeeswarm: no visible binding for global variable ‘logFC_color’
    plotNhoodCounts: no visible binding for global variable ‘cond’
    plotNhoodCounts: no visible binding for global variable ‘values’
    plotNhoodCounts: no visible binding for global variable ‘y’
    plotNhoodExpressionDA: no visible binding for global variable ‘Nhood’
    plotNhoodExpressionDA: no visible binding for global variable ‘logFC’
    ...
    plotNhoodMA: no visible binding for global variable ‘Sig’
    plotNhoodSizeHist: no visible binding for global variable ‘nh_size’
    testNhoods: no visible global function definition for ‘type’
    Undefined global functions or variables:
      . Nhood NhoodGroup Sig SpatialFDR avg_expr cond feature is_signif
      label layout logCPM logFC logFC_color logFC_rank nh_size size type
      values weight y
    Consider adding
      importFrom("graphics", "layout")
    to your NAMESPACE file.
    ```

# MinimumDistance

<details>

* Version: 1.50.0
* GitHub: NA
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "MinimumDistance")` for more info

</details>

## In both

*   checking whether package ‘MinimumDistance’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ff::pattern’ by ‘grid::pattern’ when loading ‘MinimumDistance’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/MinimumDistance/new/MinimumDistance.Rcheck/00install.out’ for details.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Functions or methods with usage in Rd file 'coercion-methods.Rd' but not in code:
      ‘as’
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Objects in \usage without \alias in Rd file 'coercion-methods.Rd':
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

*   checking whether startup messages can be suppressed ... NOTE
    ```
    No methods found in package ‘oligoClasses’ for request: ‘mean’ when loading ‘crlmm’
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
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

# miRecSurv

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/miRecSurv
* Date/Publication: 2021-08-17 16:20:05 UTC
* Number of recursive dependencies: 8

Run `revdepcheck::revdep_details(, "miRecSurv")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) sim.data.Rd:11: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:12: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:13: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:14: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:15: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:16: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:17: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:18: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:19: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:20: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:21: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:22: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:23: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:24: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:25: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:26: Lost braces in \enumerate; meant \describe ?
    checkRd: (-1) sim.data.Rd:27: Lost braces in \enumerate; meant \describe ?
    ```

# mixOmics

<details>

* Version: 6.30.0
* GitHub: https://github.com/mixOmicsTeam/mixOmics
* Source code: https://github.com/cran/mixOmics
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 100

Run `revdepcheck::revdep_details(, "mixOmics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.7Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        data   3.3Mb
        doc   16.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gsignal’
      All declared Imports should be used.
    ```

# mnem

<details>

* Version: 1.22.0
* GitHub: https://github.com/cbg-ethz/mnem
* Source code: https://github.com/cran/mnem
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 182

Run `revdepcheck::revdep_details(, "mnem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    4.2Mb
        libs   3.6Mb
    ```

# moanin

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/moanin
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 124

Run `revdepcheck::revdep_details(, "moanin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘documentation.Rmd’ using knitr
    
    Quitting from lines 45-49 [unnamed-chunk-2] (documentation.Rmd)
    Error: processing vignette 'documentation.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘documentation.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘documentation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) DE_timepoints.Rd:129-130: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DE_timepoints.Rd:131-132: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DE_timepoints.Rd:133-136: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:37-38: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:39-40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:41: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:42: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:43-44: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:45-46: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) estimate_log_fold_change.Rd:47: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) splines_kmeans.Rd:49-50: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) splines_kmeans.Rd:51-52: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) splines_kmeans.Rd:53: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) splines_kmeans_score_and_label.Rd:69-71: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) splines_kmeans_score_and_label.Rd:72-73: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) splines_kmeans_score_and_label.Rd:74-75: Lost braces in \itemize; \value handles \item{}{} directly
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘edge’
    Unknown package ‘KEGGprofile’ in Rd xrefs
    ```

# MOCHA

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/MOCHA
* Date/Publication: 2024-01-25 12:20:12 UTC
* Number of recursive dependencies: 246

Run `revdepcheck::revdep_details(, "MOCHA")` for more info

</details>

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      2.1Mb
        data   2.5Mb
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ArchR’
    ```

# monocle

<details>

* Version: 2.34.0
* GitHub: NA
* Source code: https://github.com/cran/monocle
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 258

Run `revdepcheck::revdep_details(, "monocle")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘monocle-vignette.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    unable to run pdflatex on 'monocle-vignette.tex'
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
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

# moocore

<details>

* Version: 0.1.2
* GitHub: https://github.com/multi-objective/moocore
* Source code: https://github.com/cran/moocore
* Date/Publication: 2024-09-18 04:50:02 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::revdep_details(, "moocore")` for more info

</details>

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# MOSim

<details>

* Version: 2.2.0
* GitHub: https://github.com/ConesaLab/MOSim
* Source code: https://github.com/cran/MOSim
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 217

Run `revdepcheck::revdep_details(, "MOSim")` for more info

</details>

## In both

*   checking whether package ‘MOSim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘dplyr::count’ by ‘matrixStats::count’ when loading ‘MOSim’
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/MOSim/new/MOSim.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   5.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    make_association_dataframe : keep_remaining: no visible binding for
      global variable ‘Freq.a’
    make_association_dataframe : keep_remaining: no visible binding for
      global variable ‘Freq.ao’
    make_association_dataframe : keep_remaining: no visible binding for
      global variable ‘cluster’
    make_association_dataframe : keep_remaining: no visible binding for
      global variable ‘Freq’
    make_association_dataframe : keep_remaining2: no visible binding for
      global variable ‘Freq.a’
    ...
    make_association_dataframe : keep_remaining2: no visible binding for
      global variable ‘cluster’
    make_association_dataframe : keep_remaining2: no visible binding for
      global variable ‘Freq’
    make_association_dataframe: no visible binding for global variable
      ‘Peak_ID’
    make_association_dataframe: no visible binding for global variable
      ‘Gene_ID’
    Undefined global functions or variables:
      Freq Freq.a Freq.ao Gene_ID Peak_ID cluster
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) TF_human.Rd:12: Lost braces; missing escapes or markup?
        12 |  @source {https://tflink.net/}
           |          ^
    checkRd: (-1) associationList.Rd:14: Lost braces; missing escapes or markup?
        14 |  @source {Created in-house to serve as an example}
           |          ^
    checkRd: (-1) sc_mosim.Rd:94: Lost braces; missing escapes or markup?
        94 | {https://tflink.net/}}
           | ^
    checkRd: (-1) scatac.Rd:14-15: Lost braces
        14 |  @source {https://github.com/satijalab/seurat-data, we took 11 cells 
           |          ^
    checkRd: (-1) scrna.Rd:14-15: Lost braces
        14 |  @source {https://github.com/satijalab/seurat-data, we took 11 cells 
           |          ^
    checkRd: (-1) scrna.Rd:23-28: Lost braces
        23 |  for (cell_type in unique_cell_types) {
           |                                       ^
    ```

# motifbreakR

<details>

* Version: 2.20.0
* GitHub: https://github.com/Simon-Coetzee/motifbreakR
* Source code: https://github.com/cran/motifbreakR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 196

Run `revdepcheck::revdep_details(, "motifbreakR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘motifbreakR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: snps.from.rsid
    > ### Title: Import SNPs from rsid for use in motifbreakR
    > ### Aliases: snps.from.rsid
    > 
    > ### ** Examples
    > 
    >  library(BSgenome.Hsapiens.UCSC.hg19)
    ...
    >  snps <- as.character(read.table(snps.file)[,1])
    >  snps.mb <- snps.from.rsid(snps[1],
    +                            dbSNP = SNPlocs.Hsapiens.dbSNP155.GRCh37,
    +                            search.genome = BSgenome.Hsapiens.UCSC.hg19)
    Warning in download.file(url, destfile, method, quiet = TRUE) :
      cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/': FTP status was '400 Unknown Error'
    Error in download.file(url, destfile, method, quiet = TRUE) : 
      cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/'
    Calls: snps.from.rsid ... .form_assembly_report_url -> find_NCBI_assembly_ftp_dir
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘motifbreakR-vignette.Rmd’ using rmarkdown
    
    Quitting from lines 105-112 [fromrsid] (motifbreakR-vignette.Rmd)
    Error: processing vignette 'motifbreakR-vignette.Rmd' failed with diagnostics:
    cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/'
    --- failed re-building ‘motifbreakR-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘motifbreakR-vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented data sets:
      'example.pvalue'
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: 'MotifDb'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    biomartToGranges: no visible binding for global variable 'chr_name'
    biomartToGranges: no visible binding for global variable 'chrom_start'
    biomartToGranges: no visible binding for global variable 'chrom_end'
    biomartToGranges: no visible binding for global variable 'SNP_id'
    biomartToGranges: no visible binding for global variable 'REF'
    biomartToGranges: no visible binding for global variable 'ALT'
    calculatePvalue: no visible binding for global variable 'Refpvalue'
    calculatePvalue: no visible binding for global variable 'Altpvalue'
    convertPeakFile: no visible binding for global variable 'chr'
    convertPeakFile: no visible binding for global variable 'name'
    Undefined global functions or variables:
      ALT Altpvalue REF Refpvalue SNP_id chr chr_name chrom_end chrom_start
      name
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) calculatePvalue.Rd:7: Lost braces
         7 | H{\'e}l{\`e}ne Touzet and Jean-St{\'e}phane Varr{\'e} (2007) Efficient and accurate P-value computation for Position Weight Matrices.
           |  ^
    checkRd: (-1) calculatePvalue.Rd:7: Lost braces
         7 | H{\'e}l{\`e}ne Touzet and Jean-St{\'e}phane Varr{\'e} (2007) Efficient and accurate P-value computation for Position Weight Matrices.
           |        ^
    checkRd: (-1) calculatePvalue.Rd:7: Lost braces
         7 | H{\'e}l{\`e}ne Touzet and Jean-St{\'e}phane Varr{\'e} (2007) Efficient and accurate P-value computation for Position Weight Matrices.
           |                                  ^
    checkRd: (-1) calculatePvalue.Rd:7: Lost braces
         7 | H{\'e}l{\`e}ne Touzet and Jean-St{\'e}phane Varr{\'e} (2007) Efficient and accurate P-value computation for Position Weight Matrices.
           |                                                 ^
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# mrfDepth

<details>

* Version: 1.0.17
* GitHub: NA
* Source code: https://github.com/cran/mrfDepth
* Date/Publication: 2024-05-24 21:20:02 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::revdep_details(, "mrfDepth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.6Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        libs  19.6Mb
    ```

# msqrob2

<details>

* Version: 1.14.1
* GitHub: https://github.com/statOmics/msqrob2
* Source code: https://github.com/cran/msqrob2
* Date/Publication: 2024-12-23
* Number of recursive dependencies: 198

Run `revdepcheck::revdep_details(, "msqrob2")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.vcovUnscaled’
    ```

*   checking R code for possible problems ... NOTE
    ```
    .noridge_msqrobLmer: no visible binding for global variable ‘w’
    .ridge_msqrobLmer: no visible binding for global variable ‘w’
    Undefined global functions or variables:
      w
    ```

# mult.latent.reg

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/mult.latent.reg
* Date/Publication: 2024-11-15 15:50:02 UTC
* Number of recursive dependencies: 12

Run `revdepcheck::revdep_details(, "mult.latent.reg")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘npmlreg’
    ```

# MultiBD

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MultiBD
* Date/Publication: 2016-12-05 18:28:46
* Number of recursive dependencies: 74

Run `revdepcheck::revdep_details(, "MultiBD")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SIR-MCMC.Rmd’ using rmarkdown
    --- finished re-building ‘SIR-MCMC.Rmd’
    
    --- re-building ‘SIRtrans.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'SIRtrans.Rnw' failed with diagnostics:
    unable to run pdflatex on 'SIRtrans.tex'
    LaTeX errors:
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

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

# multistateQTL

<details>

* Version: 1.2.0
* GitHub: https://github.com/dunstone-a/multistateQTL
* Source code: https://github.com/cran/multistateQTL
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 143

Run `revdepcheck::revdep_details(, "multistateQTL")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘Rtsne’ in Rd xrefs
    ```

# muscat

<details>

* Version: 1.20.0
* GitHub: https://github.com/HelenaLC/muscat
* Source code: https://github.com/cran/muscat
* Date/Publication: 2024-11-06
* Number of recursive dependencies: 242

Run `revdepcheck::revdep_details(, "muscat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.2Mb
      sub-directories of 1Mb or more:
        doc   7.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    pbHeatmap: no visible binding for global variable ‘gene’
    pbHeatmap: no visible binding for global variable ‘p_adj.loc’
    pbHeatmap: no visible binding for global variable ‘logFC’
    Undefined global functions or variables:
      gene logFC p_adj.loc
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘cowplot’ ‘tidyr’
    ```

# muscData

<details>

* Version: 1.20.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2024-11-05
* Number of recursive dependencies: 279

Run `revdepcheck::revdep_details(, "muscData")` for more info

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

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘SingleCellExperiment’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# mvgam

<details>

* Version: 1.1.3
* GitHub: https://github.com/nicholasjclark/mvgam
* Source code: https://github.com/cran/mvgam
* Date/Publication: 2024-09-04 03:40:02 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::revdep_details(, "mvgam")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    
    Packages which this enhances but not available for checking:
      'gratia', 'tidyr'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        R      1.9Mb
        doc    2.0Mb
        libs   2.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cmdstanr’
    Unknown package ‘patchwork’ in Rd xrefs
    ```

# mvpd

<details>

* Version: 0.0.4
* GitHub: https://github.com/swihart/mvpd
* Source code: https://github.com/cran/mvpd
* Date/Publication: 2023-09-03 14:20:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::revdep_details(, "mvpd")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) dmvss.Rd:92: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dmvss.Rd:93: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dmvss.Rd:94: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dmvss.Rd:95: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dmvss.Rd:96: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pmvss.Rd:97: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pmvss.Rd:98: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pmvss.Rd:99: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pmvss.Rd:100: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pmvss.Rd:101: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# mzipmed

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/mzipmed
* Date/Publication: 2023-07-07 16:30:02 UTC
* Number of recursive dependencies: 31

Run `revdepcheck::revdep_details(, "mzipmed")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) mzipmed_data.Rd:22: Lost braces; missing escapes or markup?
        22 | @source {Simulated to serve as an example}
           |         ^
    ```

# NanoStringDiff

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 48

Run `revdepcheck::revdep_details(, "NanoStringDiff")` for more info

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

*   checking re-building of vignette outputs ... WARNING
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

*   checking Rd contents ... NOTE
    ```
    Auto-generated content requiring editing in Rd file 'NanoStringDiff-package.Rd':
      \references: ‘This optional section can contain literature or other refere...’
      \seealso: ‘Optional links to other man pages’
      \examples: ‘\dontrun{      ## Optional simple examples of the most impor...’
    ```

*   checking installed files from ‘inst/doc’ ... NOTE
    ```
    The following files look like leftovers/mistakes:
      ‘NanoStringDiff.log’
    Please remove them from your package.
    ```

# nearBynding

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 119

Run `revdepcheck::revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        extdata   6.9Mb
    ```

# netZooR

<details>

* Version: 1.10.0
* GitHub: https://github.com/netZoo/netZooR
* Source code: https://github.com/cran/netZooR
* Date/Publication: 2024-10-30
* Number of recursive dependencies: 231

Run `revdepcheck::revdep_details(, "netZooR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      [1] 187
      [1] 188
      [1] 189
      [1] 190
      [1] 191
      [1] 192
    ...
      Backtrace:
          ▆
       1. └─netZooR::pandaPy(...) at test-panda.R:29:4
       2.   └─reticulate::source_python(pandapath, convert = TRUE)
       3.     └─reticulate::py_run_file(file, local = FALSE, convert = convert)
       4.       └─reticulate:::py_run_file_impl(file, local, convert)
      
      [ FAIL 1 | WARN 9 | SKIP 1 | PASS 48 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data      1.5Mb
        extdata   2.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘matrixcalc’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    estimatePenaltyParameters: no visible global function definition for
      ‘matrix.trace’
    runEgret: no visible binding for global variable ‘NA12878’
    show,panda: no visible global function definition for ‘print.panda’
    Undefined global functions or variables:
      NA12878 matrix.trace print.panda
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) condorCluster.Rd:39: Lost braces; missing escapes or markup?
        39 | in the modularity for each iteration. Default is min(10^{-4},1/(number of edges)),
           |                                                         ^
    checkRd: (-1) dragon.Rd:29: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dragon.Rd:30: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dragon.Rd:31: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dragon.Rd:32: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dragon.Rd:33: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) dragon.Rd:34: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# nn2poly

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/nn2poly
* Date/Publication: 2024-11-11 15:20:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::revdep_details(, "nn2poly")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 12.6Mb
      sub-directories of 1Mb or more:
        libs  12.0Mb
    ```

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++14: please drop specification unless essential
    ```

# nnSVG

<details>

* Version: 1.10.0
* GitHub: https://github.com/lmweber/nnSVG
* Source code: https://github.com/cran/nnSVG
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 150

Run `revdepcheck::revdep_details(, "nnSVG")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# NormalyzerDE

<details>

* Version: 1.24.0
* GitHub: https://github.com/ComputationalProteomics/NormalyzerDE
* Source code: https://github.com/cran/NormalyzerDE
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 134

Run `revdepcheck::revdep_details(, "NormalyzerDE")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'NormalyzerEvaluationResults.Rd':
    NormalyzerEvaluationResults
      Code: function(nr, categoricalAnova = TRUE)
      Docs: function(nr)
      Argument names in code not in docs:
        categoricalAnova
    NormalyzerEvaluationResults
      Code: function(nr, categoricalAnova = TRUE)
      Docs: function(nr)
      Argument names in code not in docs:
        categoricalAnova
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'calculateFeatureCV.Rd':
      ‘sampleReplicateGroups’
    
    Documented arguments not in \usage in Rd file 'verifySummarizedExperiment.Rd':
      ‘fullMatrix’ ‘designMatrix’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# numbat

<details>

* Version: 1.4.2
* GitHub: https://github.com/kharchenkolab/numbat
* Source code: https://github.com/cran/numbat
* Date/Publication: 2024-09-20 12:20:07 UTC
* Number of recursive dependencies: 141

Run `revdepcheck::revdep_details(, "numbat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
        libs   1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘optparse’ ‘vcfR’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# omicplotR

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/omicplotR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 105

Run `revdepcheck::revdep_details(, "omicplotR")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘ALDEx2’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# omicsPrint

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/omicsPrint
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 141

Run `revdepcheck::revdep_details(, "omicsPrint")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘omicsPrint.Rmd’ using rmarkdown
    trying URL 'ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE100nnn/GSE100940/matrix/GSE100940_series_matrix.txt.gz'
    
    Quitting from lines 251-261 [downloadretry] (omicsPrint.Rmd)
    Error: processing vignette 'omicsPrint.Rmd' failed with diagnostics:
    cannot open URL 'ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE100nnn/GSE100940/matrix/GSE100940_series_matrix.txt.gz'
    --- failed re-building ‘omicsPrint.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘omicsPrint.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking LazyData ... WARNING
    ```
      LazyData DB of 7.3 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        data   7.4Mb
        doc    1.3Mb
    ```

# omicsViewer

<details>

* Version: 1.10.0
* GitHub: https://github.com/mengchen18/omicsViewer
* Source code: https://github.com/cran/omicsViewer
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 187

Run `revdepcheck::revdep_details(, "omicsViewer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        extdata   4.8Mb
    ```

# OncoBayes2

<details>

* Version: 0.8-9
* GitHub: NA
* Source code: https://github.com/cran/OncoBayes2
* Date/Publication: 2023-07-20 18:40:05 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "OncoBayes2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 82.6Mb
      sub-directories of 1Mb or more:
        libs  80.6Mb
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    code for methods in class “Rcpp_model_base” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_model_base” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_stan_fit” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_stan_fit” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_rstantools_model_blrm_exnex” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_rstantools_model_blrm_exnex” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) summary.blrm_trial.Rd:20: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:21: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:22: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:23: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:24: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:25: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:26: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:28-29: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:30: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:31-33: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) summary.blrm_trial.Rd:34: Lost braces in \itemize; meant \describe ?
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# OptHoldoutSize

<details>

* Version: 0.1.0.0
* GitHub: NA
* Source code: https://github.com/cran/OptHoldoutSize
* Date/Publication: 2022-02-18 12:20:02 UTC
* Number of recursive dependencies: 35

Run `revdepcheck::revdep_details(, "OptHoldoutSize")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) optimal_holdout_size.Rd:30: Lost braces; missing escapes or markup?
        30 | List/data frame of dimension (number of evaluations) x (4 + n_par) containing input data and results. Columns \code{size} and \code{cost} are optimal holdout size and cost at this size respectively. Parameters N, k1, theta.1, theta.2,...,theta.{n_par} are input data.
           |                                                                                                                                                                                                                                                     ^
    ```

# OptimalDesign

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/OptimalDesign
* Date/Publication: 2019-12-02 08:50:07 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::revdep_details(, "OptimalDesign")` for more info

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

* Version: 1.24.0
* GitHub: https://github.com/gagneurlab/OUTRIDER
* Source code: https://github.com/cran/OUTRIDER
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 202

Run `revdepcheck::revdep_details(, "OUTRIDER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘OUTRIDER.Rnw’ using knitr
    The magick package is required to crop "figure/deVsOutlier-1.png" but not available.
    The magick package is required to crop "figure/quick_guide-1.png" but not available.
    The magick package is required to crop "figure/filtering-1.png" but not available.
    The magick package is required to crop "figure/filtering-2.png" but not available.
    The magick package is required to crop "figure/plotting_between_sample_correlations-1.png" but not available.
    The magick package is required to crop "figure/plotting_between_sample_correlations-2.png" but not available.
    The magick package is required to crop "figure/controlling_for_confounders-1.png" but not available.
    The magick package is required to crop "figure/aberrantperSample-1.png" but not available.
    ...
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘OUTRIDER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘OUTRIDER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc    2.4Mb
        libs   3.1Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: 'ggbio:::.buildFacetsFromArgs'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) results.Rd:48-50: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:51-52: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:53-54: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:55: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:56-57: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:58-60: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:61-62: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:63-64: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:65-66: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:67: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) results.Rd:68-71: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# pandaR

<details>

* Version: 1.38.0
* GitHub: NA
* Source code: https://github.com/cran/pandaR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 59

Run `revdepcheck::revdep_details(, "pandaR")` for more info

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
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        data   9.0Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in Rd file 'summary.panda.Rd':
      ‘summary.panda’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# pARI

<details>

* Version: 1.1.2
* GitHub: https://github.com/angeella/pARI
* Source code: https://github.com/cran/pARI
* Date/Publication: 2024-09-06 18:50:06 UTC
* Number of recursive dependencies: 33

Run `revdepcheck::revdep_details(, "pARI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

# PathoStat

<details>

* Version: 1.32.0
* GitHub: https://github.com/mani2012/PathoStat
* Source code: https://github.com/cran/PathoStat
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 197

Run `revdepcheck::revdep_details(, "PathoStat")` for more info

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

* Version: 1.98.0
* GitHub: https://github.com/hredestig/pcamethods
* Source code: https://github.com/cran/pcaMethods
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 32

Run `revdepcheck::revdep_details(, "pcaMethods")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘ade4’ in Rd xrefs
    ```

# penppml

<details>

* Version: 0.2.3
* GitHub: https://github.com/tomzylkin/penppml
* Source code: https://github.com/cran/penppml
* Date/Publication: 2023-09-08 14:10:02 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::revdep_details(, "penppml")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        libs  11.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fixest’
      All declared Imports should be used.
    ```

# PepsNMR

<details>

* Version: 1.24.0
* GitHub: https://github.com/ManonMartin/PepsNMR
* Source code: https://github.com/cran/PepsNMR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 65

Run `revdepcheck::revdep_details(, "PepsNMR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) Normalization.Rd:47: Escaped LaTeX specials: \&
    ```

# phosphonormalizer

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/phosphonormalizer
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 44

Run `revdepcheck::revdep_details(, "phosphonormalizer")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/Pigengene
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 189

Run `revdepcheck::revdep_details(, "Pigengene")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Pigengene_inference.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'Pigengene_inference.Rnw' failed with diagnostics:
    unable to run pdflatex on 'Pigengene_inference.tex'
    LaTeX errors:
    ! LaTeX Error: File `nowidow.sty' not found.
    
    ...
    l.197 \RequirePackage
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) draw.bn.Rd:47: Lost braces
        47 |      rename the nodes name.  See code{rename.node}.}
           |                                      ^
    checkRd: (-1) eigengenes33.Rd:21-22: Lost braces
        21 |  {A 202 by 34 matrix. 
           |  ^
    checkRd: (-1) eigengenes33.Rd:25: Lost braces; missing escapes or markup?
        25 |  {A 164 by 34 matrix for MDS cases with columns similar to aml.}
           |  ^
    checkRd: (-1) eigengenes33.Rd:28: Lost braces; missing escapes or markup?
    ...
    checkRd: (-1) pigengene-class.Rd:45-47: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:48-49: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:50-52: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:53-55: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:56-57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:58-59: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:60-63: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:64-68: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:73-76: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pigengene-class.Rd:77-79: Lost braces in \itemize; meant \describe ?
    ```

# pipeComp

<details>

* Version: 1.16.0
* GitHub: https://github.com/plger/pipeComp
* Source code: https://github.com/cran/pipeComp
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 212

Run `revdepcheck::revdep_details(, "pipeComp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc   5.0Mb
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

* Version: 0.4.3
* GitHub: https://github.com/hturner/PlackettLuce
* Source code: https://github.com/cran/PlackettLuce
* Date/Publication: 2023-06-16 14:30:02 UTC
* Number of recursive dependencies: 181

Run `revdepcheck::revdep_details(, "PlackettLuce")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) adjacency.Rd:27: Lost braces; missing escapes or markup?
        27 | item j. For example, in the ranking \\{1\\} > \\{3, 4\\} > \\{2\\},
           |                                       ^
    checkRd: (-1) adjacency.Rd:27: Lost braces; missing escapes or markup?
        27 | item j. For example, in the ranking \\{1\\} > \\{3, 4\\} > \\{2\\},
           |                                                 ^
    checkRd: (-1) adjacency.Rd:27: Lost braces; missing escapes or markup?
        27 | item j. For example, in the ranking \\{1\\} > \\{3, 4\\} > \\{2\\},
           |                                                              ^
    checkRd: (-1) rankings.Rd:127: Lost braces; missing escapes or markup?
       127 | rank skipped. For example {1, 0, 2, 1}, ranks the first and fourth items in
           |                           ^
    ```

# pmp

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/pmp
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "pmp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    6.0Mb
    ```

# PolySTest

<details>

* Version: 1.0.2
* GitHub: https://github.com/computproteomics/PolySTest
* Source code: https://github.com/cran/PolySTest
* Date/Publication: 2024-11-28
* Number of recursive dependencies: 142

Run `revdepcheck::revdep_details(, "PolySTest")` for more info

</details>

## In both

*   checking package subdirectories ... WARNING
    ```
    Invalid citation information in ‘inst/CITATION’:
      Error in parse(con): 11:41: unexpected ','
      10:          year="2020",
      11:          doi="10.1074/mcp.RA119.001777"),
                                                  ^
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc     4.3Mb
        shiny   1.4Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    perm_unpaired: no visible binding for global variable ‘NumTests’
    permtest_paired: no visible binding for global variable ‘NumTests’
    Undefined global functions or variables:
      NumTests
    ```

# priorsense

<details>

* Version: 1.0.4
* GitHub: NA
* Source code: https://github.com/cran/priorsense
* Date/Publication: 2024-11-01 12:30:02 UTC
* Number of recursive dependencies: 112

Run `revdepcheck::revdep_details(, "priorsense")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'cmdstanr', 'iwmm'
    ```

# PRONE

<details>

* Version: 1.0.0
* GitHub: https://github.com/lisiarend/PRONE
* Source code: https://github.com/cran/PRONE
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 285

Run `revdepcheck::revdep_details(, "PRONE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        doc   10.4Mb
        help   1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘NormalyzerDE:::calculateAvgMadMem’
      ‘NormalyzerDE:::calculateAvgReplicateVariation’
      ‘NormalyzerDE:::calculatePercentageAvgDiffInMat’
      ‘NormalyzerDE:::calculateReplicateCV’
      ‘NormalyzerDE:::calculateSummarizedCorrelationVector’
      See the note in ?`:::` about the use of this operator.
    ```

# ProteoDisco

<details>

* Version: 1.12.0
* GitHub: https://github.com/ErasmusMC-CCBC/ProteoDisco
* Source code: https://github.com/cran/ProteoDisco
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 186

Run `revdepcheck::revdep_details(, "ProteoDisco")` for more info

</details>

## In both

*   checking whether package ‘ProteoDisco’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘dplyr::rename’ by ‘plyr::rename’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::count’ by ‘plyr::count’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::failwith’ by ‘plyr::failwith’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::id’ by ‘plyr::id’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::summarize’ by ‘plyr::summarize’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::summarise’ by ‘plyr::summarise’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::mutate’ by ‘plyr::mutate’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::desc’ by ‘plyr::desc’ when loading ‘ProteoDisco’
      Warning: replacing previous import ‘dplyr::arrange’ by ‘plyr::arrange’ when loading ‘ProteoDisco’
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) checkProteotypicFragments.Rd:25: Lost braces; missing escapes or markup?
        25 | \item{x}{({ProteoDiscography}): ProteoDiscography object which stores the annotation and genomic sequences.}
           |           ^
    checkRd: (-1) checkProteotypicFragments.Rd:39: Lost braces; missing escapes or markup?
        39 | {ProteoDiscography} with an additional column specifying the number of proteotypic fragments per record.
           | ^
    checkRd: (-1) generateJunctionModels.Rd:36: Lost braces; missing escapes or markup?
        36 | of the given {ProteoDiscography}; strand-information is taken into account. If no strand-information is given, the nearest (or overlapping) known
           |              ^
    checkRd: (-1) importGenomicVariants.MAF.Rd:17: Lost braces; missing escapes or markup?
    ...
           |                           ^
    checkRd: (-1) importTranscriptSequences.Rd:15: Lost braces; missing escapes or markup?
        15 | \item{ProteoDiscography}{({ProteoDiscography}): ProteoDiscography object which stores the annotation and genomic sequences.}
           |                           ^
    checkRd: (-1) incorporateGenomicVariants.Rd:34: Lost braces; missing escapes or markup?
        34 | \code{incorporateMutations} Incorporates SNV, MNV and InDels present in the {ProteoDiscography} on the transcripts.
           |                                                                             ^
    checkRd: (-1) incorporateGenomicVariants.Rd:17: Lost braces; missing escapes or markup?
        17 | \item{ProteoDiscography}{({ProteoDiscography}): ProteoDiscography object which stores the annotation and genomic sequences.}
           |                           ^
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error loading dataset 'ProteoDiscographyExample.hg19':
       Error in h(simpleError(msg, call)) : 
        error in evaluating the argument 'x' in selecting a method for function 'seqlevels': UCSC library operation failed
      
    ```

# ProteoMM

<details>

* Version: 1.24.0
* GitHub: NA
* Source code: https://github.com/cran/ProteoMM
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "ProteoMM")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# QDNAseq

<details>

* Version: 1.42.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 94

Run `revdepcheck::revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    ...
    l.197 \RequirePackage
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

* Version: 1.16.0
* GitHub: https://github.com/RforMassSpectrometry/QFeatures
* Source code: https://github.com/cran/QFeatures
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 173

Run `revdepcheck::revdep_details(, "QFeatures")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in Rd file 'QFeatures-aggregate.Rd':
      ‘sparseMatrix’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc   5.2Mb
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

* Version: 0.3.9
* GitHub: NA
* Source code: https://github.com/cran/RaceID
* Date/Publication: 2024-11-24 22:50:02 UTC
* Number of recursive dependencies: 142

Run `revdepcheck::revdep_details(, "RaceID")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        data   2.1Mb
        doc    6.6Mb
        libs   2.3Mb
    ```

# rADA

<details>

* Version: 1.1.9
* GitHub: NA
* Source code: https://github.com/cran/rADA
* Date/Publication: 2021-03-23 19:40:06 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "rADA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘rada_vignette.Rmd’ using knitr
    
    Quitting from lines 62-70 [unnamed-chunk-2] (rada_vignette.Rmd)
    Error: processing vignette 'rada_vignette.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘rada_vignette.Rmd’
    
    --- re-building ‘rada_vignette_supplemental.Rmd’ using knitr
    ...
    Quitting from lines 62-70 [unnamed-chunk-2] (rada_vignette_supplemental.Rmd)
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

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/RadioGx
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 149

Run `revdepcheck::revdep_details(, "RadioGx")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 52 marked UTF-8 strings
    ```

# RBesT

<details>

* Version: 1.7-4
* GitHub: https://github.com/Novartis/RBesT
* Source code: https://github.com/cran/RBesT
* Date/Publication: 2024-11-21 14:10:03 UTC
* Number of recursive dependencies: 142

Run `revdepcheck::revdep_details(, "RBesT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 101.5Mb
      sub-directories of 1Mb or more:
        libs  99.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# regsem

<details>

* Version: 1.9.5
* GitHub: https://github.com/Rjacobucci/regsem
* Source code: https://github.com/cran/regsem
* Date/Publication: 2023-06-02 09:00:02 UTC
* Number of recursive dependencies: 163

Run `revdepcheck::revdep_details(, "regsem")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# reservr

<details>

* Version: 0.0.3
* GitHub: https://github.com/AshesITR/reservr
* Source code: https://github.com/cran/reservr
* Date/Publication: 2024-06-24 16:40:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::revdep_details(, "reservr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.7Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.2Mb
        libs  15.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# RGCCA

<details>

* Version: 3.0.3
* GitHub: https://github.com/rgcca-factory/RGCCA
* Source code: https://github.com/cran/RGCCA
* Date/Publication: 2023-12-11 21:00:06 UTC
* Number of recursive dependencies: 190

Run `revdepcheck::revdep_details(, "RGCCA")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘RGCCA.Rmd’ using rmarkdown
    ! LaTeX Error: File `ifsym.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'RGCCA.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/RGCCA/new/RGCCA.Rcheck/vign_test/RGCCA/vignettes/RGCCA.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See RGCCA.log for more info.
    --- failed re-building ‘RGCCA.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘RGCCA.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# RiboDiPA

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/RiboDiPA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "RiboDiPA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   2.9Mb
        doc    1.5Mb
        libs   1.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .pMappingChr: no visible global function definition for
      ‘pcoverageByTranscript’
    Undefined global functions or variables:
      pcoverageByTranscript
    ```

# RJcluster

<details>

* Version: 3.2.4
* GitHub: NA
* Source code: https://github.com/cran/RJcluster
* Date/Publication: 2022-02-14 21:30:02 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::revdep_details(, "RJcluster")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   7.1Mb
    ```

# RNAmodR

<details>

* Version: 1.20.0
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 189

Run `revdepcheck::revdep_details(, "RNAmodR")` for more info

</details>

## In both

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ModInosine-functions.Rd:64-66: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ModInosine-functions.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine-functions.Rd:45: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine-functions.Rd:46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine-functions.Rd:47-49: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine-functions.Rd:50: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine-functions.Rd:51: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) ModInosine.Rd:39-40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ModInosine.Rd:41-42: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ModInosine.Rd:43-44: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) plotData.Rd:122-124: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotData.Rd:125-127: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotData.Rd:128-129: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) plotData.Rd:130-131: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) subsetByCoord.Rd:99-105: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) subsetByCoord.Rd:106-107: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) subsetByCoord.Rd:108-110: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) subsetByCoord.Rd:111-113: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) subsetByCoord.Rd:124-125: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) subsetByCoord.Rd:128-129: Lost braces in \itemize; \value handles \item{}{} directly
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'RNAmodR-internals.Rd':
      ‘object’ ‘range’ ‘data’ ‘modType’ ‘scoreFun’ ‘source’ ‘type’ ‘j’
      ‘value’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# RnBeads

<details>

* Version: 2.24.0
* GitHub: NA
* Source code: https://github.com/cran/RnBeads
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 274

Run `revdepcheck::revdep_details(, "RnBeads")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘RnBeads.Rnw’ using Sweave
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'RnBeads.Rnw' failed with diagnostics:
    unable to run pdflatex on 'RnBeads.tex'
    LaTeX errors:
    ! LaTeX Error: File `vmargin.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
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
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        R     3.2Mb
        doc   4.1Mb
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) as.RnBeadRawSet.Rd:9: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) as.RnBeadRawSet.Rd:10: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) as.RnBeadRawSet.Rd:11: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReport.Rd:50-51: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReport.Rd:52-54: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReport.Rd:55-57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReport.Rd:58-59: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReport.Rd:60-61: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReportPlot.Rd:48: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) createReportPlot.Rd:49: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) createReportPlot.Rd:50: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.combine.seq.Rd:26-27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.combine.seq.Rd:28: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.combine.seq.Rd:29: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.combine.seq.Rd:30: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.execute.export.csv.Rd:40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.execute.export.csv.Rd:41-43: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.execute.export.csv.Rd:44: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.execute.export.csv.Rd:45: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) rnb.execute.export.csv.Rd:46: Lost braces in \itemize; meant \describe ?
    ```

# robustlm

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/robustlm
* Date/Publication: 2021-03-22 15:40:02 UTC
* Number of recursive dependencies: 28

Run `revdepcheck::revdep_details(, "robustlm")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rpm

<details>

* Version: 0.7-3
* GitHub: https://github.com/handcock/rpm
* Source code: https://github.com/cran/rpm
* Date/Publication: 2024-04-18 08:20:03 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::revdep_details(, "rpm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        libs  12.9Mb
    ```

# rsvddpd

<details>

* Version: 1.0.0
* GitHub: https://github.com/subroy13/rsvddpd
* Source code: https://github.com/cran/rsvddpd
* Date/Publication: 2021-10-27 14:30:02 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::revdep_details(, "rsvddpd")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# rtrend

<details>

* Version: 0.1.5
* GitHub: https://github.com/rpkgs/rtrend
* Source code: https://github.com/cran/rtrend
* Date/Publication: 2024-01-11 03:30:02 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::revdep_details(, "rtrend")` for more info

</details>

## In both

*   checking whether startup messages can be suppressed ... NOTE
    ```
    code for methods in class “Rcpp_SpatCategories” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatCategories” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatDataFrame” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatDataFrame” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatExtent” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatExtent” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatFactor” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatFactor” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatGraph” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatGraph” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    ...
    code for methods in class “Rcpp_SpatTime_v” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVector” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVector” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorCollection” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorCollection” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorProxy” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_SpatVectorProxy” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
    ```

# samr

<details>

* Version: 3.0
* GitHub: NA
* Source code: https://github.com/cran/samr
* Date/Publication: 2018-10-16 10:00:03 UTC
* Number of recursive dependencies: 43

Run `revdepcheck::revdep_details(, "samr")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) SAM.Rd:67: Escaped LaTeX specials: \$
    checkRd: (-1) samr.Rd:59: Escaped LaTeX specials: \$
    checkRd: (-1) samr.Rd:84: Escaped LaTeX specials: \# \$
    checkRd: (-1) samr.Rd:88: Escaped LaTeX specials: \$
    checkRd: (-1) samr.Rd:92: Escaped LaTeX specials: \$
    checkRd: (-1) samr.Rd:97: Escaped LaTeX specials: \#
    checkRd: (-1) samr.assess.samplesize.plot.Rd:12: Escaped LaTeX specials: \#
    ```

# SANvi

<details>

* Version: 0.1.1
* GitHub: https://github.com/fradenti/SANvi
* Source code: https://github.com/cran/SANvi
* Date/Publication: 2024-05-15 11:40:06 UTC
* Number of recursive dependencies: 15

Run `revdepcheck::revdep_details(, "SANvi")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
    ```

# scDataviz

<details>

* Version: 1.16.0
* GitHub: https://github.com/kevinblighe/scDataviz
* Source code: https://github.com/cran/scDataviz
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 188

Run `revdepcheck::revdep_details(, "scDataviz")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc   6.1Mb
    ```

# scDesign3

<details>

* Version: 1.4.0
* GitHub: https://github.com/SONGDONGYUAN1994/scDesign3
* Source code: https://github.com/cran/scDesign3
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 140

Run `revdepcheck::revdep_details(, "scDesign3")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# scDHA

<details>

* Version: 1.2.2
* GitHub: https://github.com/duct317/scDHA
* Source code: https://github.com/cran/scDHA
* Date/Publication: 2024-04-02 22:42:03 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::revdep_details(, "scDHA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data   3.2Mb
        libs   4.4Mb
    ```

# scISR

<details>

* Version: 0.1.1
* GitHub: https://github.com/duct317/scISR
* Source code: https://github.com/cran/scISR
* Date/Publication: 2022-06-30 06:20:08 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::revdep_details(, "scISR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘markdown’
      All declared Imports should be used.
    ```

# scmap

<details>

* Version: 1.28.0
* GitHub: https://github.com/hemberg-lab/scmap
* Source code: https://github.com/cran/scmap
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "scmap")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘scmap.Rmd’ using rmarkdown
    
    Quitting from lines 15-17 [knitr-options] (scmap.Rmd)
    Error: processing vignette 'scmap.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘scmap.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘scmap.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
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

* Version: 1.8.0
* GitHub: https://github.com/andreaskapou/scMET
* Source code: https://github.com/cran/scMET
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 115

Run `revdepcheck::revdep_details(, "scMET")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 70.7Mb
      sub-directories of 1Mb or more:
        doc    3.7Mb
        libs  65.7Mb
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    code for methods in class “Rcpp_model_base” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_model_base” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_stan_fit” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_stan_fit” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_rstantools_model_scmet” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    code for methods in class “Rcpp_rstantools_model_scmet” was not checked for suspicious field assignments (recommended package ‘codetools’ not available?)
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) scmet_differential.Rd:70: Lost braces; missing escapes or markup?
        70 | calibration is performed, and `alpha_{E}`` is set to
           |                                      ^
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# scMultiSim

<details>

* Version: 1.2.0
* GitHub: https://github.com/ZhangLabGT/scMultiSim
* Source code: https://github.com/cran/scMultiSim
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 140

Run `revdepcheck::revdep_details(, "scMultiSim")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/shiny-app/www/.prettierrc
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data   3.7Mb
        doc    1.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .SpatialGrid: no visible global function definition for ‘new’
    .amplifyOneCell: no visible binding for global variable ‘len2nfrag’
    .atacSeq: no visible binding for global variable ‘dens_nonzero’
    .check_opt: no visible binding for global variable ‘val’
    .check_opt: no visible binding for global variable ‘checker’
    .check_opt: no visible binding for global variable ‘desc’
    .check_opt: no visible binding for global variable ‘check’
    .check_opt: no visible binding for global variable ‘err_msg’
    .check_opt: no visible global function definition for ‘check’
    .continuousCIFParamNormal : <anonymous>: no visible binding for global
    ...
      path_len paths prcomp regulator rmultinom rowVars target tips to
      total_ncell val value vx_knn vx_knn2 vx_knn_normalized
      vx_knn_normalized2 vx_normalized vx_normalized2 vx_raw vx_raw2 vy_knn
      vy_knn2 vy_knn_normalized vy_knn_normalized2 vy_normalized
      vy_normalized2 vy_raw vy_raw2 x xend y yend
    Consider adding
      importFrom("methods", "new")
      importFrom("stats", "prcomp", "rmultinom")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# scone

<details>

* Version: 1.30.0
* GitHub: https://github.com/YosefLab/scone
* Source code: https://github.com/cran/scone
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 270

Run `revdepcheck::revdep_details(, "scone")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) estimate_ziber.Rd:57: Lost braces; missing escapes or markup?
        57 | expression rate (Z in {0,1}). Detection conditioned on expression is a 
           |                       ^
    checkRd: (-1) estimate_ziber.Rd:42-43: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:43-44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:44-45: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:47-48: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) estimate_ziber.Rd:48-49: Lost braces in \itemize; \value handles \item{}{} directly
    ...
    checkRd: (-1) score_matrix.Rd:98-99: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) score_matrix.Rd:100-101: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) score_matrix.Rd:76-77: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:77-78: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:78-79: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:80-81: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:81-83: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:83-85: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:85-87: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) score_matrix.Rd:87-88: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# scp

<details>

* Version: 1.16.0
* GitHub: https://github.com/UCLouvain-CBIO/scp
* Source code: https://github.com/cran/scp
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 196

Run `revdepcheck::revdep_details(, "scp")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        doc  11.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MultiAssayExperiment:::.sampleMapFromData’ ‘QFeatures:::.get_Hits’
      ‘QFeatures:::.normIndex’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘dplyr’
    ```

# scPCA

<details>

* Version: 1.20.0
* GitHub: https://github.com/PhilBoileau/scPCA
* Source code: https://github.com/cran/scPCA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 169

Run `revdepcheck::revdep_details(, "scPCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DelayedArray’ ‘matrixStats’
      All declared Imports should be used.
    ```

# scpoisson

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/scpoisson
* Date/Publication: 2022-08-17 06:50:02 UTC
* Number of recursive dependencies: 202

Run `revdepcheck::revdep_details(, "scpoisson")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) HclustDepart.Rd:23: Lost braces; missing escapes or markup?
        23 | \item{\code{res2}}: {a data frame contains two columns: names (cell names) and clusters (cluster label)}
           |                     ^
    checkRd: (-1) HclustDepart.Rd:24-26: Lost braces
        24 | \item{\code{sigclust_p}}: {a matrix with cells to cluster as rows, split index as columns,
           |                           ^
    checkRd: (-1) HclustDepart.Rd:27-29: Lost braces
        27 | \item{\code{sigclust_z}}: {a matrix with cells to cluster as rows, split index as columns,
           |                           ^
    checkRd: (-1) LouvainDepart.Rd:38: Lost braces; missing escapes or markup?
    ...
           |                  ^
    checkRd: (-1) sigp.Rd:21: Lost braces
        21 | \item{\code{shc_result}}: {a \code{shc} S3-object as defined in sigclust2 package}
           |                           ^
    checkRd: (-1) sigp.Rd:22: Lost braces; missing escapes or markup?
        22 | \item{\code{clust2}}: {a vector with group index for each cell}
           |                       ^
    checkRd: (-1) sigp.Rd:23: Lost braces; missing escapes or markup?
        23 | \item{\code{clust_dat}}: {a matrix of data representation used as input for hierarchical clustering}
           |                          ^
    ```

# sctransform

<details>

* Version: 0.4.1
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2023-10-19 04:40:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# sechm

<details>

* Version: 1.14.0
* GitHub: https://github.com/plger/sechm
* Source code: https://github.com/cran/sechm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 93

Run `revdepcheck::revdep_details(, "sechm")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    homogenizeDEA: no visible global function definition for ‘head’
    homogenizeDEA: no visible global function definition for ‘p.adjust’
    setRowAttr : <anonymous>: no visible global function definition for
      ‘setNames’
    Undefined global functions or variables:
      head p.adjust setNames
    Consider adding
      importFrom("stats", "p.adjust", "setNames")
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ggplot2’
    ```

# seeds

<details>

* Version: 0.9.1
* GitHub: https://github.com/Newmi1988/seeds
* Source code: https://github.com/cran/seeds
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 89

Run `revdepcheck::revdep_details(, "seeds")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsbml’
    ```

# seqArchR

<details>

* Version: 1.10.0
* GitHub: https://github.com/snikumbh/seqArchR
* Source code: https://github.com/cran/seqArchR
* Date/Publication: 2024-12-23
* Number of recursive dependencies: 121

Run `revdepcheck::revdep_details(, "seqArchR")` for more info

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
    Error in py_run_file_impl(file, local, convert): ModuleNotFoundError: No module named 'sklearn'
    Run `reticulate::py_last_error()` for details.
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
      ── Error ('test_seqArchR_main.R:149:5'): seqArchR (cv) works when timeFlag is FALSE ──
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

* Version: 5.1.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2024-05-10 17:23:17 UTC
* Number of recursive dependencies: 266

Run `revdepcheck::revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'BPCells', 'presto'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.0Mb
      sub-directories of 1Mb or more:
        R      1.7Mb
        libs  13.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SIAMCAT

<details>

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/SIAMCAT
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 203

Run `revdepcheck::revdep_details(, "SIAMCAT")` for more info

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
      installed size is 23.7Mb
      sub-directories of 1Mb or more:
        doc      18.6Mb
        extdata   2.1Mb
        help      1.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ranger’
    ```

# SICtools

<details>

* Version: 1.36.0
* GitHub: NA
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 51

Run `revdepcheck::revdep_details(, "SICtools")` for more info

</details>

## In both

*   checking whether package ‘SICtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      bam.c:128:9: warning: ‘strncpy’ output truncated before terminating nul copying 4 bytes from a string of the same length [-Wstringop-truncation]
      bam_index.c:178:42: warning: overflow in conversion from ‘uint32_t’ {aka ‘unsigned int’} to ‘int32_t’ {aka ‘int’} changes value from ‘last_bin = 4294967295’ to ‘-1’ [-Woverflow]
      razf.c:178:9: warning: ‘strncpy’ output truncated before terminating nul copying 4 bytes from a string of the same length [-Wstringop-truncation]
      errmod.c:79:15: warning: self-comparison always evaluates to false [-Wtautological-compare]
      bam_tview_curses.c:142:18: warning: ‘base’ is used uninitialized [-Wuninitialized]
      md5.c:155:26: warning: argument to ‘sizeof’ in ‘memset’ call is the same expression as the destination; did you mean to dereference it? [-Wsizeof-pointer-memaccess]
      bamcheck.c:1515:15: warning: pointer ‘stats’ used after ‘free’ [-Wuse-after-free]
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

# sigminer

<details>

* Version: 2.3.1
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2024-05-11 08:50:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        extdata   1.0Mb
        help      1.7Mb
        libs      1.6Mb
    ```

# SimBu

<details>

* Version: 1.8.0
* GitHub: https://github.com/omnideconv/SimBu
* Source code: https://github.com/cran/SimBu
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "SimBu")` for more info

</details>

## In both

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

# simona

<details>

* Version: 1.4.0
* GitHub: https://github.com/jokergoo/simona
* Source code: https://github.com/cran/simona
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 147

Run `revdepcheck::revdep_details(, "simona")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.3Mb
      sub-directories of 1Mb or more:
        libs  15.5Mb
    ```

# simPop

<details>

* Version: 2.1.3
* GitHub: https://github.com/statistikat/simPop
* Source code: https://github.com/cran/simPop
* Date/Publication: 2024-01-08 10:40:02 UTC
* Number of recursive dependencies: 117

Run `revdepcheck::revdep_details(, "simPop")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        data   2.0Mb
        libs   5.7Mb
    ```

# Single.mTEC.Transcriptomes

<details>

* Version: 1.34.0
* GitHub: NA
* Source code: https://github.com/cran/Single.mTEC.Transcriptomes
* Date/Publication: 2024-10-31
* Number of recursive dependencies: 177

Run `revdepcheck::revdep_details(, "Single.mTEC.Transcriptomes")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘mTECs.Rnw’ using knitr
    The magick package is required to crop "figure/Figure_1C_variableNoMarker-1.png" but not available.
    The magick package is required to crop "figure/Figure_1A_trasvsgenes-1.png" but not available.
    The magick package is required to crop "figure/Figure_Supp1_percentageTRAs-1.png" but not available.
    The magick package is required to crop "figure/Figure_1B_saturation-1.png" but not available.
    The magick package is required to crop "figure/Figure_Supp2_traenrichment-1.png" but not available.
    The magick package is required to crop "figure/Figure_1D1_histogramAire-1.png" but not available.
    The magick package is required to crop "figure/Figure_1D2_histogramAire-1.png" but not available.
    The magick package is required to crop "figure/Figure_1D3_histogramAire-1.png" but not available.
    ...
    l.197 \RequirePackage
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
      installed size is 931.0Mb
      sub-directories of 1Mb or more:
        data  917.7Mb
        doc    13.2Mb
    ```

*   checking Rd metadata ... NOTE
    ```
    Invalid package aliases in Rd file 'Single.mTec.Transcriptomes-package.Rd':
      ‘Single.mTec.Transcriptomes-package’
    ```

# singleCellTK

<details>

* Version: 2.16.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 405

Run `revdepcheck::revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        extdata   1.5Mb
        shiny     3.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# singscore

<details>

* Version: 1.26.0
* GitHub: https://github.com/DavisLaboratory/singscore
* Source code: https://github.com/cran/singscore
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 145

Run `revdepcheck::revdep_details(, "singscore")` for more info

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

# slasso

<details>

* Version: 1.0.0
* GitHub: https://github.com/unina-sfere/slasso
* Source code: https://github.com/cran/slasso
* Date/Publication: 2021-10-15 07:40:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "slasso")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        R      4.5Mb
        libs   1.5Mb
    ```

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppArmadillo’
      All declared Imports should be used.
    ```

# slingshot

<details>

* Version: 2.14.0
* GitHub: https://github.com/kstreet13/slingshot
* Source code: https://github.com/cran/slingshot
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 187

Run `revdepcheck::revdep_details(, "slingshot")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) SlingshotDataSet-class.Rd:76-78: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:79-80: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:81-82: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:83-84: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:85-87: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:88-89: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:93-95: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:96-99: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:100-104: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) SlingshotDataSet-class.Rd:105-112: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) slingParams.Rd:32-33: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:34-36: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:37-38: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:42-44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:45-48: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:49-53: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:54-61: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:62-66: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:67-68: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) slingParams.Rd:68-70: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# SpaNorm

<details>

* Version: 1.0.0
* GitHub: https://github.com/bhuvad/SpaNorm
* Source code: https://github.com/cran/SpaNorm
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 222

Run `revdepcheck::revdep_details(, "SpaNorm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
        doc    3.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotSpatial: no visible binding for global variable ‘x’
    plotSpatial: no visible binding for global variable ‘y’
    plotSpatial: no visible binding for global variable ‘colour’
    plotSpatial: no visible binding for global variable ‘r’
    Undefined global functions or variables:
      colour r x y
    ```

# sparrow

<details>

* Version: 1.12.0
* GitHub: https://github.com/lianos/sparrow
* Source code: https://github.com/cran/sparrow
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 205

Run `revdepcheck::revdep_details(, "sparrow")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        doc       2.1Mb
        extdata   2.1Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking R code for possible problems ... NOTE
    ```
    geneSetsStats: no visible binding for global variable ‘direction’
    Undefined global functions or variables:
      direction
    ```

# SparseArray

<details>

* Version: 1.6.0
* GitHub: https://github.com/Bioconductor/SparseArray
* Source code: https://github.com/cran/SparseArray
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "SparseArray")` for more info

</details>

## Newly fixed

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘SparseArray_objects.Rmd’ using rmarkdown
    
    Quitting from lines 451-456 [unnamed-chunk-30] (SparseArray_objects.Rmd)
    Error: processing vignette 'SparseArray_objects.Rmd' failed with diagnostics:
    HDF5. File accessibility. Unable to open file.
    --- failed re-building ‘SparseArray_objects.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘SparseArray_objects.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking compiled code ... NOTE
    ```
    File ‘SparseArray/libs/SparseArray.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_ReadConnection’,
        ‘Rf_StringFalse’, ‘Rf_StringTrue’, ‘Rf_isBlankString’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# sparseMatrixStats

<details>

* Version: 1.18.0
* GitHub: https://github.com/const-ae/sparseMatrixStats
* Source code: https://github.com/cran/sparseMatrixStats
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 57

Run `revdepcheck::revdep_details(, "sparseMatrixStats")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘SummarizedExperiment’
    ```

# spatzie

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/spatzie
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 192

Run `revdepcheck::revdep_details(, "spatzie")` for more info

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

* Version: 1.30.0
* GitHub: https://github.com/Oshlack/splatter
* Source code: https://github.com/cran/splatter
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 250

Run `revdepcheck::revdep_details(, "splatter")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        doc   9.4Mb
    ```

# SpliceWiz

<details>

* Version: 1.8.0
* GitHub: https://github.com/alexchwong/SpliceWiz
* Source code: https://github.com/cran/SpliceWiz
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 204

Run `revdepcheck::revdep_details(, "SpliceWiz")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.3Mb
      sub-directories of 1Mb or more:
        R      2.3Mb
        doc    6.1Mb
        libs  10.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

# SPOTlight

<details>

* Version: 1.10.0
* GitHub: https://github.com/MarcElosua/SPOTlight
* Source code: https://github.com/cran/SPOTlight
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "SPOTlight")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
    ```

# spqn

<details>

* Version: 1.18.0
* GitHub: https://github.com/hansenlab/spqn
* Source code: https://github.com/cran/spqn
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 78

Run `revdepcheck::revdep_details(, "spqn")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘BiocGenerics’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# stabiliser

<details>

* Version: 1.0.6
* GitHub: NA
* Source code: https://github.com/cran/stabiliser
* Date/Publication: 2023-05-17 11:00:05 UTC
* Number of recursive dependencies: 148

Run `revdepcheck::revdep_details(, "stabiliser")` for more info

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
* Number of recursive dependencies: 56

Run `revdepcheck::revdep_details(, "stapler")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# staRdom

<details>

* Version: 1.1.28
* GitHub: https://github.com/MatthiasPucher/staRdom
* Source code: https://github.com/cran/staRdom
* Date/Publication: 2023-06-16 08:20:02 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::revdep_details(, "staRdom")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) abs_parms.Rd:67: Lost braces; missing escapes or markup?
        67 |    \item $S_{275-295}$ slope between 275 and 295 nm calculated with nonlinear regression
           |             ^
    checkRd: (-1) abs_parms.Rd:68: Lost braces; missing escapes or markup?
        68 |    \item $S_{350-400}$ slope between 350 and 400 nm calculated with nonlinear regression
           |             ^
    checkRd: (-1) abs_parms.Rd:69: Lost braces; missing escapes or markup?
        69 |    \item $S_{300-700}$ slope between 275 and 295 nm calculated with nonlinear regression
           |             ^
    checkRd: (-1) abs_parms.Rd:70: Lost braces; missing escapes or markup?
    ...
           |                         ^
    checkRd: (-1) abs_parms.Rd:72: Lost braces; missing escapes or markup?
        72 |    \item E4:E6 ratio $a_{465}$/$a_{665}$
           |                                   ^
    checkRd: (-1) abs_parms.Rd:73: Lost braces; missing escapes or markup?
        73 |    \item $a_{254}$ absorbance at 254 nm
           |             ^
    checkRd: (-1) abs_parms.Rd:74: Lost braces; missing escapes or markup?
        74 |    \item $a_{300}$ absorbance at 300 nm
           |             ^
    ```

# stm

<details>

* Version: 1.3.7
* GitHub: https://github.com/bstewart/stm
* Source code: https://github.com/cran/stm
* Date/Publication: 2023-12-01 22:30:02 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::revdep_details(, "stm")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘stmVignette.Rnw’ using Sweave
    stm v1.3.7 successfully loaded. See ?stm for help. 
     Papers, resources, and other materials at structuraltopicmodel.com
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'stmVignette.Rnw' failed with diagnostics:
    unable to run pdflatex on 'stmVignette.tex'
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

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   3.2Mb
    ```

# summarytools

<details>

* Version: 1.0.1
* GitHub: https://github.com/dcomtois/summarytools
* Source code: https://github.com/cran/summarytools
* Date/Publication: 2022-05-20 07:30:05 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::revdep_details(, "summarytools")` for more info

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

# SuperCell

<details>

* Version: 1.0.1
* GitHub: https://github.com/GfellerLab/SuperCell
* Source code: https://github.com/cran/SuperCell
* Date/Publication: 2024-10-25 11:30:02 UTC
* Number of recursive dependencies: 252

Run `revdepcheck::revdep_details(, "SuperCell")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘velocyto.R’
    ```

# surveyPrev

<details>

* Version: 1.0.0
* GitHub: https://github.com/richardli/surveyPrev
* Source code: https://github.com/cran/surveyPrev
* Date/Publication: 2024-04-10 19:50:02 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::revdep_details(, "surveyPrev")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data   3.0Mb
        doc    2.5Mb
    ```

# susieR

<details>

* Version: 0.12.35
* GitHub: https://github.com/stephenslab/susieR
* Source code: https://github.com/cran/susieR
* Date/Publication: 2023-02-17 17:50:02 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::revdep_details(, "susieR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘finemapping.Rmd’ using rmarkdown
    --- finished re-building ‘finemapping.Rmd’
    
    --- re-building ‘finemapping_summary_statistics.Rmd’ using rmarkdown
    --- finished re-building ‘finemapping_summary_statistics.Rmd’
    
    --- re-building ‘mwe.Rmd’ using rmarkdown
    --- finished re-building ‘mwe.Rmd’
    
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

* Version: 3.54.0
* GitHub: NA
* Source code: https://github.com/cran/sva
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "sva")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘sva.Rnw’ using Sweave
    Loading required package: mgcv
    Loading required package: nlme
    This is mgcv 1.9-1. For overview type 'help("mgcv-package")'.
    Loading required package: genefilter
    Loading required package: BiocParallel
    Loading required package: Biobase
    Loading required package: BiocGenerics
    
    ...
    l.197 \RequirePackage
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
* Number of recursive dependencies: 60

Run `revdepcheck::revdep_details(, "TCA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘quadprog’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) tca.Rd:35: Lost braces; missing escapes or markup?
        35 | \item{C1.map}{An \code{p1} by \code{k} matrix of 0/1 values, indicating for each of the \code{p1} covariates in \code{C1} whether to consider its potential effects on the values of each of the \code{k} sources (e.g., if position \code{i,j} in \code{C1.map} is 1 then the potential effect of the \code{i}-th covariate in \code{C1} on the {j}-th source will be considered). If \code{C1.map == NULL} then effects for all covariates in \code{C1} will be considered in each of the sources. Note that \code{C1.map} is available only if \code{constrain_mu == TRUE}.}
           |                                                                                                                                                                                                                                                                                                                                                  ^
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# templateICAr

<details>

* Version: 0.9.1
* GitHub: https://github.com/mandymejia/templateICAr
* Source code: https://github.com/cran/templateICAr
* Date/Publication: 2024-11-21 16:50:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::revdep_details(, "templateICAr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

# tidybulk

<details>

* Version: 1.18.0
* GitHub: https://github.com/stemangiola/tidybulk
* Source code: https://github.com/cran/tidybulk
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 404

Run `revdepcheck::revdep_details(, "tidybulk")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    .adjust_abundance_se: no visible binding for global variable ‘x’
    .aggregate_duplicates_se: no visible binding for global variable
      ‘group_name’
    .aggregate_duplicates_se: no visible binding for global variable
      ‘group’
    .deconvolve_cellularity_se: no visible binding for global variable
      ‘X_cibersort’
    .describe_transcript_SE: no visible binding for global variable
      ‘transcript’
    .describe_transcript_SE: no visible binding for global variable
    ...
      sample b sample_idx samples sdev se_data seurat_clusters surv_test
      tagwise.dispersion temp term test tot tot_filt transcript
      transcript_upper tt_columns update.formula upper value variable vcov
      web_page where with_groups x
    Consider adding
      importFrom("base", "sample")
      importFrom("stats", "AIC", "anova", "coef", "kmeans", "logLik",
                 "predict", "update.formula", "vcov")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) remove_redundancy-methods.Rd:158-175: Lost braces
       158 | select_closest_pairs = function(df) {
           |                                     ^
    checkRd: (-1) remove_redundancy-methods.Rd:161-171: Lost braces
       161 |                 while (df |> nrow() > 0) {
           |                                          ^
    checkRd: (-1) rotate_dimensions-methods.Rd:126-134: Lost braces
       126 |         rotation = function(m, d) {
           |                                   ^
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'get_reduced_dimensions_UMAP_bulk.Rd':
      ‘log_transform’
    
    Documented arguments not in \usage in Rd file 'get_reduced_dimensions_UMAP_bulk_SE.Rd':
      ‘.abundance’ ‘.feature’ ‘.element’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# TopDom

<details>

* Version: 0.10.1
* GitHub: https://github.com/HenrikBengtsson/TopDom
* Source code: https://github.com/cran/TopDom
* Date/Publication: 2021-05-06 07:40:03 UTC
* Number of recursive dependencies: 36

Run `revdepcheck::revdep_details(, "TopDom")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) TopDom.Rd:21: Lost braces; missing escapes or markup?
        21 | Recommended range is in {5, ..., 20}.}
           |                         ^
    ```

# topGO

<details>

* Version: 2.58.0
* GitHub: NA
* Source code: https://github.com/cran/topGO
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 58

Run `revdepcheck::revdep_details(, "topGO")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'BiocGenerics', 'graph', 'Biobase', 'GO.db', 'AnnotationDbi',
      'SparseM'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    
    groupGOTerms: 	GOBPTerm, GOMFTerm, GOCCTerm environments built.
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
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

* Version: 1.20.0
* GitHub: https://github.com/statOmics/tradeSeq
* Source code: https://github.com/cran/tradeSeq
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 178

Run `revdepcheck::revdep_details(, "tradeSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        doc   6.6Mb
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) fitGAM.Rd:151-154: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) fitGAM.Rd:155-156: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) fitGAM.Rd:157-158: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) fitGAM.Rd:159-160: Lost braces in \itemize; meant \describe ?
    ```

# TRESS

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/TRESS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 86

Run `revdepcheck::revdep_details(, "TRESS")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Vignette dependency required without any vignettes:: ‘knitr’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) CallCandidates.Rd:61: Escaped LaTeX specials: \&
    checkRd: (-1) CallCandidates.Rd:63: Escaped LaTeX specials: \&
    checkRd: (-1) CallPeaks.multiRep.Rd:7: Escaped LaTeX specials: \&
    checkRd: (-1) CallPeaks.paramEsti.Rd:10: Escaped LaTeX specials: \&
    checkRd: (-1) CallPeaks.paramEsti.Rd:23: Escaped LaTeX specials: \&
    checkRd: (-1) findBumps.Rd:8: Escaped LaTeX specials: \&
    ```

# VanillaICE

<details>

* Version: 1.68.0
* GitHub: NA
* Source code: https://github.com/cran/VanillaICE
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 87

Run `revdepcheck::revdep_details(, "VanillaICE")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doMPI', 'doSNOW', 'doParallel', 'doRedis'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        doc       1.1Mb
        extdata   2.1Mb
    ```

*   checking whether startup messages can be suppressed ... NOTE
    ```
    No methods found in package ‘oligoClasses’ for request: ‘mean’ when loading ‘crlmm’
    
    It looks like this package (or a package it requires) has a startup
    message which cannot be suppressed: see ?packageStartupMessage.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BSgenome.Hsapiens.UCSC.hg18’ ‘MatrixGenerics’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) TransitionParam.Rd:27: Lost braces; missing escapes or markup?
        27 | computed as e^{-2*d/taup}, where d is the distance between markers
           |               ^
    ```

# variancePartition

<details>

* Version: 1.36.2
* GitHub: https://github.com/DiseaseNeuroGenomics/variancePartition
* Source code: https://github.com/cran/variancePartition
* Date/Publication: 2024-11-08
* Number of recursive dependencies: 202

Run `revdepcheck::revdep_details(, "variancePartition")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘FAQ.Rmd’ using rmarkdown
    --- finished re-building ‘FAQ.Rmd’
    
    --- re-building ‘additional_visualization.Rmd’ using rmarkdown
    --- finished re-building ‘additional_visualization.Rmd’
    
    --- re-building ‘dream.Rmd’ using rmarkdown
    --- finished re-building ‘dream.Rmd’
    
    ...
    --- finished re-building ‘rnd_effects.Rmd’
    
    --- re-building ‘variancePartition.Rmd’ using rmarkdown
    --- finished re-building ‘variancePartition.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mvtests.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘zenith’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc    6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘lmerTest:::as_lmerModLT’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in Rd file 'residuals.MArrayLM2.Rd':
      ‘residuals.MArrayLM2’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘GSEABase’ ‘doParallel’
    ```

# VaSP

<details>

* Version: 1.18.0
* GitHub: https://github.com/yuhuihui2011/VaSP
* Source code: https://github.com/cran/VaSP
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "VaSP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   3.5Mb
    ```

# Voyager

<details>

* Version: 1.8.1
* GitHub: https://github.com/pachterlab/voyager
* Source code: https://github.com/cran/Voyager
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 235

Run `revdepcheck::revdep_details(, "Voyager")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ══ Skipped tests (17) ══════════════════════════════════════════════════════════
      • On CRAN (16): 'test-bivariate.R:130:5', 'test-bivariate.R:151:5',
        'test-gstat.R:187:5', 'test-plot.R:356:5', 'test-plot.R:402:5',
        'test-plot.R:439:5', 'test-plot.R:457:5', 'test-plot.R:471:5',
        'test-plot.R:521:5', 'test-plot.R:599:5', 'test-plot.R:632:5',
        'test-plot.R:654:5', 'test-plot.R:814:5', 'test-plot.R:849:5',
    ...
      • plot/plotcorrelogram-coldata-i.svg
      • plot/plotcorrelogram-continuous-color-by.svg
      • plot/plotcorrelogram-one-gene-c.svg
      • plot/plotcorrelogram-one-gene-corr.svg
      • plot/plotcorrelogram-specify-gene-and-coldata-i.svg
      • plot/plotdimloadings-not-balanced.svg
      • plot/with-subset-freqpoly.svg
      • plot/with-subset.svg
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc   4.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .get_tx_df: no visible binding for global variable ‘cell_col’
    .get_tx_df: no visible global function definition for ‘getTechTxFields’
    .get_tx_df: no visible global function definition for
      ‘gdalParquetAvailable’
    .get_tx_df : <anonymous>: no visible global function definition for
      ‘gdalParquetAvailable’
    .get_tx_df : <anonymous>: no visible global function definition for
      ‘rowGeometryNames’
    .get_tx_df : <anonymous>: no visible global function definition for
      ‘st_is_empty’
    .get_tx_df : <anonymous>: no visible global function definition for
      ‘readSelectTx’
    .plot_var_sf: no visible binding for global variable ‘gene’
    plotTxBin2D: no visible binding for global variable ‘X’
    plotTxBin2D: no visible binding for global variable ‘Y’
    Undefined global functions or variables:
      X Y cell_col gdalParquetAvailable gene getTechTxFields readSelectTx
      rowGeometryNames st_is_empty
    ```

# vsclust

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/vsclust
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 162

Run `revdepcheck::revdep_details(, "vsclust")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'estimClustNum.Rd':
    estimClustNum
      Code: function(dat, maxClust = 25, scaling = "standardize", cores =
                     1)
      Docs: function(dat, maxClust = 25, cores = 1)
      Argument names in code not in docs:
        scaling
      Mismatches in argument names:
        Position: 3 Code: scaling Docs: cores
    
    ...
    runClustWrapper
      Code: function(dat, NClust, proteins = NULL, VSClust = TRUE, scaling
                     = "standardize", cores, verbose = FALSE)
      Docs: function(dat, NClust, proteins = NULL, VSClust = TRUE, cores,
                     verbose = FALSE)
      Argument names in code not in docs:
        scaling
      Mismatches in argument names:
        Position: 5 Code: scaling Docs: cores
        Position: 6 Code: cores Docs: verbose
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        doc    4.7Mb
        libs   1.9Mb
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

* Version: 2.12.0
* GitHub: NA
* Source code: https://github.com/cran/wateRmelon
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 186

Run `revdepcheck::revdep_details(, "wateRmelon")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘R.utils’
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

*   checking Rd metadata ... WARNING
    ```
    Rd files with duplicated alias 'NChannelSetToMethyLumiSet2':
      ‘NChannelSetToMethyLumiSet2.Rd’ ‘wm_internal.Rd’
    Rd files with duplicated alias 'fot':
      ‘dot-getManifestString.Rd’ ‘got.Rd’
    Rd files with duplicated alias 'got':
      ‘dot-getManifestString.Rd’ ‘got.Rd’
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented data sets:
      ‘ageCoefs’ ‘epicV2.controls’ ‘sex_coef’
    Undocumented S4 methods:
      generic 'adjustedDasen' and siglist 'MethyLumiSet'
      generic 'adjustedDasen' and siglist 'MethylSet'
      generic 'adjustedDasen' and siglist 'RGChannelSet'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'readEPIC.Rd':
    readEPIC
      Code: function(idatPath, barcodes = NULL, pdat = NULL, parallel = F,
                     n = T, oob = F, force = F, two = TRUE, ...)
      Docs: function(idatPath, barcodes = NULL, pdat = NULL, parallel = F,
                     n = T, oob = F, force = F, ...)
      Argument names in code not in docs:
        two
      Mismatches in argument names:
        Position: 8 Code: two Docs: ...
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'canno.Rd'
      ‘name’
    
    Undocumented arguments in Rd file 'dot-createAnnotation.Rd'
      ‘object’
    
    Documented arguments not in \usage in Rd file 'dot-getManifestString.Rd':
      ‘x’ ‘obj’ ‘fd’ ‘rn’
    
    Undocumented arguments in Rd file 'epicv2clean.default.Rd'
    ...
    Undocumented arguments in Rd file 'readPepo.Rd'
      ‘oob’
    Documented arguments not in \usage in Rd file 'readPepo.Rd':
      ‘keep’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
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

*   checking R code for possible problems ... NOTE
    ```
    readPepo: warning in dir(idatdir, patt = "idat"): partial argument
      match of 'patt' to 'pattern'
    .adjusted_normalizeFunnorm450k : unbiased_normalizeQuantiles: no
      visible global function definition for ‘colQuantiles’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘getMeth’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘getUnmeth’
    .adjusted_normalizeFunnorm450k: no visible global function definition
      for ‘assay<-’
    ...
      getNBeads getOOB getProbeInfo getProbeType getRed getSex getSnpBeta
      getUnmeth head hm27.controls hm27.ordering hm450.controls
      hm450.ordering intensitiesByChannel letterFrequency mapToGenome
      mclapply metadata methylated methylated<- methylumiR n.sd
      oligonucleotideFrequency preprocessNoob preprocessRaw preprocessSWAN
      probeAnnotationsCategory projectName pvals rowMeans2 seqnames
      sex_coef subsetByLoci unmethylated unmethylated<- warn
    Consider adding
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) combo.Rd:24: Lost braces; missing escapes or markup?
        24 | and \code{phenoData} are joined on \code{sampleName} .  \code{featureData}  and {annotation} are taken from
           |                                                                                 ^
    ```

*   checking Rd contents ... NOTE
    ```
    Argument items with no description in Rd file 'read.manifest.Rd':
      ‘file’
    Argument items with no description in Rd file 'wm_internal.Rd':
      ‘mats’ ‘chans’ ‘parallel’ ‘protocol.data’ ‘IDAT’ ‘force’
    ```

# WaverideR

<details>

* Version: 0.3.2
* GitHub: https://github.com/stratigraphy/WaverideR
* Source code: https://github.com/cran/WaverideR
* Date/Publication: 2023-09-06 15:40:02 UTC
* Number of recursive dependencies: 164

Run `revdepcheck::revdep_details(, "WaverideR")` for more info

</details>

## In both

*   checking whether package ‘WaverideR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/WaverideR/new/WaverideR.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) anchor_points_grey.Rd:9: Lost braces
         9 | Zeeden et al., (2013) and anchored to the code{\link{astrosignal_example}} \cr
           |                                               ^
    checkRd: (-1) retrack_wt_MC.Rd:206: Lost braces
       206 | be off in certain intervals. the link[WaverideR]{retrack_wt_MC} mitigates
           |                                                 ^
    checkRd: (-1) retrack_wt_MC.Rd:40: Lost braces
        40 | link[WaverideR]{analyze_wavelet} wavelet function
           |                ^
    checkRd: (-1) retrack_wt_MC.Rd:41: Lost braces
        41 | To create a list use the link[base]{list} function}
           |                                    ^
    checkRd: (-1) retrack_wt_MC.Rd:44: Lost braces
        44 | To create the matrix use the link[base]{cbind} function and only add the
           |                                        ^
    ```

# winputall

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/winputall
* Date/Publication: 2024-06-07 14:40:02 UTC
* Number of recursive dependencies: 102

Run `revdepcheck::revdep_details(, "winputall")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 103.2Mb
      sub-directories of 1Mb or more:
        libs  102.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# WQM

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/WQM
* Date/Publication: 2024-10-11 08:00:18 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::revdep_details(, "WQM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘wmtsa’
    ```

# zinbwave

<details>

* Version: 1.28.0
* GitHub: https://github.com/drisso/zinbwave
* Source code: https://github.com/cran/zinbwave
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 169

Run `revdepcheck::revdep_details(, "zinbwave")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) zinbSim.Rd:25: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) zinbSim.Rd:26: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) zinbSim.Rd:27: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) zinbSim.Rd:28: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# zitools

<details>

* Version: 1.0.0
* GitHub: https://github.com/kreutz-lab/zitools
* Source code: https://github.com/cran/zitools
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 176

Run `revdepcheck::revdep_details(, "zitools")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'rowQuantiles.Rd':
    \S4method{rowQuantiles}{Zi}
      Code: function(x, rows = NULL, cols = NULL, probs = seq(from = 0, to
                     = 1, by = 0.25), na.rm = FALSE, type = 7L, digits =
                     7L, ..., useNames = TRUE, drop = TRUE)
      Docs: function(x, rows = NULL, cols = NULL, probs = seq(from = 0, to
                     = 1, by = 0.25), na.rm = TRUE, type = 7L, ...,
                     useNames = TRUE, drop = TRUE)
      Argument names in code not in docs:
        digits
    ...
                     = 1, by = 0.25), na.rm = TRUE, type = 7L, ...,
                     useNames = TRUE, drop = TRUE)
      Argument names in code not in docs:
        digits
      Mismatches in argument names:
        Position: 7 Code: digits Docs: ...
        Position: 8 Code: ... Docs: useNames
        Position: 9 Code: useNames Docs: drop
      Mismatches in argument default values:
        Name: 'na.rm' Code: FALSE Docs: TRUE
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘zitools_tutorial.Rmd’ using rmarkdown
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'zitools_tutorial.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/matrixStats/revdep/checks/zitools/new/zitools.Rcheck/vign_test/zitools/vignettes/zitools_tutorial.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See zitools_tutorial.log for more info.
    --- failed re-building ‘zitools_tutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘zitools_tutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License stub is invalid DCF.
    ```

*   checking R code for possible problems ... NOTE
    ```
    calcWeights: no visible global function definition for ‘predict’
    omit_str_zero: no visible global function definition for ‘predict’
    Undefined global functions or variables:
      predict
    Consider adding
      importFrom("stats", "predict")
    to your NAMESPACE file.
    ```

