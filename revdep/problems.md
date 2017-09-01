# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.1 (2017-06-30) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |C                            |
|tz       |NA                           |
|date     |2017-09-01                   |

## Packages

|package        |*  |version |date       |source          |
|:--------------|:--|:-------|:----------|:---------------|
|base64enc      |   |0.1-4   |2017-04-24 |cran (@0.1-4)   |
|ggplot2        |   |2.2.1   |2016-12-30 |cran (@2.2.1)   |
|knitr          |   |1.17    |2017-08-10 |cran (@1.17)    |
|matrixStats    |   |0.52.2  |2017-04-14 |cran (@0.52.2)  |
|microbenchmark |   |1.4-2.1 |2015-11-25 |cran (@1.4-2.1) |
|R.devices      |   |2.15.1  |2016-11-10 |cran (@2.15.1)  |
|R.rsp          |   |0.41.0  |2017-04-16 |cran (@0.41.0)  |

# Check results

59 packages with problems

|package            |version | errors| warnings| notes|
|:------------------|:-------|------:|--------:|-----:|
|BatchQC            |1.5.0   |      0|        2|     1|
|BayesTwin          |1.0     |      1|        0|     0|
|CATALYST           |1.1.5   |      0|        1|     1|
|CEMiTool           |0.99.9  |      0|        1|     2|
|CNPBayes           |1.7.1   |      0|        1|     4|
|ChAMP              |2.9.9   |      0|        3|     5|
|ChIPpeakAnno       |3.11.4  |      0|        1|     2|
|Chicago            |1.5.0   |      0|        1|     3|
|CpGFilter          |1.1     |      0|        1|     0|
|DatabionicSwarm    |0.9.7   |      0|        1|     1|
|DelayedArray       |0.3.19  |      1|        0|     0|
|EasyqpcR           |1.19.0  |      1|        0|     1|
|GJRM               |0.1-1   |      1|        0|     0|
|GUIDEseq           |1.7.3   |      1|        1|     3|
|GeneralizedUmatrix |0.9.5   |      0|        1|     1|
|Gviz               |1.21.2  |      0|        2|     4|
|IMIFA              |1.3.1   |      1|        0|     1|
|LS2Wstat           |2.0-3   |      0|        1|     2|
|MIGSA              |1.1.1   |      0|        1|     2|
|MultiBD            |0.2.0   |      1|        0|     0|
|PathoStat          |1.3.0   |      1|        2|     0|
|QDNAseq            |1.13.0  |      0|        1|     0|
|RTransProb         |0.1.0   |      1|        0|     0|
|RnBeads            |1.9.0   |      0|        3|     5|
|SICtools           |1.7.0   |      0|        2|     5|
|SRGnet             |1.3.0   |      0|        1|     2|
|SemiParSampleSel   |1.5     |      1|        0|     0|
|StructFDR          |1.2     |      1|        0|     0|
|XBSeq              |1.7.0   |      1|        0|     3|
|anomalyDetection   |0.1.2   |      1|        1|     0|
|aroma.light        |3.7.0   |      0|        1|     2|
|brms               |1.9.0   |      0|        1|     0|
|bsseq              |1.13.6  |      0|        1|     1|
|clusterExperiment  |1.3.2   |      2|        5|     6|
|consensusOV        |0.99.3  |      0|        1|     2|
|cosinor2           |0.1.0   |      0|        1|     0|
|crossmeta          |1.3.0   |      0|        1|     3|
|dplR               |1.6.6   |      0|        1|     0|
|fergm              |0.2.0   |      0|        1|     0|
|filesstrings       |1.1.0   |      0|        1|     1|
|flowCore           |1.43.5  |      0|        2|    10|
|funtooNorm         |1.1.0   |      0|        2|     0|
|genomation         |1.9.3   |      0|        2|     4|
|haploReconstruct   |0.1.2   |      0|        1|     1|
|kgschart           |1.3.5   |      0|        1|     0|
|metavizr           |1.1.2   |      1|        0|     0|
|methylumi          |2.23.0  |      0|        2|     9|
|minfi              |1.23.3  |      0|        1|     2|
|monocle            |2.5.4   |      0|        6|     3|
|motifbreakR        |1.7.0   |      1|        0|     0|
|nandb              |0.2.1   |      1|        0|     0|
|r2dRue             |1.0.4   |      1|        0|     0|
|scmap              |0.99.2  |      0|        2|     2|
|scone              |1.1.2   |      2|        0|     4|
|splatter           |1.1.4   |      1|        0|     2|
|stm                |1.2.2   |      1|        0|     0|
|topGO              |2.29.0  |      0|        1|     4|
|yarn               |1.3.0   |      0|        2|     1|
|zinbwave           |0.99.6  |      1|        0|     0|

## BatchQC (1.5.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/BatchQC/issues

0 errors | 2 warnings | 1 note 

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  'lmFitC'
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Fitting L/S model and finding priors
Finding parametric adjustments
Adjusting the Data

Found3batches
Adjusting for1covariate(s) or covariate level(s)
Fitting L/S model and finding priors
... 8 lines ...

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'BatchQC_usage_advanced.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

checking R code for possible problems ... NOTE
gls.series.C: no visible global function definition for 'lm.fit'
Undefined global functions or variables:
  lm.fit
Consider adding
  importFrom("stats", "lm.fit")
to your NAMESPACE file.
```

## BayesTwin (1.0)
Maintainer: Inga Schwabe <bayestwin@gmail.com>  
Bug reports: https://github.com/ingaschwabe/BayesTwin

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'rjags'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## CATALYST (1.1.5)
Maintainer: Helena Lucia Crowell <crowellh@student.ethz.ch>

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                  user system elapsed
normCytof       14.105  0.023  14.142
estTrim         12.933  0.066  13.023
plotMahal       10.391  0.008  10.410
applyCutoffs     9.209  0.125   9.346
estCutoffs       7.331  0.040   7.379
plotSpillmat     6.912  0.006   6.926
compCytof        6.864  0.018   6.888
computeSpillmat  6.477  0.005   6.487
plotYields       6.285  0.003   6.293
plotEvents       6.169  0.009   6.184
outFCS           5.996  0.014   6.015

checking installed package size ... NOTE
  installed size is 1026.7Mb
  sub-directories of 1Mb or more:
    data     2.3Mb
    doc   1024.0Mb
```

## CEMiTool (0.99.9)
Maintainer: Helder Nakaya <hnakaya@usp.br>

0 errors | 1 warning  | 2 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

 ERROR
Running examples in 'CEMiTool-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: generate_report
> ### Title: CEMiTool report
... 96 lines ...
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: pandoc document conversion failed with error 43
Execution halted

checking installed package size ... NOTE
  installed size is  8.6Mb
  sub-directories of 1Mb or more:
    data      3.1Mb
    doc       2.3Mb
    extdata   2.8Mb

checking R code for possible problems ... NOTE
plot_interaction: no visible binding for global variable 'cem'
read_gmt: no visible binding for global variable 'stack'
filter_expr,CEMiTool: no visible global function definition for 'var'
find_modules,CEMiTool: no visible global function definition for 'tail'
find_modules,CEMiTool: no visible global function definition for 'head'
find_modules,CEMiTool: no visible global function definition for
  'hclust'
find_modules,CEMiTool: no visible global function definition for
  'as.dist'
... 7 lines ...
save_plots,CEMiTool : <anonymous>: no visible global function
  definition for 'dev.off'
save_plots,CEMiTool: no visible global function definition for
  'dev.off'
Undefined global functions or variables:
  as.dist cem dev.off dist hclust head stack tail var
Consider adding
  importFrom("grDevices", "dev.off")
  importFrom("stats", "as.dist", "dist", "hclust", "var")
  importFrom("utils", "head", "stack", "tail")
to your NAMESPACE file.
```

## CNPBayes (1.7.1)
Maintainer: Jacob Carey <jcarey15@jhu.edu>  
Bug reports: https://github.com/scristia/CNPBayes/issues

0 errors | 1 warning  | 4 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
! LaTeX Error: File `ifxetex.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'Convergence.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted


checking installed package size ... NOTE
  installed size is 1026.2Mb
  sub-directories of 1Mb or more:
    libs  1024.0Mb

checking DESCRIPTION meta-information ... NOTE
Package listed in more than one of Depends, Imports, Suggests, Enhances:
  'GenomicRanges'
A package should be listed in only one of these fields.

checking R code for possible problems ... NOTE
consensusRegion: no visible global function definition for
  'elementLengths'
Undefined global functions or variables:
  elementLengths

checking compiled code ... NOTE
File 'CNPBayes/libs/CNPBayes.so':
  Found no calls to: 'R_registerRoutines', 'R_useDynamicSymbols'

It is good practice to register native routines and to disable symbol
search.

See 'Writing portable packages' in the 'Writing R Extensions' manual.
```

## ChAMP (2.9.9)
Maintainer: Yuan Tian  <champ450k@gmail.com>

0 errors | 3 warnings | 5 notes

```
checking whether package 'ChAMP' can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import 'plyr::summarise' by 'plotly::summarise' when loading 'ChAMP'
  Warning: replacing previous import 'plyr::rename' by 'plotly::rename' when loading 'ChAMP'
  Warning: replacing previous import 'plyr::arrange' by 'plotly::arrange' when loading 'ChAMP'
  Warning: replacing previous import 'plyr::mutate' by 'plotly::mutate' when loading 'ChAMP'
See '/cbc/henrik/repositories/matrixStats/revdep/checks/ChAMP.Rcheck/00install.out' for details.

checking package subdirectories ... WARNING
Problems with news in 'inst/NEWS.Rd':
  inst/NEWS.Rd:67: unexpected END_OF_INPUT '
  '

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

  -----------------------------
  Start to Compare : C, T
  Contrast Matrix
  You have found 4058 significant MVPs with a BH adjusted P-value below 0.05.
  Calculate DMP for C and T done.

... 8 lines ...

[<<<<<< ChAMP.DMP END >>>>>>]
[===========================]
[You may want to process DMP.GUI() or champ.GSEA() next.]

pandoc-citeproc: Error parsing XML file academic-medicine.csl: FailedConnectionException "www.zotero.org" 80
pandoc: Error running filter /home/shared/cbc/software/pandoc-1.19.2-0/bin/pandoc-citeproc
Filter returned error status 1
Error: processing vignette 'ChAMP.Rmd' failed with diagnostics:
pandoc document conversion failed with error 83
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'minfi' 'ChAMPdata' 'FEM' 'DMRcate' 'Illumina450ProbeVariants.db'
  'IlluminaHumanMethylationEPICmanifest'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 1026.3Mb
  sub-directories of 1Mb or more:
    doc      1024.1Mb
    extdata     1.9Mb

checking DESCRIPTION meta-information ... NOTE
Package listed in more than one of Depends, Imports, Suggests, Enhances:
  'rmarkdown'
A package should be listed in only one of these fields.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File 'ChAMP/R/Block.GUI.R':
  data(probe.features.epic)
  data(probe.features)
File 'ChAMP/R/CpG.GUI.R':
  data(probe.features.epic)
  data(probe.features)
File 'ChAMP/R/DMP.GUI.R':
  data(MatchGeneName)
... 46 lines ...
  data(probe.features.epic)
  data(probe.features)
File 'ChAMP/R/champ.norm.R':
  data(probeInfoALL.epic.lv)
  data(probeInfoALL.lv)
  data(probeInfoALL.epic.lv)
  data(probeInfoALL.lv)
File 'ChAMP/R/champ.refbase.R':
  data(CellTypeMeans27K)
  data(CellTypeMeans450K)
See section 'Good practice' in '?data'.

checking Rd line widths ... NOTE
Rd file 'champ.filter.Rd':
  \examples lines wider than 100 characters:
             myfilter <- champ.filter(beta=myImport$beta,pd=myImport$pd,detP=myImport$detP,beadcount=myImport$beadcount)

These lines will be truncated in the PDF manual.
```

## ChIPpeakAnno (3.11.4)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>,
 Jianhong Ou <Jianhong.ou@umassmed.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
5: In valid.GenomicRanges.seqinfo(x, suggest.trim = TRUE) :
  GRanges object contains 5 out-of-bound ranges located on sequences
  GL000199.1 and chrM. Note that only ranges located on a
  non-circular sequence whose length is not NA can be considered
  out-of-bound (use seqlengths() and isCircular() to get the lengths
  and circularity flags of the underlying sequences). You can use
  trim() to trim these ranges. See ?`trim,GenomicRanges-method` for
... 8 lines ...
  trim() to trim these ranges. See ?`trim,GenomicRanges-method` for
  more information.
7: In valid.GenomicRanges.seqinfo(x, suggest.trim = TRUE) :
  GRanges object contains 8 out-of-bound ranges located on sequences
  GL000199.1 and chrM. Note that only ranges located on a
  non-circular sequence whose length is not NA can be considered
  out-of-bound (use seqlengths() and isCircular() to get the lengths
  and circularity flags of the underlying sequences). You can use
  trim() to trim these ranges. See ?`trim,GenomicRanges-method` for
  more information.
Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: 'motifStack'

Depends: includes the non-default packages:
  'grid' 'IRanges' 'Biostrings' 'GenomicRanges' 'S4Vectors'
  'VennDiagram'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 4107.5Mb
  sub-directories of 1Mb or more:
    data     3077.5Mb
    doc         1.1Mb
    extdata  1028.2Mb
```

## Chicago (1.5.0)
Maintainer: Mikhail Spivakov <spivakov@babraham.ac.uk>

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
The following objects are masked from 'package:matrixStats':

    colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges

The following object is masked from 'package:base':

    apply
... 8 lines ...
The following object is masked from 'package:Biobase':

    cache

updating metadata: retrieving 1 resource
Quitting from lines 285-289 (Chicago.Rmd) 
Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
database is corrupt; remove it and try again
  database: '/home/henrik//.AnnotationHub/annotationhub.sqlite3'
  reason: missing tables
Execution halted

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .BBSoptions
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'session.txt'

checking Rd line widths ... NOTE
Rd file 'mergeSamples.Rd':
  \usage lines wider than 90 characters:
           NcolNormPrefix = "NNorm", mergeMethod = c("weightedMean", "mean")[1], repNormCounts = (mergeMethod=="mean"))

Rd file 'peakEnrichment4Features.Rd':
  \examples lines wider than 100 characters:
     peakEnrichment4Features(cdUnitTest, folder=ChIPdir, list_frag = featuresList, no_bins = 500, sample_number = 100)

These lines will be truncated in the PDF manual.
```

## CpGFilter (1.1)
Maintainer: Jun Chen <chen.jun2@mayo.edu>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

## DatabionicSwarm (0.9.7)
Maintainer: Michael Thrun <m.thrun@gmx.net>

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

** found \donttest examples: check also with --run-donttest

checking installed package size ... NOTE
  installed size is 1024.2Mb
  sub-directories of 1Mb or more:
    libs  1024.0Mb
```

## DelayedArray (0.3.19)
Maintainer: Hervé Pagès <hpages@fredhutch.org>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required and available but unsuitable versions:
  'S4Vectors' 'IRanges'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## EasyqpcR (1.19.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking package dependencies ... ERROR
Package required but not available: 'gWidgetsRGtk2'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.

checking package namespace information ... NOTE
  Namespace with empty importFrom: 'gWidgetsRGtk2'
```

## GJRM (0.1-1)
Maintainer: Giampiero Marra <giampiero.marra@ucl.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: 'VineCopula' 'Rmpfr' 'copula'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## GUIDEseq (1.7.3)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>

1 error  | 1 warning  | 3 notes

```
checking examples ... ERROR
Running examples in 'GUIDEseq-Ex.R' failed
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
    extdata  10.5Mb

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

## GeneralizedUmatrix (0.9.5)
Maintainer: Michael Thrun <mthrun@mathematik.uni-marburg.de>

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

** found \donttest examples: check also with --run-donttest

checking installed package size ... NOTE
  installed size is 1024.1Mb
  sub-directories of 1Mb or more:
    libs  1024.0Mb
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
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
    'citation("Biobase")', and for packages
    'citation("pkgname")'.

Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'Gviz.tex' failed.
... 8 lines ...
<inserted text> 
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
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    doc       1.7Mb
    extdata   2.1Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'Rplots.pdf'

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

## IMIFA (1.3.1)
Maintainer: Keefe Murphy <keefe.murphy@ucd.ie>  
Bug reports: https://github.com/Keefe-Murphy/IMIFA

1 error  | 0 warnings | 1 note 

```
checking whether package 'IMIFA' can be installed ... ERROR
Installation failed.
See '/cbc/henrik/repositories/matrixStats/revdep/checks/IMIFA.Rcheck/00install.out' for details.

checking package dependencies ... NOTE
Package suggested but not available for checking: 'Rmpfr'
```

## LS2Wstat (2.0-3)
Maintainer: Matt Nunes <m.nunes@lancaster.ac.uk>

0 errors | 1 warning  | 2 notes

```
checking whether package 'LS2Wstat' can be installed ... WARNING
Found the following significant warnings:
  Warning: no DISPLAY variable so Tk is not available
See '/cbc/henrik/repositories/matrixStats/revdep/checks/LS2Wstat.Rcheck/00install.out' for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking R code for possible problems ... NOTE
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

## MIGSA (1.1.1)
Maintainer: Juan C. Rodriguez <jcrodriguez@bdmg.com.ar>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: nlme

Attaching package: 'nlme'

The following object is masked from 'package:IRanges':

    collapse
... 8 lines ...
    toTable




Attaching package: 'MIGSA'

The following object is masked from 'package:mGSZ':

    geneSetsList


checking installed package size ... NOTE
  installed size is 2049.1Mb
  sub-directories of 1Mb or more:
    data  1024.1Mb
    doc   1024.4Mb

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  FitOptions.data.frame FitOptions.default summary.GSEAparams
  summary.IGSAinput summary.MIGSAres summary.SEAparams
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.
```

## MultiBD (0.2.0)
Maintainer: Marc A. Suchard <msuchard@ucla.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'RcppParallel'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## PathoStat (1.3.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/PathoStat/issues

1 error  | 2 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'PathoStat-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: createPathoStat
> ### Title: Generates a PathoStat object from the PathoScope reports for
> ###   further analysis using the interactive shiny app
> ### Aliases: createPathoStat
> 
> ### ** Examples
> 
> example_data_dir <- system.file("example/data", package = "PathoStat")
> pstat <- createPathoStat(input_dir=example_data_dir, 
+     sample_data_file="sample_data.tsv")
Error in curl::curl_fetch_memory(url, handle = handle) : 
  name lookup timed out
Calls: createPathoStat ... request_fetch -> request_fetch.write_memory -> <Anonymous> -> .Call
Execution halted

checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'PathoStatUserManual.pdf' from 1987Kb to 1019Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: Transformation introduced infinite values in discrete y-axis
! LaTeX Error: File `ifxetex.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'PathoStatUserManual.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

```

## QDNAseq (1.13.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 1 warning  | 0 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  'exportVCF'
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.
```

## RTransProb (0.1.0)
Maintainer: Ab NDiaye <pabdndiaye@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'RTransProb-Ex.R' failed
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

## RnBeads (1.9.0)
Maintainer: Fabian Mueller <rnbeads@mpi-inf.mpg.de>

0 errors | 3 warnings | 5 notes

```
checking for executable files ... WARNING
Found the following executable files:
  inst/bin/linux_x86.64/bedGraphToBigWig
  inst/bin/linux_x86.64/bedToBigBed
  inst/bin/macOSX.i386/bedGraphToBigWig
  inst/bin/macOSX.i386/bedToBigBed
Source packages should not contain undeclared executable files.
See section 'Package structure' in the 'Writing R Extensions' manual.

checking dependencies in R code ... WARNING
Unexported objects imported by ':::' calls:
  'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
  'grDevices:::.smoothScatterCalcDensity'
  'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
  'minfi:::.normalizeFunnorm450k'
  See the note in ?`:::` about the use of this operator.
  Including base/recommended package(s):
  'grDevices'

checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'RnBeads.pdf' from 2.8Mb to 2.2Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Package suggested but not available for checking: 'GLAD'

Depends: includes the non-default packages:
  'BiocGenerics' 'S4Vectors' 'GenomicRanges' 'MASS' 'cluster' 'ff'
  'fields' 'ggplot2' 'gplots' 'gridExtra' 'limma' 'matrixStats'
  'illuminaio' 'methylumi' 'plyr'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 2051.6Mb
  sub-directories of 1Mb or more:
    R    1025.4Mb
    doc  1024.3Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'BinaryFiles'

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: no function found corresponding to methods exports from 'RnBeads' for: 'samples'

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking R code for possible problems ... NOTE
.stopImplicitCluster: no visible global function definition for
  'stopCluster'
MethyLumiSet2RnBeadSet: no visible global function definition for
  'phenoData'
MethyLumiSet2RnBeadSet: no visible global function definition for
  'assayDataElementNames'
MethyLumiSet2RnBeadSet: no visible global function definition for
  'featureNames'
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

## SICtools (1.7.0)
Maintainer: Xiaobin Xing <xiaobinxing0316@gmail.com>

0 errors | 2 warnings | 5 notes

```
checking whether package 'SICtools' can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import 'plyr::count' by 'matrixStats::count' when loading 'SICtools'
See '/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools.Rcheck/00install.out' for details.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    compact

The following object is masked from 'package:IRanges':

    desc

The following object is masked from 'package:S4Vectors':
... 8 lines ...

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'SICtools.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'Rsamtools' 'doParallel' 'Biostrings' 'stringr' 'matrixStats' 'plyr'
  'GenomicRanges' 'IRanges'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .BBSoptions
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.

checking installed package size ... NOTE
  installed size is 2048.5Mb
  sub-directories of 1Mb or more:
    etc      1024.0Mb
    extdata  1024.1Mb

checking R code for possible problems ... NOTE
.indelDiffFunc: no visible global function definition for 'fisher.test'
.indelDiffFunc: no visible global function definition for 'dist'
indelDiff: no visible global function definition for 'read.delim'
snpDiff : calcInfoRange : <anonymous>: no visible global function
  definition for 'fisher.test'
snpDiff : calcInfoRange : <anonymous>: no visible global function
  definition for 'dist'
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

## SRGnet (1.3.0)
Maintainer: Isar Nassiri <isar_nassiri@urmc.rochester.edu>

0 errors | 1 warning  | 2 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
         user system elapsed
SRGnet 84.956  0.104  85.159

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'EBcoexpress' 'MASS' 'igraph' 'pvclust' 'gbm' 'limma' 'DMwR'
  'matrixStats' 'Hmisc'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking R code for possible problems ... NOTE
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

## SemiParSampleSel (1.5)
Maintainer: Giampiero Marra <giampiero.marra@ucl.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'copula'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## StructFDR (1.2)
Maintainer: Jun Chen <chen.jun2@mayo.edu>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'StructFDR-Ex.R' failed
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
  Running 'testthat.R' [546s/547s]
Running the tests in 'tests/testthat.R' failed.
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
Warning: no function found corresponding to methods exports from 'XBSeq' for: 'conditions', 'conditions<-', 'dispTable'

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking R code for possible problems ... NOTE
Loglikhood : <anonymous>: no visible global function definition for
  'ddelap'
Loglikhood : <anonymous>: no visible global function definition for
  'dpois'
Loglikhood_NB : <anonymous>: no visible global function definition for
  'dnbinom'
MAplot: no visible binding for global variable 'baseMean'
MAplot: no visible global function definition for 'quantile'
MAplot: no visible binding for global variable 'log2FoldChange'
... 49 lines ...
  importFrom("stats", "Gamma", "coefficients", "complete.cases", "cor",
             "dnbinom", "dpois", "formula", "glm", "median", "optim",
             "p.adjust", "pbeta", "predict", "qbeta", "quantile",
             "rnbinom")
  importFrom("utils", "data")
to your NAMESPACE file.

Found the following calls to data() loading into the global environment:
File 'XBSeq/R/methods.R':
  data("scvBiasCorrectionFits")
See section 'Good practice' in '?data'.

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

## anomalyDetection (0.1.2)
Maintainer: Bradley Boehmke <bradleyboehmke@gmail.com>  
Bug reports: https://github.com/AFIT-R/anomalyDetection/issues

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
  Running 'testthat.R' [26s/26s]
Running the tests in 'tests/testthat.R' failed.
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

checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

## aroma.light (3.7.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.light/issues

0 errors | 1 warning  | 2 notes

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
normalizeAffine   12.289  0.011  12.310
normalizeCurveFit 11.665  0.010  11.682

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  inst/rsp/.rspPlugins
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'revdep'
```

## brms (1.9.0)
Maintainer: Paul-Christian Bürkner <paul.buerkner@gmail.com>  
Bug reports: https://github.com/paul-buerkner/brms/issues

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

## bsseq (1.13.6)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/bsseq/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                user system elapsed
BSmooth.tstat 18.177  0.440  18.636
getMeth        6.914  0.902   7.825
goodnessOfFit  6.279  0.091   6.379
getCoverage    6.211  0.025   6.244
** found \donttest examples: check also with --run-donttest

checking installed package size ... NOTE
  installed size is 1024.9Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb
```

## clusterExperiment (1.3.2)
Maintainer: Elizabeth Purdom <epurdom@stat.berkeley.edu>  
Bug reports: https://github.com/epurdom/clusterExperiment/issues

2 errors | 5 warnings | 6 notes

```
checking examples ... ERROR
Running examples in 'clusterExperiment-Ex.R' failed
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
  Running 'testthat.R' [495s/496s]
Running the tests in 'tests/testthat.R' failed.
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

checking whether package 'clusterExperiment' can be installed ... WARNING
Found the following significant warnings:
  Warning: program compiled against libxml 209 using older 207
See '/cbc/henrik/repositories/matrixStats/revdep/checks/clusterExperiment.Rcheck/00install.out' for details.

checking S3 generic/method consistency ... WARNING
Warning: program compiled against libxml 209 using older 207
See section 'Generic functions and methods' in the 'Writing R
Extensions' manual.

checking replacement functions ... WARNING
Warning: program compiled against libxml 209 using older 207
The argument of a replacement function which corresponds to the right
hand side must be named 'value'.

checking Rd files ... WARNING
mergeClusters.Rd: non-ASCII input and no declared encoding
plotClusters.Rd: non-ASCII input and no declared encoding
problems found in 'mergeClusters.Rd', 'plotClusters.Rd'

checking for missing documentation entries ... WARNING
Warning: program compiled against libxml 209 using older 207
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking installed package size ... NOTE
  installed size is 1025.3Mb
  sub-directories of 1Mb or more:
    doc  1024.1Mb

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: program compiled against libxml 209 using older 207

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking dependencies in R code ... NOTE
Warning: program compiled against libxml 209 using older 207
':::' call which should be '::': 'ape:::.PlotPhyloEnv'
  See the note in ?`:::` about the use of this operator.
Unexported object imported by a ':::' call: 'ape:::.matchDataPhylo'
  See the note in ?`:::` about the use of this operator.

checking foreign function calls ... NOTE
Warning: program compiled against libxml 209 using older 207
See chapter 'System and foreign language interfaces' in the 'Writing R
Extensions' manual.

checking R code for possible problems ... NOTE
Warning: program compiled against libxml 209 using older 207
Warning: program compiled against libxml 209 using older 207

checking Rd \usage sections ... NOTE
Warning: program compiled against libxml 209 using older 207
The \usage entries for S3 methods should use the \method markup and not
their full name.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.
```

## consensusOV (0.99.3)
Maintainer: Benjamin Haibe-Kains <benjamin.haibe.kains@utoronto.ca>  
Bug reports: https://github.com/bhklab/consensusOV/issues

0 errors | 1 warning  | 2 notes

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

checking installed package size ... NOTE
  installed size is 1024.6Mb
  sub-directories of 1Mb or more:
    R  1024.0Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'appveyor.yml'
```

## cosinor2 (0.1.0)
Maintainer: Augustin Mutak <aumutak@ffzg.hr>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
             user system elapsed
periodogram 5.499  0.014    5.52
```

## crossmeta (1.3.0)
Maintainer: Alex Pickering <alexvpickering@gmail.com>

0 errors | 1 warning  | 3 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
               user system elapsed
symbol_annot 22.262  0.907 449.264
diff_path    10.842  0.182  11.040
es_meta       6.126  0.056   6.193
get_raw       0.690  0.116 243.565

checking installed package size ... NOTE
  installed size is 1024.9Mb
  sub-directories of 1Mb or more:
    doc  1024.0Mb

checking dependencies in R code ... NOTE
Missing or unexported objects:
  'crossmeta::gs.names' 'crossmeta::gslist'

checking R code for possible problems ... NOTE
explore_paths : server: no visible binding for global variable 'gslist'
explore_paths : server: no visible binding for global variable
  'gs.names'
Undefined global functions or variables:
  gs.names gslist
```

## dplR (1.6.6)
Maintainer: Andy Bunn <andy.bunn@wwu.edu>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
redfit            10.129  0.013  10.153
rwi.stats.running  6.656  0.006   6.668
print.rwl.report   5.741  0.005   5.751
wavelet.plot       5.502  0.015   5.524
rwl.report         5.328  0.012   5.344
uuid.gen           0.150  0.005 143.008
```

## fergm (0.2.0)
Maintainer: Benjamin W. Campbell <campbell.1721@osu.edu>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                        user system elapsed
coef_posterior_density 9.349  0.061   9.420
clean_summary          8.360  0.295   8.667
compare_predictions    8.237  0.164   8.410
coef_plot              8.254  0.091   8.355
fergm_beta_traceplot   5.426  0.055   5.487
```

## filesstrings (1.1.0)
Maintainer: Rory Nolan <rorynoolan@gmail.com>  
Bug reports: https://www.github.com/rorynolan/filesstrings/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale


checking installed package size ... NOTE
  installed size is 1024.2Mb
  sub-directories of 1Mb or more:
    libs  1024.0Mb
```

## flowCore (1.43.5)
Maintainer: M.Jiang <wjiang2@fhcrc.org>

0 errors | 2 warnings | 10 notes

```
checking Rd \usage sections ... WARNING
Documented arguments not in \usage in documentation object 'read.flowSet':
  'truncate_max_range'

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 301-303 (HowTo-flowCore.Rnw) 
Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
there is no package called 'ggcyto'
Execution halted


checking package dependencies ... NOTE
Packages suggested but not available for checking:
  'flowWorkspace' 'openCyto' 'ggcyto'

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
  installed size is 3075.1Mb
  sub-directories of 1Mb or more:
    data     1024.0Mb
    extdata     1.1Mb
    lib      1024.0Mb
    libs     1024.0Mb

checking DESCRIPTION meta-information ... NOTE
Versioned 'LinkingTo' value for 'BH' is only usable in R >= 3.0.2

checking top-level files ... NOTE
Non-standard files/directories found at top level:
  'examples' 'hyperlog.notice.html' 'paper' 'unitTests'

checking dependencies in R code ... NOTE
'library' or 'require' call to 'Rgraphviz' in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.data.frame.manyFilterResult
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
rbind2,flowSet-flowSet: warning in assign(i, x[[i]], env = env):
  partial argument match of 'env' to 'envir'
rbind2,flowSet-flowSet: warning in assign(i, y[[i]], env = env):
  partial argument match of 'env' to 'envir'
%in%,flowFrame-norm2Filter: no visible global function definition for
  'cov.rob'
spillover,flowSet: no visible global function definition for
  'devAskNewPage'
spillover,flowSet : <anonymous>: no visible global function definition
... 6 lines ...
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

0 errors | 2 warnings | 0 notes

```
checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'funtooNorm.pdf' from 1239Kb to 199Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Starting validation with a max of 3 components...

writing to file:/cbc/henrik/repositories/matrixStats/revdep/checks/funtooNorm.Rcheck/vign_test/funtooNorm/vignettes/plotValidationGraph.pdf
we found 4 men and 2 women in your data set base on Y probes only
Normalization of signal : AIGrn
Normalization of signal : BIGrn
Normalization of signal : AIRed
... 8 lines ...

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'funtooNorm.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted
```

## genomation (1.9.3)
Maintainer: Altuna Akalin <aakalin@gmail.com>, Vedran Franke
 <vedran.franke@gmail.com>  
Bug reports: https://github.com/BIMSBbioinfo/genomation/issues

0 errors | 2 warnings | 4 notes

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                     user system elapsed
ScoreMatrix-methods 7.059  0.082   7.158
** found \donttest examples: check also with --run-donttest

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
pandoc: Could not fetch https://raw.githubusercontent.com/BIMSBbioinfo/genomation/master/vignettes/Figures/genomationFlowChart1.png
FailedConnectionException "raw.githubusercontent.com" 443
Error: processing vignette 'GenomationManual.Rmd' failed with diagnostics:
pandoc document conversion failed with error 67
Execution halted


checking installed package size ... NOTE
  installed size is 2049.0Mb
  sub-directories of 1Mb or more:
    doc      1024.0Mb
    extdata  1024.1Mb

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: 'BiocGenerics:::testPackage'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
ScoreMatrixBin,RleList-GRangesList: no visible binding for global
  variable 'cvg'
ScoreMatrixBin,RleList-GRangesList: no visible binding for global
  variable 'id'
ScoreMatrixBin,RleList-GRangesList: no visible global function
  definition for ':='
Undefined global functions or variables:
  := cvg id

checking files in 'vignettes' ... NOTE
The following directory looks like a leftover from 'knitr':
  'cache'
Please remove from your package.
```

## haploReconstruct (0.1.2)
Maintainer: Susanne U. Franssen <susefranssen@googlemail.com>

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
         user system elapsed
ex_dat 10.979   0.88  12.185

checking installed package size ... NOTE
  installed size is 1024.3Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb
```

## kgschart (1.3.5)
Maintainer: Kota Mori <kmori05@gmail.com>  
Bug reports: https://github.com/kota7/kgschart/issues

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

## metavizr (1.1.2)
Maintainer: Hector Corrada Bravo <hcorrada@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'metavizr-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: setMetavizStandalone
> ### Title: set metaviz app standalone settings
> ### Aliases: setMetavizStandalone
> 
> ### ** Examples
> 
> # see package vignette for example usage
> setMetavizStandalone()
cloning epiviz from git...
cloning into '/cbc/henrik/R/x86_64-pc-linux-gnu-library/devtools/3.4/epivizrStandalone/www'...
Error in git2r::clone(url, local_path = webpath) : 
  Error in 'git2r_clone': the SSL certificate is invalid
Calls: setMetavizStandalone ... setStandalone -> <Anonymous> -> <Anonymous> -> .Call
Execution halted
```

## methylumi (2.23.0)
Maintainer: Sean Davis <sdavis2@mail.nih.gov>  
Bug reports: https://github.com/seandavi/methylumi/issues/new

0 errors | 2 warnings | 9 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  'IDATsToMatrices' 'IDATtoMatrix' 'tcgaPipeline'
Undocumented S4 methods:
  generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
  generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking contents of 'data' directory ... WARNING
Files not of a type allowed in a 'data' directory:
  '5318317007_A_Grn.idat' '5318317007_A_Red.idat'
  '5318317007_B_Grn.idat' '5318317007_B_Red.idat'
  '5318317007_C_Grn.idat' '5318317007_C_Red.idat'
Please use e.g. 'inst/extdata' for non-R data files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'Biobase' 'scales' 'reshape2' 'ggplot2' 'matrixStats'
  'FDb.InfiniumMethylation.hg19' 'minfi'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .travis.yml
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.

checking installed package size ... NOTE
  installed size is  9.8Mb
  sub-directories of 1Mb or more:
    data      6.8Mb
    extdata   1.7Mb

checking DESCRIPTION meta-information ... NOTE
Packages listed in more than one of Depends, Imports, Suggests, Enhances:
  'Biobase' 'minfi' 'lattice' 'matrixStats'
A package should be listed in only one of these fields.

checking dependencies in R code ... NOTE
'library' or 'require' calls to packages already attached by Depends:
  'FDb.InfiniumMethylation.hg19' 'ggplot2' 'matrixStats' 'minfi'
  'reshape2' 'scales'
  Please remove these calls from your code.
'library' or 'require' calls in package code:
  'Biostrings' 'MASS' 'lumi' 'parallel' 'rtracklayer'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
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

checking R code for possible problems ... NOTE
getBarcodes: warning in list.files(path = path, patt = "idat"): partial
  argument match of 'patt' to 'pattern'
.getFinalReportBlock: no visible global function definition for
  'read.table'
.mclapply: no visible global function definition for 'mclapply'
.parallel : <anonymous>: no visible global function definition for
  'ecdf'
.readOldMethylationFile: no visible global function definition for
  'read.delim'
... 213 lines ...

Found the following calls to data() loading into the global environment:
File 'methylumi/R/coercions.R':
  data(hm450.controls)
  data(hm27.controls)
File 'methylumi/R/methylumIDAT.R':
  data(hm27.controls)
  data(hm450.controls)
  data(hm27.ordering)
  data(hm450.ordering)
See section 'Good practice' in '?data'.

checking Rd files ... NOTE
prepare_Rd: estimateM.Rd:34-36: Dropping empty section \seealso
prepare_Rd: estimateM.Rd:37-39: Dropping empty section \examples

checking Rd line widths ... NOTE
Rd file 'methylumIDAT.Rd':
  \examples lines wider than 100 characters:
       lumi450k <- methylumIDAT(barcodes,idatPath=system.file('extdata/idat',package='methylumi')) # no normalization done

These lines will be truncated in the PDF manual.

checking for unstated dependencies in vignettes ... NOTE
'library' or 'require' call not declared from: 'TxDb.Hsapiens.UCSC.hg19.knownGene'
```

## minfi (1.23.3)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/minfi/issues

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Loading required package: bumphunter
Loading required package: foreach
Loading required package: iterators
Loading required package: locfit
locfit 1.5-9.1 	 2013-03-22
Setting options('download.file.method.GEOquery'='auto')
... 8 lines ...

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'minfi.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: 'bumphunter:::.getEstimate'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File 'minfi/R/estimateCellCounts.R':
  data(list = referencePkg)
See section 'Good practice' in '?data'.
```

## monocle (2.5.4)
Maintainer: Cole Trapnell <coletrap@uw.edu>

0 errors | 6 warnings | 3 notes

```
checking whether package 'monocle' can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import 'dplyr::union' by 'igraph::union' when loading 'monocle'
  Warning: replacing previous import 'dplyr::as_data_frame' by 'igraph::as_data_frame' when loading 'monocle'
  Warning: replacing previous import 'dplyr::groups' by 'igraph::groups' when loading 'monocle'
  Warning: replacing previous import 'dplyr::arrange' by 'plyr::arrange' when loading 'monocle'
See '/cbc/henrik/repositories/matrixStats/revdep/checks/monocle.Rcheck/00install.out' for details.

checking Rd files ... WARNING
checkRd: (5) detectGenes.Rd:0-27: Must have a \description
checkRd: (5) plot_cell_trajectory.Rd:0-60: Must have a \description
prepare_Rd: reducedDimK.Rd:16-18: Dropping empty section \description
checkRd: (5) reducedDimK.Rd:0-24: Must have a \description

checking for missing documentation entries ... WARNING
Undocumented code objects:
  'addCellType' 'plot_genes_violin'
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking Rd \usage sections ... WARNING
Undocumented arguments in documentation object 'newCellTypeHierarchy'
  'cth'

Documented arguments not in \usage in documentation object 'plot_genes_branched_pseudotime':
  'multi_branch'

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking Rd contents ... WARNING
Argument items with no description in Rd object 'plot_cell_trajectory':
  'show_state_number' 'state_number_size'


checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'monocle-vignette.tex' failed.
LaTeX errors:
! Package keyval Error: linktoc undefined.

See the keyval package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
! LaTeX Error: File `xstring.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

! Emergency stop.
<read *> 
         
l.49 \RequirePackage
                    {Sweave}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted


checking top-level files ... NOTE
Non-standard files/directories found at top level:
  'actual_vignette_holder' 'examples'

checking R code for possible problems ... NOTE
assign_cell_lineage: no visible global function definition for 'nei'
buildBranchCellDataSet: no visible global function definition for 'nei'
clusterCells: no visible binding for global variable 'rho'
clusterCells: no visible binding for global variable 'delta'
count_leaf_descendents: no visible global function definition for 'nei'
cth_classifier_cds: no visible global function definition for 'nei'
cth_classifier_cell: no visible global function definition for 'nei'
diff_test_helper: no visible binding for global variable 'Size_Factor'
extract_good_ordering: no visible global function definition for 'nei'
... 14 lines ...
plot_multiple_branches_pseudotime: no visible binding for global
  variable 'pseudocount'
plot_multiple_branches_pseudotime: no visible binding for global
  variable 'Branch'
project2MST: no visible global function definition for 'nei'
Undefined global functions or variables:
  Branch Size_Factor delta esApply exprs<- lowess nei next_node
  pseudocount rho
Consider adding
  importFrom("stats", "lowess")
to your NAMESPACE file.

checking files in 'vignettes' ... NOTE
The following files look like leftovers/mistakes:
  'monocle-vignette-knitr.bbl', 'monocle-vignette-knitr.log',
  'monocle-vignette-knitr.toc'
Please remove them from your package.
The following directory looks like a leftover from 'knitr':
  'figure'
Please remove from your package.
```

## motifbreakR (1.7.0)
Maintainer: Simon Gert Coetzee <Simon.Coetzee@cshs.org>  
Bug reports: https://github.com/Simon-Coetzee/motifbreakR/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'motifStack'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## nandb (0.2.1)
Maintainer: Rory Nolan <rorynoolan@gmail.com>  
Bug reports: https://github.com/rorynolan/nandb/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'autothresholdr'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## r2dRue (1.0.4)
Maintainer: Alberto Ruiz Moreno <aruiz@eeza.csic.es>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'rgdal'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## scmap (0.99.2)
Maintainer: Vladimir Kiselev <vladimir.yu.kiselev@gmail.com>  
Bug reports: https://support.bioconductor.org/t/scmap/

0 errors | 2 warnings | 2 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                 user system elapsed
createReference 7.316  0.124   7.452

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    duplicated, eval, evalq, get, grep, grepl, intersect,
    is.unsorted, lapply, lengths, mapply, match, mget, order,
    paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
    rowSums, rownames, sapply, setdiff, sort, table, tapply,
    union, unique, unsplit, which, which.max, which.min

Welcome to Bioconductor
... 8 lines ...
Attaching package: 'scater'

The following object is masked from 'package:stats':

    filter

pandoc: Could not fetch https://www.google.com/jsapi?callback=displayChartSankeyID5d4ca2cbbbe2a
FailedConnectionException "www.google.com" 443
Error: processing vignette 'scmap.Rmd' failed with diagnostics:
pandoc document conversion failed with error 67
Execution halted

checking installed package size ... NOTE
  installed size is 1024.5Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb

checking top-level files ... NOTE
File
  LICENSE
is not mentioned in the DESCRIPTION file.
```

## scone (1.1.2)
Maintainer: Michael Cole <mbeloc@gmail.com>  
Bug reports: https://github.com/YosefLab/scone/issues

2 errors | 0 warnings | 4 notes

```
checking examples ... ERROR
Running examples in 'scone-Ex.R' failed
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
  Running 'testthat.R' [28s/50s]
Running the tests in 'tests/testthat.R' failed.
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
Package suggested but not available for checking: 'scran'

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  'ggplot2' 'plotly' 'visNetwork'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing or unexported object: 'shiny::renderPlotly'

checking R code for possible problems ... NOTE
sconeReport: no visible global function definition for
  'visNetworkOutput'
sconeReport: no visible global function definition for 'plotlyOutput'
sconeReport : server: no visible global function definition for
  'renderVisNetwork'
sconeReport : server: no visible global function definition for '%>%'
sconeReport : server: no visible global function definition for
  'visNetwork'
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
Package unavailable to check Rd xrefs: 'scran'
```

## splatter (1.1.4)
Maintainer: Luke Zappia <luke.zappia@mcri.edu.au>  
Bug reports: https://github.com/Oshlack/splatter/issues

1 error  | 0 warnings | 2 notes

```
checking tests ... ERROR
  Running 'testthat.R' [54s/99s]
Running the tests in 'tests/testthat.R' failed.
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
Package suggested but not available for checking: 'scran'

checking installed package size ... NOTE
  installed size is 1024.4Mb
  sub-directories of 1Mb or more:
    doc  1024.0Mb
```

## stm (1.2.2)
Maintainer: Brandon Stewart <bms4@princeton.edu>  
Bug reports: https://github.com/bstewart/stm/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'quanteda'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

## topGO (2.29.0)
Maintainer: Adrian Alexa <adrian.alexa@gmail.com>

0 errors | 1 warning  | 4 notes

```
checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'topGO.pdf' from 823Kb to 556Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'BiocGenerics' 'graph' 'Biobase' 'GO.db' 'AnnotationDbi' 'SparseM'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  'Rgraphviz' 'multtest'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing object imported by a ':::' call: 'globaltest:::globaltest'

checking R code for possible problems ... NOTE
GOplot: no visible global function definition for 'getDefaultAttrs'
GOplot: no visible global function definition for 'agopen'
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for 'getNodeCenter'
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for 'pieGlyph'
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
  global function definition for 'getX'
GOplot.counts : plotSigChart : buildDrawing : <anonymous>: no visible
... 35 lines ...
  getDefaultAttrs getNodeCenter getNodeLW getNodeXY getX getY
  mt.rawp2adjp mt.teststat name pieGlyph scoreInNode toDot txtLabel

Found the following assignments to the global environment:
File 'topGO/R/topGOtests.R':
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

## yarn (1.3.0)
Maintainer: Joseph N Paulson <jpaulson@jimmy.harvard.edu>

0 errors | 2 warnings | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                       user system elapsed
normalizeTissueAware 52.698  0.187  52.929
qsmooth              52.518  0.010  52.569
annotateFromBiomart   1.822  0.078  69.850
** found \donttest examples: check also with --run-donttest

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
! LaTeX Error: File `ifxetex.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.5 \usepackage

pandoc: Error producing PDF
Error: processing vignette 'yarn.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted


checking installed package size ... NOTE
  installed size is 1024.5Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb
```

## zinbwave (0.99.6)
Maintainer: Davide Risso <risso.davide@gmail.com>  
Bug reports: https://github.com/drisso/zinbwave/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: 'copula'

See section 'The DESCRIPTION file' in the 'Writing R Extensions'
manual.
```

