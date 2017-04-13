# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.3 (2017-03-06) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2017-04-13                   |

## Packages

|package        |*  |version |date       |source          |
|:--------------|:--|:-------|:----------|:---------------|
|base64enc      |   |0.1-3   |2015-07-28 |cran (@0.1-3)   |
|ggplot2        |   |2.2.1   |2016-12-30 |cran (@2.2.1)   |
|knitr          |   |1.15.1  |2016-11-22 |cran (@1.15.1)  |
|matrixStats    |   |0.52.1  |2017-04-04 |cran (@0.52.1)  |
|microbenchmark |   |1.4-2.1 |2015-11-25 |cran (@1.4-2.1) |
|R.devices      |   |2.15.1  |2016-11-10 |cran (@2.15.1)  |
|R.rsp          |   |0.40.0  |2016-12-06 |cran (@0.40.0)  |

# Check results

15 packages with problems

|package           |version | errors| warnings| notes|
|:-----------------|:-------|------:|--------:|-----:|
|ChAMP             |2.6.4   |      0|        1|     3|
|clusterExperiment |1.0.0   |      0|        1|     0|
|crlmm             |1.32.0  |      0|        1|     4|
|DeepBlueR         |1.0.11  |      0|        1|     1|
|EasyqpcR          |1.16.0  |      1|        0|     1|
|flowCore          |1.40.6  |      0|        1|     9|
|genomation        |1.6.0   |      0|        1|     3|
|GUIDEseq          |1.4.1   |      1|        1|     3|
|Gviz              |1.18.2  |      0|        1|     4|
|LS2Wstat          |2.0-3   |      0|        1|     2|
|metagenomeSeq     |1.16.0  |      0|        1|     0|
|methylumi         |2.20.0  |      0|        1|     8|
|PathoStat         |1.0.0   |      0|        1|     0|
|RnBeads           |1.6.1   |      0|        7|     6|
|SICtools          |1.4.0   |      0|        1|     4|

## ChAMP (2.6.4)
Maintainer: Yuan Tian  <champ450k@gmail.com>

0 errors | 1 warning  | 3 notes

```
checking package subdirectories ... WARNING
Problems with news in ‘inst/NEWS.Rd’:
  inst/NEWS.Rd:14: unexpected END_OF_INPUT '
  '

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘minfi’ ‘ChAMPdata’ ‘FEM’ ‘DMRcate’ ‘Illumina450ProbeVariants.db’
  ‘IlluminaHumanMethylationEPICmanifest’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 11.1Mb
  sub-directories of 1Mb or more:
    doc       8.9Mb
    extdata   1.9Mb

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

## clusterExperiment (1.0.0)
Maintainer: Elizabeth Purdom <epurdom@stat.berkeley.edu>  
Bug reports: https://github.com/epurdom/clusterExperiment/issues

0 errors | 1 warning  | 0 notes

```
checking Rd cross-references ... WARNING
Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
Missing link or links in documentation object 'seqCluster.Rd':
  ‘tightClust’

See section 'Cross-references' in the 'Writing R Extensions' manual.

```

## crlmm (1.32.0)
Maintainer: Benilton S Carvalho <benilton@unicamp.br>,
 Robert Scharpf <rscharpf@jhsph.edu>, Matt Ritchie
 <mritchie@wehi.EDU.AU>

0 errors | 1 warning  | 4 notes

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
  installed size is  5.1Mb
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
```

## DeepBlueR (1.0.11)
Maintainer: Felipe Albrecht <felipe.albrecht@mpi-inf.mpg.de>, Markus List <markus.list@mpi-inf.mpg.de>

0 errors | 1 warning  | 1 note 

```
checking package subdirectories ... WARNING
Invalid citation information in ‘inst/CITATION’:
  Error in parse(file = cfile): /home/hb/repositories/matrixStats/revdep/checks/DeepBlueR.Rcheck/00_pkg_src/DeepBlueR/inst/CITATION:13:17: unexpected symbol
  12:          transforming, aggregating and downloading data from several epigenomic consortia.
  13:          URL = "https
                      ^

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘logo.png’
```

## EasyqpcR (1.16.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking whether package ‘EasyqpcR’ can be installed ... ERROR
Installation failed.
See ‘/home/hb/repositories/matrixStats/revdep/checks/EasyqpcR.Rcheck/00install.out’ for details.

checking package namespace information ... NOTE
  Namespace with empty importFrom: ‘gWidgetsRGtk2’
```

## flowCore (1.40.6)
Maintainer: M.Jiang <wjiang2@fhcrc.org>

0 errors | 1 warning  | 9 notes

```
checking Rd \usage sections ... WARNING
Documented arguments not in \usage in documentation object 'read.flowSet':
  ‘truncate_max_range’

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

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
  installed size is 33.9Mb
  sub-directories of 1Mb or more:
    data      5.0Mb
    extdata   1.1Mb
    lib      20.5Mb
    libs      5.3Mb

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

## genomation (1.6.0)
Maintainer: Altuna Akalin <aakalin@gmail.com>, Vedran Franke
 <vedran.franke@gmail.com>  
Bug reports: https://github.com/BIMSBbioinfo/genomation/issues

0 errors | 1 warning  | 3 notes

```
checking for missing documentation entries ... WARNING
Undocumented S4 methods:
  generic '[' and siglist 'ScoreMatrix,ANY,ANY,ANY'
  generic '[' and siglist 'ScoreMatrixList,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.

checking installed package size ... NOTE
  installed size is  6.3Mb
  sub-directories of 1Mb or more:
    doc       3.6Mb
    extdata   1.2Mb

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
  See the note in ?`:::` about the use of this operator.

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
Error in .check_ncores(length(names)) : 3 simultaneous processes spawned
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
Error in .check_ncores(length(names)) : 3 simultaneous processes spawned
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

0 errors | 1 warning  | 4 notes

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

checking installed package size ... NOTE
  installed size is  5.8Mb
  sub-directories of 1Mb or more:
    doc       1.6Mb
    extdata   2.1Mb

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

## metagenomeSeq (1.16.0)
Maintainer: Joseph N. Paulson <jpaulson@jimmy.harvard.edu>  
Bug reports: https://github.com/nosson/metagenomeSeq/issues

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘metagenomeSeq.pdf’ from 975Kb to 673Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## methylumi (2.20.0)
Maintainer: Sean Davis <sdavis2@mail.nih.gov>  
Bug reports: https://github.com/seandavi/methylumi/issues/new

0 errors | 1 warning  | 8 notes

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

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘Biobase’ ‘scales’ ‘reshape2’ ‘ggplot2’ ‘matrixStats’
  ‘FDb.InfiniumMethylation.hg19’ ‘minfi’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

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

## PathoStat (1.0.0)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/PathoStat/issues

0 errors | 1 warning  | 0 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘PathoStatUserManual.pdf’ from 1.9Mb to 1.0Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files
```

## RnBeads (1.6.1)
Maintainer: Fabian Mueller <rnbeads@mpi-inf.mpg.de>

0 errors | 7 warnings | 6 notes

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
See ‘/home/hb/repositories/matrixStats/revdep/checks/RnBeads.Rcheck/00install.out’ for details.

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
     compacted ‘RnBeads.pdf’ from 2.8Mb to 1.5Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘RColorBrewer’
  ‘cluster’ ‘ff’ ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’
  ‘matrixStats’ ‘illuminaio’ ‘methylumi’ ‘plyr’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    R     1.0Mb
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

## SICtools (1.4.0)
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

