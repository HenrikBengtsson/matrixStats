# abcrf

Version: 1.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.6Mb
        libs   2.5Mb
    ```

# ACNE

Version: 0.8.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# anomalyDetection

Version: 0.2.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: doTryCatch(return(expr), name, parentenv, handler)
      7: bd_row(m1, 1:5)
      
      var1 & var2 (r = -0.753)
      var3 & var4 (r = 0.576)
      var4 & var6 (r = -0.539)
      var4 & var7 (r = -0.507)
      var2 & var9 (r = -0.513)
      
      testthat results ================================================================
      OK: 134 SKIPPED: 0 FAILED: 1
      1. Error: bd_row provides proper messages and warnings (@test_bd_row.R#12) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# antiProfiles

Version: 1.16.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Hector Corrada Bravo <hcorrada@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Implementation of gene expression anti-profiles’
    ‘Implementation of Gene Expression Anti-Profiles’
    
    This build time stamp is over a month old.
    ```

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
    Computing sds
    Computing ranges
    Computing tissue specificity
    Computing normal tissue outside ranges
    Making probe data frame
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
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
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# aroma.affymetrix

Version: 3.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# aroma.cn

Version: 1.6.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# aroma.core

Version: 3.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      inst/rsp/.rspPlugins
    ```

# aSPU

Version: 1.48

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Il-Youp Kwak <ikwak@umn.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# BatchQC

Version: 1.4.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘lmFitC’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Found3batches
    Adjusting for1covariate(s) or covariate level(s)
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Solaiappan Manimaran <manimaran_1975@hotmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking R code for possible problems ... NOTE
    ```
    gls.series.C: no visible global function definition for ‘lm.fit’
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
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Inga Schwabe <bayestwin@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# bdynsys

Version: 1.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Viktoria Spaiser <viktoria.sp@web.de>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

# bigstep

Version: 0.7.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Piotr Szulc <piotr.michal.szulc@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# bingat

Version: 1.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Berkley Shands <rpackages@biorankings.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘genalg’
    ```

# bnclassify

Version: 0.3.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘memoise’
    ```

# brms

Version: 1.9.0

## In both

*   R CMD check timed out
    

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Paul-Christian Bürkner <paul.buerkner@gmail.com>’
    
    The Date field is over a month old.
    ```

# bsseq

Version: 1.12.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following object is masked from 'package:base':
    
        apply
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'bsseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kasper Daniel Hansen <kasperdanielhansen@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Analyze, manage and store bisulfite sequencing data’
    ‘Analyze, Manage and Store Bisulfite Sequencing Data’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘HDF5Array’
      All declared Imports should be used.
    ```

# bumphunter

Version: 1.16.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Loading required package: locfit
      locfit 1.5-9.1 	 2013-03-22
      Loading required package: AnnotationDbi
      Loading required package: Biobase
      Welcome to Bioconductor
      
          Vignettes contain introductory material; view with
          'browseVignettes()'. To cite Bioconductor, see
          'citation("Biobase")', and for packages 'citation("pkgname")'.
      
      Download the refGene table ... Error: Expectation Failed
      Timing stopped at: 1.848 0.118 25.45
      testthat results ================================================================
      OK: 10 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Rafael A. Irizarry <rafa@jimmy.harvard.edu>’
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘foreach’
      ‘iterators’ ‘parallel’ ‘locfit’
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
    The following object is masked from ‘package:base’:
    
        isNamespaceLoaded
    
    [bumphunterEngine] Estimating p-values and FWER.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
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
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# calmate

Version: 0.12.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# carx

Version: 0.6.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Chao Wang <chao-wang@uiowa.edu>’
    
    This build time stamp is over a month old.
    ```

# CATALYST

Version: 1.1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Helena Lucia Crowell <crowellh@student.ethz.ch>’
    
    No package encoding and non-ASCII characters in the following R files:
      R/helpers-debarcoding.R
        42:         # difference b/w the kth and (k<e2><80><93>1)th highest 
        98:         # difference b/w the kth and (k<e2><80><93>1)th highest 
      R/plotEvents.R
        63:         # <c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7>
        78:         # <c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7>
        137:         # <c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7>
        142:         # <c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7><c2><b7>
    
    This build time stamp is over a month old.
    
    Size of tarball: 6929990 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    8.5Mb
    ```

# cellWise

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jakob Raymaekers <jakob.raymaekers@kuleuven.be>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# ChAMP

Version: 2.8.9

## In both

*   checking package subdirectories ... WARNING
    ```
    Problems with news in ‘inst/NEWS.Rd’:
      inst/NEWS.Rd:67: unexpected END_OF_INPUT '
      '
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Yuan Tian  <champ450k@gmail.com>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    Size of tarball: 15461875 bytes
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘minfi’ ‘ChAMPdata’ ‘FEM’ ‘DMRcate’ ‘Illumina450ProbeVariants.db’
      ‘IlluminaHumanMethylationEPICmanifest’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.8Mb
      sub-directories of 1Mb or more:
        doc       9.5Mb
        extdata   2.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Yuan Tian [cre,aut], Tiffany Morris [ctb], Lee Stirling [ctb], Andrew Feber [ctb], Andrew Teschendorff [ctb], Ankur Chakravarthy [ctb]’
      Authors@R: ‘Tian Yuan [cre, aut], Tiffany Morris [ctb], Lee Stirling [ctb], Andrew Feber [ctb], Andrew Teschendorff [ctb], Ankur Chakravarthy [ctb]’
    
    Maintainer field differs from that derived from Authors@R
      Maintainer: ‘Yuan Tian <champ450k@gmail.com>’
      Authors@R:  ‘Tian Yuan <champ450k@gmail.com>’
    
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘rmarkdown’
    A package should be listed in only one of these fields.
    ```

# Chicago

Version: 1.4.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Mikhail Spivakov <spivakov@babraham.ac.uk>’
    
    The Title field starts with the package name.
    
    This build time stamp is over a month old.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      .BBSoptions
    ```

# Clomial

Version: 1.12.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Habil Zare <zare@txstate.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘Infers clonal composition of a tumor’
    ‘Infers Clonal Composition of a Tumor’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

Version: 1.2.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Elizabeth Purdom <epurdom@stat.berkeley.edu>’
    
    This build time stamp is over a month old.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
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
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.33 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'Convergence.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jacob Carey <jcarey15@jhu.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘Bayesian mixture models for copy number polymorphisms’
    ‘Bayesian Mixture Models for Copy Number Polymorphisms’
    
    The Date field is not in ISO 8601 yyyy-mm-dd format.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        libs  10.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘GenomicRanges’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    consensusRegion: no visible global function definition for
      ‘elementLengths’
    Undefined global functions or variables:
      elementLengths
    ```

# cointmonitoR

Version: 0.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Philipp Aschersleben <aschersleben@statistik.tu-dortmund.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# cointReg

Version: 0.2.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Philipp Aschersleben <aschersleben@statistik.tu-dortmund.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# CopywriteR

Version: 2.8.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Thomas Kuilman <t.kuilman@nki.nl>’
    
    Uses the superseded package: ‘snow’
    
    No package encoding and non-ASCII characters in the following R files:
      R/CopywriteR.R
        614:     ## <e2><80><98>Map<e2><80><99> applies a function to the corresponding elements of given vectors.
    
    The Title field should be in title case, current version then in title case:
    ‘Copy number information from targeted sequencing using off-target reads’
    ‘Copy Number Information from Targeted Sequencing using Off-Target Reads’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
      reciprocal condition number  0
    Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
      There are other near singularities as well. 1e-06
    Warning in plot.xy(xy.coords(x, y), type = type, ...) :
      "subset" is not a graphical parameter
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'CopywriteR.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# crlmm

Version: 1.34.0

## In both

*   checking CRAN incoming feasibility ... WARNING
    ```
    ...
    The maintainer field is invalid or specifies more than one person
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘## Local Variables’ ‘## time-stamp-pattern’ ‘## End’
    
    No package encoding and non-ASCII characters in the following R files:
      R/crlmm-illumina.R
        367: ##  loader(<e2><80><98>file.rda<e2><80><99>)
        368: ##  x = getVarInEnv(<e2><80><98>x<e2><80><99>)
        369: ##  y = getVarInEnv(<e2><80><98>y<e2><80><99>)
        371: ##  I<e2><80><99>d consider using something like:
        373: ##	  needToLoad = !all(sapply(c(<e2><80><98>x<e2><80><99>, <e2><80><98>y<e2><80><99>), isLoaded))
        375: ##	  loader(<e2><80><98>file.rda<e2><80><99>)
        376: ##	  x = getVarInEnv(<e2><80><98>x<e2><80><99>)
        377: ##	  y = getVarInEnv(<e2><80><98>y<e2><80><99>)
    
    The Title field should be in title case, current version then in title case:
    ‘Genotype Calling (CRLMM) and Copy Number Analysis tool for Affymetrix SNP 5.0 and 6.0 and Illumina arrays’
    ‘Genotype Calling (CRLMM) and Copy Number Analysis Tool for Affymetrix SNP 5.0 and 6.0 and Illumina Arrays’
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
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

Version: 1.2.0

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Data with usage in documentation object 'gs.names' but not in code:
      gs.names
    
    Data with usage in documentation object 'gslist' but not in code:
      gslist
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Alex Pickering <alexvpickering@gmail.com>’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported objects:
      ‘crossmeta::gs.names’ ‘crossmeta::gslist’
    ```

*   checking R code for possible problems ... NOTE
    ```
    explore_paths : server: no visible binding for global variable ‘gslist’
    explore_paths : server: no visible binding for global variable
      ‘gs.names’
    Undefined global functions or variables:
      gs.names gslist
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘PADOG’, ‘GeneMeta’
    ```

# DAMOCLES

Version: 1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Rampal S. Etienne <r.s.etienne@rug.nl>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

# DeepBlueR

Version: 1.2.10

## In both

*   checking whether package ‘DeepBlueR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Felipe Albrecht <felipe.albrecht@mpi-inf.mpg.de>, Markus List <markus.list@mpi-inf.mpg.de>’
    
    The maintainer field is invalid or specifies more than one person
    
    The Title field is just the package name: provide a real title.
    
    This build time stamp is over a month old.
    ```

## Installation

### Devel

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** preparing package for lazy loading
Called method: deepblue_list_column_types
Reported status was: okay
status 
 "417" 
Error in xml.rpc(deepblue_options("url"), "info", id, user_key) : 
  Problems
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/DeepBlueR’

```
### CRAN

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** preparing package for lazy loading
Called method: deepblue_list_column_types
Reported status was: okay
status 
 "417" 
Error in xml.rpc(deepblue_options("url"), "info", id, user_key) : 
  Problems
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

```
# DelayedArray

Version: 0.2.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run_unitTests.R’ failed.
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
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Hervé Pagès <hpages@fredhutch.org>’
    
    The Title field should be in title case, current version then in title case:
    ‘Delayed operations on array-like objects’
    ‘Delayed Operations on Array-Like Objects’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::testPackage’ ‘IRanges:::combine_dimnames’
      ‘IRanges:::combine_dimnames_along’ ‘IRanges:::combine_dims_along’
      ‘IRanges:::get_dims_to_bind’ ‘IRanges:::simple_abind’
      ‘S4Vectors:::anyMissingOrOutside’
      ‘S4Vectors:::extract_positions_from_Rle’ ‘S4Vectors:::sapply_isNULL’
      See the note in ?`:::` about the use of this operator.
    ```

# DGCA

Version: 1.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Andrew McKenzie <amckenz@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# diffloop

Version: 1.4.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Caleb Lareau <caleblareau@g.harvard.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘Identifying differential DNA loops from chromatin topology data’
    ‘Identifying Differential DNA Loops from Chromatin Topology Data’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      .travis.yml
    ```

# DisHet

Version: 0.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Tao Wang <tao.wang@utsouthwestern.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# dplR

Version: 1.6.6

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Andy Bunn <andy.bunn@wwu.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# DPWeibull

Version: 1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# dtree

Version: 0.2.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Ross Jacobucci <rcjacobuc@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# EasyqpcR

Version: 1.18.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>’
    
    The Title field starts with the package name.
    The Title field should be in title case, current version then in title case:
    ‘EasyqpcR for low-throughput real-time quantitative PCR data analysis’
    ‘EasyqpcR for Low-Throughput Real-Time Quantitative PCR Data Analysis’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘gWidgetsRGtk2’
    ```

# EMDomics

Version: 2.6.0

## In both

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Sadhika Malladi <contact@sadhikamalladi.com> and Daniel Schmolze <emd@schmolze.com>’
    
    The maintainer field is invalid or specifies more than one person
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Sadhika Malladi <contact@sadhikamalladi.com> [aut, cre]
      Daniel Schmolze <emd@schmolze.com> [aut, cre]
    Maintainer field differs from that derived from Authors@R
      Maintainer: ‘Sadhika Malladi <contact@sadhikamalladi.com> and Daniel Schmolze <emd@schmolze.com>’
      Authors@R:  ‘’
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

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# EnrichedHeatmap

Version: 1.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Zuguang Gu <z.gu@dkfz.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 5274613 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   2.5Mb
    ```

# EventPointer

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Juan Pablo Romero <jpromero@ceit.es>’
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘Url’
    
    The Title field should be in title case, current version then in title case:
    ‘An effective identification of alternative splicing events using junction arrays and RNA-Seq data’
    ‘An Effective Identification of Alternative Splicing Events using Junction Arrays and RNA-Seq Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    ```

*   checking package subdirectories ... NOTE
    ```
    Found the following CITATION file in a non-standard place:
      inst/CITATION.orig
    Most likely ‘inst/CITATION’ should be used instead.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘SGSeq:::edges’ ‘SGSeq:::exonGraph’ ‘SGSeq:::nodes’
      See the note in ?`:::` about the use of this operator.
    ```

# FADA

Version: 1.3.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘David Causeur <david.causeur@agrocampus-ouest.fr>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# FastHCS

Version: 0.0.5

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kaveh Vakili <vakili.kaveh.email@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.3Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs  14.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FHCSpsdo: no visible global function definition for ‘is’
    FastHCS: no visible global function definition for ‘complete.cases’
    compPcaParams: no visible global function definition for ‘quantile’
    compPcaParams: no visible global function definition for ‘qchisq’
    compPcaParams: no visible global function definition for ‘qnorm’
    compPcaParams: no visible global function definition for ‘sd’
    plot.FastHCS: no visible global function definition for ‘plot’
    plot.FastHCS: no visible global function definition for ‘abline’
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kaveh Vakili <vakili.kaveh.email@gmail.com>’
    
    The Title field starts with the package name.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        libs   8.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    FastPCS: no visible global function definition for ‘complete.cases’
    FastPCS: no visible global function definition for ‘cov’
    FastPCS: no visible global function definition for ‘mahalanobis’
    FastPCS: no visible global function definition for ‘qchisq’
    FastPCS: no visible global function definition for ‘quantile’
    plot.FastPCS: no visible global function definition for ‘plot’
    plot.FastPCS: no visible global function definition for ‘abline’
    plot.FastPCS: no visible global function definition for ‘qchisq’
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kaveh Vakili <vakili.kaveh.email@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.6Mb
      sub-directories of 1Mb or more:
        libs  16.5Mb
    ```

# FDb.FANTOM4.promoters.hg19

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Tim Triche, Jr. <tim.triche@gmail.com>’
    
    The display-name part of the maintainer field should be enclosed in ""
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘organism’ ‘species’ ‘provider’ ‘resource_url’
    
    The Title field should be in title case, current version then in title case:
    ‘Annotation package for FANTOM4 promoters identified from THP-1 cells’
    ‘Annotation Package for FANTOM4 Promoters Identified from THP-1 Cells’
    
    This build time stamp is over a month old.
    ```

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

# fergm

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scales’
      All declared Imports should be used.
    ```

# filesstrings

Version: 1.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Rory Nolan <rorynoolan@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# flowCore

Version: 1.42.2

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
      ‘truncate_max_range’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Quitting from lines 301-303 (HowTo-flowCore.Rnw) 
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘M.Jiang <wjiang2@fhcrc.org>’
    
    The Title field starts with the package name.
    The Title field should be in title case, current version then in title case:
    ‘flowCore: Basic structures for flow cytometry data’
    ‘flowCore: Basic Structures for Flow Cytometry Data’
    
    This build time stamp is over a month old.
    
    Size of tarball: 12413092 bytes
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘flowViz’ ‘flowWorkspace’ ‘ggcyto’
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
      installed size is 34.8Mb
      sub-directories of 1Mb or more:
        data      5.0Mb
        extdata   1.2Mb
        lib      20.8Mb
        libs      5.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘Rgraphviz’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    %in%,flowFrame-norm2Filter: no visible global function definition for
      ‘cov.rob’
    spillover,flowSet: no visible global function definition for
      ‘devAskNewPage’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘rangeGate’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘density’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘abline’
    spillover,flowSet : <anonymous> : <anonymous>: no visible global
      function definition for ‘density’
    split,flowFrame-factor: no visible binding for global variable ‘i’
    summary,workFlow: no visible binding for global variable ‘wf’
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
    Package unavailable to check Rd xrefs: ‘flowViz’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# fslr

Version: 2.12

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘John Muschelli <muschellij2@gmail.com>’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘grDevices’ ‘graphics’ ‘matrixStats’ ‘stats’
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
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.33 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'funtooNorm.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kathleen Klein <kathleen.klein@mail.mcgill.ca>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# GAD

Version: 1.1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Leonardo Sandrini-Neto <leonardosandrini@gmail.com>’
    
    The Title field starts with the package name.
    The Title field should be in title case, current version then in title case:
    ‘GAD: Analysis of variance from general principles’
    ‘GAD: Analysis of Variance from General Principles’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# gcapc

Version: 1.0.9

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Mingxiang Teng <tengmx@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# genomation

Version: 1.8.0

## In both

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Altuna Akalin <aakalin@gmail.com>, Vedran Franke <vedran.franke@gmail.com>’
    
    The maintainer field is invalid or specifies more than one person
    
    The Title field should be in title case, current version then in title case:
    ‘Summary, annotation and visualization of genomic data’
    ‘Summary, Annotation and Visualization of Genomic Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    
    Size of tarball: 6284148 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        doc       3.7Mb
        extdata   1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RUnit’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘cache’
    Please remove from your package.
    ```

# GenRank

Version: 1.4.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Chakravarthi Kanduri <chakra.kanduri@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Candidate gene prioritization based on convergent evidence’
    ‘Candidate Gene Prioritization Based on Convergent Evidence’
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Chakravarthi Kanduri’
      Authors@R: ‘Chakravarthi Kanduri [aut, cre]’
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

# GJRM

Version: 0.1-1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Giampiero Marra <giampiero.marra@ucl.ac.uk>’
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

# GPrank

Version: 0.1.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Hande Topa <hande.topa@helsinki.fi>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# GUIDEseq

Version: 1.6.1

## In both

*   checking examples ... ERROR
    ```
    ...
    finding local max for chromosome: chr13
    combine plus and minus peaks ... 
    
    keep peaks not in merged.gr but present in both peaks1 and peaks2
    
    offtarget analysis ...
    
    search for gRNAs for input file1...
    [1] "Scoring ..."
    >>> Finding all hits in sequence chr13+:27629413:27629420:chr13-:27629400:27629404 ...
    >>> DONE searching
    >>> Finding all hits in sequence chr13+:39262927:39262939:chr13-:39262918:39262920 ...
    >>> DONE searching
    finish off-target search in sequence 2
    finish off-target search in sequence 1
    finish feature vector building
    finish score calculation
    [1] "Done!"
    Error in if (!is.na(TS2)) { : the condition has length > 1
    Calls: GUIDEseqAnalysis -> offTargetAnalysisOfPeakRegions
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Lihua Julie Zhu <julie.zhu@umassmed.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘GUIDE-seq analysis pipeline’
    ‘GUIDE-Seq Analysis Pipeline’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        extdata  10.6Mb
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
      No matching found, please check your input sequence, and make
                sure you are using the right genome. You can also alter your 
                search criteria such as increasing max.mismatch!
    Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
      No matching found, please check your input sequence, and make
                sure you are using the right genome. You can also alter your 
                search criteria such as increasing max.mismatch!
    Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
      No matching found, please check your input sequence, and make
                sure you are using the right genome. You can also alter your 
                search criteria such as increasing max.mismatch!
    Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
      No matching found, please check your input sequence, and make
                sure you are using the right genome. You can also alter your 
                search criteria such as increasing max.mismatch!
    
    Error: processing vignette 'GUIDEseq.Rnw' failed with diagnostics:
     chunk 7 
    Error in if (!is.na(TS2)) { : the condition has length > 1
    Execution halted
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
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Florian Hahne <florian.hahne@novartis.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Plotting data and annotation information along genomic coordinates’
    ‘Plotting Data and Annotation Information along Genomic Coordinates’
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc       1.6Mb
        extdata   2.2Mb
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
        pmin, pmin.int, rank, rbind, rowMeans, rowSums,
        rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    
    Attaching package: ‘S4Vectors’
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomicRanges
    Loading required package: GenomeInfoDb
    Loading required package: grid
    
    Error: processing vignette 'Gviz.Rnw' failed with diagnostics:
     chunk 9 (label = doIdeogramTrack) 
    Error : Expectation Failed
    
    Execution halted
    ```

# haploReconstruct

Version: 0.1.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Susanne U. Franssen <susefranssen@googlemail.com>’
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        data   9.5Mb
    ```

# IMIFA

Version: 1.3.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Keefe Murphy <keefe.murphy@ucd.ie>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# kernDeepStackNet

Version: 2.0.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Thomas Welchowski <welchow@imbie.meb.uni-bonn.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

# kgschart

Version: 1.3.5

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kota Mori <kmori05@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# localgauss

Version: 0.40

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Tore Selland Kleppe <tore.kleppe@uis.no>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# loo

Version: 1.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jonah Gabry <jsg2201@columbia.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# LS2Wstat

Version: 2.0-3

## In both

*   checking whether package ‘LS2Wstat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/LS2Wstat/new/LS2Wstat.Rcheck/00install.out’ for details.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Matt Nunes <m.nunes@lancaster.ac.uk>’
    
    The Title field should be in title case, current version then in title case:
    ‘A Multiscale Test of Spatial Stationarity for LS2W processes’
    ‘A Multiscale Test of Spatial Stationarity for LS2W Processes’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    TOS2D: no visible global function definition for ‘medpolish’
    countTextures: no visible global function definition for ‘medpolish’
    plot.imageQT: no visible global function definition for ‘segments’
    simTexture: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      medpolish rnorm segments
    Consider adding
      importFrom("graphics", "segments")
      importFrom("stats", "medpolish", "rnorm")
    to your NAMESPACE file.
    ```

# LSAmitR

Version: 1.0-0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Thomas Kiefer <t.kiefer@bifie.at>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# Luminescence

Version: 0.7.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Content type 'application/octet-stream' length 3014 bytes
      ==================================================
      downloaded 3014 bytes
      
      
      [read_BIN2R()]
      	 >> /scratch/hb/RtmpTLCpfw/read_BIN2R_FILE74287575fa11
      	 >> 2 records have been read successfully!
      
      testthat results ================================================================
      OK: 488 SKIPPED: 0 FAILED: 1
      1. Error: Full check of analyse_baSAR function (@test_analyse_baSAR.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Sebastian Kreutzer <sebastian.kreutzer@u-bordeaux-montaigne.fr>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rjags’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rjags’
    ```

# metagene

Version: 2.8.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Charles Joly Beauparlant <charles.joly-beauparlant@crchul.ulaval.ca>’
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘Author@R’
    
    The Title field should be in title case, current version then in title case:
    ‘A package to produce metagene plots’
    ‘A Package to Produce Metagene Plots’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_demo_design: no visible global function definition for ‘read.table’
    get_promoters_txdb: no visible global function definition for ‘is’
    plot_metagene: no visible binding for global variable ‘position’
    plot_metagene: no visible binding for global variable ‘value’
    plot_metagene: no visible binding for global variable ‘qinf’
    plot_metagene: no visible binding for global variable ‘qsup’
    plot_metagene: no visible binding for global variable ‘group’
    Undefined global functions or variables:
      group is position qinf qsup read.table value
    Consider adding
      importFrom("methods", "is")
      importFrom("utils", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# metagenomeSeq

Version: 1.18.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Joseph N. Paulson <jpaulson@jimmy.harvard.edu>’
    
    Reading CITATION file fails with
      package ‘metagenomeSeq’ not found
    when package is not installed.
    
    The Title field should be in title case, current version then in title case:
    ‘Statistical analysis for sparse high-throughput sequencing’
    ‘Statistical Analysis for Sparse High-Throughput Sequencing’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# MetaQC

Version: 0.1.13

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Don Kang <donkang75@gmail.com>’
    
    Uses the superseded package: ‘doSNOW’
    
    The Title field starts with the package name.
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘survival’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘foreach’ ‘iterators’ ‘proto’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘as.dist’
    requireAll: no visible global function definition for
      ‘installed.packages’
    requireAll: no visible binding for global variable ‘biocLite’
    requireAll: no visible global function definition for ‘biocLite’
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Hector Corrada Bravo <hcorrada@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘R Interface to the metaviz web app for interactive metagenomics data analysis and visualization’
    ‘R Interface to the Metaviz Web App for Interactive Metagenomics Data Analysis and Visualization’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    ```

# MethylAid

Version: 1.10.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: locfit
    locfit 1.5-9.1 	 2013-03-22
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    [read.metharray.sheet] Found the following CSV files:
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'MethylAid.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘M. van Iterson <mviterson@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Visual and interactive quality control of large Illumina DNA Methylation array data sets’
    ‘Visual and Interactive Quality Control of Large Illumina DNA Methylation Array Data Sets’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives no person with name and author role
    Author field differs from that derived from Authors@R
      Author:    ‘Maarten van Iterson [aut, cre], Elmar Tobi[ctb], Roderick Slieker[ctb], Wouter den Hollander[ctb], Rene Luijk[ctb] and Bas Heijmans[ctb]’
      Authors@R: ‘Maarten van Iterson [cre], Elmar Tobi [ctb], Roderick Slieker [ctb], Wouter den Hollander [ctb], Rene Luijk [ctb], Bas Heijmans [ctb]’
    
    Maintainer field differs from that derived from Authors@R
      Maintainer: ‘M. van Iterson <mviterson@gmail.com>’
      Authors@R:  ‘Maarten van Iterson <mviterson@gmail.com>’
    ```

# methylumi

Version: 2.22.0

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
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'methylumi.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.58 \usepackage
                    {hyperref}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Sean Davis <sdavis2@mail.nih.gov>’
    
    The Title field should be in title case, current version then in title case:
    ‘Handle Illumina methylation data’
    ‘Handle Illumina Methylation Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 6179445 bytes
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
      ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      .travis.yml
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        data      6.8Mb
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

Version: 0.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘K. Vakili <kaveh.vakili@wis.kuleuven.be>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

# MIGSA

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Juan C. Rodriguez <jcrodriguez@bdmg.com.ar>’
    
    No package encoding and non-ASCII characters in the following R files:
      R/Genesets-loadGo.R
        51:         # annotated at that GO term OR TO ONE OF IT<e2><80><99>S CHILD NODES
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    The following object is masked from ‘package:mGSZ’:
    
        geneSetsList
    
    Loading required package: GO.db
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'MIGSA.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `multirow.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.7 \DeclareMathOperator
                            *{\argmax}{arg\,max}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
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
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.33 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'minfi.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kasper Daniel Hansen <kasperdanielhansen@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Analyze Illumina Infinium DNA methylation arrays’
    ‘Analyze Illumina Infinium DNA Methylation Arrays’
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘minfiDataEPIC’ ‘FlowSorted.Blood.450k’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘bumphunter:::.getEstimate’
      See the note in ?`:::` about the use of this operator.
    ```

# MinimumDistance

Version: 1.20.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Robert B Scharpf <rscharpf@jhu.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
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

# mmtfa

Version: 0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jeffrey L. Andrews <jeffrey.andrews@macewan.ca>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot.mmtfa: no visible global function definition for ‘plot’
    plot.mmtfa: no visible global function definition for ‘title’
    plot.mmtfa: no visible global function definition for ‘contour’
    plot.mmtfa: no visible global function definition for ‘rgb’
    plot.mmtfa : dunivt: no visible global function definition for
      ‘mahalanobis’
    plot.mmtfa : dunivt: no visible global function definition for ‘dnorm’
    plot.mmtfa: no visible global function definition for ‘density’
    plot.mmtfa: no visible global function definition for ‘curve’
    sginit: no visible global function definition for ‘cov.wt’
    sgupdate: no visible global function definition for ‘cov.wt’
    winit: no visible global function definition for ‘mahalanobis’
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

# monocle

Version: 2.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 178-198 (monocle-vignette.Rnw) 
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    the condition has length > 1
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Cole Trapnell <coletrap@uw.edu>’
    
    No package encoding and non-ASCII characters in the following R files:
      R/order_cells.R
        1390:       # Here<e2><9c><ac>s how to take the top PCA loading genes, but using
    
    The Title field should be in title case, current version then in title case:
    ‘Clustering, differential expression, and trajectory analysis for single- cell RNA-Seq’
    ‘Clustering, Differential Expression, and Trajectory Analysis for Single- Cell RNA-Seq’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking R code for possible problems ... NOTE
    ```
    assign_cell_lineage: no visible global function definition for ‘nei’
    buildBranchCellDataSet: no visible global function definition for ‘nei’
    clusterCells: no visible binding for global variable ‘rho’
    clusterCells: no visible binding for global variable ‘delta’
    count_leaf_descendents: no visible global function definition for ‘nei’
    cth_classifier_cds: no visible global function definition for ‘nei’
    cth_classifier_cell: no visible global function definition for ‘nei’
    diff_test_helper: no visible binding for global variable ‘Size_Factor’
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
    get_next_node_id: no visible binding for '<<-' assignment to
      ‘next_node’
    get_next_node_id: no visible binding for global variable ‘next_node’
    make_canonical: no visible global function definition for ‘nei’
    measure_diameter_path: no visible global function definition for ‘nei’
    orderCells: no visible binding for '<<-' assignment to ‘next_node’
    project2MST: no visible global function definition for ‘nei’
    Undefined global functions or variables:
      Size_Factor delta nei next_node rho
    ```

# motifbreakR

Version: 1.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Simon Gert Coetzee <Simon.Coetzee@cshs.org>’
    
    The Title field should be in title case, current version then in title case:
    ‘A Package For Predicting The Disruptiveness Of Single Nucleotide Polymorphisms On Transcription Factor Binding Sites’
    ‘A Package for Predicting the Disruptiveness of Single Nucleotide Polymorphisms on Transcription Factor Binding Sites’
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Simon Gert Coetzee [aut, cre] Dennis J. Hazelett [aut]’
      Authors@R: ‘Simon Gert Coetzee [aut, cre], Dennis J. Hazelett [aut]’
    
    Maintainer field differs from that derived from Authors@R
      Maintainer: ‘Simon Gert Coetzee <Simon.Coetzee@cshs.org>’
      Authors@R:  ‘Simon Gert Coetzee <simon.coetzee@cshs.org>’
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Samuel Blanck <samuel.blanck@inria.fr>’
    
    No package encoding and non-ASCII characters in the following R files:
      R/bivariateSignal.R
        64: # etrange=c(2,36)#66 semble greff<c3><a9> #7 CN <c3><a9>trange
      R/cghcall_private.R
        140:     #TODO v<c3><a9>rifier pertinence correction bug avec segment extreme d'un seul point
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘R.devices’ ‘R.filesets’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’
      ‘aroma.cn’ ‘aroma.core’ ‘aroma.light’ ‘matrixStats’ ‘snowfall’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported object imported by a ':::' call: ‘cghseg:::segmeanCO’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    markerSelection: no visible global function definition for ‘read.csv’
    postsegnormalize: no visible global function definition for ‘median’
    segFracBSignal: no visible global function definition for ‘read.csv’
    segFracBSignal : <anonymous>: no visible global function definition for
      ‘points’
    segFracBSignal : <anonymous>: no visible global function definition for
      ‘lines’
    segFracBSignal : <anonymous>: no visible global function definition for
      ‘write.table’
    tumorboostPlot: no visible global function definition for ‘head’
    tumorboostPlot: no visible global function definition for ‘par’
    tumorboostPlot: no visible global function definition for ‘axis’
    tumorboostPlot: no visible global function definition for ‘points’
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

Version: 1.0.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Pieter Segaert <Pieter.Segaert@kuleuven.be>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.4Mb
      sub-directories of 1Mb or more:
        libs  14.5Mb
    ```

# MultiBD

Version: 0.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'SIR-MCMC.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Marc A. Suchard <msuchard@ucla.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        libs   8.9Mb
    ```

# nandb

Version: 0.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘autothresholdr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Rory Nolan <rorynoolan@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# NanoStringDiff

Version: 1.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘hong wang <hong.wang@uky.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘optimize’
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
      IQR glm lm median optim optimize p.adjust pchisq poisson read.table
      rgamma rpois
    Consider adding
      importFrom("stats", "IQR", "glm", "lm", "median", "optim", "optimize",
                 "p.adjust", "pchisq", "poisson", "rgamma", "rpois")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
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
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# neurobase

Version: 1.13.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘John Muschelli <muschellij2@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# NSA

Version: 0.0.32

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Maria Ortiz-Estevez <mortizest@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Post-normalization of total copy numbers’
    ‘Post-Normalization of Total Copy Numbers’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
      ‘aroma.affymetrix’ ‘DNAcopy’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
      ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      ‘trim’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘throw’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘str’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘rowAlls’
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

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Joseph N. Paulson <jpaulson@jimmy.harvard.edu>, Dan Schlauch <dschlauch@fas.harvard.edu>’
    
    The maintainer field is invalid or specifies more than one person
    
    This build time stamp is over a month old.
    
    Size of tarball: 9093938 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        data   9.1Mb
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

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning: Transformation introduced infinite values in discrete y-axis
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.33 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'PathoStatUserManual.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Solaiappan Manimaran <manimaran_1975@hotmail.com>’
    
    The Title field starts with the package name.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# pcaMethods

Version: 1.68.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henning Redestig <henning.red@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘A collection of PCA methods’
    ‘A Collection of PCA Methods’
    
    This build time stamp is over a month old.
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

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ade4’
    ```

# peakPick

Version: 0.11

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Paal O. Westermark <pal-olof.westermark@charite.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# phosphonormalizer

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Sohrab Saraei <sohrab.saraei@utu.fi>’
    
    The Title field should be in title case, current version then in title case:
    ‘Compensates for the bias introduced by median normalization in phosphoproteomics’
    ‘Compensates for the Bias Introduced by Median Normalization in Phosphoproteomics’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# Pigengene

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Pigengene_inference.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Habil Zare <zare@txstate.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘Infers biological signatures from gene expression data’
    ‘Infers Biological Signatures from Gene Expression Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
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
    
    check.pigengene.input: no visible global function definition for
      ‘setNames’
    welch.pvalue: no visible global function definition for ‘as.formula’
    welch.pvalue: no visible global function definition for ‘oneway.test’
    Undefined global functions or variables:
      as.formula oneway.test setNames
    Consider adding
      importFrom("stats", "as.formula", "oneway.test", "setNames")
    to your NAMESPACE file.
    ```

# POMaSPU

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Junghi Kim <junghikim0@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# QDNAseq

Version: 1.12.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Daoud Sie <d.sie@vumc.nl>’
    
    The Title field should be in title case, current version then in title case:
    ‘Quantitative DNA sequencing for chromosomal aberrations’
    ‘Quantitative DNA Sequencing for Chromosomal Aberrations’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    25163504814644134.436.838865427963024207.660.838865426569187207.650.2
    FINISHED!
    
    Total time:0minutes
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'QDNAseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# r2dRue

Version: 1.0.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Alberto Ruiz Moreno <aruiz@eeza.csic.es>’
    
    No package encoding and non-ASCII characters in the following R files:
      R/r2dRue.r
        976: 	#tama<f1>o del ultimo bloque
        1072: 	#as<ed> que hay que forzar a ser matriz
      R/rgf.R
        90: #          1<aa> modificacion: si inFl 
        120: # CHANGES: 20/04/2010 - a<f1>adir comprobacion de parametros 
    
    The Title field should be in title case, current version then in title case:
    ‘2d Rain Use Efficience model’
    ‘2d Rain Use Efficience Model’
    
    The Description field should start with a capital letter.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

# RAC

Version: 1.1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Baldan D. <damiano.baldan91@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# randomizationInference

Version: 1.0.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Joseph J. Lee <joseph.j.lee@post.harvard.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

Version: 1.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Fabian Mueller <rnbeads@mpi-inf.mpg.de>’
    
    The Title field is just the package name: provide a real title.
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 6355567 bytes
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘cluster’ ‘ff’
      ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’ ‘matrixStats’
      ‘illuminaio’ ‘methylumi’ ‘plyr’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        bin   1.0Mb
        doc   3.2Mb
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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'RnBeads.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `vmargin.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    [american]{babel}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# RTransProb

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: TransitionProb
    > ### Title: Estimation of credit transition probabilities
    > ### Aliases: TransitionProb
    > 
    > ### ** Examples
    > 
    > 
    > #Example 1:
    > #When start date and end date are not specified, the entire dataset is used and the package
    > #performs TTC calculations. Equally when snapshots and interval are not specified the defaults
    > #are 1.
    > snapshots <- 0
    > interval <- 0
    > startDate  <- 0
    > endDate    <- 0
    > Example1<-TransitionProb(data,startDate,endDate,'cohort', snapshots, interval)
    Error in if (is.nan(rating)) { : the condition has length > 1
    Calls: TransitionProb -> getidTotCntCohort
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Ab NDiaye <pabdndiaye@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# samr

Version: 2.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Rob Tibshirani <tibs@stanford.edu>’
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls to packages already attached by Depends:
      ‘impute’ ‘matrixStats’
      Please remove these calls from your code.
    Packages in Depends field not imported from:
      ‘impute’ ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    samr.plot: no visible global function definition for ‘abline’
    samr.tail.strength: no visible global function definition for ‘var’
    samr.xl.compute.plot.xy: no visible global function definition for
      ‘points’
    samr.xl.compute.plot.xy: no visible global function definition for
      ‘abline’
    samr.xl.impute.data: no visible global function definition for
      ‘impute.knn’
    samr.xl.impute.data: no visible binding for global variable
      ‘samr.xl.var.knn.neighbors’
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
      ‘plot.SAMoutput’ ‘print.SAMoutput’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# scater

Version: 1.4.0

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://img.shields.io/codecov/c/github/davismcc/scater/master.svg
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "img.shields.io" 443
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Davis McCarthy <davis@ebi.ac.uk>’
    
    The Title field should be in title case, current version then in title case:
    ‘Single-cell analysis toolkit for gene expression data in R’
    ‘Single-Cell Analysis Toolkit for Gene Expression Data in R’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 5853441 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Davis McCarthy’
      Authors@R: ‘Davis McCarthy [aut, cre], Quin Wills [aut], Kieran Campbell [aut], Vladimir Kiselev [ctb], Aaron Lun [ctb]’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'arrange':
      ‘arrange.SCESet’
    
    S3 methods shown with full name in documentation object 'filter':
      ‘filter.SCESet’
    
    S3 methods shown with full name in documentation object 'mutate':
      ‘mutate.SCESet’
    
    S3 methods shown with full name in documentation object 'rename':
      ‘rename.SCESet’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# scone

Version: 1.0.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘scone-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: biplot_interactive
    > ### Title: Interactive biplot
    > ### Aliases: biplot_interactive
    > 
    > ### ** Examples
    > 
    > mat <- matrix(rpois(1000, lambda = 5), ncol=10)
    > colnames(mat) <- paste("X", 1:ncol(mat), sep="")
    > obj <- SconeExperiment(mat)
    > res <- scone(obj, scaling=list(none=identity,
    +    uq=UQ_FN, deseq=DESEQ_FN,  fq=FQT_FN),
    + evaluate=TRUE, k_ruv=0, k_qc=0, eval_kclust=2,
    +    bpparam = BiocParallel::SerialParam())
    Error in if (rezero) { : the condition has length > 1
    Calls: scone -> scone -> .local
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 16
      1. Error: all back-ends work (@test_bpparam.R#17) 
      2. Error: get_normalized works in all three modes (@test_get_design.R#18) 
      3. Error: get_normalized works in all three modes (@test_get_norm.R#18) 
      4. Error: get_normalized works in all three modes with nested model (@test_get_norm.R#76) 
      5. Error: return_norm in memory (@test_hdf5.R#44) 
      6. Error: do not return_norm (@test_hdf5.R#65) 
      7. Error: Upper-quartile normalization works the same as in the edgeR package (@test_norm.R#15) 
      8. Error: Test with no real method (only identity) (@test_scone.R#12) 
      9. Error: Test imputation and scaling (@test_scone.R#129) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Michael Cole <mbeloc@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Single Cell Overview of Normalized Expression data’
    ‘Single Cell Overview of Normalized Expression Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘EDASeq’
      All declared Imports should be used.
    ```

# SemiParSampleSel

Version: 1.5

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Giampiero Marra <giampiero.marra@ucl.ac.uk>’
    
    This build time stamp is over a month old.
    ```

# SGP

Version: 1.7-0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Damian W. Betebenner <dbetebenner@nciea.org>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# shinyMethyl

Version: 1.12.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    Loading required package: IlluminaHumanMethylation450kmanifest
    Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
    Loading required package: shiny
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'shinyMethyl.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jean-Philippe Fortin <jfortin@jhsph.edu>’
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘Url’
    
    The Title field should be in title case, current version then in title case:
    ‘Interactive visualization for Illumina methylation arrays’
    ‘Interactive Visualization for Illumina Methylation Arrays’
    
    This build time stamp is over a month old.
    
    Size of tarball: 9265239 bytes
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      .travis.yml
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

# SICtools

Version: 1.6.0

## In both

*   checking whether package ‘SICtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘plyr::count’ by ‘matrixStats::count’ when loading ‘SICtools’
    See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Xiaobin Xing <xiaobinxing0316@gmail.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Find SNV/Indel differences between two bam files with near relationship’
    ‘Find SNV/Indel Differences Between Two Bam Files with Near Relationship’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Rsamtools’ ‘doParallel’ ‘Biostrings’ ‘stringr’ ‘matrixStats’ ‘plyr’
      ‘GenomicRanges’ ‘IRanges’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    
    CRAN-pack does not know about
      .BBSoptions
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
    final dispersion estimates
    Warning: Removed 1634 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1634 rows containing non-finite values (stat_boxplot).
    Warning: Removed 1454 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1454 rows containing non-finite values (stat_boxplot).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mTECs.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Alejandro Reyes <alejandro.reyes@embl.de>’
    
    The Title field should be in title case, current version then in title case:
    ‘Single Cell Transcriptome Data and Analysis of Mouse mTEC cells’
    ‘Single Cell Transcriptome Data and Analysis of Mouse mTEC Cells’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 955580345 bytes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 915.5Mb
      sub-directories of 1Mb or more:
        data  898.7Mb
        doc    16.7Mb
    ```

# sizeMat

Version: 0.3.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Josymar Torrejon-Magallanes <ejosymart@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mcmc’
      All declared Imports should be used.
    ```

# splatter

Version: 1.0.3

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://img.shields.io/codecov/c/github/Oshlack/splatter/master.svg
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "img.shields.io" 443
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    ...
      if any, to sign a "copyright disclaimer" for the program, if necessary.
      For more information on this, and how to apply and follow the GNU GPL, see
      <http://www.gnu.org/licenses/>.
      
        The GNU General Public License does not permit incorporating your program
      into proprietary programs.  If your program is a subroutine library, you
      may consider it more useful to permit linking proprietary applications with
      the library.  If this is what you want to do, use the GNU Lesser General
      Public License instead of this License.  But first, please read
      <http://www.gnu.org/philosophy/why-not-lgpl.html>.
    
    The Title field should be in title case, current version then in title case:
    ‘Simple Simulation of Single-cell RNA Sequencing Data’
    ‘Simple Simulation of Single-Cell RNA Sequencing Data’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Luke Zappia’
      Authors@R: ‘Luke Zappia [aut, cre], Belinda Phipson [aut], Alicia Oshlack [aut]’
    ```

# SRGnet

Version: 1.2.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Isar Nassiri <isar_nassiri@urmc.rochester.edu>’
    
    The Title field starts with the package name.
    The Title field should be in title case, current version then in title case:
    ‘SRGnet: An R package for studying synergistic response to gene mutations from transcriptomics data from transcriptomics data’
    ‘SRGnet: An R Package for Studying Synergistic Response to Gene Mutations from Transcriptomics Data from Transcriptomics Data’
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘EBcoexpress’ ‘MASS’ ‘igraph’ ‘pvclust’ ‘gbm’ ‘limma’ ‘DMwR’
      ‘matrixStats’ ‘Hmisc’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Isar Nassiri [aut, cre], Matthew McCall [aut, cre]’
      Authors@R: ‘Isar Nassiri [aut, cre]’
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

# statar

Version: 0.6.5

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://img.shields.io/codecov/c/github/matthieugomez/statar/master.svg
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "img.shields.io" 443
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Matthieu Gomez <mattg@princeton.edu>’
    
    This build time stamp is over a month old.
    ```

# stm

Version: 1.2.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Brandon Stewart <bms4@princeton.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    stm v1.2.2 (2017-03-28) successfully loaded. See ?stm for help.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'stmVignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `ulem.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.57 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# STROMA4

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Sadiq Saleh <sadiq.mehdiismailsaleh@mail.mcgill.ca>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    ----670 out of 705 total genes matching for IM.property----
    ----315 out of 458 total genes matching for T.stroma.property----
    ----449 out of 473 total genes matching for BL1.property----
    ----20 out of 27 total genes matching for E.stroma.property----
    ----269 out of 291 total genes matching for BL2.property----
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'STROMA4-vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `a4wide.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.11 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# StructFDR

Version: 1.2

## In both

*   checking examples ... ERROR
    ```
    ...
    + 	obj <- apply(X, 1, function(x) {
    + 				ttest.obj <- t.test(x ~ Y)
    + 				c(ttest.obj$p.value, sign(ttest.obj$statistic))
    + 			})
    +     return(list(p.value=obj[1, ], e.sign=obj[2, ]))
    + }
    > 
    > perm.func <- function (X, Y) {
    + 	return(list(X=X, Y=sample(Y)))
    + }
    > 
    > # Call StructFDR
    > tree.fdr.obj <- StructFDR(X, Y, D, test.func, perm.func)
    Warning in StructFDR(X, Y, D, test.func, perm.func) :
      Both the data matrix and the distance matrix should have labels (rownames) to avoid potential errors!
    
    Test on original data sets  ...
    Test on permuted data sets  ...
    Error in if (alt.FDR == "Permutation") { : the condition has length > 1
    Calls: StructFDR
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jun Chen <chen.jun2@mayo.edu>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# summarytools

Version: 0.6.5

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Dominic Comtois <dominic.comtois@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# sva

Version: 3.24.4

## In both

*   checking CRAN incoming feasibility ... WARNING
    ```
    Maintainer: ‘Jeffrey T. Leek <jtleek@gmail.com>, John D. Storey <jstorey@princeton.edu>, W. Evan Johnson <wej@bu.edu>’
    
    The maintainer field is invalid or specifies more than one person
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Adjusting for0covariate(s) or covariate level(s)
    Fitting L/S model and finding priors
    Finding parametric adjustments
    Adjusting the Data
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'sva.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `sectsty.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.38 \sectionfont
                     {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# tmlenet

Version: 0.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Oleg Sofrygin <oleg.sofrygin@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# topGO

Version: 2.28.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Adrian Alexa <adrian.alexa@gmail.com>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘BiocGenerics’ ‘graph’ ‘Biobase’ ‘GO.db’ ‘AnnotationDbi’ ‘SparseM’
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
    			 -- Classic Algorithm -- 
    
    		 the algorithm is scoring 3965 nontrivial nodes
    		 parameters: 
    			 test statistic: fisher
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
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
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ttScreening

Version: 1.5

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Meredith Ray <mere2110@yahoo.com>’
    
    The Title field should be in title case, current version then in title case:
    ‘Genome-wide DNA methylation sites screening by use of training and testing samples.’
    ‘Genome-Wide DNA Methylation Sites Screening by Use of Training and Testing Samples.’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    ttScreening: no visible global function definition for ‘gaussian’
    ttScreening: no visible global function definition for ‘glm.control’
    ttScreening: no visible global function definition for ‘model.response’
    ttScreening: no visible global function definition for ‘is.empty.model’
    ttScreening: no visible global function definition for ‘model.matrix’
    ttScreening: no visible global function definition for ‘na.omit’
    ttScreening: no visible global function definition for ‘terms’
    ttScreening: no visible global function definition for ‘capture.output’
    ttScreening: no visible global function definition for ‘glm’
    ttScreening: no visible binding for global variable ‘gaussian’
    ttScreening: no visible global function definition for ‘pt’
    ttScreening: no visible global function definition for ‘p.adjust’
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Robert Scharpf <rscharpf@jhsph.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘A Hidden Markov Model for high throughput genotyping arrays’
    ‘A Hidden Markov Model for High Throughput Genotyping Arrays’
    
    The Date field is not in ISO 8601 yyyy-mm-dd format.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘doMC’ ‘doMPI’ ‘doSNOW’ ‘doParallel’ ‘doRedis’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BSgenome.Hsapiens.UCSC.hg18’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘SummarizedExperiment:::.ShallowSimpleListAssays0’
      See the note in ?`:::` about the use of this operator.
    ```

# visualFields

Version: 0.4.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Ivan Marin-Franch <ivan.marin@uv.es>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# wateRmelon

Version: 1.20.3

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Leo <lschal@essex.ac.uk>’
    
    Unknown, possibly mis-spelled, fields in DESCRIPTION:
      ‘Tue Mar 22 11’
    
    The Title field should be in title case, current version then in title case:
    ‘Illumina 450 methylation array normalization and metrics’
    ‘Illumina 450 Methylation Array Normalization and Metrics’
    
    The Description field should start with a capital letter.
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    
    Size of tarball: 14917546 bytes
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Biobase’ ‘limma’ ‘matrixStats’ ‘methylumi’ ‘lumi’ ‘ROC’
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘illuminaio’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.7Mb
      sub-directories of 1Mb or more:
        data  14.1Mb
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
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ‘ROC’ ‘illuminaio’
      ‘limma’ ‘lumi’ ‘matrixStats’ ‘methods’ ‘methylumi’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘minfi:::.isRGOrStop’
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

# WGCNA

Version: 1.61

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Peter Langfelder <Peter.Langfelder@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# XBSeq

Version: 1.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
      
      The following object is masked from 'package:base':
      
          apply
      
          Welcome to 'XBSeq'.
      > 
      > test_check("XBSeq")
      estimating parameters using MLE for group one 
      estimating parameters using MLE for group two 
      Error: XBplot(XB, Samplenum = "Sample_54_WT") did not throw an error.
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Yuanhang Liu <liuy12@uthscsa.edu>’
    
    The Title field should be in title case, current version then in title case:
    ‘Test for differential expression for RNA-seq data’
    ‘Test for Differential Expression for RNA-Seq Data’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
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

Version: 1.2.0

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
    > host<-"dec2013.archive.ensembl.org"; biomart<-"ENSEMBL_MART_ENSEMBL";
    > genes <- sapply(strsplit(rownames(skin),split="\\."),function(i)i[1])
    > newskin <-annotateFromBiomart(skin,genes=genes,biomar=biomart,host=host)
    Error in value[[3L]](cond) : 
      Request to BioMart web service failed. Verify if you are still connected to the internet.  Alternatively the BioMart web service is temporarily down.
    Calls: annotateFromBiomart ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.39 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'yarn.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Joseph N Paulson <jpaulson@jimmy.harvard.edu>’
    
    The Title field starts with the package name.
    
    This build time stamp is over a month old.
    ```

