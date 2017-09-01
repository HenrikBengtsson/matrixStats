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
|date     |2017-09-01                   |

## Packages

|package        |*  |version     |date       |source                                 |
|:--------------|:--|:-----------|:----------|:--------------------------------------|
|base64enc      |   |0.1-4       |2017-08-31 |cran (@0.1-4)                          |
|ggplot2        |   |2.2.1       |2016-12-30 |cran (@2.2.1)                          |
|knitr          |   |1.17        |2017-08-10 |cran (@1.17)                           |
|matrixStats    |   |0.52.2-9000 |2017-08-31 |local (HenrikBengtsson/matrixStats@NA) |
|microbenchmark |   |1.4-2.1     |2015-11-25 |cran (@1.4-2.1)                        |
|R.devices      |   |2.15.1      |2016-11-10 |cran (@2.15.1)                         |
|R.rsp          |   |0.41.0      |2017-04-16 |cran (@0.41.0)                         |

# Check results

43 packages with problems

|package           |version | errors| warnings| notes|
|:-----------------|:-------|------:|--------:|-----:|
|antiProfiles      |1.14.0  |      0|        1|     1|
|aroma.light       |3.4.0   |      2|        0|     1|
|BatchQC           |1.2.1   |      0|        1|     0|
|BayesTwin         |1.0     |      1|        0|     0|
|bsseq             |1.10.0  |      0|        1|     0|
|bumphunter        |1.14.0  |      1|        1|     5|
|ChAMP             |2.6.4   |      0|        2|     3|
|ChIPpeakAnno      |3.8.9   |      1|        0|     2|
|clusterExperiment |1.0.0   |      0|        1|     0|
|CNPBayes          |1.4.0   |      0|        1|     3|
|CopywriteR        |2.6.0   |      0|        1|     1|
|crlmm             |1.32.0  |      0|        1|     5|
|DeepBlueR         |1.0.11  |      1|        0|     0|
|EasyqpcR          |1.16.0  |      1|        0|     1|
|EMDomics          |2.4.0   |      1|        1|     3|
|flowCore          |1.40.6  |      1|        2|    10|
|genomation        |1.6.0   |      0|        2|     4|
|GUIDEseq          |1.4.1   |      1|        1|     3|
|Gviz              |1.18.2  |      0|        2|     4|
|LS2Wstat          |2.0-3   |      0|        1|     2|
|metagene          |2.6.1   |      1|        0|     1|
|metagenomeSeq     |1.16.0  |      0|        1|     0|
|MethylAid         |1.8.0   |      0|        1|     1|
|methylumi         |2.20.0  |      0|        2|     8|
|minfi             |1.20.2  |      0|        1|     4|
|monocle           |2.2.0   |      0|        1|     2|
|motifbreakR       |1.4.0   |      0|        1|     2|
|MultiBD           |0.2.0   |      0|        1|     2|
|nandb             |0.2.1   |      2|        1|     0|
|NanoStringDiff    |1.4.0   |      0|        1|     1|
|pandaR            |1.6.0   |      0|        1|     4|
|PathoStat         |1.0.0   |      0|        2|     0|
|peakPick          |0.11    |      0|        1|     0|
|Pigengene         |1.0.0   |      0|        1|     2|
|QDNAseq           |1.10.0  |      0|        1|     0|
|RnBeads           |1.6.1   |      0|        8|     6|
|shinyMethyl       |1.10.0  |      0|        1|     2|
|SICtools          |1.4.0   |      0|        2|     4|
|SRGnet            |1.0.0   |      1|        0|     1|
|stm               |1.2.2   |      0|        1|     0|
|topGO             |2.26.0  |      0|        1|     4|
|XBSeq             |1.4.0   |      1|        1|     3|
|yarn              |1.0.1   |      1|        1|     0|

## antiProfiles (1.14.0)
Maintainer: Hector Corrada Bravo <hcorrada@gmail.com>

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    anyMissing, rowMedians

Loading required package: RColorBrewer
Getting sample indices
Computing sds
Computing ranges
Computing tissue specificity
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.13 \usepackage
                [numbers]{natbib}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking R code for possible problems ... NOTE
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

## aroma.light (3.4.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.light/issues

2 errors | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘aroma.light-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: normalizeAffine
> ### Title: Weighted affine normalization between channels and arrays
> ### Aliases: normalizeAffine normalizeAffine.matrix
> ### Keywords: methods
> 
... 89 lines ...
> 
> # Curve-fit (loess) normalization
> rgCANl <- normalizeLoess(rgCAavg, weights=weights)
> plotMvsA(rgCANl, col="red", add=TRUE)
> 
> # Curve-fit (robust spline) normalization
> rgCANrs <- normalizeRobustSpline(rgCAavg, weights=weights)
Error in unname(fit$parms["low"]) : 
  invalid type/length (.../1) in vector allocation
Calls: normalizeRobustSpline ... robustSmoothSpline.default -> smooth.spline0 -> unname
Execution halted

checking tests ... ERROR
  Running ‘backtransformAffine.matrix.R’
  Running ‘backtransformPrincipalCurve.matrix.R’
  Running ‘callNaiveGenotypes.R’
  Running ‘distanceBetweenLines.R’
  Running ‘findPeaksAndValleys.R’
  Running ‘fitPrincipalCurve.matrix.R’
  Running ‘fitXYCurve.matrix.R’
  Running ‘iwpca.matrix.R’
  Running ‘likelihood.smooth.spline.R’
... 12 lines ...
  > 
  > # Curve-fit (loess) normalization
  > rgCANl <- normalizeLoess(rgCAavg, weights=weights)
  > plotMvsA(rgCANl, col="red", add=TRUE)
  > 
  > # Curve-fit (robust spline) normalization
  > rgCANrs <- normalizeRobustSpline(rgCAavg, weights=weights)
  Error in unname(fit$parms["low"]) : 
    invalid type/length (.../1) in vector allocation
  Calls: normalizeRobustSpline ... robustSmoothSpline.default -> smooth.spline0 -> unname
  Execution halted

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  inst/rsp/.rspPlugins
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.
```

## BatchQC (1.2.1)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/BatchQC/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
This is mgcv 1.8-17. For overview type 'help("mgcv-package")'.
Loading required package: genefilter

Attaching package: 'genefilter'

The following object is masked from 'package:MASS':

... 8 lines ...
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.34 \definecolor

Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted
```

## BayesTwin (1.0)
Maintainer: Inga Schwabe <bayestwin@gmail.com>  
Bug reports: https://github.com/ingaschwabe/BayesTwin

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘rjags’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## bsseq (1.10.0)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/bsseq/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Loading required package: limma

Attaching package: 'limma'

The following object is masked from 'package:BiocGenerics':

... 8 lines ...
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

## bumphunter (1.14.0)
Maintainer: Rafael A. Irizarry <rafa@jimmy.harvard.edu>

1 error  | 1 warning  | 5 notes

```
checking tests ... ERROR
  Running ‘runTests.R’ [23s/38s]
  Running ‘test-all.R’ [15s/38s]
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  Loading required package: Biobase
  Welcome to Bioconductor
  
      Vignettes contain introductory material; view with
      'browseVignettes()'. To cite Bioconductor, see
      'citation("Biobase")', and for packages 'citation("pkgname")'.
  
  Download the refGene table ... Error: Expectation Failed
  In addition: Warning message:
  In is.na(x[[i]]) :
    is.na() applied to non-(list or vector) of type 'environment'
  Timing stopped at: 1.384 0.02 24.8
  testthat results ================================================================
  OK: 10 SKIPPED: 0 FAILED: 0
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
The following object is masked from ‘package:S4Vectors’:

    new2

The following object is masked from ‘package:base’:

    isNamespaceLoaded
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.10 \usepackage
                [numbers]{natbib}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘foreach’
  ‘iterators’ ‘parallel’ ‘locfit’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: ‘doParallel:::.options’
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
bumphunterEngine: no visible binding for global variable ‘bootstraps’
Undefined global functions or variables:
  bootstraps

checking Rd line widths ... NOTE
Rd file 'annotateTranscripts.Rd':
  \usage lines wider than 90 characters:
     annotateTranscripts(txdb, annotationPackage = NULL, by = c("tx","gene"), codingOnly=FALSE, verbose = TRUE, requireAnnotation = FALSE)

Rd file 'bumphunter.Rd':
  \usage lines wider than 90 characters:
     bumphunter(object, design, chr=NULL, pos, cluster=NULL,coef=2, cutoff=NULL, pickCutoff = FALSE, pickCutoffQ = 0.99, maxGap=500, nullMet ... [TRUNCATED]
     bumphunterEngine(mat, design, chr = NULL, pos, cluster = NULL, coef = 2, cutoff = NULL, pickCutoff = FALSE, pickCutoffQ = 0.99, maxGap  ... [TRUNCATED]

Rd file 'matchGenes.Rd':
  \usage lines wider than 90 characters:
     matchGenes(x, subject, type = c("any", "fiveprime"), promoterDist = 2500, skipExons = FALSE, verbose = TRUE)
  \examples lines wider than 100 characters:
         islands=makeGRangesFromDataFrame(read.delim("http://rafalab.jhsph.edu/CGI/model-based-cpg-islands-hg19.txt")[1:100,])

These lines will be truncated in the PDF manual.
```

## ChAMP (2.6.4)
Maintainer: Yuan Tian  <champ450k@gmail.com>

0 errors | 2 warnings | 3 notes

```
checking package subdirectories ... WARNING
Problems with news in ‘inst/NEWS.Rd’:
  inst/NEWS.Rd:14: unexpected END_OF_INPUT '
  '

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

[===========================]
[<<<<< ChAMP.DMP START >>>>>]
-----------------------------
<< Your pheno information contains following groups. >>
<C>:4 samples.
<T>:4 samples.
... 8 lines ...

<< Calculate DMP successfully. >>
[<<<<<< ChAMP.DMP END >>>>>>]
[===========================]
[You may want to process DMP.GUI() or champ.GSEA() next.]

pandoc-citeproc: error while parsing the XML string
pandoc: Error running filter /usr/bin/pandoc-citeproc
Error: processing vignette 'ChAMP.Rmd' failed with diagnostics:
pandoc document conversion failed with error 83
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘minfi’ ‘ChAMPdata’ ‘FEM’ ‘DMRcate’ ‘Illumina450ProbeVariants.db’
  ‘IlluminaHumanMethylationEPICmanifest’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 11.2Mb
  sub-directories of 1Mb or more:
    doc       9.0Mb
    extdata   2.0Mb

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
... 43 lines ...
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
```

## ChIPpeakAnno (3.8.9)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>,
 Jianhong Ou <Jianhong.ou@umassmed.edu>

1 error  | 0 warnings | 2 notes

```
checking examples ... ERROR
Running examples in ‘ChIPpeakAnno-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: summarizeOverlapsByBins
> ### Title: Perform overlap queries between reads and genomic features by
> ###   bins
> ### Aliases: summarizeOverlapsByBins
> ### Keywords: misc
... 8 lines ...
+         seqnames = c(rep("chr2L", 4), rep("chr2R", 5), rep("chr3L", 2)),
+         ranges = IRanges(c(1000, 3000, 4000, 7000, 2000, 3000, 3600, 
+                            4000, 7500, 5000, 5400), 
+                          width=c(rep(500, 3), 600, 900, 500, 300, 900, 
+                                  300, 500, 500),
+                          names=letters[1:11])) 
>     se <- summarizeOverlapsByBins(genes, fls, windowSize=50, step=10)
Error in registered()[[bpparamClass]] : 
  attempt to select less than one element in get1index
Calls: summarizeOverlapsByBins ... .dispatchBamFiles -> bplapply -> bplapply -> bplapply -> bpparam
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘grid’ ‘IRanges’ ‘Biostrings’ ‘GenomicRanges’ ‘S4Vectors’
  ‘VennDiagram’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 19.7Mb
  sub-directories of 1Mb or more:
    data     12.7Mb
    doc       1.0Mb
    extdata   5.3Mb
```

## clusterExperiment (1.0.0)
Maintainer: Elizabeth Purdom <epurdom@stat.berkeley.edu>  
Bug reports: https://github.com/epurdom/clusterExperiment/issues

0 errors | 1 warning  | 0 notes

```
checking Rd cross-references ... WARNING
Missing link or links in documentation object 'seqCluster.Rd':
  ‘tightClust’

See section 'Cross-references' in the 'Writing R Extensions' manual.

```

## CNPBayes (1.4.0)
Maintainer: Jacob Carey <jcarey15@jhu.edu>  
Bug reports: https://github.com/scristia/CNPBayes/issues

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
pandoc: Error producing PDF from TeX source.
! LaTeX Error: File `framed.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.33 \definecolor

Error: processing vignette 'Convergence.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted


checking installed package size ... NOTE
  installed size is 13.1Mb
  sub-directories of 1Mb or more:
    libs  10.9Mb

checking DESCRIPTION meta-information ... NOTE
Package listed in more than one of Depends, Imports, Suggests, Enhances:
  ‘GenomicRanges’
A package should be listed in only one of these fields.

checking compiled code ... NOTE
File ‘CNPBayes/libs/CNPBayes.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## CopywriteR (2.6.0)
Maintainer: Thomas Kuilman <t.kuilman@nki.nl>

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
  pseudoinverse used at 0.979
Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
  neighborhood radius 0.001
Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
  reciprocal condition number  0
Warning in simpleLoess(y, x, w, span, degree = degree, parametric = parametric,  :
  There are other near singularities as well. 1e-06
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.38 \sectionfont
                 {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking R code for possible problems ... NOTE
.peakCutoff: no visible global function definition for ‘dpois’
.peakCutoff: no visible global function definition for ‘ppois’
.tng: no visible global function definition for ‘png’
.tng: no visible global function definition for ‘par’
.tng: no visible global function definition for ‘dev.off’
.tng: no visible global function definition for ‘loess’
.tng: no visible global function definition for ‘predict’
.tng: no visible global function definition for ‘points’
.tng: no visible global function definition for ‘rgb’
... 41 lines ...
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

## crlmm (1.32.0)
Maintainer: Benilton S Carvalho <benilton@unicamp.br>,
 Robert Scharpf <rscharpf@jhsph.edu>, Matt Ritchie
 <mritchie@wehi.EDU.AU>

0 errors | 1 warning  | 5 notes

```
checking dependencies in R code ... WARNING
'library' or 'require' call not declared from: ‘limma’
'library' or 'require' calls in package code:
  ‘RUnit’ ‘limma’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported object imported by a ':::' call: ‘Biobase:::assayDataEnvLock’
  See the note in ?`:::` about the use of this operator.

checking installed package size ... NOTE
  installed size is  5.3Mb
  sub-directories of 1Mb or more:
    data   2.7Mb

checking DESCRIPTION meta-information ... NOTE
Versioned 'LinkingTo' value for ‘preprocessCore’ is only usable in R >= 3.0.2

checking R code for possible problems ... NOTE
.test: no visible global function definition for ‘defineTestSuite’
.test: no visible global function definition for ‘runTestSuite’
.test: no visible global function definition for ‘printTextProtocol’
calculateRBafCNSet : processByChromosome: no visible global function
  definition for ‘position’
cnrmaAffy: no visible global function definition for ‘celfileName’
computeBR: no visible global function definition for ‘genomeBuild’
constructBafLrrSetListFrom: no visible global function definition for
  ‘genomeBuild’
constructOligoSetListFrom: no visible global function definition for
  ‘genomeBuild’
genotypeInf: no visible binding for global variable ‘anno’
plotSamples: no visible global function definition for ‘delete’
quantilenormalization: no visible global function definition for
  ‘delete’
snprmaAffy: no visible global function definition for ‘celfileName’
Undefined global functions or variables:
  anno celfileName defineTestSuite delete genomeBuild position
  printTextProtocol runTestSuite

checking Rd line widths ... NOTE
Rd file 'constructInf.Rd':
  \usage lines wider than 90 characters:
            arrayInfoColNames = list(barcode="SentrixBarcode_A",position="SentrixPosition_A"), highDensity = FALSE, sep = "_",
            fileExt = list(green = "Grn.idat", red = "Red.idat"), XY, cdfName, anno, genome, verbose = FALSE, batch=NULL, saveDate = TRUE)

Rd file 'genotype.Illumina.Rd':
  \usage lines wider than 90 characters:
           highDensity=FALSE, sep="_", fileExt=list(green="Grn.idat", red="Red.idat"), XY=NULL, anno, genome, 
           call.method="crlmm", trueCalls=NULL, cdfName, copynumber=TRUE, batch=NULL, saveDate=FALSE, stripNorm=TRUE, 
... 20 lines ...
Rd file 'readGenCallOutput.Rd':
  \usage lines wider than 90 characters:
     readGenCallOutput(filenames, path=".", cdfName, colnames=list("SampleID"="Sample ID", "SNPID"="SNP Name", "XRaw"="X Raw", "YRaw"="Y Raw ... [TRUNCATED]
                       type=list("SampleID"="character", "SNPID"="character", "XRaw"="integer", "YRaw"="integer"), verbose=FALSE)

Rd file 'snprma.Rd':
  \usage lines wider than 90 characters:
     snprma(filenames, mixtureSampleSize = 10^5, fitMixture = FALSE, eps = 0.1, verbose = TRUE, seed = 1, cdfName, sns)
     snprma2(filenames, mixtureSampleSize = 10^5, fitMixture = FALSE, eps = 0.1, verbose = TRUE, seed = 1, cdfName, sns)

These lines will be truncated in the PDF manual.

checking compiled code ... NOTE
File ‘crlmm/libs/crlmm.so’:
  Found no call to: ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## DeepBlueR (1.0.11)
Maintainer: Felipe Albrecht <felipe.albrecht@mpi-inf.mpg.de>, Markus List <markus.list@mpi-inf.mpg.de>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘DeepBlueR’ can be installed ... ERROR
Installation failed.
See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/DeepBlueR.Rcheck/00install.out’ for details.
```

## EasyqpcR (1.16.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking package dependencies ... ERROR
Package required but not available: ‘gWidgetsRGtk2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.

checking package namespace information ... NOTE
  Namespace with empty importFrom: ‘gWidgetsRGtk2’
```

## EMDomics (2.4.0)
Maintainer: Sadhika Malladi <contact@sadhikamalladi.com> and Daniel Schmolze <emd@schmolze.com>

1 error  | 1 warning  | 3 notes

```
checking examples ... ERROR
Running examples in ‘EMDomics-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: calculate_cvm
> ### Title: Cramer von Mises for differential analysis of genomics data
> ### Aliases: calculate_cvm
> 
> ### ** Examples
> 
> # 100 genes, 100 samples
> dat <- matrix(rnorm(10000), nrow=100, ncol=100)
> rownames(dat) <- paste("gene", 1:100, sep="")
> colnames(dat) <- paste("sample", 1:100, sep="")
> 
> # "A": first 50 samples; "B": next 30 samples; "C": final 20 samples
> outcomes <- c(rep("A",50), rep("B",30), rep("C",20))
> names(outcomes) <- colnames(dat)
> 
> results <- calculate_cvm(dat, outcomes, nperm=10, parallel=FALSE)
Error in registered()[[bpparamClass]] : 
  attempt to select less than one element in get1index
Calls: calculate_cvm -> <Anonymous>
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 107-108 (EMDomics.Rmd) 
Error: processing vignette 'EMDomics.Rmd' failed with diagnostics:
attempt to select less than one element in get1index
Execution halted


checking DESCRIPTION meta-information ... NOTE
Authors@R field gives more than one person with maintainer role:
  Sadhika Malladi <contact@sadhikamalladi.com> [aut, cre]
  Daniel Schmolze <emd@schmolze.com> [aut, cre]

checking R code for possible problems ... NOTE
.cvm_pairwise_q: no visible global function definition for ‘combn’
.cvm_pairwise_q : <anonymous>: no visible global function definition
  for ‘median’
.emd_gene_pairwise: no visible global function definition for ‘hist’
.emd_pairwise_q: no visible global function definition for ‘combn’
.emd_pairwise_q : <anonymous>: no visible global function definition
  for ‘median’
.ks_pairwise_table: no visible global function definition for ‘ks.test’
calculate_cvm: no visible global function definition for ‘combn’
... 11 lines ...
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

checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```

## flowCore (1.40.6)
Maintainer: M.Jiang <wjiang2@fhcrc.org>

1 error  | 2 warnings | 10 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  4. Failure: biexponential (@test-transform.R#121) ------------------------------
  summary(res) not equal to expectRes[["biexponential"]].
  Mean relative difference: 0.000122351
  
  
  testthat results ================================================================
  OK: 129 SKIPPED: 0 FAILED: 4
  1. Failure: hyperlogGml2 (@test-transform.R#97) 
  2. Failure: logicle (@test-transform.R#105) 
  3. Failure: logicle (@test-transform.R#110) 
  4. Failure: biexponential (@test-transform.R#121) 
  
  Error: testthat unit tests failed
  Execution halted

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
Warning: Removed 27 rows containing missing values (geom_hex).
Warning: Removed 5 rows containing missing values (geom_hex).
Warning: Removed 5 rows containing missing values (geom_hex).
Warning: Removed 4 rows containing missing values (geom_hex).
Warning: Removed 6 rows containing missing values (geom_hex).
Warning: Removed 7 rows containing missing values (geom_hex).
Warning: Removed 4514 rows containing non-finite values (stat_density).
... 8 lines ...
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.66 \usepackage
                {graphicx}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
In addition: There were 30 warnings (use warnings() to see them)
Execution halted

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
  installed size is 34.8Mb
  sub-directories of 1Mb or more:
    data      5.0Mb
    extdata   1.2Mb
    lib      20.8Mb
    libs      5.9Mb

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

checking compiled code ... NOTE
File ‘flowCore/libs/flowCore.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## genomation (1.6.0)
Maintainer: Altuna Akalin <aakalin@gmail.com>, Vedran Franke
 <vedran.franke@gmail.com>  
Bug reports: https://github.com/BIMSBbioinfo/genomation/issues

0 errors | 2 warnings | 4 notes

```
checking for missing documentation entries ... WARNING
Undocumented S4 methods:
  generic '[' and siglist 'ScoreMatrix,ANY,ANY,ANY'
  generic '[' and siglist 'ScoreMatrixList,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Fetching https://raw.githubusercontent.com/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png...
pandoc: Failed to retrieve https://raw.githubusercontent.com/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png
user error (https not supported)
Error: processing vignette 'GenomationManual.Rmd' failed with diagnostics:
pandoc document conversion failed with error 61
Execution halted


checking installed package size ... NOTE
  installed size is  6.8Mb
  sub-directories of 1Mb or more:
    doc       3.6Mb
    extdata   1.2Mb
    libs      1.1Mb

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
  See the note in ?`:::` about the use of this operator.

checking compiled code ... NOTE
File ‘genomation/libs/genomation.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.

checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘cache’
Please remove from your package.
```

## GUIDEseq (1.4.1)
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
... 45 lines ...
>>> DONE searching
finish off-target search in sequence 2
finish off-target search in sequence 1
finish feature vector building
finish score calculation
[1] "Done!"
Warning in if (!is.na(TS2)) { :
  the condition has length > 1 and only the first element will be used
Error in .check_ncores(length(names)) : 7 simultaneous processes spawned
Calls: GUIDEseqAnalysis ... offTargetAnalysisOfPeakRegions -> makeCluster -> makePSOCKcluster -> .check_ncores
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
            sure you are using the right genome. You can also alter your 
            search criteria such as increasing max.mismatch!
Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
  No matching found, please check your input sequence, and make
            sure you are using the right genome. You can also alter your 
            search criteria such as increasing max.mismatch!
Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
... 8 lines ...
Warning in searchHits(gRNAs = gRNAs1, PAM = PAM, PAM.pattern = PAM.pattern,  :
  No matching found, please check your input sequence, and make
            sure you are using the right genome. You can also alter your 
            search criteria such as increasing max.mismatch!
Warning in if (!is.na(TS2)) { :
  the condition has length > 1 and only the first element will be used

Error: processing vignette 'GUIDEseq.Rnw' failed with diagnostics:
 chunk 7 
Error in .check_ncores(length(names)) : 7 simultaneous processes spawned
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
```

## Gviz (1.18.2)
Maintainer: Florian Hahne <florian.hahne@novartis.com>

0 errors | 2 warnings | 4 notes

```
checking for missing documentation entries ... WARNING
Undocumented S4 methods:
  generic '[' and siglist 'AlignedReadTrack,ANY,ANY,ANY'
  generic '[' and siglist 'DataTrack,ANY,ANY,ANY'
  generic '[' and siglist 'GenomeAxisTrack,ANY,ANY,ANY'
  generic '[' and siglist 'IdeogramTrack,ANY,ANY,ANY'
  generic '[' and siglist 'RangeTrack,ANY,ANY,ANY'
  generic '[' and siglist 'StackedTrack,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    append, as.data.frame, cbind, colnames, do.call,
    duplicated, eval, evalq, get, grep, grepl, intersect,
    is.unsorted, lapply, lengths, mapply, match, mget,
    order, paste, pmax, pmax.int, pmin, pmin.int, rank,
    rbind, rownames, sapply, setdiff, sort, table,
    tapply, union, unique, unsplit, which, which.max,
    which.min
... 8 lines ...

Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: GenomeInfoDb
Loading required package: grid

Error: processing vignette 'Gviz.Rnw' failed with diagnostics:
 chunk 9 (label = doIdeogramTrack) 
Error : Expectation Failed

Execution halted

checking installed package size ... NOTE
  installed size is  6.0Mb
  sub-directories of 1Mb or more:
    doc       1.6Mb
    extdata   2.2Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘Rplots.pdf’

checking R code for possible problems ... NOTE
.buildRange,IRanges-ANY-ANY-ANY: warning in GRanges(seqnames =
  .chrName(chromosome), range = range, strand = if
  (!is.null(args$strand)) args$strand else "*"): partial argument match
  of 'range' to 'ranges'
collapseTrack,DataTrack: warning in GRanges(seqnames = seqnames(r)[1],
  range = rtmp): partial argument match of 'range' to 'ranges'
collapseTrack,DataTrack: warning in GRanges(seqnames =
  chromosome(GdObject), range = ir, strand =
  unique(as.character(strand(GdObject)))): partial argument match of
... 39 lines ...
  'setNames'
drawGD,AlignmentsTrack : <anonymous>: no visible global function
  definition for 'setNames'
Undefined global functions or variables:
  cdsBy dev.cur dev.off fiveUTRsByTranscript setNames
  threeUTRsByTranscript type.convert
Consider adding
  importFrom("grDevices", "dev.cur", "dev.off")
  importFrom("stats", "setNames")
  importFrom("utils", "type.convert")
to your NAMESPACE file.

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
See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/LS2Wstat.Rcheck/00install.out’ for details.

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

## metagene (2.6.1)
Maintainer: Charles Joly Beauparlant <charles.joly-beauparlant@crchul.ulaval.ca>  
Bug reports: https://github.com/CharlesJB/metagene/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
  Running ‘runTests.R’ [254s/268s]
Running the tests in ‘tests/runTests.R’ failed.
Last 13 lines of output:
    invalid class "MulticoreParam" object: 1: 'cluster', '.clusterargs', '.uid', 'RNGseed' must be length 1
  invalid class "MulticoreParam" object: 2: '.clusterargs', '.controlled', 'logdir', 'resultdir' must be length 1
  
  Test files with failing tests
  
     test_parallel_job.R 
       test.parallel_job_get_core_count_valid_multiple_core 
       test.parallel_job_launch_job_valid_multiple_core 
       test.parallel_job_set_core_count_valid_multiple_core 
       test.parallel_job_set_core_count_valid_single_core 
  
  
  Error in BiocGenerics:::testPackage("metagene") : 
    unit tests failed for package metagene
  Execution halted

checking R code for possible problems ... NOTE
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

## metagenomeSeq (1.16.0)
Maintainer: Joseph N. Paulson <jpaulson@jimmy.harvard.edu>  
Bug reports: https://github.com/nosson/metagenomeSeq/issues

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘metagenomeSeq.pdf’ from 975Kb to 718Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## MethylAid (1.8.0)
Maintainer: M. van Iterson <mviterson@gmail.com>  
Bug reports: https://github.com/mvaniterson/methylaid/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: bumphunter
Loading required package: foreach
Loading required package: iterators
Loading required package: locfit
locfit 1.5-9.1 	 2013-03-22
Loading required package: IlluminaHumanMethylation450kmanifest
Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.38 \sectionfont
                 {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking R code for possible problems ... NOTE
Found the following assignments to the global environment:
File ‘MethylAid/R/server.R’:
  assign("outliers", outliers, envir = globalenv())
  assign("background", as.background(background), envir = globalenv())
  assign("location", location, envir = globalenv())
  assign("location", location, envir = globalenv())
  assign("location", location, envir = globalenv())
  assign("location", location, envir = globalenv())
  assign("location", location, envir = globalenv())
File ‘MethylAid/R/util.R’:
  assign("highlight", highlight, envir = globalenv())
  assign("outliers", out, envir = globalenv())
```

## methylumi (2.20.0)
Maintainer: Sean Davis <sdavis2@mail.nih.gov>  
Bug reports: https://github.com/seandavi/methylumi/issues/new

0 errors | 2 warnings | 8 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘IDATsToMatrices’ ‘IDATtoMatrix’ ‘tcgaPipeline’
Undocumented data sets:
  ‘mset’
Undocumented S4 methods:
  generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
  generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking re-building of vignette outputs ... WARNING
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


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
  ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is  9.9Mb
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

## minfi (1.20.2)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/minfi/issues

0 errors | 1 warning  | 4 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: XVector
Loading required package: bumphunter
Loading required package: foreach
Loading required package: iterators
Loading required package: locfit
locfit 1.5-9.1 	 2013-03-22
Warning in is.na(x[[i]]) :
... 8 lines ...
Loading required package: IlluminaHumanMethylation450kanno.ilmn12.hg19
pandoc-citeproc: 
Error at "source" (line 1, column 1):
unexpected '}'
expecting "%", new-line, "\\", "{", "-", "``", "\8220", "\"`", "\"", "`", "\8216", "''", "\8221", "'", "\8217", "~", "$$", "$", "^", "_", "^^", "&" or end of input
}{
^
pandoc: Error running filter /usr/bin/pandoc-citeproc
Error: processing vignette 'minfi.Rmd' failed with diagnostics:
pandoc document conversion failed with error 83
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘Biobase’ ‘GenomicRanges’ ‘SummarizedExperiment’
  ‘Biostrings’ ‘bumphunter’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking dependencies in R code ... NOTE
Unexported objects imported by ':::' calls:
  ‘BiocGenerics:::replaceSlots’
  ‘SummarizedExperiment:::.valid.SummarizedExperiment.assays_ncol’
  ‘bumphunter:::.getEstimate’
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File ‘minfi/R/estimateCellCounts.R’:
  data(list = referencePkg)
See section ‘Good practice’ in ‘?data’.

checking Rd line widths ... NOTE
Rd file 'estimateCellCounts.Rd':
  \usage lines wider than 90 characters:
                        referencePlatform = c("IlluminaHumanMethylation450k", "IlluminaHumanMethylationEPIC", "IlluminaHumanMethylation27k") ... [TRUNCATED]

These lines will be truncated in the PDF manual.
```

## monocle (2.2.0)
Maintainer: Cole Trapnell <coletrap@uw.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Warning in (ap %*% ab)/(ab %*% ab) * ab :
  Recycling array of length 1 in array-vector arithmetic is deprecated.
  Use c() or as.vector() instead.

Warning in if (progenitor_method == "duplicate") { :
  the condition has length > 1 and only the first element will be used
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.36 \sectionfont
                 {\sffamily\bfseries\color{RoyalBlue}\sectionrule{0pt}{0pt}{...
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘examples’

checking R code for possible problems ... NOTE
assign_cell_lineage: no visible global function definition for ‘nei’
buildBranchCellDataSet: no visible global function definition for ‘nei’
count_leaf_descendents: no visible global function definition for ‘nei’
cth_classifier_cds: no visible global function definition for ‘nei’
cth_classifier_cell: no visible global function definition for ‘nei’
diff_test_helper: no visible binding for global variable ‘Size_Factor’
extract_good_branched_ordering: no visible global function definition
  for ‘nei’
extract_good_branched_ordering : extract_branched_ordering_helper: no
  visible global function definition for ‘nei’
extract_good_branched_ordering : assign_cell_state_helper: no visible
  global function definition for ‘nei’
extract_good_branched_ordering : assign_pseudotime_helper: no visible
  global function definition for ‘nei’
extract_good_ordering: no visible global function definition for ‘nei’
fit_model_helper: no visible binding for global variable ‘Size_Factor’
make_canonical: no visible global function definition for ‘nei’
measure_diameter_path: no visible global function definition for ‘nei’
project2MST: no visible global function definition for ‘nei’
relative2abs : <anonymous>: no visible binding for global variable
  ‘FPKM’
Undefined global functions or variables:
  FPKM Size_Factor nei
```

## motifbreakR (1.4.0)
Maintainer: Simon Gert Coetzee <Simon.Coetzee@cshs.org>  
Bug reports: https://github.com/Simon-Coetzee/motifbreakR/issues

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    which, which.max, which.min

Loading required package: S4Vectors
Loading required package: stats4

Attaching package: 'S4Vectors'

... 8 lines ...
'BiocParallel' did not register default BiocParallelParams:
  invalid class "MulticoreParam" object: 1: 'cluster', '.clusterargs', '.uid', 'RNGseed' must be length 1
invalid class "MulticoreParam" object: 2: '.clusterargs', '.controlled', 'logdir', 'resultdir' must be length 1
See system.file("LICENSE", package="MotifDb") for use restrictions.
Loading required package: GenomeInfoDb
Loading required package: GenomicRanges
Loading required package: rtracklayer
Quitting from lines 206-212 (motifbreakR-vignette.Rmd) 
Error: processing vignette 'motifbreakR-vignette.Rmd' failed with diagnostics:
attempt to select less than one element in get1index
Execution halted

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'MotifDb' 'grid'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking R code for possible problems ... NOTE
plotMotifLogoStack.2: no visible global function definition for 'par'
snps.from.file: no visible global function definition for 'info'
snps.from.file: no visible global function definition for 'rowRanges'
snps.from.rsid: no visible global function definition for 'snpsById'
Undefined global functions or variables:
  info par rowRanges snpsById
Consider adding
  importFrom("graphics", "par")
to your NAMESPACE file.

Found the following assignments to the global environment:
File ‘motifbreakR/R/scoreMotif.R’:
  assign("tmp_motifStack_symbolsCache", list(), pos = ".GlobalEnv")
```

## MultiBD (0.2.0)
Maintainer: Marc A. Suchard <msuchard@ucla.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
pandoc: Error producing PDF from TeX source.
! LaTeX Error: File `framed.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.34 \definecolor

Error: processing vignette 'SIR-MCMC.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted


checking installed package size ... NOTE
  installed size is 10.5Mb
  sub-directories of 1Mb or more:
    libs   8.9Mb

checking compiled code ... NOTE
File ‘MultiBD/libs/MultiBD.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## nandb (0.2.1)
Maintainer: Rory Nolan <rorynoolan@gmail.com>  
Bug reports: https://github.com/rorynolan/nandb/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘nandb-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: ArrArrHexPlot
> ### Title: Plot the values in two arrays against each other.
> ### Aliases: ArrArrHexPlot
> 
> ### ** Examples
> 
> library(EBImage)
> img <- ReadImageData(system.file('extdata', '50.tif', package = 'nandb'))
> display(normalize(img[, , 1]), method = 'raster')
> brightness <- Brightness(img, tau = NA, mst = "Huang")
Error: .onLoad failed in loadNamespace() for 'autothresholdr', details:
  call: NULL
  error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/netapp/home/hb/R/x86_64-pc-linux-gnu-library/3.4/rJava/libs/rJava.so':
  libjvm.so: cannot open shared object file: No such file or directory
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’ [16s/17s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  testthat results ================================================================
  OK: 115 SKIPPED: 0 FAILED: 16
  1. Error: Brightness works (@test_brightness.R#5) 
  2. Error: BrightnessTimeSeries works (@test_brightness.R#34) 
  3. Error: BrightnessTxtFolder works (@test_brightness.R#80) 
  4. Error: Brightnesses works (@test_brightness.R#99) 
  5. Error: BrightnessTimeSeriess works (@test_brightness.R#111) 
  6. Error: CorrectForBleachingFolder works (@test_detrend.R#27) 
  7. Error: BestTau works (@test_detrend.R#42) 
  8. Error: MeanIntensity works (@test_intensity.R#13) 
  9. Error: Stack2DTifs works (@test_io.R#17) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

... 8 lines ...
    count

Quitting from lines 40-42 (nandb.Rmd) 
Error: processing vignette 'nandb.Rmd' failed with diagnostics:
.onLoad failed in loadNamespace() for 'autothresholdr', details:
  call: NULL
  error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/netapp/home/hb/R/x86_64-pc-linux-gnu-library/3.4/rJava/libs/rJava.so':
  libjvm.so: cannot open shared object file: No such file or directory
Execution halted
```

## NanoStringDiff (1.4.0)
Maintainer: hong wang <hong.wang@uky.edu>

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    rbind, rownames, sapply, setdiff, sort, table, tapply, union,
    unique, unsplit, which, which.max, which.min

Welcome to Bioconductor

    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.37 \sectionfont
                 {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking R code for possible problems ... NOTE
compute.baseSigma: no visible global function definition for ‘IQR’
createNanoStringSetFromCsv: no visible global function definition for
  ‘read.table’
est.dispersion : get.phihat: no visible global function definition for
  ‘optimize’
estNormalizationFactors: no visible global function definition for
  ‘glm’
estNormalizationFactors: no visible global function definition for
  ‘poisson’
... 16 lines ...
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

## pandaR (1.6.0)
Maintainer: Joseph N. Paulson <jpaulson@jimmy.harvard.edu>, Dan Schlauch <dschlauch@fas.harvard.edu>

0 errors | 1 warning  | 4 notes

```
checking files in ‘vignettes’ ... WARNING
Files in the 'vignettes' directory but no files in 'inst/doc':
  ‘pandaR.Rmd’

checking installed package size ... NOTE
  installed size is  9.3Mb
  sub-directories of 1Mb or more:
    data   9.1Mb

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.panda
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
dFunction: no visible global function definition for ‘cor’
importPandaMatlab: no visible global function definition for
  ‘read.delim’
normalizeNetwork: no visible global function definition for ‘sd’
panda: no visible global function definition for ‘cor’
panda: no visible global function definition for ‘aggregate’
plot.panda: no visible global function definition for ‘hist’
plotCommunityDetection: no visible global function definition for
  ‘title’
plotZbyTF: no visible global function definition for ‘aggregate’
prepResult: no visible global function definition for ‘pnorm’
Undefined global functions or variables:
  aggregate cor hist pnorm read.delim sd title
Consider adding
  importFrom("graphics", "hist", "title")
  importFrom("stats", "aggregate", "cor", "pnorm", "sd")
  importFrom("utils", "read.delim")
to your NAMESPACE file.

checking Rd \usage sections ... NOTE
S3 methods shown with full name in documentation object 'plot.panda':
  ‘plot.panda’

The \usage entries for S3 methods should use the \method markup and not
their full name.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
```

## PathoStat (1.0.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/PathoStat/issues

0 errors | 2 warnings | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘PathoStatUserManual.pdf’ from 1.9Mb to 1.0Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: Transformation introduced infinite values in discrete y-axis
pandoc: Error producing PDF from TeX source.
! LaTeX Error: File `framed.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.33 \definecolor

Error: processing vignette 'PathoStatUserManual.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

```

## peakPick (0.11)
Maintainer: Paal O. Westermark <pal-olof.westermark@charite.de>

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: peakPick
pandoc: Could not find data file peakPick-vignette_files/figure-html/detect%20peaks-1.png
Error: processing vignette 'peakPick-vignette.Rmd' failed with diagnostics:
pandoc document conversion failed with error 97
Execution halted

```

## Pigengene (1.0.0)
Maintainer: Habil Zare <zare@txstate.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
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


checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘AnnotationDbi’ ‘biomaRt’ ‘energy’ ‘org.Hs.eg.db’ ‘org.Mm.eg.db’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
Found the following possibly unsafe calls:
File ‘Pigengene/R/bn.calculation.R’:
  assignInNamespace("supported.clusters", fixArgs, "bnlearn")

welch.pvalue: no visible global function definition for ‘as.formula’
welch.pvalue: no visible global function definition for ‘oneway.test’
Undefined global functions or variables:
  as.formula oneway.test
Consider adding
  importFrom("stats", "as.formula", "oneway.test")
to your NAMESPACE file.
```

## QDNAseq (1.10.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
24584404649823131.335.538865427963037207.660.838865426545733207.650
24584464649826131.335.538865427963037207.660.838865426545733207.650
24584494649829131.335.538865427963037207.660.838865426545733207.650
24585294750440131.336.338865427963037207.660.838865426545733207.650
24589544750608131.436.338865427963037207.660.838865426545733207.650
FINISHED!

... 8 lines ...
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

## RnBeads (1.6.1)
Maintainer: Fabian Mueller <rnbeads@mpi-inf.mpg.de>

0 errors | 8 warnings | 6 notes

```
checking for executable files ... WARNING
Found the following executable files:
  inst/bin/linux_x86.64/bedGraphToBigWig
  inst/bin/linux_x86.64/bedToBigBed
  inst/bin/macOSX.i386/bedGraphToBigWig
  inst/bin/macOSX.i386/bedToBigBed
Source packages should not contain undeclared executable files.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.

checking whether package ‘RnBeads’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘gridExtra::combine’ by ‘methylumi::combine’ when loading ‘RnBeads’
See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/RnBeads.Rcheck/00install.out’ for details.

checking package subdirectories ... WARNING
Subdirectory ‘data’ contains no data sets.

checking dependencies in R code ... WARNING
'::' or ':::' import not declared from: 'GLAD'
'library' or 'require' calls not declared from:
  'GLAD' 'IlluminaHumanMethylation450kanno.ilmn12.hg19' 'scales'
'library' or 'require' calls in package code:
  'Category' 'GLAD' 'GOstats' 'Gviz'
  'IlluminaHumanMethylation450kanno.ilmn12.hg19'
  'IlluminaHumanMethylation450kmanifest' 'RefFreeEWAS' 'annotate'
  'biomaRt' 'doParallel' 'foreach' 'glmnet' 'impute' 'isva' 'minfi'
  'nlme' 'quadprog' 'scales' 'sva' 'wateRmelon'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing or unexported object: 'GenomicRanges::unlist'
Unexported objects imported by ':::' calls:
  'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
  'grDevices:::.smoothScatterCalcDensity'
  'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
  'minfi:::.normalizeFunnorm450k'
  See the note in ?`:::` about the use of this operator.
  Including base/recommended package(s):
  'grDevices'
There are ::: calls to the package's namespace in its code. A package
  almost never needs to use ::: for its own objects:
  'CONTROL.TARGETS.SAMPLE.INDEPENDENT'

checking for missing documentation entries ... WARNING
Undocumented S4 methods:
  generic '[' and siglist 'BigFfMat,ANY,ANY,ANY'
  generic '[<-' and siglist 'BigFfMat,ANY,ANY,ANY'
  generic 'dim' and siglist 'BigFfMat'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking Rd \usage sections ... WARNING
Undocumented arguments in documentation object 'read.single.bed'
  ‘chr.col’ ‘start.col’ ‘end.col’ ‘strand.col’ ‘c.col’ ‘t.col’
  ‘is.epp.style’ ‘coord.shift’ ‘ffread’ ‘context’ ‘...’

Undocumented arguments in documentation object 'sampleCovgApply,RnBSet-method'
  ‘object’ ‘type’ ‘...’

Undocumented arguments in documentation object 'sampleMethApply,RnBSet-method'
  ‘object’ ‘type’ ‘...’

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘RnBeads.pdf’ from 2.8Mb to 2.0Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in is.na(x[[i]]) :
  is.na() applied to non-(list or vector) of type 'environment'
'BiocParallel' did not register default BiocParallelParams:
  invalid class “MulticoreParam” object: 1: ‘cluster’, ‘.clusterargs’, ‘.uid’, ‘RNGseed’ must be length 1
invalid class “MulticoreParam” object: 2: ‘.clusterargs’, ‘.controlled’, ‘logdir’, ‘resultdir’ must be length 1
Warning: replacing previous import ‘gridExtra::combine’ by ‘methylumi::combine’ when loading ‘RnBeads’
Loading required package: doParallel
... 6 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.10 \usepackage
                [american]{babel}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘RColorBrewer’
  ‘cluster’ ‘ff’ ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’
  ‘matrixStats’ ‘illuminaio’ ‘methylumi’ ‘plyr’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is  6.5Mb
  sub-directories of 1Mb or more:
    R     1.4Mb
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
add.combination.plot: warning in facet_grid(Set ~ ., scale = "free",
  drop = TRUE): partial argument match of 'scale' to 'scales'
.stopImplicitCluster: no visible global function definition for
  ‘stopCluster’
BMIQ: no visible global function definition for ‘density’
BMIQ: no visible global function definition for ‘pbeta’
BMIQ: no visible global function definition for ‘qbeta’
MethyLumiSet2RnBeadSet: no visible global function definition for
  ‘phenoData’
... 730 lines ...
             "cutree", "dbeta", "density", "dist", "ecdf", "fisher.test",
             "hclust", "knots", "kruskal.test", "lm", "model.matrix",
             "optim", "order.dendrogram", "p.adjust", "pbeta", "pchisq",
             "pf", "pnorm", "prcomp", "predict", "pt", "qbeta",
             "reorder", "residuals", "rnorm", "rt", "t.test", "vcov",
             "wilcox.test")
  importFrom("utils", "browseURL", "capture.output", "combn", "data",
             "download.file", "installed.packages", "memory.size",
             "packageVersion", "read.csv", "read.delim", "read.table",
             "untar", "unzip", "write.table", "zip")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'addDiffMethTable-RnBDiffMeth-methods.Rd':
  \examples lines wider than 100 characters:
     dm <- rnb.execute.computeDiffMeth(rnb.set.example,pheno.cols="Sample_Group",region.types=c("genes","tiling"))
     dmt.sites <- computeDiffTab.extended.site(meth(rnb.set.example),sample.groups[[1]],sample.groups[[2]])

Rd file 'is.valid-RnBDiffMeth-methods.Rd':
  \examples lines wider than 100 characters:
     dm1 <- rnb.execute.computeDiffMeth(rnb.set.example,pheno.cols=c("Sample_Group"),region.types=c("genes","tiling"))
     dm2 <- rnb.execute.computeDiffMeth(rnb.set.example,pheno.cols=c("Sample_Group","Treatment"),region.types=c("promoters"))
... 17 lines ...
     txt <- c("A pessimist is a person who has had to listen to too many optimists. ", "<i>Don Marquis</i>")

Rd file 'rnb.runs.Rd':
  \examples lines wider than 100 characters:
     result <- rnb.run.import(data.source = data.source, data.type = "idat.dir", dir.reports = report.dir)

Rd file 'save.tables-RnBDiffMeth-methods.Rd':
  \examples lines wider than 100 characters:
     dm <- rnb.execute.computeDiffMeth(rnb.set.example,pheno.cols=c("Sample_Group","Treatment"),disk.dump=TRUE,disk.dump.dir=tempfile())

These lines will be truncated in the PDF manual.
```

## shinyMethyl (1.10.0)
Maintainer: Jean-Philippe Fortin <jfortin@jhsph.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

The following object is masked from 'package:SummarizedExperiment':

    rowRanges

The following objects are masked from 'package:Biobase':

... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.38 \sectionfont
                 {\sffamily\bfseries\color{BiocBlue}\sectionrule{0pt}{0pt}{-...
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .travis.yml
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.

checking R code for possible problems ... NOTE
addHoverDensity: no visible global function definition for ‘lines’
addHoverPoints: no visible global function definition for ‘points’
addHoverQC: no visible global function definition for ‘points’
densitiesPlot: no visible global function definition for ‘plot’
densitiesPlot: no visible global function definition for ‘lines’
plotDesign450k: no visible global function definition for ‘par’
plotDesign450k: no visible global function definition for ‘plot’
plotDiscrepancyGenders: no visible global function definition for
  ‘legend’
... 60 lines ...
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

## SICtools (1.4.0)
Maintainer: Xiaobin Xing <xiaobinxing0316@gmail.com>

0 errors | 2 warnings | 4 notes

```
checking whether package ‘SICtools’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘plyr::count’ by ‘matrixStats::count’ when loading ‘SICtools’
See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SICtools.Rcheck/00install.out’ for details.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    compact

The following object is masked from 'package:IRanges':

    desc

The following object is masked from 'package:S4Vectors':
... 8 lines ...
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.34 \definecolor

Error: processing vignette 'SICtools.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

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

## SRGnet (1.0.0)
Maintainer: Isar Nassiri <isar_nassiri@urmc.rochester.edu>

1 error  | 0 warnings | 1 note 

```
checking whether package ‘SRGnet’ can be installed ... ERROR
Installation failed.
See ‘/netapp/home/hb/repositories/matrixStats/revdep/checks/SRGnet.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘EBcoexpress’ ‘MASS’ ‘igraph’ ‘pvclust’ ‘RedeR’ ‘gRain’ ‘gbm’ ‘limma’
  ‘DMwR’ ‘matrixStats’
Adding so many packages to the search path is excessive and importing
selectively is preferable.
```

## stm (1.2.2)
Maintainer: Brandon Stewart <bms4@princeton.edu>  
Bug reports: https://github.com/bstewart/stm/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
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

## topGO (2.26.0)
Maintainer: Adrian Alexa <adrian.alexa@gmail.com>

0 errors | 1 warning  | 4 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
	 Level 2:	19 nodes to be scored.

	 Level 1:	1 nodes to be scored.

			 -- Classic Algorithm -- 

		 the algorithm is scoring 3874 nontrivial nodes
... 8 lines ...
Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.11 \usepackage
                {caption}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘graph’ ‘Biobase’ ‘GO.db’ ‘AnnotationDbi’ ‘SparseM’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘Rgraphviz’ ‘multtest’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing object imported by a ':::' call: ‘globaltest:::globaltest’

checking R code for possible problems ... NOTE
GOplot: no visible global function definition for ‘getDefaultAttrs’
GOplot: no visible global function definition for ‘agopen’
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for ‘getNodeCenter’
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for ‘pieGlyph’
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for ‘getX’
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
... 35 lines ...
  getDefaultAttrs getNodeCenter getNodeLW getNodeXY getX getY
  mt.rawp2adjp mt.teststat name pieGlyph scoreInNode toDot txtLabel

Found the following assignments to the global environment:
File ‘topGO/R/topGOtests.R’:
  assign(".PERMSUM.LOOKUP", sizeLookUp, .GlobalEnv)
  assign(".PERMSUM.MAT", sapply(1:N, function(x) cumsum(sample(scoreVec, 
    maxSample))[goSize]), .GlobalEnv)
  assign(".PERMSUM.LOOKUP", sizeLookUp, .GlobalEnv)
  assign(".PERMSUM.MAT", sapply(1:N, function(x) cumsum(sample(scoreVec))[goSize]), 
    .GlobalEnv)

checking Rd line widths ... NOTE
Rd file 'diagnosticMethods.Rd':
  \examples lines wider than 100 characters:
     sig.tab <- GenTable(GOdata, Fis = resultFisher, KS = resultKS, orderBy = "KS", ranksOf = "Fis", topNodes = 20)

Rd file 'getPvalues.Rd':
  \usage lines wider than 90 characters:
        getPvalues(edata, classlabel, test = "t", alternative = c("greater", "two.sided", "less")[1],
        genesID = NULL, correction = c("none", "Bonferroni", "Holm", "Hochberg", "SidakSS", "SidakSD",

Rd file 'printGraph-methods.Rd':
  \usage lines wider than 90 characters:
                    useFullNames = TRUE, oldSigNodes = NULL, useInfo = c("none", "pval", "counts", "def", "np", "all")[1],
  \examples lines wider than 100 characters:
     printGraph(GOdata, resultFisher, firstSigNodes = 5, fn.prefix = "sampleFile", useInfo = "all", pdfSW = TRUE)

Rd file 'topGOdata-class.Rd':
  \examples lines wider than 100 characters:
                   description = "GO analysis of ALL data: Differential Expression between B-cell and T-cell",

These lines will be truncated in the PDF manual.
```

## XBSeq (1.4.0)
Maintainer: Yuanhang Liu <liuy12@uthscsa.edu>

1 error  | 1 warning  | 3 notes

```
checking tests ... ERROR
  Running ‘testthat.R’ [142s/143s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
      'citation("Biobase")', and for packages 'citation("pkgname")'.
  
  'BiocParallel' did not register default BiocParallelParams:
    invalid class "MulticoreParam" object: 1: 'cluster', '.clusterargs', '.uid', 'RNGseed' must be length 1
  invalid class "MulticoreParam" object: 2: '.clusterargs', '.controlled', 'logdir', 'resultdir' must be length 1
      Welcome to 'XBSeq'.
  Warning message:
  In is.na(x[[i]]) :
    is.na() applied to non-(list or vector) of type 'environment'
  > 
  > test_check("XBSeq")
  Error: XBplot(XB, Samplenum = "Sample_54_WT") did not throw an error.
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 0
  Execution halted

checking files in ‘vignettes’ ... WARNING
Files in the 'vignettes' directory but no files in 'inst/doc':
  ‘XBSeq.Rmd’

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: no function found corresponding to methods exports from ‘XBSeq’ for: ‘conditions’, ‘conditions<-’, ‘dispTable’

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking R code for possible problems ... NOTE
Loglikhood : <anonymous>: no visible global function definition for
  ‘dpois’
MAplot: no visible binding for global variable ‘baseMean’
MAplot: no visible global function definition for ‘quantile’
MAplot: no visible binding for global variable ‘log2FoldChange’
XBSeqDataSet: no visible global function definition for ‘DataFrame’
XBSeqDataSet: no visible global function definition for
  ‘SummarizedExperiment’
XBSeqDataSet: no visible global function definition for ‘formula’
... 45 lines ...
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

## yarn (1.0.1)
Maintainer: Joseph N Paulson <jpaulson@jimmy.harvard.edu>

1 error  | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘yarn-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
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
** found \donttest examples: check also with --run-donttest

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
pandoc: Error producing PDF from TeX source.
! LaTeX Error: File `framed.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.34 \definecolor

Error: processing vignette 'yarn.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

```

