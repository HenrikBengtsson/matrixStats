# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.1 (2017-06-30) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2017-08-31                   |

## Packages

|package        |*  |version |date       |source          |
|:--------------|:--|:-------|:----------|:---------------|
|base64enc      |   |0.1-3   |2015-07-28 |cran (@0.1-3)   |
|ggplot2        |   |2.2.1   |2016-12-30 |cran (@2.2.1)   |
|knitr          |   |1.17    |2017-08-10 |cran (@1.17)    |
|matrixStats    |   |0.52.2  |2017-04-14 |cran (@0.52.2)  |
|microbenchmark |   |1.4-2.1 |2015-11-25 |cran (@1.4-2.1) |
|R.devices      |   |2.15.1  |2016-11-10 |cran (@2.15.1)  |
|R.rsp          |   |0.41.0  |2017-04-16 |cran (@0.41.0)  |

# Check results

27 packages with problems

|package           |version | errors| warnings| notes|
|:-----------------|:-------|------:|--------:|-----:|
|anomalyDetection  |0.1.2   |      1|        0|     0|
|BatchQC           |1.5.0   |      0|        1|     1|
|ChAMP             |2.9.9   |      0|        1|     5|
|Chicago           |1.5.0   |      1|        1|     5|
|clusterExperiment |1.3.2   |      2|        1|     2|
|consensusOV       |0.99.3  |      0|        1|     1|
|DelayedArray      |0.3.19  |      1|        0|     0|
|EasyqpcR          |1.19.0  |      1|        0|     1|
|flowCore          |1.43.5  |      0|        2|    10|
|funtooNorm        |1.1.0   |      0|        1|     0|
|GUIDEseq          |1.7.3   |      1|        1|     3|
|Gviz              |1.21.2  |      0|        2|     4|
|LS2Wstat          |2.0-3   |      0|        1|     2|
|metagenomeSeq     |1.19.0  |      0|        1|     0|
|metavizr          |1.1.2   |      1|        0|     0|
|methylumi         |2.23.0  |      0|        2|     9|
|MIGSA             |1.1.1   |      1|        1|     1|
|monocle           |2.5.4   |      0|        5|     3|
|PathoStat         |1.3.0   |      0|        1|     0|
|QDNAseq           |1.13.0  |      0|        1|     0|
|RnBeads           |1.9.0   |      1|        3|     5|
|RTransProb        |0.1.0   |      1|        0|     0|
|scone             |1.1.2   |      2|        0|     4|
|SICtools          |1.7.0   |      0|        1|     4|
|splatter          |1.1.4   |      1|        0|     1|
|StructFDR         |1.2     |      1|        0|     0|
|XBSeq             |1.7.0   |      1|        0|     3|

## anomalyDetection (0.1.2)
Maintainer: Bradley Boehmke <bradleyboehmke@gmail.com>  
Bug reports: https://github.com/AFIT-R/anomalyDetection/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
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
  OK: 120 SKIPPED: 0 FAILED: 1
  1. Error: bd_row provides proper messages and warnings (@test_bd_row.R#12) 
  
  Error: testthat unit tests failed
  Execution halted
```

## BatchQC (1.5.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/BatchQC/issues

0 errors | 1 warning  | 1 note 

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘lmFitC’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking R code for possible problems ... NOTE
gls.series.C: no visible global function definition for ‘lm.fit’
Undefined global functions or variables:
  lm.fit
Consider adding
  importFrom("stats", "lm.fit")
to your NAMESPACE file.
```

## ChAMP (2.9.9)
Maintainer: Yuan Tian  <champ450k@gmail.com>

0 errors | 1 warning  | 5 notes

```
checking package subdirectories ... WARNING
Problems with news in ‘inst/NEWS.Rd’:
  inst/NEWS.Rd:67: unexpected END_OF_INPUT '
  '

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘minfi’ ‘ChAMPdata’ ‘FEM’ ‘DMRcate’ ‘Illumina450ProbeVariants.db’
  ‘IlluminaHumanMethylationEPICmanifest’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 11.6Mb
  sub-directories of 1Mb or more:
    doc       9.5Mb
    extdata   1.9Mb

checking DESCRIPTION meta-information ... NOTE
Package listed in more than one of Depends, Imports, Suggests, Enhances:
  ‘rmarkdown’
A package should be listed in only one of these fields.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File ‘ChAMP/R/Block.GUI.R’:
  data(probe.features.epic)
  data(probe.features)
File ‘ChAMP/R/CpG.GUI.R’:
  data(probe.features.epic)
  data(probe.features)
File ‘ChAMP/R/DMP.GUI.R’:
  data(MatchGeneName)
... 46 lines ...
  data(probe.features.epic)
  data(probe.features)
File ‘ChAMP/R/champ.norm.R’:
  data(probeInfoALL.epic.lv)
  data(probeInfoALL.lv)
  data(probeInfoALL.epic.lv)
  data(probeInfoALL.lv)
File ‘ChAMP/R/champ.refbase.R’:
  data(CellTypeMeans27K)
  data(CellTypeMeans450K)
See section ‘Good practice’ in ‘?data’.

checking Rd line widths ... NOTE
Rd file 'champ.filter.Rd':
  \examples lines wider than 100 characters:
             myfilter <- champ.filter(beta=myImport$beta,pd=myImport$pd,detP=myImport$detP,beadcount=myImport$beadcount)

These lines will be truncated in the PDF manual.
```

## Chicago (1.5.0)
Maintainer: Mikhail Spivakov <spivakov@babraham.ac.uk>

1 error  | 1 warning  | 5 notes

```
checking examples ... ERROR
Running examples in ‘Chicago-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: exportResults
> ### Title: Export Results
> ### Aliases: exportResults exportToGI
> 
> ### ** Examples
... 30 lines ...
Preprocessing for WashU outputs...
Writing out text file for WashU browser upload...
> 
> GI <- exportToGI(cdUnitTest)
Reading the restriction map file...
Reading the bait map file...
Preparing the output table...
Error in loadNamespace(name) : 
  there is no package called ‘GenomicInteractions’
Calls: exportToGI ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Calculating p-values...
Approximating 3 very small p-values.

*** Running getScores...

Calculating p-value weights...
... 8 lines ...
Removing duplicated other-ends from significant interactions (same will happen with samples)...
Bin non-significant interactions according to distance from bait before drawing random samples...
Draw random samples...
Sum number of overlaps with feature in our significant interactions and in our samples...
Plotting barplot number of overlaps for features and samples...
Returning table with results...

Quitting from lines 277-280 (Chicago.Rmd) 
Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
there is no package called 'GenomicInteractions'
Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘GenomicInteractions’

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .BBSoptions
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘session.txt’

checking Rd line widths ... NOTE
Rd file 'mergeSamples.Rd':
  \usage lines wider than 90 characters:
           NcolNormPrefix = "NNorm", mergeMethod = c("weightedMean", "mean")[1], repNormCounts = (mergeMethod=="mean"))

Rd file 'peakEnrichment4Features.Rd':
  \examples lines wider than 100 characters:
     peakEnrichment4Features(cdUnitTest, folder=ChIPdir, list_frag = featuresList, no_bins = 500, sample_number = 100)

These lines will be truncated in the PDF manual.

checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘GenomicInteractions’
```

## clusterExperiment (1.3.2)
Maintainer: Elizabeth Purdom <epurdom@stat.berkeley.edu>  
Bug reports: https://github.com/epurdom/clusterExperiment/issues

2 errors | 1 warning  | 2 notes

```
checking examples ... ERROR
Running examples in ‘clusterExperiment-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: clusterContrasts,ClusterExperiment-method
> ### Title: Create contrasts for testing DE of a cluster
> ### Aliases: clusterContrasts,ClusterExperiment-method clusterContrasts
> ###   clusterContrasts,vector-method
> 
> ### ** Examples
> 
> data(simData)
> cl <- clusterMany(simData,nPCADims=c(5,10,50),  dimReduce="PCA",
+ clusterFunction="pam", ks=2:4, findBestK=c(FALSE), removeSil=TRUE,
+ subsample=FALSE)
> #Pairs:
> clusterContrasts(cl,contrastType="Pairs")
Error in if (outputType == "MAST" & !requireNamespace("MAST", quietly = TRUE)) stop("for outputType 'MAST', you must have package 'MAST' from Bioconductor installed.") : 
  the condition has length > 1
Calls: clusterContrasts ... .local -> clusterContrasts -> clusterContrasts -> .local
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’ [125s/125s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Note: Merging will be done on ' clusterSingle ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  Note: Merging will be done on ' nPCAFeatures=5,k=NA,findBestK=TRUE ', with clustering index 1 
  testthat results ================================================================
  OK: 484 SKIPPED: 0 FAILED: 1
  1. Error: `clusterContrasts` works with matrix and ClusterExperiment objects (@test_getBestFeatures.R#6) 
  
  Error: testthat unit tests failed
  Execution halted

checking Rd files ... WARNING
mergeClusters.Rd: non-ASCII input and no declared encoding
plotClusters.Rd: non-ASCII input and no declared encoding
problems found in ‘mergeClusters.Rd’, ‘plotClusters.Rd’

checking dependencies in R code ... NOTE
':::' call which should be '::': ‘ape:::.PlotPhyloEnv’
  See the note in ?`:::` about the use of this operator.
Unexported object imported by a ':::' call: ‘ape:::.matchDataPhylo’
  See the note in ?`:::` about the use of this operator.

checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
```

## consensusOV (0.99.3)
Maintainer: Benjamin Haibe-Kains <benjamin.haibe.kains@utoronto.ca>  
Bug reports: https://github.com/bhklab/consensusOV/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: survcomp
Loading required package: survival
Loading required package: prodlim
Loading required package: mclust
Package 'mclust' version 5.3
Type 'citation("mclust")' for citing this R package in publications.
Loading required package: limma
... 8 lines ...
Loading required package: biomaRt
Loading required package: iC10
Loading required package: pamr
Loading required package: cluster
Loading required package: iC10TrainingData
Loading required package: AIMS
Loading required package: e1071
Quitting from lines 55-56 (consensusOV.Rmd) 
Error: processing vignette 'consensusOV.Rmd' failed with diagnostics:
4 simultaneous processes spawned
Execution halted

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘appveyor.yml’
```

## DelayedArray (0.3.19)
Maintainer: Hervé Pagès <hpages@fredhutch.org>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required and available but unsuitable versions:
  ‘S4Vectors’ ‘IRanges’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## EasyqpcR (1.19.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking whether package ‘EasyqpcR’ can be installed ... ERROR
Installation failed.
See ‘/home/hb/repositories/matrixStats/revdep/checks/EasyqpcR.Rcheck/00install.out’ for details.

checking package namespace information ... NOTE
  Namespace with empty importFrom: ‘gWidgetsRGtk2’
```

## flowCore (1.43.5)
Maintainer: M.Jiang <wjiang2@fhcrc.org>

0 errors | 2 warnings | 10 notes

```
checking Rd \usage sections ... WARNING
Documented arguments not in \usage in documentation object 'read.flowSet':
  ‘truncate_max_range’

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 301-303 (HowTo-flowCore.Rnw) 
Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
there is no package called 'ggcyto'
Execution halted


checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘flowWorkspace’ ‘openCyto’ ‘ggcyto’

checking if this is a source package ... NOTE
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

checking installed package size ... NOTE
  installed size is 34.1Mb
  sub-directories of 1Mb or more:
    data      5.0Mb
    extdata   1.1Mb
    lib      20.3Mb
    libs      5.6Mb

checking DESCRIPTION meta-information ... NOTE
Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2

checking top-level files ... NOTE
Non-standard files/directories found at top level:
  ‘examples’ ‘hyperlog.notice.html’ ‘paper’ ‘unitTests’

checking dependencies in R code ... NOTE
'library' or 'require' call to ‘Rgraphviz’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.data.frame.manyFilterResult
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
rbind2,flowSet-flowSet: warning in assign(i, x[[i]], env = env):
  partial argument match of 'env' to 'envir'
rbind2,flowSet-flowSet: warning in assign(i, y[[i]], env = env):
  partial argument match of 'env' to 'envir'
%in%,flowFrame-norm2Filter: no visible global function definition for
  ‘cov.rob’
spillover,flowSet: no visible global function definition for
  ‘devAskNewPage’
spillover,flowSet : <anonymous>: no visible global function definition
... 6 lines ...
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

checking Rd line widths ... NOTE
Rd file 'FCSTransTransform.Rd':
  \usage lines wider than 90 characters:
     FCSTransTransform(transformationId = "defaultFCSTransTransform", channelrange = 2^18, channeldecade = 4.5, range = 4096, cutoff = -111, ... [TRUNCATED]

Rd file 'biexponentialTransform.Rd':
  \usage lines wider than 90 characters:
     biexponentialTransform(transformationId="defaultBiexponentialTransform", a = 0.5, b = 1, c = 0.5, d = 1, f = 0, w = 0, tol = .Machine$d ... [TRUNCATED]

Rd file 'compensation-class.Rd':
... 10 lines ...
                 decades=0, ncdf = FALSE, min.limit=NULL, truncate_max_range = TRUE, dataset=NULL, emptyValue=TRUE, ...)

Rd file 'spillover-flowSet.Rd':
  \usage lines wider than 90 characters:
             ssc = "SSC-A", method = "median", stain_match = c("intensity", "ordered", "regexpr"),

Rd file 'splitScaleTransform.Rd':
  \usage lines wider than 90 characters:
     splitScaleTransform(transformationId="defaultSplitscaleTransform", maxValue=1023, transitionChannel=64, r=192)

These lines will be truncated in the PDF manual.

checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```

## funtooNorm (1.1.0)
Maintainer: Kathleen Klein <kathleen.klein@mail.mcgill.ca>

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘funtooNorm.pdf’ from 1239Kb to 199Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## GUIDEseq (1.7.3)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>

1 error  | 1 warning  | 3 notes

```
checking examples ... ERROR
Running examples in ‘GUIDEseq-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: GUIDEseqAnalysis
> ### Title: Analysis pipeline for GUIDE-seq dataset
> ### Aliases: GUIDEseqAnalysis
> ### Keywords: misc
> 
... 50 lines ...
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

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
  No matching found, please check your input sequence, and make
            sure you are using the right genome. You can also alter your 
            search criteria such as increasing max.mismatch!
Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
  No matching found, please check your input sequence, and make
            sure you are using the right genome. You can also alter your 
... 8 lines ...
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

checking installed package size ... NOTE
  installed size is 11.1Mb
  sub-directories of 1Mb or more:
    extdata  10.6Mb

checking R code for possible problems ... NOTE
annotateOffTargets: no visible binding for global variable
  'offTarget_Start'
annotateOffTargets: no visible global function definition for 'exons'
annotateOffTargets: no visible global function definition for
  'seqlevelsStyle<-'
annotateOffTargets: no visible global function definition for 'genes'
annotateOffTargets: no visible global function definition for 'toTable'
getPeaks: no visible binding for global variable 'adjusted.p.value'
getPeaks: no visible binding for global variable 'SNratio'
... 8 lines ...
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

checking Rd files ... NOTE
prepare_Rd: annotateOffTargets.Rd:33-35: Dropping empty section \details
prepare_Rd: annotateOffTargets.Rd:43-45: Dropping empty section \references
prepare_Rd: createBarcodeFasta.Rd:42-43: Dropping empty section \value
prepare_Rd: createBarcodeFasta.Rd:44-46: Dropping empty section \references
prepare_Rd: getUsedBarcodes.Rd:39-41: Dropping empty section \references
```

## Gviz (1.21.2)
Maintainer: Florian Hahne <florian.hahne@novartis.com>

0 errors | 2 warnings | 4 notes

```
checking for missing documentation entries ... WARNING
Undocumented S4 methods:
  generic '[' and siglist 'GenomeAxisTrack,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'Gviz.tex' failed.
LaTeX errors:
! Undefined control sequence.
l.31 \soulregister
                  {\link}{1}% necessary for compatibility with LaTeX soul pa...
The control sequence at the end of the top line
... 8 lines ...
<to be read again> 
                   \par 
l.31 \soulregister{\link}
                         {1}% necessary for compatibility with LaTeX soul pa...
! LaTeX Error: Missing \begin{document}.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking installed package size ... NOTE
  installed size is  6.0Mb
  sub-directories of 1Mb or more:
    doc       1.7Mb
    extdata   2.1Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘Rplots.pdf’

checking R code for possible problems ... NOTE
.buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
  'cdsBy'
.buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
  'fiveUTRsByTranscript'
.buildRange,TxDb-ANY-ANY-ANY: no visible global function definition for
  'threeUTRsByTranscript'
Undefined global functions or variables:
  cdsBy fiveUTRsByTranscript threeUTRsByTranscript

checking Rd line widths ... NOTE
Rd file 'AlignmentsTrack-class.Rd':
  \usage lines wider than 90 characters:
                     stacking="squish", id, cigar, mapq, flag, isize, groupid, status, md, seqs,
                     name="AlignmentsTrack", isPaired=TRUE, importFunction, referenceSequence, ...)

Rd file 'AnnotationTrack-class.Rd':
  \examples lines wider than 100 characters:
     annTrack <- AnnotationTrack(start=st, end=ed, strand=str, chromosome=7, genome="hg19", feature="test",
                                 group=gr, id=paste("annTrack item", 1:4), name="generic annotation", stacking="squish")

Rd file 'CustomTrack-class.Rd':
  \usage lines wider than 90 characters:
     CustomTrack(plottingFunction=function(GdObject, prepare=FALSE, ...){}, variables=list(), name="CustomTrack",  ...)

Rd file 'HighlightTrack-class.Rd':
  \usage lines wider than 90 characters:
     HighlightTrack(trackList=list(), range=NULL, start=NULL, end=NULL, width=NULL, chromosome, genome,

These lines will be truncated in the PDF manual.
```

## LS2Wstat (2.0-3)
Maintainer: Matt Nunes <m.nunes@lancaster.ac.uk>

0 errors | 1 warning  | 2 notes

```
checking whether package ‘LS2Wstat’ can be installed ... WARNING
Found the following significant warnings:
  Warning: no DISPLAY variable so Tk is not available
See ‘/home/hb/repositories/matrixStats/revdep/checks/LS2Wstat.Rcheck/00install.out’ for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking R code for possible problems ... NOTE
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

## metagenomeSeq (1.19.0)
Maintainer: Joseph N. Paulson <jpaulson@jimmy.harvard.edu>  
Bug reports: https://github.com/nosson/metagenomeSeq/issues

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘metagenomeSeq.pdf’ from 976Kb to 673Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## metavizr (1.1.2)
Maintainer: Hector Corrada Bravo <hcorrada@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘metavizr-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: startMetavizStandalone
> ### Title: Start metaviz app in standalone (locally) and create
> ###   'MetavizApp' object to manage connection.
> ### Aliases: startMetavizStandalone
> 
> ### ** Examples
> 
> # see package vignette for example usage
> app <- startMetavizStandalone()
checking for updates to epiviz app...
done
Error in .wait_until_connected(app$server) : 
  [epivizrStandalone] Error starting app. UI unable to connect to websocket server.
Calls: startMetavizStandalone ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted
```

## methylumi (2.23.0)
Maintainer: Sean Davis <sdavis2@mail.nih.gov>  
Bug reports: https://github.com/seandavi/methylumi/issues/new

0 errors | 2 warnings | 9 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘IDATsToMatrices’ ‘IDATtoMatrix’ ‘tcgaPipeline’
Undocumented S4 methods:
  generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
  generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking contents of ‘data’ directory ... WARNING
Files not of a type allowed in a ‘data’ directory:
  ‘5318317007_A_Grn.idat’ ‘5318317007_A_Red.idat’
  ‘5318317007_B_Grn.idat’ ‘5318317007_B_Red.idat’
  ‘5318317007_C_Grn.idat’ ‘5318317007_C_Red.idat’
Please use e.g. ‘inst/extdata’ for non-R data files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
  ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .travis.yml
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.

checking installed package size ... NOTE
  installed size is  9.7Mb
  sub-directories of 1Mb or more:
    data      6.8Mb
    extdata   1.7Mb

checking DESCRIPTION meta-information ... NOTE
Packages listed in more than one of Depends, Imports, Suggests, Enhances:
  ‘Biobase’ ‘minfi’ ‘lattice’ ‘matrixStats’
A package should be listed in only one of these fields.

checking dependencies in R code ... NOTE
'library' or 'require' calls to packages already attached by Depends:
  ‘FDb.InfiniumMethylation.hg19’ ‘ggplot2’ ‘matrixStats’ ‘minfi’
  ‘reshape2’ ‘scales’
  Please remove these calls from your code.
'library' or 'require' calls in package code:
  ‘Biostrings’ ‘MASS’ ‘lumi’ ‘parallel’ ‘rtracklayer’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
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

checking R code for possible problems ... NOTE
getBarcodes: warning in list.files(path = path, patt = "idat"): partial
  argument match of 'patt' to 'pattern'
.getFinalReportBlock: no visible global function definition for
  ‘read.table’
.mclapply: no visible global function definition for ‘mclapply’
.parallel : <anonymous>: no visible global function definition for
  ‘ecdf’
.readOldMethylationFile: no visible global function definition for
  ‘read.delim’
... 213 lines ...

Found the following calls to data() loading into the global environment:
File ‘methylumi/R/coercions.R’:
  data(hm450.controls)
  data(hm27.controls)
File ‘methylumi/R/methylumIDAT.R’:
  data(hm27.controls)
  data(hm450.controls)
  data(hm27.ordering)
  data(hm450.ordering)
See section ‘Good practice’ in ‘?data’.

checking Rd files ... NOTE
prepare_Rd: estimateM.Rd:34-36: Dropping empty section \seealso
prepare_Rd: estimateM.Rd:37-39: Dropping empty section \examples

checking Rd line widths ... NOTE
Rd file 'methylumIDAT.Rd':
  \examples lines wider than 100 characters:
       lumi450k <- methylumIDAT(barcodes,idatPath=system.file('extdata/idat',package='methylumi')) # no normalization done

These lines will be truncated in the PDF manual.

checking for unstated dependencies in vignettes ... NOTE
'library' or 'require' call not declared from: ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
```

## MIGSA (1.1.1)
Maintainer: Juan C. Rodriguez <jcrodriguez@bdmg.com.ar>

1 error  | 1 warning  | 1 note 

```
checking tests ... ERROR
  Running ‘runTests.R’
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

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

See the pdftex.def package documentation for explanation.
Type  H <return>  for immediate help.
! Package pdftex.def Error: File `ClassDiagrams/geneSetsFunc-eps-converted-to.p
df' not found.

See the pdftex.def package documentation for explanation.
... 8 lines ...
' not found.

See the pdftex.def package documentation for explanation.
Type  H <return>  for immediate help.
! Package pdftex.def Error: File `ClassDiagrams/FitOptions-eps-converted-to.pdf
' not found.

See the pdftex.def package documentation for explanation.
Type  H <retur
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  FitOptions.data.frame FitOptions.default summary.GSEAparams
  summary.IGSAinput summary.MIGSAres summary.SEAparams
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```

## monocle (2.5.4)
Maintainer: Cole Trapnell <coletrap@uw.edu>

0 errors | 5 warnings | 3 notes

```
checking whether package ‘monocle’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘dplyr::union’ by ‘igraph::union’ when loading ‘monocle’
  Warning: replacing previous import ‘dplyr::as_data_frame’ by ‘igraph::as_data_frame’ when loading ‘monocle’
  Warning: replacing previous import ‘dplyr::groups’ by ‘igraph::groups’ when loading ‘monocle’
  Warning: replacing previous import ‘dplyr::arrange’ by ‘plyr::arrange’ when loading ‘monocle’
See ‘/home/hb/repositories/matrixStats/revdep/checks/monocle.Rcheck/00install.out’ for details.

checking Rd files ... WARNING
checkRd: (5) detectGenes.Rd:0-27: Must have a \description
checkRd: (5) plot_cell_trajectory.Rd:0-60: Must have a \description
prepare_Rd: reducedDimK.Rd:16-18: Dropping empty section \description
checkRd: (5) reducedDimK.Rd:0-24: Must have a \description

checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘addCellType’ ‘plot_genes_violin’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking Rd \usage sections ... WARNING
Undocumented arguments in documentation object 'newCellTypeHierarchy'
  ‘cth’

Documented arguments not in \usage in documentation object 'plot_genes_branched_pseudotime':
  ‘multi_branch’

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking Rd contents ... WARNING
Argument items with no description in Rd object 'plot_cell_trajectory':
  ‘show_state_number’ ‘state_number_size’


checking top-level files ... NOTE
Non-standard files/directories found at top level:
  ‘actual_vignette_holder’ ‘examples’

checking R code for possible problems ... NOTE
assign_cell_lineage: no visible global function definition for ‘nei’
buildBranchCellDataSet: no visible global function definition for ‘nei’
clusterCells: no visible binding for global variable ‘rho’
clusterCells: no visible binding for global variable ‘delta’
count_leaf_descendents: no visible global function definition for ‘nei’
cth_classifier_cds: no visible global function definition for ‘nei’
cth_classifier_cell: no visible global function definition for ‘nei’
diff_test_helper: no visible binding for global variable ‘Size_Factor’
extract_good_ordering: no visible global function definition for ‘nei’
... 14 lines ...
plot_multiple_branches_pseudotime: no visible binding for global
  variable ‘pseudocount’
plot_multiple_branches_pseudotime: no visible binding for global
  variable ‘Branch’
project2MST: no visible global function definition for ‘nei’
Undefined global functions or variables:
  Branch Size_Factor delta esApply exprs<- lowess nei next_node
  pseudocount rho
Consider adding
  importFrom("stats", "lowess")
to your NAMESPACE file.

checking files in ‘vignettes’ ... NOTE
The following files look like leftovers/mistakes:
  ‘monocle-vignette-knitr.bbl’, ‘monocle-vignette-knitr.log’,
  ‘monocle-vignette-knitr.toc’
Please remove them from your package.
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```

## PathoStat (1.3.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/PathoStat/issues

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘PathoStatUserManual.pdf’ from 1.9Mb to 1.0Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## QDNAseq (1.13.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 1 warning  | 0 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘exportVCF’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
```

## RnBeads (1.9.0)
Maintainer: Fabian Mueller <rnbeads@mpi-inf.mpg.de>

1 error  | 3 warnings | 5 notes

```
checking tests ... ERROR
  Running ‘runTests.R’
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

checking for executable files ... WARNING
Found the following executable files:
  inst/bin/linux_x86.64/bedGraphToBigWig
  inst/bin/linux_x86.64/bedToBigBed
  inst/bin/macOSX.i386/bedGraphToBigWig
  inst/bin/macOSX.i386/bedToBigBed
Source packages should not contain undeclared executable files.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.

checking dependencies in R code ... WARNING
Unexported objects imported by ':::' calls:
  'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
  'grDevices:::.smoothScatterCalcDensity'
  'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
  'minfi:::.normalizeFunnorm450k'
  See the note in ?`:::` about the use of this operator.
  Including base/recommended package(s):
  'grDevices'

checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘RnBeads.pdf’ from 2.8Mb to 1.5Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ggbio’

Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘cluster’ ‘ff’
  ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’ ‘matrixStats’
  ‘illuminaio’ ‘methylumi’ ‘plyr’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is  6.2Mb
  sub-directories of 1Mb or more:
    R     1.1Mb
    bin   1.0Mb
    doc   3.1Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘BinaryFiles’

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: no function found corresponding to methods exports from ‘RnBeads’ for: ‘samples’

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking R code for possible problems ... NOTE
.stopImplicitCluster: no visible global function definition for
  ‘stopCluster’
MethyLumiSet2RnBeadSet: no visible global function definition for
  ‘phenoData’
MethyLumiSet2RnBeadSet: no visible global function definition for
  ‘assayDataElementNames’
MethyLumiSet2RnBeadSet: no visible global function definition for
  ‘featureNames’
MethyLumiSet2RnBeadSet: no visible global function definition for
... 486 lines ...
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

## RTransProb (0.1.0)
Maintainer: Ab NDiaye <pabdndiaye@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘RTransProb-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
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

## scone (1.1.2)
Maintainer: Michael Cole <mbeloc@gmail.com>  
Bug reports: https://github.com/YosefLab/scone/issues

2 errors | 0 warnings | 4 notes

```
checking examples ... ERROR
Running examples in ‘scone-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: SCRAN_FN
> ### Title: Simple deconvolution normalization wrapper
> ### Aliases: SCRAN_FN
> 
> ### ** Examples
> 
> ei <- matrix(0:76,nrow = 7)
> eo <- SCRAN_FN(ei)
Error in SCRAN_FN(ei) : scran package needed for SCRAN_FN()
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’
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

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘scran’

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘ggplot2’ ‘plotly’ ‘visNetwork’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing or unexported object: ‘shiny::renderPlotly’

checking R code for possible problems ... NOTE
sconeReport: no visible global function definition for
  ‘visNetworkOutput’
sconeReport: no visible global function definition for ‘plotlyOutput’
sconeReport : server: no visible global function definition for
  ‘renderVisNetwork’
sconeReport : server: no visible global function definition for ‘%>%’
sconeReport : server: no visible global function definition for
  ‘visNetwork’
sconeReport : server: no visible global function definition for
... 46 lines ...
Undefined global functions or variables:
  %>% aes boxplot coord_cartesian element_blank geom_bar geom_point
  geom_violin ggplot ggplotly guides labs plot_ly plotlyOutput
  renderVisNetwork scale_fill_manual setNames theme var visEdges
  visGroups visHierarchicalLayout visLegend visNetwork visNetworkOutput
  visNetworkProxy visOptions visSelectNodes write.csv ylim
Consider adding
  importFrom("graphics", "boxplot")
  importFrom("stats", "setNames", "var")
  importFrom("utils", "write.csv")
to your NAMESPACE file.

checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘scran’
```

## SICtools (1.7.0)
Maintainer: Xiaobin Xing <xiaobinxing0316@gmail.com>

0 errors | 1 warning  | 4 notes

```
checking whether package ‘SICtools’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘plyr::count’ by ‘matrixStats::count’ when loading ‘SICtools’
See ‘/home/hb/repositories/matrixStats/revdep/checks/SICtools.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘Rsamtools’ ‘doParallel’ ‘Biostrings’ ‘stringr’ ‘matrixStats’ ‘plyr’
  ‘GenomicRanges’ ‘IRanges’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .BBSoptions
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.

checking R code for possible problems ... NOTE
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

checking Rd line widths ... NOTE
Rd file 'indelDiff.Rd':
  \usage lines wider than 90 characters:
     indelDiff(bam1, bam2, refFsa, regChr, regStart, regEnd, minBaseQuality = 13, minMapQuality = 0, nCores = 1, pValueCutOff= 0.05,gtDistCu ... [TRUNCATED]

Rd file 'snpDiff.Rd':
  \usage lines wider than 90 characters:
     snpDiff(bam1, bam2, refFsa, regChr, regStart, regEnd, minBaseQuality = 13, minMapQuality = 0, nCores = 1, pValueCutOff = 0.05, baseDist ... [TRUNCATED]

These lines will be truncated in the PDF manual.
```

## splatter (1.1.4)
Maintainer: Luke Zappia <luke.zappia@mcri.edu.au>  
Bug reports: https://github.com/Oshlack/splatter/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
  Running ‘testthat.R’ [19s/19s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  2: stop("The scDD simulation requires the 'scDD' package.")
  
  3. Error: scDD simulation output is valid (@test-scDD-simulate.R#4) ------------
  The scDD simulation requires the 'scDD' package.
  1: newSCDDParams(nDE = 5, nDP = 5, nDM = 5, nDB = 5, nEE = 5, nEP = 5) at testthat/test-scDD-simulate.R:4
  2: stop("The scDD simulation requires the 'scDD' package.")
  
  testthat results ================================================================
  OK: 38 SKIPPED: 0 FAILED: 3
  1. Error: constructor is valid (@test-SCDDParams.R#4) 
  2. Error: nGenes checks work (@test-SCDDParams.R#8) 
  3. Error: scDD simulation output is valid (@test-scDD-simulate.R#4) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘scran’
```

## StructFDR (1.2)
Maintainer: Jun Chen <chen.jun2@mayo.edu>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘StructFDR-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: StructFDR
> ### Title: False Discovery Rate (FDR) Control Integrating a General Prior
> ###   Structure
> ### Aliases: StructFDR
> ### Keywords: Multiple testing False discovery rate Genetics Metagenomics
... 39 lines ...
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

## XBSeq (1.7.0)
Maintainer: Yuanhang Liu <liuy12@uthscsa.edu>

1 error  | 0 warnings | 3 notes

```
checking tests ... ERROR
  Running ‘testthat.R’ [146s/146s]
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

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: no function found corresponding to methods exports from ‘XBSeq’ for: ‘conditions’, ‘conditions<-’, ‘dispTable’

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking R code for possible problems ... NOTE
Loglikhood : <anonymous>: no visible global function definition for
  ‘ddelap’
Loglikhood : <anonymous>: no visible global function definition for
  ‘dpois’
Loglikhood_NB : <anonymous>: no visible global function definition for
  ‘dnbinom’
MAplot: no visible binding for global variable ‘baseMean’
MAplot: no visible global function definition for ‘quantile’
MAplot: no visible binding for global variable ‘log2FoldChange’
... 49 lines ...
  importFrom("stats", "Gamma", "coefficients", "complete.cases", "cor",
             "dnbinom", "dpois", "formula", "glm", "median", "optim",
             "p.adjust", "pbeta", "predict", "qbeta", "quantile",
             "rnbinom")
  importFrom("utils", "data")
to your NAMESPACE file.

Found the following calls to data() loading into the global environment:
File ‘XBSeq/R/methods.R’:
  data("scvBiasCorrectionFits")
See section ‘Good practice’ in ‘?data’.

checking Rd line widths ... NOTE
Rd file 'XBSeq.Rd':
  \usage lines wider than 90 characters:
        sharingMode = "maximum", fitType = "local", pvals_only = FALSE, paraMethod='NP', big_count = 900)

Rd file 'XBplot.Rd':
  \usage lines wider than 90 characters:
     XBplot(XB, Samplenum = NULL, unit = c('counts', 'LogTPM'), Libsize = NULL, Genelength = NULL, xlab = 'log2 TPM', ylab = 'Frequencies',  ... [TRUNCATED]

Rd file 'estimateSCV.Rd':
  \usage lines wider than 90 characters:
     estimateSCV( object, method = c( "pooled", "per-condition", "blind" ), sharingMode = c( "maximum", "fit-only", "gene-est-only" ),

These lines will be truncated in the PDF manual.
```

