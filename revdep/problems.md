# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |SystemV/PST8PDT              |
|date     |2016-10-07                   |

## Packages

|package     |*  |version     |date       |source                                 |
|:-----------|:--|:-----------|:----------|:--------------------------------------|
|base64enc   |   |0.1-3       |2015-07-28 |CRAN (R 3.3.1)                         |
|ggplot2     |   |2.1.0       |2016-03-01 |CRAN (R 3.3.1)                         |
|knitr       |   |1.14        |2016-08-13 |cran (@1.14)                           |
|matrixStats |   |0.50.2-9000 |2016-10-07 |local (HenrikBengtsson/matrixStats@NA) |
|R.devices   |   |2.14.0      |2016-03-09 |CRAN (R 3.3.1)                         |
|R.rsp       |   |0.30.0      |2016-05-15 |CRAN (R 3.3.1)                         |

# Check results
18 packages with problems

## ACNE (0.8.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/ACNE/issues

0 errors | 1 warning  | 0 notes

```
checking loading without being on the library search path ... WARNING
Loading required package: aroma.affymetrix
Loading required package: R.utils
Loading required package: R.oo
Loading required package: R.methodsS3
R.methodsS3 v1.7.1 (2016-02-15) successfully loaded. See ?R.methodsS3 for help.
R.oo v1.20.0 (2016-02-17) successfully loaded. See ?R.oo for help.

Attaching package: ‘R.oo’

... 72 lines ...
The following object is masked from ‘package:affxparser’:

    writeCdf

ACNE v0.8.1 (2015-10-26) successfully loaded. See ?ACNE for help.
Warning message:
In .requireBiocPackage("aroma.light", neededBy = getName(pkg)) :
  Package 'aroma.light' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. http://www.bioconductor.org/

It looks like this package has a loading problem when not on .libPaths:
see the messages for details.
```

## aroma.affymetrix (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues

0 errors | 1 warning  | 0 notes

```
checking loading without being on the library search path ... WARNING
Loading required package: R.utils
Loading required package: R.oo
Loading required package: R.methodsS3
R.methodsS3 v1.7.1 (2016-02-15) successfully loaded. See ?R.methodsS3 for help.
R.oo v1.20.0 (2016-02-17) successfully loaded. See ?R.oo for help.

Attaching package: ‘R.oo’

The following objects are masked from ‘package:methods’:
... 70 lines ...

The following object is masked from ‘package:affxparser’:

    writeCdf

Warning message:
In .requireBiocPackage("aroma.light", neededBy = getName(pkg)) :
  Package 'aroma.light' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. http://www.bioconductor.org/

It looks like this package has a loading problem when not on .libPaths:
see the messages for details.
```

## aroma.cn (1.6.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.cn/issues

0 errors | 1 warning  | 0 notes

```
checking loading without being on the library search path ... WARNING
Loading required package: R.utils
Loading required package: R.oo
Loading required package: R.methodsS3
R.methodsS3 v1.7.1 (2016-02-15) successfully loaded. See ?R.methodsS3 for help.
R.oo v1.20.0 (2016-02-17) successfully loaded. See ?R.oo for help.

Attaching package: ‘R.oo’

The following objects are masked from ‘package:methods’:
... 43 lines ...

Loading required package: aroma.light
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘R.utils’ 2.3.0-9000 is already loaded, but >= 2.4.0 is required
aroma.cn v1.6.1 (2015-10-27) successfully loaded. See ?aroma.cn for help.
Warning message:
In .requireBiocPackage("aroma.light", neededBy = getName(pkg)) :
  Package 'aroma.light' could not be loaded. Without it aroma.cn will not work. Please install it from Bioconductor, cf. http://www.bioconductor.org/

It looks like this package has a loading problem when not on .libPaths:
see the messages for details.
```

## ChIPpeakAnno (3.6.5)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>,
 Jianhong Ou <Jianhong.ou@umassmed.edu>

0 errors | 1 warning  | 4 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because ChIPpeakAnno.Rmd appears to be an R Markdown v2 document.
Quitting from lines 2-25 (ChIPpeakAnno.Rmd) 
Error: processing vignette 'ChIPpeakAnno.Rmd' failed with diagnostics:
could not find function "doc_date"
Execution halted


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘grid’ ‘IRanges’ ‘Biostrings’ ‘GenomicRanges’ ‘S4Vectors’
  ‘VennDiagram’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 19.4Mb
  sub-directories of 1Mb or more:
    data     12.7Mb
    extdata   5.2Mb

checking R code for possible problems ... NOTE
BED2RangedData: no visible global function definition for 'read.delim'
GFF2RangedData: no visible global function definition for 'read.delim'
addGeneIDs : is.installed: no visible global function definition for
  'installed.packages'
binOverFeature: no visible global function definition for 'par'
binOverFeature : plotErrBar: no visible global function definition for
  'segments'
binOverFeature : plotErrBar: no visible global function definition for
  'par'
... 69 lines ...
Consider adding
  importFrom("grDevices", "as.graphicsAnnot", "boxplot.stats", "col2rgb",
             "colorRampPalette", "dev.flush", "dev.hold", "rgb")
  importFrom("graphics", "abline", "axis", "hist", "legend", "lines",
             "matplot", "par", "plot", "plot.new", "plot.window",
             "polygon", "segments", "text", "title")
  importFrom("stats", "as.dendrogram", "hclust", "kmeans", "nobs",
             "rexp", "setNames")
  importFrom("utils", "adist", "combn", "data", "installed.packages",
             "read.delim", "read.table", "write.table")
to your NAMESPACE file.

checking for unstated dependencies in vignettes ... NOTE
'library' or 'require' call not declared from: ‘trackViewer’
```

## diffloop (1.0.2)
Maintainer: Caleb Lareau <caleblareau@g.harvard.edu>

1 error  | 1 warning  | 2 notes

```
checking examples ... ERROR
Running examples in ‘diffloop-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: calcLDSizeFactors
> ### Title: Compute normalizing factors for each sample
> ### Aliases: calcLDSizeFactors calcLDSizeFactors,loops-method
> 
> ### ** Examples
> 
> # Computing normalizing factors from the full ChIA-PET Data
> rda<-paste(system.file('rda',package='diffloop'),'loops.small.rda',sep='/')
> load(rda)
> loops.small <- calcLDSizeFactors(loops.small)
Error in calcLDSizeFactors(loops.small) : 
  could not find function "colMedians"
Calls: calcLDSizeFactors -> calcLDSizeFactors
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

The following objects are masked from 'package:base':

    Filter, Find, Map, Position, Reduce, anyDuplicated, append,
    as.data.frame, cbind, colnames, do.call, duplicated, eval,
    evalq, get, grep, grepl, intersect, is.unsorted, lapply,
    lengths, mapply, match, mget, order, paste, pmax, pmax.int,
... 8 lines ...

The following objects are masked from 'package:base':

    colMeans, colSums, expand.grid, rowMeans, rowSums

Loading required package: IRanges
Loading required package: GenomeInfoDb
Quitting from lines 58-62 (diffloop.Rmd) 
Error: processing vignette 'diffloop.Rmd' failed with diagnostics:
task 1 failed - "length of 'dimnames' [2] not equal to array extent"
Execution halted

checking installed package size ... NOTE
  installed size is  6.0Mb
  sub-directories of 1Mb or more:
    rda   4.5Mb

checking R code for possible problems ... NOTE
calcLDSizeFactors,loops: no visible global function definition for
  ‘colMedians’
Undefined global functions or variables:
  colMedians
```

## EasyqpcR (1.14.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking whether package ‘EasyqpcR’ can be installed ... ERROR
Installation failed.
See ‘/home/hb/repositories/matrixStats/revdep/checks/EasyqpcR.Rcheck/00install.out’ for details.

checking package namespace information ... NOTE
  Namespace with empty importFrom: ‘gWidgetsRGtk2’
```

## GUIDEseq (1.2.1)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Attaching package: ‘S4Vectors’

The following objects are masked from ‘package:base’:

    colMeans, colSums, expand.grid, rowMeans, rowSums

... 8 lines ...
Loading required package: BSgenome
Loading required package: Biostrings
Loading required package: XVector
Loading required package: rtracklayer
Warning in if (!is.na(TS2)) { :
  the condition has length > 1 and only the first element will be used

Error: processing vignette 'GUIDEseq.Rnw' failed with diagnostics:
 chunk 7 
Error in .check_ncores(length(names)) : 3 simultaneous processes spawned
Execution halted

checking installed package size ... NOTE
  installed size is 11.0Mb
  sub-directories of 1Mb or more:
    extdata  10.5Mb

checking R code for possible problems ... NOTE
GUIDEseqAnalysis : <anonymous>: no visible global function definition
  for 'write.table'
GUIDEseqAnalysis: no visible global function definition for
  'write.table'
combineOfftargets: no visible global function definition for
  'read.table'
combineOfftargets: no visible global function definition for
  'write.table'
getPeaks: no visible global function definition for 'ppois'
... 27 lines ...
  for 'write.table'
rbind_dodge : naDF: no visible global function definition for
  'setNames'
Undefined global functions or variables:
  SNratio adjusted.p.value gRNAPlusPAM offTarget p.adjust pnbinom ppois
  qwidth.first qwidth.last read.table readName setNames strand.first
  strand.last write.table
Consider adding
  importFrom("stats", "p.adjust", "pnbinom", "ppois", "setNames")
  importFrom("utils", "read.table", "write.table")
to your NAMESPACE file.
```

## Gviz (1.16.5)
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
  installed size is  5.9Mb
  sub-directories of 1Mb or more:
    doc       1.7Mb
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
Rd file 'AlignmentsTrack.Rd':
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

## metagenomeSeq (1.14.2)
Maintainer: Joseph N. Paulson <jpaulson@jimmy.harvard.edu>  
Bug reports: https://github.com/nosson/metagenomeSeq/issues

0 errors | 1 warning  | 1 note 

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘metagenomeSeq.pdf’ from 1026Kb to 669Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking R code for possible problems ... NOTE
MRcoefs: no visible global function definition for ‘quantile’
MRcoefs: no visible global function definition for ‘p.adjust’
MRexperiment2biom: no visible global function definition for
  ‘packageVersion’
MRfulltable: no visible global function definition for ‘quantile’
MRfulltable: no visible global function definition for ‘p.adjust’
MRtable: no visible global function definition for ‘quantile’
MRtable: no visible global function definition for ‘p.adjust’
calcPosComponent: no visible global function definition for
... 89 lines ...
  importFrom("graphics", "abline", "axis", "lines", "plot", "points",
             "polygon")
  importFrom("stats", "approx", "approxfun", "binomial", "cmdscale",
             "coefficients", "cor", "cor.test", "density", "dist",
             "dnorm", "fisher.test", "glm.fit", "hclust", "lm.fit",
             "median", "model.matrix", "p.adjust", "plogis", "pnorm",
             "prcomp", "predict", "qlogis", "quantile", "residuals",
             "sd", "var")
  importFrom("utils", "packageVersion", "read.delim", "read.table",
             "tail")
to your NAMESPACE file.
```

## methylumi (2.18.2)
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

## minfi (1.18.6)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/minfi/issues

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because minfi.Rmd appears to be an R Markdown v2 document.
Quitting from lines 2-92 (minfi.Rmd) 
Error: processing vignette 'minfi.Rmd' failed with diagnostics:
could not find function "doc_date"
Execution halted


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘BiocGenerics’ ‘Biobase’ ‘lattice’ ‘GenomicRanges’
  ‘SummarizedExperiment’ ‘Biostrings’ ‘bumphunter’
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
```

## NSA (0.0.32)
Maintainer: Maria Ortiz-Estevez <mortizest@gmail.com>

0 errors | 1 warning  | 6 notes

```
checking loading without being on the library search path ... WARNING
Loading required package: R.methodsS3
R.methodsS3 v1.7.1 (2016-02-15) successfully loaded. See ?R.methodsS3 for help.
Loading required package: MASS
Loading required package: matrixStats
matrixStats v0.50.2-9000 (2016-07-09) successfully loaded. See ?matrixStats for help.
Loading required package: R.oo
R.oo v1.20.0 (2016-02-17) successfully loaded. See ?R.oo for help.

Attaching package: ‘R.oo’
... 82 lines ...

The following object is masked from ‘package:base’:

    cat

Warning message:
In .requireBiocPackage("aroma.light", neededBy = getName(pkg)) :
  Package 'aroma.light' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. http://www.bioconductor.org/

It looks like this package has a loading problem when not on .libPaths:
see the messages for details.

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
  ‘aroma.affymetrix’ ‘DNAcopy’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘incl’

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
  ‘matrixStats’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  NSAByTotalAndFracB.matrix allocateOutputDataSets.NSANormalization
  allocateOutputDataSets.SNPsNormalization
  allocateOutputDataSets.SampleNormalization
  as.character.NSANormalization as.character.SNPsNormalization
  as.character.SampleNormalization findArraysTodo.NSANormalization
  findArraysTodo.SampleNormalization findUnitsTodo.SNPsNormalization
  fitNSA.matrix fitNSAcnPs.matrix getDataSets.NSANormalization
  getDataSets.SNPsNormalization getDataSets.SampleNormalization
  getName.NSANormalization getName.SNPsNormalization
  getName.SampleNormalization getOutputDataSets.NSANormalization
  getOutputDataSets.SNPsNormalization
  getOutputDataSets.SampleNormalization getPath.NSANormalization
  getPath.SNPsNormalization getPath.SampleNormalization
  getRootPath.NSANormalization getRootPath.SNPsNormalization
  getRootPath.SampleNormalization process.NSANormalization
  process.SNPsNormalization process.SampleNormalization
  sampleNByTotalAndFracB.numeric snpsNByTotalAndFracB.matrix
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
NB: .First.lib is obsolete and will not be used in R >= 3.0.0

.First.lib: no visible global function definition for
  ‘packageDescription’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘throw’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘str’
NSANormalization: no visible global function definition for ‘throw’
... 279 lines ...
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

checking Rd line widths ... NOTE
Rd file 'NSANormalization.Rd':
  \examples lines wider than 100 characters:
     by <- 50e3; # 50kb bins; you may want to try with other amounts of smoothing xOut <- seq(from=xRange[1], to=xRange[2], by=by);
     plot(getSignals(cnCNPS), getSignals(cnSNPS), xlim=Clim, ylim=Clim); abline(a=0, b=1, col="red", lwd=2);

These lines will be truncated in the PDF manual.
```

## QDNAseq (1.8.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

2 errors | 1 warning  | 1 note 

```
checking examples ... ERROR
Running examples in ‘QDNAseq-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: callBins
> ### Title: Call aberrations from segmented copy number data
> ### Aliases: callBins callBins,QDNAseqCopyNumbers-method
> ### Keywords: manip
> 
... 9 lines ...
33,347	final bins
> readCountsFiltered <- estimateCorrection(readCountsFiltered)
Calculating correction for GC content and mappability
    Calculating fit for sample LGG150 (1 of 1) ...
Done.
> copyNumbers <- correctBins(readCountsFiltered)
> copyNumbersNormalized <- normalizeBins(copyNumbers)
Applying median normalization ...Error in normalizeBins(copyNumbers) : 
  could not find function "colMedians"
Calls: normalizeBins -> normalizeBins
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/QDNAseq,reproducibility.R’ failed.
Last 13 lines of output:
      Calculating fit for sample LGG150 (1 of 1) ...
  Done.
  > dataCr <- correctBins(dataF)
  Calculating correction for GC content and mappability
      Calculating fit for sample LGG150 (1 of 1) ...
  Done.
  > stopifnot(all.equal(dataCr, dataC))
  > 
  > # Normalize binned read counts to have diploid normal copy number
  > dataN <- normalizeBins(dataC)
  Applying median normalization ...Error in normalizeBins(dataC) : could not find function "colMedians"
  Calls: normalizeBins -> normalizeBins
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
No methods found in "matrixStats" for requests: colMedians

Error: processing vignette 'QDNAseq.Rnw' failed with diagnostics:
 chunk 17 
Error in normalizeBins(copyNumbers) : 
  could not find function "colMedians"
Execution halted


checking R code for possible problems ... NOTE
estimateCorrection,QDNAseqReadCounts : calculateFits: no visible global
  function definition for ‘formula’
normalizeBins,QDNAseqCopyNumbers: no visible global function definition
  for ‘colMedians’
Undefined global functions or variables:
  colMedians formula
Consider adding
  importFrom("stats", "formula")
to your NAMESPACE file.
```

## RnBeads (1.4.0)
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
     compacted ‘RnBeads.pdf’ from 2.9Mb to 1.5Mb
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
    bin   1.0Mb
    doc   3.2Mb

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
... 683 lines ...
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

## shinyMethyl (1.6.2)
Maintainer: Jean-Philippe Fortin <jfortin@jhsph.edu>

0 errors | 1 warning  | 3 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘shinyMethyl.pdf’ from 4.4Mb to 3.9Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .travis.yml
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

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

## SICtools (1.2.2)
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

## topGO (2.24.0)
Maintainer: Adrian Alexa <adrian.alexa@gmail.com>

0 errors | 1 warning  | 4 notes

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘topGO.pdf’ from 904Kb to 644Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

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

