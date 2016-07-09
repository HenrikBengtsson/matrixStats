# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |C                            |
|tz       |NA                           |
|date     |2016-07-08                   |

## Packages

|package     |*  |version     |date       |source                                 |
|:-----------|:--|:-----------|:----------|:--------------------------------------|
|R.devices   |   |2.14.0      |2016-03-09 |cran (@2.14.0)                         |
|R.rsp       |   |0.30.0      |2016-05-15 |cran (@0.30.0)                         |
|base64enc   |   |0.1-3       |2015-07-28 |cran (@0.1-3)                          |
|ggplot2     |   |2.1.0       |2016-03-01 |cran (@2.1.0)                          |
|knitr       |   |1.13        |2016-05-09 |cran (@1.13)                           |
|matrixStats |   |0.50.2-9000 |2016-07-09 |local (HenrikBengtsson/matrixStats@NA) |

# Check results
19 packages with problems

## BatchQC (1.0.17)
Maintainer: Solaiappan Manimaran <manimaran_1975@hotmail.com>  
Bug reports: https://github.com/mani2012/BatchQC/issues

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'BatchQC-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: batchQC
> ### Title: Checks for presence of batch effect and creates a html report
> ###   with information including whether the batch needs to be adjusted
> ### Aliases: batchQC
> 
> ### ** Examples
> 
> nbatch <- 3
> ncond <- 2
> npercond <- 10
> data.matrix <- rnaseq_sim(ngenes=50, nbatch=nbatch, ncond=ncond, npercond=
+     npercond, basemean=10000, ggstep=50, bbstep=2000, ccstep=800, 
+     basedisp=100, bdispstep=-10, swvar=1000, seed=1234)
> batch <- rep(1:nbatch, each=ncond*npercond)
> condition <- rep(rep(1:ncond, each=npercond), nbatch)
> batchQC(data.matrix, batch=batch, condition=condition, view_report=FALSE, 
+     interactive=FALSE)
Error: pandoc version 1.12.3 or higher is required and was not found (see the help page ?rmarkdown::pandoc_available).
Execution halted

checking tests ... ERROR
Running the tests in 'tests/testthat.R' failed.
Last 13 lines of output:
  ---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
  
  Residual standard error: 1.071 on 56 degrees of freedom
  Multiple R-squared:  0.06516,	Adjusted R-squared:  0.01508 
  F-statistic: 1.301 on 3 and 56 DF,  p-value: 0.2831
  
  testthat results ================================================================
  OK: 15 SKIPPED: 0 FAILED: 1
  1. Error: batchQC (@test_batchQC.R#25) 
  
  Error: testthat unit tests failed
  Execution halted
```

## ChIPpeakAnno (3.6.4)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>,
 Jianhong Ou <Jianhong.ou@umassmed.edu>

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in (if (grepl("\\.[Rr]md$", file)) knit2html else if (grepl("\\.[Rr]rst$",  :
  It seems you should call rmarkdown::render() instead of knitr::knit2html() because ChIPpeakAnno.Rmd appears to be an R Markdown v2 document.
Quitting from lines 2-25 (ChIPpeakAnno.Rmd) 
Error: processing vignette 'ChIPpeakAnno.Rmd' failed with diagnostics:
could not find function "doc_date"
Execution halted


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'grid' 'IRanges' 'Biostrings' 'GenomicRanges' 'S4Vectors'
  'VennDiagram'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 4107.2Mb
  sub-directories of 1Mb or more:
    data     3077.5Mb
    extdata  1028.2Mb

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
```

## EasyqpcR (1.14.0)
Maintainer: Le Pape Sylvain <sylvain.le.pape@univ-poitiers.fr>

1 error  | 0 warnings | 1 note 

```
checking whether package 'EasyqpcR' can be installed ... ERROR
Installation failed.
See '/cbc/henrik/repositories/matrixStats/revdep/checks/EasyqpcR.Rcheck/00install.out' for details.

checking package namespace information ... NOTE
  Namespace with empty importFrom: 'gWidgetsRGtk2'
```

## GUIDEseq (1.2.1)
Maintainer: Lihua Julie Zhu <julie.zhu@umassmed.edu>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
    intersect, is.unsorted, lapply, lengths, mapply, match, mget, order, paste,
    pmax, pmax.int, pmin, pmin.int, rank, rbind, rownames, sapply, setdiff,
    sort, table, tapply, union, unique, unsplit

Loading required package: S4Vectors
Loading required package: stats4

... 8 lines ...
Loading required package: GenomeInfoDb


Error: processing vignette 'GUIDEseq.Rnw' failed with diagnostics:
 chunk 4 
Error in .local(x, ...) : 
  For some pairs in 'x', the 2 alignments are not on opposite strands. Cannot
  associate a strand to them. Note that the GAlignmentPairs container only
  supports pairs where the 2 alignments are on opposite strands of the same
  chromosome at the moment.
Execution halted

checking installed package size ... NOTE
  installed size is 3073.6Mb
  sub-directories of 1Mb or more:
    extdata  3073.2Mb

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

## Gviz (1.16.1)
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
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking installed package size ... NOTE
  installed size is 1028.4Mb
  sub-directories of 1Mb or more:
    doc      1024.2Mb
    extdata     2.1Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'Rplots.pdf'

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
See section 'Package structure' in the 'Writing R Extensions' manual.

checking whether package 'RnBeads' can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import 'gridExtra::combine' by 'methylumi::combine' when loading 'RnBeads'
See '/cbc/henrik/repositories/matrixStats/revdep/checks/RnBeads.Rcheck/00install.out' for details.

checking package subdirectories ... WARNING
Subdirectory 'data' contains no data sets.

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
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking Rd \usage sections ... WARNING
Undocumented arguments in documentation object 'read.single.bed'
  'chr.col' 'start.col' 'end.col' 'strand.col' 'c.col' 't.col'
  'is.epp.style' 'coord.shift' 'ffread' 'context' '...'

Undocumented arguments in documentation object 'sampleCovgApply,RnBSet-method'
  'object' 'type' '...'

Undocumented arguments in documentation object 'sampleMethApply,RnBSet-method'
  'object' 'type' '...'

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'RnBeads.pdf' from 2.9Mb to 2.2Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'BiocGenerics' 'S4Vectors' 'GenomicRanges' 'MASS' 'RColorBrewer'
  'cluster' 'ff' 'fields' 'ggplot2' 'gplots' 'gridExtra' 'limma'
  'matrixStats' 'illuminaio' 'methylumi' 'plyr'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 2051.4Mb
  sub-directories of 1Mb or more:
    R    1025.2Mb
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
add.combination.plot: warning in facet_grid(Set ~ ., scale = "free",
  drop = TRUE): partial argument match of 'scale' to 'scales'
.stopImplicitCluster: no visible global function definition for
  'stopCluster'
BMIQ: no visible global function definition for 'density'
BMIQ: no visible global function definition for 'pbeta'
BMIQ: no visible global function definition for 'qbeta'
MethyLumiSet2RnBeadSet: no visible global function definition for
  'phenoData'
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

## SICtools (1.2.2)
Maintainer: Xiaobin Xing <xiaobinxing0316@gmail.com>

0 errors | 1 warning  | 5 notes

```
checking whether package 'SICtools' can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import 'plyr::count' by 'matrixStats::count' when loading 'SICtools'
See '/cbc/henrik/repositories/matrixStats/revdep/checks/SICtools.Rcheck/00install.out' for details.

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

## aroma.light (3.2.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.light/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
normalizeCurveFit 11.265  0.008  11.282
normalizeAffine   11.010  0.006  11.025

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  inst/rsp/.rspPlugins
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.
```

## diffloop (1.0.2)
Maintainer: Caleb Lareau <caleblareau@g.harvard.edu>

1 error  | 1 warning  | 1 note 

```
checking examples ... ERROR
Running examples in 'diffloop-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: loopsMake
> ### Title: Read preprocessed ChiA-PET data
> ### Aliases: loopsMake loopsMake,ANY-method
> 
> ### ** Examples
> 
> # Reading in all samples, no mergegap, all loops
> bd<- system.file('extdata', 'esc_jurkat', package='diffloopdata')
> # loops <- loopsMake(bd) #standard call
> 
> # Reading in a subset of samples, 1kb mergegap, only intrachromosomal
> # looping
> samples <- c('naive_esc_1', 'naive_esc_2')
> naive.intra <- loopsMake(bd, samples, 1000, 'intra')
Error in { : 
  task 1 failed - "length of 'dimnames' [2] not equal to array extent"
Calls: loopsMake -> loopsMake -> .loopsMake -> %do% -> <Anonymous>
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
  installed size is 1026.7Mb
  sub-directories of 1Mb or more:
    rda  1025.2Mb
```

## dplR (1.6.4)
Maintainer: Andy Bunn <andy.bunn@wwu.edu>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in 'tests/testthat.R' failed.
Last 13 lines of output:
  latexify(enc2utf8(latin1String), doublebackslash = FALSE) not equal to `latinConverted`.
  1/1 mismatches
  x[1]: "clich\\'{e} ma\\~{n}ana"
  y[1]: "clich\\textless e9\\textgreater{} ma\\textless f1\\textgreater ana"
  
  
  testthat results ================================================================
  OK: 461 SKIPPED: 0 FAILED: 2
  1. Failure: latexify handles different encodings (@test-utils.R#251) 
  2. Failure: latexify handles different encodings (@test-utils.R#252) 
  
  Error: testthat unit tests failed
  Execution halted

checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
redfit            11.753  0.066  12.160
rwi.stats.running  8.311  0.008   8.331
wavelet.plot       7.698  0.009   7.783
```

## genomation (1.4.2)
Maintainer: Altuna Akalin <aakalin@gmail.com>, Vedran Franke <vedran.franke@gmail.com>  
Bug reports: https://github.com/BIMSBbioinfo/genomation/issues

0 errors | 2 warnings | 5 notes

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                     user system elapsed
ScoreMatrix-methods 6.919  0.128   7.061
** found \donttest examples: check also with --run-donttest

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
"/home/shared/cbc/software_cbc/R/R-3.3.1-20160703/lib64/R/bin/Rscript" -e "library(methods); library(knitrBootstrap); knitrBoostrapFlag <- packageVersion('knitrBootstrap') < '1.0.0'; if(knitrBoostrapFlag) knit_bootstrap('GenomationManual-knitr.Rmd', show_code=TRUE, boot_style='Readable') else {library(rmarkdown); render('GenomationManual-knitr.Rmd', bootstrap_document(theme.chooser=TRUE, highlight.chooser=TRUE))}"
Error: pandoc version 1.12.3 or higher is required and was not found (see the help page ?rmarkdown::pandoc_available).
Execution halted
make: *** [all] Error 1
Error in buildVignettes(dir = "/cbc/henrik/repositories/matrixStats/revdep/checks/genomation.Rcheck/vign_test/genomation") : 
  running 'make' failed
Execution halted


checking for portable file names ... NOTE
Found the following non-portable file paths:
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixBinExample_89ac1d0baf3bd67d0cff0a80fb7d0117.RData
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixBinExample_89ac1d0baf3bd67d0cff0a80fb7d0117.rdb
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixBinExample_89ac1d0baf3bd67d0cff0a80fb7d0117.rdx
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixExample_28219a46afc7075c7975af15b770c79d.RData
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixExample_28219a46afc7075c7975af15b770c79d.rdb
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixExample_28219a46afc7075c7975af15b770c79d.rdx
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixList_e5babc5869ffeae22076a0bdf8545c4f.RData
  genomation/vignettes/GenomationManual-knitr_cache/html/ScoreMatrixList_e5babc5869ffeae22076a0bdf8545c4f.rdb
... 82 lines ...
  genomation/vignettes/GenomationManual-knitr_cache/html/unnamed-chunk-1_025550c0b512f17c70c89e1fb6ebe189.RData
  genomation/vignettes/GenomationManual-knitr_cache/html/unnamed-chunk-1_025550c0b512f17c70c89e1fb6ebe189.rdb
  genomation/vignettes/GenomationManual-knitr_cache/html/unnamed-chunk-1_025550c0b512f17c70c89e1fb6ebe189.rdx
  genomation/vignettes/GenomationManual-knitr_cache/html/visualizeFeatureComb_d811218d9f741f8eaf8820eecbd5e6bb.RData
  genomation/vignettes/GenomationManual-knitr_cache/html/visualizeFeatureComb_d811218d9f741f8eaf8820eecbd5e6bb.rdb
  genomation/vignettes/GenomationManual-knitr_cache/html/visualizeFeatureComb_d811218d9f741f8eaf8820eecbd5e6bb.rdx

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section 'Package structure' in the 'Writing R Extensions' manual.

checking installed package size ... NOTE
  installed size is 1024.9Mb
  sub-directories of 1Mb or more:
    extdata  1024.1Mb

checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: 'BiocGenerics:::testPackage'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
.dispersion2: no visible global function definition for 'polygon'
.heatLegendX: no visible global function definition for 'rgb'
.heatLegendX: no visible global function definition for 'colorRamp'
.heatLegendY: no visible global function definition for 'rgb'
.heatLegendY: no visible global function definition for 'colorRamp'
.plotLab: no visible global function definition for 'plot.new'
.plotLab: no visible global function definition for 'plot.window'
.plotLab: no visible global function definition for 'text'
.rowSideCol: no visible global function definition for 'rainbow'
... 39 lines ...
  SampleName a axis barplot colorRamp dist download.file hcl hclust
  image legend lines par pie plot plot.new plot.window pnorm polygon
  rainbow read.table rgb runif text unzip value
Consider adding
  importFrom("grDevices", "colorRamp", "hcl", "rainbow", "rgb")
  importFrom("graphics", "axis", "barplot", "image", "legend", "lines",
             "par", "pie", "plot", "plot.new", "plot.window", "polygon",
             "text")
  importFrom("stats", "dist", "hclust", "pnorm", "runif")
  importFrom("utils", "download.file", "read.table", "unzip")
to your NAMESPACE file.

checking files in 'vignettes' ... NOTE
The following directory looks like a leftover from 'knitr':
  'cache'
Please remove from your package.
```

## methylumi (2.18.2)
Maintainer: Sean Davis <sdavis2@mail.nih.gov>  
Bug reports: https://github.com/seandavi/methylumi/issues/new

0 errors | 1 warning  | 8 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  'IDATsToMatrices' 'IDATtoMatrix' 'tcgaPipeline'
Undocumented data sets:
  'mset'
Undocumented S4 methods:
  generic '[' and siglist 'MethyLumiM,ANY,ANY,ANY'
  generic '[' and siglist 'MethyLumiSet,ANY,ANY,ANY'
All user-level objects in a package (including S4 classes and methods)
should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'Biobase' 'scales' 'reshape2' 'ggplot2' 'matrixStats'
  'FDb.InfiniumMethylation.hg19' 'minfi'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 2053.9Mb
  sub-directories of 1Mb or more:
    data     1028.6Mb
    extdata  1024.0Mb

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

## minfi (1.18.2)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/kasperdanielhansen/minfi/issues

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in (if (grepl("\\.[Rr]md$", file)) knit2html else if (grepl("\\.[Rr]rst$",  :
  It seems you should call rmarkdown::render() instead of knitr::knit2html() because minfi.Rmd appears to be an R Markdown v2 document.
Quitting from lines 2-92 (minfi.Rmd) 
Error: processing vignette 'minfi.Rmd' failed with diagnostics:
could not find function "doc_date"
Execution halted


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'BiocGenerics' 'Biobase' 'lattice' 'GenomicRanges'
  'SummarizedExperiment' 'Biostrings' 'bumphunter'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking dependencies in R code ... NOTE
Unexported objects imported by ':::' calls:
  'BiocGenerics:::replaceSlots'
  'SummarizedExperiment:::.valid.SummarizedExperiment.assays_ncol'
  'bumphunter:::.getEstimate'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File 'minfi/R/estimateCellCounts.R':
  data(list = referencePkg)
See section 'Good practice' in '?data'.
```

## monocle (1.6.2)
Maintainer: Cole Trapnell <coletrap@uw.edu>

0 errors | 1 warning  | 6 notes

```
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


checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'HSMMSingleCell' 'Biobase' 'ggplot2' 'splines' 'VGAM' 'igraph' 'plyr'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking top-level files ... NOTE
Non-standard files/directories found at top level:
  'examples' 'monocle.Rproj'

checking dependencies in R code ... NOTE
Package in Depends field not imported from: 'splines'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking R code for possible problems ... NOTE
assign_cell_lineage: no visible global function definition for 'nei'
count_leaf_descendents: no visible global function definition for 'nei'
estimateSizeFactorsForMatrix: no visible binding for global variable
  'median'
extract_fixed_ordering: no visible global function definition for 'nei'
extract_good_branched_ordering: no visible binding for global variable
  'type'
extract_good_branched_ordering: no visible global function definition
  for 'nei'
... 38 lines ...
selectNegentropyGenes: no visible global function definition for 'vglm'
selectNegentropyGenes: no visible global function definition for
  'quantile'
Undefined global functions or variables:
  Gamma coefficients gene_short_name geom_bar geom_text
  get.all.shortest.paths glm log_expression median nei next_node
  percent pseudo_time quantile sample_name type vglm
Consider adding
  importFrom("stats", "Gamma", "coefficients", "glm", "median",
             "quantile")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'clusterGenes.Rd':
  \examples lines wider than 100 characters:
     full_model_fits <- fitModel(HSMM[sample(nrow(fData(HSMM_filtered)), 100),],  modelFormulaStr="expression~sm.ns(Pseudotime)")

Rd file 'plot_clusters.Rd':
  \examples lines wider than 100 characters:
     full_model_fits <- fitModel(HSMM_filtered[sample(nrow(fData(HSMM_filtered)), 100),],  modelFormulaStr="expression~VGAM::bs(Pseudotime)" ... [TRUNCATED]

These lines will be truncated in the PDF manual.
```

## motifbreakR (1.2.2)
Maintainer: Simon Gert Coetzee <Simon.Coetzee@cshs.org>  
Bug reports: https://github.com/Simon-Coetzee/motifbreakR/issues

0 errors | 1 warning  | 3 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
 7: plotMB(results = results, rsid = "rs1006140", effect = "strong")
 8: eval(expr, envir, enclos)
 9: eval(expr, envir, enclos)
10: withVisible(eval(expr, envir, enclos))
11: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)
12: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))
13: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler)
... 8 lines ...
21: process_file(text, output)
22: knit(input, text = text, envir = envir, encoding = encoding,     quiet = quiet)
23: (if (grepl("\\.[Rr]md$", file)) knit2html else if (grepl("\\.[Rr]rst$",     file)) knit2pdf else knit)(file, encoding = encoding, quiet = quiet,     envir = globalenv())
24: vweave(...)
25: engine$weave(file, quiet = quiet, encoding = enc)
26: doTryCatch(return(expr), name, parentenv, handler)
27: tryCatchOne(expr, names, parentenv, handlers[[1L]])
28: tryCatchList(expr, classes, parentenv, handlers)
29: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
30: buildVignettes(dir = "/cbc/henrik/repositories/matrixStats/revdep/checks/motifbreakR.Rcheck/vign_test/motifbreakR")
An irrecoverable exception occurred. R is aborting now ...

checking installed package size ... NOTE
  installed size is 1026.0Mb
  sub-directories of 1Mb or more:
    data     1.7Mb
    doc   1024.0Mb

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
File 'motifbreakR/R/scoreMotif.R':
  assign("tmp_motifStack_symbolsCache", list(), pos = ".GlobalEnv")
```

## shinyMethyl (1.6.2)
Maintainer: Jean-Philippe Fortin <jfortin@jhsph.edu>

0 errors | 1 warning  | 4 notes

```
checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'shinyMethyl.pdf' from 4.4Mb to 3.9Mb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .travis.yml
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.

checking installed package size ... NOTE
  installed size is 1024.3Mb
  sub-directories of 1Mb or more:
    doc  1024.0Mb

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking R code for possible problems ... NOTE
addHoverDensity: no visible global function definition for 'lines'
addHoverPoints: no visible global function definition for 'points'
addHoverQC: no visible global function definition for 'points'
densitiesPlot: no visible global function definition for 'plot'
densitiesPlot: no visible global function definition for 'lines'
plotDesign450k: no visible global function definition for 'par'
plotDesign450k: no visible global function definition for 'plot'
plotDiscrepancyGenders: no visible global function definition for
  'legend'
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

## stm (1.1.3)
Maintainer: Brandon Stewart <bms4@princeton.edu>

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in 'stm-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: gadarian
> ### Title: Gadarian and Albertson data
> ### Aliases: gadarian gadarianFit
> ### Keywords: datasets
> 
... 38 lines ...
  all scheduled cores encountered errors in user code
Stemming... 
Warning in mclapply(content(x), FUN, ...) :
  all scheduled cores encountered errors in user code
Creating Output... 
Warning in mclapply(unname(content(x)), termFreq, control) :
  all scheduled cores encountered errors in user code
Error in UseMethod("meta", x) : 
  no applicable method for 'meta' applied to an object of class "try-error"
Calls: textProcessor ... as.list -> as.list.VCorpus -> setNames -> lapply -> FUN
Execution halted

checking installed package size ... NOTE
  installed size is 2048.8Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb
    libs  1024.0Mb
```

## topGO (2.24.0)
Maintainer: Adrian Alexa <adrian.alexa@gmail.com>

0 errors | 1 warning  | 4 notes

```
checking sizes of PDF files under 'inst/doc' ... WARNING
  'gs+qpdf' made some significant size reductions:
     compacted 'topGO.pdf' from 904Kb to 620Kb
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

