# brms

<details>

* Version: 2.10.0
* Source code: https://github.com/cran/brms
* URL: https://github.com/paul-buerkner/brms, http://discourse.mc-stan.org
* BugReports: https://github.com/paul-buerkner/brms/issues
* Date/Publication: 2019-08-29 15:50:07 UTC
* Number of recursive dependencies: 164

Run `revdep_details(,"brms")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘spdep’
    ```

# CATALYST

<details>

* Version: 1.8.6
* Source code: https://github.com/cran/CATALYST
* URL: https://github.com/HelenaLC/CATALYST
* BugReports: https://github.com/HelenaLC/CATALYST/issues
* Date/Publication: 2019-07-27
* Number of recursive dependencies: 192

Run `revdep_details(,"CATALYST")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > # test for
    > # - differential abundance (DA) of clusters
    > # - differential states (DS) within clusters
    > da <- diffcyt(re, design = design, contrast = contrast, 
    +     analysis_type = "DA", method_DA = "diffcyt-DA-edgeR",
    +     clustering_to_use = "meta20")
    using CATALYST 'daFrame' input object
    using cluster IDs from clustering stored in column 'meta20' of 'cluster_codes' data frame in 'metadata' of 'daFrame' object
    calculating features...
    calculating DA tests using method 'diffcyt-DA-edgeR'...
    > ds <- diffcyt(re, design = design, contrast = contrast, 
    +     analysis_type = "DS", method_DS = "diffcyt-DS-limma",
    +     clustering_to_use = "meta20")
    using CATALYST 'daFrame' input object
    using cluster IDs from clustering stored in column 'meta20' of 'cluster_codes' data frame in 'metadata' of 'daFrame' object
    calculating features...
    calculating DS tests using method 'diffcyt-DS-limma'...
    Error in HasZero && HasNA : 
      'length(x) = 5 > 1' in coercion to 'logical(1)'
    Calls: diffcyt ... testDS_limma -> contrasts.fit -> .zeroDominantMatrixMult
    Execution halted
    ```

*   R CMD check timed out
    

*   checking R code for possible problems ... NOTE
    ```
    plotClusterHeatmap,daFrame : <anonymous>: no visible binding for global
      variable ‘cluster_id’
    Undefined global functions or variables:
      cluster_id
    ```

# ChAMP

<details>

* Version: 2.14.0
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 221

Run `revdep_details(,"ChAMP")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking package subdirectories ... WARNING
    ```
    Problems with news in ‘inst/NEWS.Rd’:
      inst/NEWS.Rd:81: unexpected END_OF_INPUT '
      '
    Invalid citation information in ‘inst/CITATION’:
      Error in parse(file = cfile): /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00_pkg_src/ChAMP/inst/CITATION:10:12: unexpected symbol
      9:            person("Stephan", "Beck")
      10:            person
                     ^
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'FEM', 'DMRcate',
      'Illumina450ProbeVariants.db', 'IlluminaHumanMethylationEPICmanifest'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
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
    ```

# ChIPpeakAnno

<details>

* Version: 
* Source code: ???
* URL: https://github.com/HenrikBengtsson/matrixStats
* BugReports: https://github.com/HenrikBengtsson/matrixStats/issues
* Number of recursive dependencies: 0

Run `revdep_details(,"")` for more info

</details>

## Error before installation

### Devel

```
Error: package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ce.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘reactome.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Celegans.UCSC.ce10’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Drerio.UCSC.danRer7’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Ecoli.NCBI.20080805’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart


* installing *binary* package ‘acepack’ ...
* DONE (acepack)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘dichromat’ ...
* DONE (dichromat)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘foreign’ ...
* DONE (foreign)
* installing *binary* package ‘formatR’ ...
* DONE (formatR)
* installing *binary* package ‘Formula’ ...
* DONE (Formula)
* installing *binary* package ‘futile.options’ ...
* DONE (futile.options)
* installing *binary* package ‘GenomeInfoDbData’ ...
* DONE (GenomeInfoDbData)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘idr’ ...
* DONE (idr)
* installing *binary* package ‘jpeg’ ...
* DONE (jpeg)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘plotrix’ ...
* DONE (plotrix)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘ProtGenerics’ ...
* DONE (ProtGenerics)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘segmented’ ...
* DONE (segmented)
* installing *binary* package ‘seqLogo’ ...
* DONE (seqLogo)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘XML’ ...
* DONE (XML)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘ade4’ ...
* DONE (ade4)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘caTools’ ...
* DONE (caTools)
* installing *binary* package ‘checkmate’ ...
* DONE (checkmate)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘grImport’ ...
* DONE (grImport)
* installing *binary* package ‘grImport2’ ...
* DONE (grImport2)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘Rhtslib’ ...
* DONE (Rhtslib)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘futile.logger’ ...
* DONE (futile.logger)
* installing *binary* package ‘gplots’ ...
* DONE (gplots)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘seqinr’ ...
* DONE (seqinr)
* installing *binary* package ‘survival’ ...
* DONE (survival)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘GenomeInfoDb’ ...
* DONE (GenomeInfoDb)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘multtest’ ...
* DONE (multtest)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘VennDiagram’ ...
* DONE (VennDiagram)
* installing *binary* package ‘XVector’ ...
* DONE (XVector)
* installing *binary* package ‘Biostrings’ ...
* DONE (Biostrings)
* installing *binary* package ‘bookdown’ ...
* DONE (bookdown)
* installing *binary* package ‘DelayedArray’ ...
* DONE (DelayedArray)
* installing *binary* package ‘GenomicRanges’ ...
* DONE (GenomicRanges)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘AnnotationFilter’ ...
* DONE (AnnotationFilter)
* installing *binary* package ‘BiocStyle’ ...
* DONE (BiocStyle)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘Rsamtools’ ...
* DONE (Rsamtools)
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘biomaRt’ ...
* DONE (biomaRt)
* installing *binary* package ‘GenomicAlignments’ ...
* DONE (GenomicAlignments)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *binary* package ‘InteractionSet’ ...
* DONE (InteractionSet)
* installing *source* package ‘org.Ce.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ce.eg.db)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *source* package ‘reactome.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (reactome.db)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *binary* package ‘rtracklayer’ ...
* DONE (rtracklayer)
* installing *binary* package ‘BSgenome’ ...
* DONE (BSgenome)
* installing *binary* package ‘GenomicFeatures’ ...
* DONE (GenomicFeatures)
* installing *source* package ‘BSgenome.Celegans.UCSC.ce10’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Celegans.UCSC.ce10)
* installing *source* package ‘BSgenome.Drerio.UCSC.danRer7’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Drerio.UCSC.danRer7)
* installing *source* package ‘BSgenome.Ecoli.NCBI.20080805’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Ecoli.NCBI.20080805)


```
### CRAN

```
Error: package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ce.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘reactome.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Celegans.UCSC.ce10’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Celegans.UCSC.ce10’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Drerio.UCSC.danRer7’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Drerio.UCSC.danRer7’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘BSgenome’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error: loading failed
Error : package ‘BSgenome’ required by ‘BSgenome.Ecoli.NCBI.20080805’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘BSgenome.Ecoli.NCBI.20080805’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart


* installing *binary* package ‘acepack’ ...
* DONE (acepack)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘dichromat’ ...
* DONE (dichromat)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘foreign’ ...
* DONE (foreign)
* installing *binary* package ‘formatR’ ...
* DONE (formatR)
* installing *binary* package ‘Formula’ ...
* DONE (Formula)
* installing *binary* package ‘futile.options’ ...
* DONE (futile.options)
* installing *binary* package ‘GenomeInfoDbData’ ...
* DONE (GenomeInfoDbData)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘idr’ ...
* DONE (idr)
* installing *binary* package ‘jpeg’ ...
* DONE (jpeg)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘plotrix’ ...
* DONE (plotrix)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘ProtGenerics’ ...
* DONE (ProtGenerics)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘segmented’ ...
* DONE (segmented)
* installing *binary* package ‘seqLogo’ ...
* DONE (seqLogo)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘XML’ ...
* DONE (XML)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘ade4’ ...
* DONE (ade4)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘caTools’ ...
* DONE (caTools)
* installing *binary* package ‘checkmate’ ...
* DONE (checkmate)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘grImport’ ...
* DONE (grImport)
* installing *binary* package ‘grImport2’ ...
* DONE (grImport2)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘Rhtslib’ ...
* DONE (Rhtslib)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘futile.logger’ ...
* DONE (futile.logger)
* installing *binary* package ‘gplots’ ...
* DONE (gplots)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘seqinr’ ...
* DONE (seqinr)
* installing *binary* package ‘survival’ ...
* DONE (survival)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘GenomeInfoDb’ ...
* DONE (GenomeInfoDb)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘multtest’ ...
* DONE (multtest)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘VennDiagram’ ...
* DONE (VennDiagram)
* installing *binary* package ‘XVector’ ...
* DONE (XVector)
* installing *binary* package ‘Biostrings’ ...
* DONE (Biostrings)
* installing *binary* package ‘bookdown’ ...
* DONE (bookdown)
* installing *binary* package ‘DelayedArray’ ...
* DONE (DelayedArray)
* installing *binary* package ‘GenomicRanges’ ...
* DONE (GenomicRanges)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘AnnotationFilter’ ...
* DONE (AnnotationFilter)
* installing *binary* package ‘BiocStyle’ ...
* DONE (BiocStyle)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘Rsamtools’ ...
* DONE (Rsamtools)
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘biomaRt’ ...
* DONE (biomaRt)
* installing *binary* package ‘GenomicAlignments’ ...
* DONE (GenomicAlignments)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *binary* package ‘InteractionSet’ ...
* DONE (InteractionSet)
* installing *source* package ‘org.Ce.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ce.eg.db)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *source* package ‘reactome.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (reactome.db)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *binary* package ‘rtracklayer’ ...
* DONE (rtracklayer)
* installing *binary* package ‘BSgenome’ ...
* DONE (BSgenome)
* installing *binary* package ‘GenomicFeatures’ ...
* DONE (GenomicFeatures)
* installing *source* package ‘BSgenome.Celegans.UCSC.ce10’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Celegans.UCSC.ce10)
* installing *source* package ‘BSgenome.Drerio.UCSC.danRer7’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Drerio.UCSC.danRer7)
* installing *source* package ‘BSgenome.Ecoli.NCBI.20080805’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BSgenome.Ecoli.NCBI.20080805)


```
# CNPBayes

<details>

* Version: 1.13.5
* Source code: https://github.com/cran/CNPBayes
* URL: https://github.com/scristia/CNPBayes
* BugReports: https://github.com/scristia/CNPBayes/issues
* Date/Publication: 2019-01-05
* Number of recursive dependencies: 157

Run `revdep_details(,"CNPBayes")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking for missing documentation entries ... WARNING
    ```
    ...
      generic 'sigma' and siglist 'MultiBatchPooled'
      generic 'sigma<-' and siglist 'MixtureModel'
      generic 'sigma<-' and siglist 'MultiBatchPooled'
      generic 'tau2' and siglist 'MultiBatch'
      generic 'theta' and siglist 'MultiBatch'
      generic 'theta<-' and siglist 'McmcChains,ANY'
      generic 'theta<-' and siglist 'MixtureModel,ANY'
      generic 'theta<-' and siglist 'MultiBatch,matrix'
      generic 'theta<-' and siglist 'MultiBatchModel,ANY'
      generic 'thin' and siglist 'MultiBatch'
      generic 'thin' and siglist 'MultiBatchList'
      generic 'thin<-' and siglist 'McmcParams,numeric'
      generic 'thin<-' and siglist 'MultiBatch,numeric'
      generic 'thin<-' and siglist 'MultiBatchList,numeric'
      generic 'triodata_lrr' and siglist 'TrioBatchModel'
      generic 'z' and siglist 'MultiBatch'
      generic 'zFreq' and siglist 'MultiBatch'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Slots for class 'MultiBatch'
      Code: chains current_values data down_sample flags parameters specs
            summaries
      Docs: chains current_values data down_sample flags parameters
            summaries
    
    S4 class codoc mismatches from documentation object 'MultiBatchModel-class':
    Slots for class 'MultiBatchModel'
      Code: .internal.constraint .internal.counter batch batchElements data
            data.mean data.prec hyperparams k label_switch loglik logprior
            marginal_lik mcmc.chains mcmc.params modes mu nu.0 pi
            predictive probz sigma2 sigma2.0 tau2 theta u z zfreq zstar
      Inherited: k hyperparams theta sigma2 nu.0 sigma2.0 pi mu tau2
            predictive zstar data data.mean data.prec z zfreq probz u
            logprior loglik mcmc.chains batch batchElements modes
            mcmc.params label_switch marginal_lik .internal.constraint
            .internal.counter
      Docs: .internal.constraint batch batchElements data data.mean
            data.prec hyperparams is_mendelian k label_switch loglik
            logprior mcmc.chains mcmc.params modes mu nu.0 pi probz sigma2
            sigma2.0 tau2 theta z zfreq
    ```

*   checking Rd \usage sections ... WARNING
    ```
    ...
    
    Documented arguments not in \usage in documentation object 'iter<-':
      ‘force’
    
    Documented arguments not in \usage in documentation object 'mcmcParams':
      ‘force’
    
    Undocumented arguments in documentation object 'sigma<-'
      ‘value’
    
    Undocumented arguments in documentation object 'singleBatchGuided,MultiBatchList,MultiBatch-method'
      ‘x’ ‘guide’
    
    Undocumented arguments in documentation object 'theta'
      ‘value’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        libs   3.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppArmadillo’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    batch<-,MultiBatch-numeric: no visible global function definition for
      ‘spec’
    batch<-,MultiBatch-numeric: no visible global function definition for
      ‘spec<-’
    coerce,McmcChains-list: no visible binding for global variable ‘s’
    computePrec,MultiBatch: no visible binding for global variable ‘prec’
    findSurrogates,MultiBatch: no visible binding for global variable ‘id’
    findSurrogates,MultiBatch: no visible binding for global variable
      ‘provisional_batch’
    findSurrogates,MultiBatch: no visible binding for global variable
      ‘batch_labels’
    sigma,MultiBatchCopyNumberPooled: no visible binding for global
      variable ‘s2’
    Undefined global functions or variables:
      . .gibbs_trios_mcmc2 .gibbs_trios_mcmc3 := batch_index batch_labels
      batches bk copy_number father id log_ratio maplabel medians model
      mother mprob nhom parents prec provisional_batch s s2 snpdat spec
      spec<- t.test value
    Consider adding
      importFrom("stats", "t.test")
    to your NAMESPACE file.
    ```

# CopywriteR

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/CopywriteR
* URL: https://github.com/PeeperLab/CopywriteR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 58

Run `revdep_details(,"CopywriteR")` for more info

</details>

## In both

*   checking whether package ‘CopywriteR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/new/CopywriteR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CopywriteR’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘CopywriteR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/new/CopywriteR.Rcheck/CopywriteR’

```
### CRAN

```
* installing *source* package ‘CopywriteR’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘CopywriteR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/CopywriteR/old/CopywriteR.Rcheck/CopywriteR’

```
# crlmm

<details>

* Version: 1.42.0
* Source code: https://github.com/cran/crlmm
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 77

Run `revdep_details(,"crlmm")` for more info

</details>

## In both

*   R CMD check timed out
    

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

# DeepBlueR

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 138

Run `revdep_details(,"DeepBlueR")` for more info

</details>

## In both

*   checking whether package ‘DeepBlueR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DeepBlueR’ ...
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error: unable to load R code in package ‘DeepBlueR’
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/DeepBlueR’

```
### CRAN

```
* installing *source* package ‘DeepBlueR’ ...
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error: unable to load R code in package ‘DeepBlueR’
Execution halted
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

```
# DelayedArray

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/DelayedArray
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 72

Run `revdep_details(,"DelayedArray")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking package subdirectories ... WARNING
    ```
    Subdirectory 'inst/doc' contains invalid file names:
      ‘02-Implementing_a_backend.Rmd’ ‘01-Working_with_large_arrays.Rnw’
      ‘02-Implementing_a_backend.html’ ‘01-Working_with_large_arrays.pdf’
    Please remove or rename the files.
    See section ‘Package subdirectories’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘multGrids’
    Undocumented S4 methods:
      generic '[' and siglist 'DelayedArray,ANY,ANY,ANY'
      generic '[<-' and siglist 'DelayedArray,ANY,ANY,ANY'
      generic 'crossprod' and siglist 'ANY,DelayedMatrix'
      generic 'crossprod' and siglist 'DelayedMatrix,ANY'
      generic 'crossprod' and siglist 'DelayedMatrix,DelayedMatrix'
      generic 'crossprod' and siglist 'DelayedMatrix,missing'
      generic 'dimnames<-' and siglist 'DelayedArray,ANY'
      generic 'tcrossprod' and siglist 'ANY,DelayedMatrix'
      generic 'tcrossprod' and siglist 'DelayedMatrix,ANY'
      generic 'tcrossprod' and siglist 'DelayedMatrix,DelayedMatrix'
      generic 'tcrossprod' and siglist 'DelayedMatrix,missing'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'stats4', 'matrixStats', 'BiocGenerics', 'S4Vectors', 'IRanges',
      'BiocParallel'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘Matrix’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘BiocGenerics:::testPackage’
      ‘S4Vectors:::.list.names’ ‘S4Vectors:::anyMissing’
      ‘S4Vectors:::anyMissingOrOutside’ ‘S4Vectors:::delete_NULLs’
      ‘S4Vectors:::diffWithInitialZero’
      ‘S4Vectors:::extract_positions_from_Rle’ ‘S4Vectors:::new_DataFrame’
      ‘S4Vectors:::prepare_objects_to_bind’
      ‘S4Vectors:::rep.int_along_ROWS’ ‘S4Vectors:::sapply_isNULL’
      See the note in ?`:::` about the use of this operator.
    ```

# DelayedMatrixStats

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/DelayedMatrixStats
* URL: https://github.com/PeteHaitch/DelayedMatrixStats
* BugReports: https://github.com/PeteHaitch/DelayedMatrixStats/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 56

Run `revdep_details(,"DelayedMatrixStats")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocParallel’ ‘HDF5Array’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::set_dim’ ‘DelayedArray:::set_dimnames’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DiscoRhythm

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/DiscoRhythm
* URL: https://github.com/matthewcarlucci/DiscoRhythm
* BugReports: https://github.com/matthewcarlucci/DiscoRhythm/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 145

Run `revdep_details(,"DiscoRhythm")` for more info

</details>

## In both

*   checking whether package ‘DiscoRhythm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DiscoRhythm/new/DiscoRhythm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DiscoRhythm’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘DiscoRhythm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DiscoRhythm/new/DiscoRhythm.Rcheck/DiscoRhythm’

```
### CRAN

```
* installing *source* package ‘DiscoRhythm’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘DiscoRhythm’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/DiscoRhythm/old/DiscoRhythm.Rcheck/DiscoRhythm’

```
# GAPGOM

<details>

* Version: 
* Source code: ???
* URL: https://github.com/HenrikBengtsson/matrixStats
* BugReports: https://github.com/HenrikBengtsson/matrixStats/issues
* Number of recursive dependencies: 0

Run `revdep_details(,"")` for more info

</details>

## Error before installation

### Devel

```
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c pause.c -o pause.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c profvis-init.c -o profvis-init.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o profvis.so pause.o profvis-init.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘htmlwidgets’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘profvis’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘htmlwidgets’
Error: loading failed
Error: package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ag.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.At.tair.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Bt.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ce.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Cf.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Dm.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Dr.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.EcK12.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.EcSakai.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Gg.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Mmu.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.Pf.plasmo.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Pt.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Rn.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Sc.sgd.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ss.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Xl.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘clipr’ ...
* DONE (clipr)
* installing *binary* package ‘codetools’ ...
* DONE (codetools)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘fastmatch’ ...
* DONE (fastmatch)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘ps’ ...
* DONE (ps)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘rappdirs’ ...
* DONE (rappdirs)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘igraph’ ...
* DONE (igraph)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘pryr’ ...
* DONE (pryr)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘selectr’ ...
* DONE (selectr)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *source* package ‘profvis’ ...
** package ‘profvis’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GAPGOM/00LOCK-profvis/00new/profvis/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (profvis)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘webshot’ ...
* DONE (webshot)
* installing *binary* package ‘prettydoc’ ...
* DONE (prettydoc)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘rvest’ ...
* DONE (rvest)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘readr’ ...
* DONE (readr)
* installing *binary* package ‘dbplyr’ ...
* DONE (dbplyr)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *binary* package ‘kableExtra’ ...
* DONE (kableExtra)
* installing *source* package ‘org.Ag.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ag.eg.db)
* installing *source* package ‘org.At.tair.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.At.tair.db)
* installing *source* package ‘org.Bt.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Bt.eg.db)
* installing *source* package ‘org.Ce.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ce.eg.db)
* installing *source* package ‘org.Cf.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Cf.eg.db)
* installing *source* package ‘org.Dm.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Dm.eg.db)
* installing *source* package ‘org.Dr.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Dr.eg.db)
* installing *source* package ‘org.EcK12.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.EcK12.eg.db)
* installing *source* package ‘org.EcSakai.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.EcSakai.eg.db)
* installing *source* package ‘org.Gg.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Gg.eg.db)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *binary* package ‘org.Mm.eg.db’ ...
* DONE (org.Mm.eg.db)
* installing *source* package ‘org.Mmu.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Mmu.eg.db)
* installing *source* package ‘org.Pf.plasmo.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Pf.plasmo.db)
* installing *source* package ‘org.Pt.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Pt.eg.db)
* installing *source* package ‘org.Rn.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Rn.eg.db)
* installing *source* package ‘org.Sc.sgd.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Sc.sgd.db)
* installing *source* package ‘org.Ss.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ss.eg.db)
* installing *source* package ‘org.Xl.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Xl.eg.db)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘BiocFileCache’ ...
* DONE (BiocFileCache)
* installing *binary* package ‘GEOquery’ ...
* DONE (GEOquery)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)


```
### CRAN

```
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c pause.c -o pause.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c profvis-init.c -o profvis-init.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o profvis.so pause.o profvis-init.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘htmlwidgets’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘profvis’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘htmlwidgets’
Error: loading failed
Error: package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ag.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ag.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.At.tair.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.At.tair.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Bt.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Bt.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ce.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ce.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Cf.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Cf.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Dm.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Dm.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Dr.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Dr.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.EcK12.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.EcK12.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.EcSakai.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.EcSakai.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Gg.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Gg.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Mmu.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Mmu.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Pf.plasmo.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘org.Pf.plasmo.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Pt.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Pt.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Rn.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Rn.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Sc.sgd.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Sc.sgd.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Ss.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Ss.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘org.Xl.eg.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘org.Xl.eg.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘clipr’ ...
* DONE (clipr)
* installing *binary* package ‘codetools’ ...
* DONE (codetools)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘fastmatch’ ...
* DONE (fastmatch)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘ps’ ...
* DONE (ps)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘rappdirs’ ...
* DONE (rappdirs)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘igraph’ ...
* DONE (igraph)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘pryr’ ...
* DONE (pryr)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘selectr’ ...
* DONE (selectr)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *source* package ‘profvis’ ...
** package ‘profvis’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/GAPGOM/00LOCK-profvis/00new/profvis/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (profvis)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘webshot’ ...
* DONE (webshot)
* installing *binary* package ‘prettydoc’ ...
* DONE (prettydoc)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘rvest’ ...
* DONE (rvest)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘readr’ ...
* DONE (readr)
* installing *binary* package ‘dbplyr’ ...
* DONE (dbplyr)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *binary* package ‘kableExtra’ ...
* DONE (kableExtra)
* installing *source* package ‘org.Ag.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ag.eg.db)
* installing *source* package ‘org.At.tair.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.At.tair.db)
* installing *source* package ‘org.Bt.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Bt.eg.db)
* installing *source* package ‘org.Ce.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ce.eg.db)
* installing *source* package ‘org.Cf.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Cf.eg.db)
* installing *source* package ‘org.Dm.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Dm.eg.db)
* installing *source* package ‘org.Dr.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Dr.eg.db)
* installing *source* package ‘org.EcK12.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.EcK12.eg.db)
* installing *source* package ‘org.EcSakai.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.EcSakai.eg.db)
* installing *source* package ‘org.Gg.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Gg.eg.db)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *binary* package ‘org.Mm.eg.db’ ...
* DONE (org.Mm.eg.db)
* installing *source* package ‘org.Mmu.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Mmu.eg.db)
* installing *source* package ‘org.Pf.plasmo.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Pf.plasmo.db)
* installing *source* package ‘org.Pt.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Pt.eg.db)
* installing *source* package ‘org.Rn.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Rn.eg.db)
* installing *source* package ‘org.Sc.sgd.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Sc.sgd.db)
* installing *source* package ‘org.Ss.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Ss.eg.db)
* installing *source* package ‘org.Xl.eg.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (org.Xl.eg.db)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘BiocFileCache’ ...
* DONE (BiocFileCache)
* installing *binary* package ‘GEOquery’ ...
* DONE (GEOquery)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)


```
# GUIDEseq

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/GUIDEseq
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 103

Run `revdep_details(,"GUIDEseq")` for more info

</details>

## In both

*   checking whether package ‘GUIDEseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/new/GUIDEseq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GUIDEseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘GUIDEseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/new/GUIDEseq.Rcheck/GUIDEseq’

```
### CRAN

```
* installing *source* package ‘GUIDEseq’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘GUIDEseq’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/GUIDEseq/old/GUIDEseq.Rcheck/GUIDEseq’

```
# maEndToEnd

<details>

* Version: 
* Source code: ???
* URL: https://github.com/HenrikBengtsson/matrixStats
* BugReports: https://github.com/HenrikBengtsson/matrixStats/issues
* Number of recursive dependencies: 0

Run `revdep_details(,"")` for more info

</details>

## Error before installation

### Devel

```
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c BeadDataPackR.c -o BeadDataPackR.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c R_init_BeadDataPackR.c -o R_init_BeadDataPackR.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o BeadDataPackR.so BeadDataPackR.o R_init_BeadDataPackR.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Found pkg-config cflags and libs!
Using PKG_CFLAGS=-I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15  
Using PKG_LIBS=-lfontconfig -lfreetype  
rm -f systemfonts.so systemfonts.o init.o unix/FontManagerLinux.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c systemfonts.cpp -o systemfonts.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c init.cpp -o init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c unix/FontManagerLinux.cpp -o unix/FontManagerLinux.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o systemfonts.so systemfonts.o init.o unix/FontManagerLinux.o -lfontconfig -lfreetype -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Using PKG_CFLAGS=
Using PKG_LIBS=-lcairo -lfreetype
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because cairo freetype2 was not found. Try installing:
 * deb: libcairo2-dev (Debian, Ubuntu)
 * rpm: cairo-devel (Fedora, CentOS, RHEL)
 * csw: libcairo_dev (Solaris)
 * brew: cairo (OSX)
If cairo freetype2 is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a cairo freetype2.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘gridSVG’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘XML’
Error: loading failed
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c baseProfile.c -o baseProfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c computeAffinities.c -o computeAffinities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c postmean.c -o postmean.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o gcrma.so baseProfile.o computeAffinities.o postmean.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘affy’ required by ‘gcrma’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘affy’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘affy’ required by ‘gcrma’ could not be found
Error: loading failed
Error : package ‘affy’ required by ‘gcrma’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘gcrma’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c LESN.c -o LESN.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_avg_log.c -o PLM_avg_log.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_biweight.c -o PLM_biweight.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_log_avg.c -o PLM_log_avg.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_medianPM.c -o PLM_medianPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_median_logPM.c -o PLM_median_logPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_medianpolish.c -o PLM_medianpolish.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_modelmatrix.c -o PLM_modelmatrix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c SCAB.c -o SCAB.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c chipbackground.c -o chipbackground.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c common_types.c -o common_types.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMrlm.c -o do_PLMrlm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMrma.c -o do_PLMrma.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMthreestep.c -o do_PLMthreestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c idealmismatch.c -o idealmismatch.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c lm_threestep.c -o lm_threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c matrix_functions.c -o matrix_functions.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c nthLargestPM.c -o nthLargestPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c preprocess.c -o preprocess.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c psi_fns.c -o psi_fns.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c qnorm_probeset.c -o qnorm_probeset.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c read_rmaexpress.c -o read_rmaexpress.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rlm_PLM.c -o rlm_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rlm_threestep.c -o rlm_threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rmaPLM_pseudo.c -o rmaPLM_pseudo.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rma_PLM.c -o rma_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rma_common.c -o rma_common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c scaling.c -o scaling.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep.c -o threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_PLM.c -o threestep_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_common.c -o threestep_common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_summary.c -o threestep_summary.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_summary_methods.c -o threestep_summary_methods.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c transfns.c -o transfns.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o affyPLM.so LESN.o PLM_avg_log.o PLM_biweight.o PLM_log_avg.o PLM_medianPM.o PLM_median_logPM.o PLM_medianpolish.o PLM_modelmatrix.o SCAB.o chipbackground.o common_types.o do_PLMrlm.o do_PLMrma.o do_PLMthreestep.o idealmismatch.o lm_threestep.o matrix_functions.o nthLargestPM.o preprocess.o psi_fns.o qnorm_probeset.o read_rmaexpress.o rlm_PLM.o rlm_threestep.o rmaPLM_pseudo.o rma_PLM.o rma_common.o scaling.o threestep.o threestep_PLM.o threestep_common.o threestep_summary.o threestep_summary_methods.o transfns.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -lz -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘affy’ required by ‘affyPLM’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘zlibbioc’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘affy’ required by ‘affyPLM’ could not be found
Error: loading failed
Error : package ‘affy’ required by ‘affyPLM’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘affyPLM’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c BASH.c -o BASH.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c HULK.c -o HULK.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c determiningGridPositions.c -o determiningGridPositions.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c findAllOutliers.c -o findAllOutliers.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c imageProcessing.c -o imageProcessing.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o beadarray.so BASH.o HULK.o determiningGridPositions.o findAllOutliers.o imageProcessing.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘Biobase’ required by ‘beadarray’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Biobase’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biobase’ required by ‘beadarray’ could not be found
Error: loading failed
Error : package ‘Biobase’ required by ‘beadarray’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘beadarray’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘graphite’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘AnnotationDbi’
Error: loading failed
Error: package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘reactome.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘hugene10sttranscriptcluster.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error: loading failed
Error : package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘ArrayExpress’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Biostrings’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error: loading failed
Error : package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘pd.hugene.1.0.st.v1’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘DOSE’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘ReactomePA’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘DOSE’
Error: loading failed


* installing *binary* package ‘acepack’ ...
* DONE (acepack)
* installing *binary* package ‘affxparser’ ...
* DONE (affxparser)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *source* package ‘BeadDataPackR’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-BeadDataPackR/00new/BeadDataPackR/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BeadDataPackR)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
* installing *binary* package ‘brew’ ...
* DONE (brew)
* installing *binary* package ‘clipr’ ...
* DONE (clipr)
* installing *binary* package ‘clisymbols’ ...
* DONE (clisymbols)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘codetools’ ...
* DONE (codetools)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘commonmark’ ...
* DONE (commonmark)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘fastmatch’ ...
* DONE (fastmatch)
* installing *binary* package ‘foreign’ ...
* DONE (foreign)
* installing *binary* package ‘formatR’ ...
* DONE (formatR)
* installing *binary* package ‘Formula’ ...
* DONE (Formula)
* installing *binary* package ‘futile.options’ ...
* DONE (futile.options)
* installing *binary* package ‘GenomeInfoDbData’ ...
* DONE (GenomeInfoDbData)
* installing *binary* package ‘git2r’ ...
* DONE (git2r)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gridGraphics’ ...
* DONE (gridGraphics)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘hwriter’ ...
* DONE (hwriter)
* installing *binary* package ‘ini’ ...
* DONE (ini)
* installing *binary* package ‘iterators’ ...
* DONE (iterators)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘ps’ ...
* DONE (ps)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘rappdirs’ ...
* DONE (rappdirs)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘remotes’ ...
* DONE (remotes)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *source* package ‘setRNG’ ...
** package ‘setRNG’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (setRNG)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘SparseM’ ...
* DONE (SparseM)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *source* package ‘systemfonts’ ...
** package ‘systemfonts’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-systemfonts/00new/systemfonts/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (systemfonts)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘whisker’ ...
* DONE (whisker)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘XML’ ...
* DONE (XML)
* installing *binary* package ‘xtable’ ...
* DONE (xtable)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘zip’ ...
* DONE (zip)
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘affyio’ ...
* DONE (affyio)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘caTools’ ...
* DONE (caTools)
* installing *binary* package ‘checkmate’ ...
* DONE (checkmate)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘ff’ ...
* DONE (ff)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *source* package ‘gdtools’ ...
** package ‘gdtools’ successfully unpacked and MD5 sums checked
** using staged installation
Package cairo was not found in the pkg-config search path.
Perhaps you should add the directory containing `cairo.pc'
to the PKG_CONFIG_PATH environment variable
No package 'cairo' found
Package cairo was not found in the pkg-config search path.
Perhaps you should add the directory containing `cairo.pc'
to the PKG_CONFIG_PATH environment variable
No package 'cairo' found
ERROR: configuration failed for package ‘gdtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/gdtools’
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *source* package ‘gridSVG’ ...
** package ‘gridSVG’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gridSVG)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘openxlsx’ ...
* DONE (openxlsx)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘rvcheck’ ...
* DONE (rvcheck)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘triebeard’ ...
* DONE (triebeard)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘affy’ ...
* DONE (affy)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘futile.logger’ ...
* DONE (futile.logger)
* installing *binary* package ‘gplots’ ...
* DONE (gplots)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘igraph’ ...
* DONE (igraph)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘RcppEigen’ ...
* DONE (RcppEigen)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘sessioninfo’ ...
* DONE (sessioninfo)
* installing *binary* package ‘survival’ ...
* DONE (survival)
ERROR: dependency ‘gdtools’ is not available for package ‘svglite’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/svglite’
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
* installing *binary* package ‘urltools’ ...
* DONE (urltools)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘xopen’ ...
* DONE (xopen)
* installing *binary* package ‘base64’ ...
* DONE (base64)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘GenomeInfoDb’ ...
* DONE (GenomeInfoDb)
* installing *binary* package ‘graphlayouts’ ...
* DONE (graphlayouts)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pheatmap’ ...
* DONE (pheatmap)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘XVector’ ...
* DONE (XVector)
* installing *binary* package ‘Biostrings’ ...
* DONE (Biostrings)
* installing *binary* package ‘bookdown’ ...
* DONE (bookdown)
* installing *binary* package ‘DelayedArray’ ...
* DONE (DelayedArray)
* installing *binary* package ‘GenomicRanges’ ...
* DONE (GenomicRanges)
* installing *binary* package ‘gh’ ...
* DONE (gh)
* installing *binary* package ‘illuminaio’ ...
* DONE (illuminaio)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘rcmdcheck’ ...
* DONE (rcmdcheck)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘BiocStyle’ ...
* DONE (BiocStyle)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *source* package ‘gcrma’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-gcrma/00new/gcrma/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gcrma)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘roxygen2’ ...
* DONE (roxygen2)
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘usethis’ ...
* DONE (usethis)
* installing *source* package ‘affyPLM’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-affyPLM/00new/affyPLM/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (affyPLM)
* installing *binary* package ‘annotate’ ...
* DONE (annotate)
* installing *source* package ‘beadarray’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-beadarray/00new/beadarray/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (beadarray)
* installing *binary* package ‘cowplot’ ...
* DONE (cowplot)
* installing *binary* package ‘devtools’ ...
* DONE (devtools)
* installing *binary* package ‘DO.db’ ...
* DONE (DO.db)
* installing *binary* package ‘europepmc’ ...
* DONE (europepmc)
* installing *binary* package ‘fgsea’ ...
* DONE (fgsea)
* installing *binary* package ‘ggforce’ ...
* DONE (ggforce)
* installing *binary* package ‘ggplotify’ ...
* DONE (ggplotify)
* installing *binary* package ‘ggrepel’ ...
* DONE (ggrepel)
* installing *binary* package ‘ggridges’ ...
* DONE (ggridges)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *source* package ‘graphite’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (graphite)
* installing *binary* package ‘oligoClasses’ ...
* DONE (oligoClasses)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *binary* package ‘qvalue’ ...
* DONE (qvalue)
* installing *source* package ‘reactome.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (reactome.db)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘UpSetR’ ...
* DONE (UpSetR)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘vsn’ ...
* DONE (vsn)
* installing *binary* package ‘genefilter’ ...
* DONE (genefilter)
* installing *binary* package ‘geneplotter’ ...
* DONE (geneplotter)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *source* package ‘hugene10sttranscriptcluster.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (hugene10sttranscriptcluster.db)
* installing *binary* package ‘oligo’ ...
* DONE (oligo)
* installing *binary* package ‘tidygraph’ ...
* DONE (tidygraph)
* installing *binary* package ‘topGO’ ...
* DONE (topGO)
* installing *source* package ‘ArrayExpress’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ArrayExpress)
ERROR: dependency ‘svglite’ is not available for package ‘arrayQualityMetrics’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/arrayQualityMetrics’
* installing *binary* package ‘DOSE’ ...
* DONE (DOSE)
* installing *binary* package ‘ggraph’ ...
* DONE (ggraph)
* installing *source* package ‘pd.hugene.1.0.st.v1’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (pd.hugene.1.0.st.v1)
* installing *binary* package ‘enrichplot’ ...
* DONE (enrichplot)
* installing *binary* package ‘clusterProfiler’ ...
* DONE (clusterProfiler)
* installing *source* package ‘ReactomePA’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ReactomePA)


```
### CRAN

```
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c BeadDataPackR.c -o BeadDataPackR.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c R_init_BeadDataPackR.c -o R_init_BeadDataPackR.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o BeadDataPackR.so BeadDataPackR.o R_init_BeadDataPackR.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Found pkg-config cflags and libs!
Using PKG_CFLAGS=-I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15  
Using PKG_LIBS=-lfontconfig -lfreetype  
rm -f systemfonts.so systemfonts.o init.o unix/FontManagerLinux.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c systemfonts.cpp -o systemfonts.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c init.cpp -o init.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng15   -DSTRICT_R_HEADERS  -I/usr/local/include  -fpic  -g -O2  -c unix/FontManagerLinux.cpp -o unix/FontManagerLinux.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o systemfonts.so systemfonts.o init.o unix/FontManagerLinux.o -lfontconfig -lfreetype -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Using PKG_CFLAGS=
Using PKG_LIBS=-lcairo -lfreetype
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because cairo freetype2 was not found. Try installing:
 * deb: libcairo2-dev (Debian, Ubuntu)
 * rpm: cairo-devel (Fedora, CentOS, RHEL)
 * csw: libcairo_dev (Solaris)
 * brew: cairo (OSX)
If cairo freetype2 is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a cairo freetype2.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘gridSVG’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘XML’
Error: loading failed
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c baseProfile.c -o baseProfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c computeAffinities.c -o computeAffinities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c postmean.c -o postmean.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o gcrma.so baseProfile.o computeAffinities.o postmean.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘affy’ required by ‘gcrma’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘affy’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘affy’ required by ‘gcrma’ could not be found
Error: loading failed
Error : package ‘affy’ required by ‘gcrma’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘gcrma’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c LESN.c -o LESN.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_avg_log.c -o PLM_avg_log.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_biweight.c -o PLM_biweight.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_log_avg.c -o PLM_log_avg.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_medianPM.c -o PLM_medianPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_median_logPM.c -o PLM_median_logPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_medianpolish.c -o PLM_medianpolish.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c PLM_modelmatrix.c -o PLM_modelmatrix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c SCAB.c -o SCAB.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c chipbackground.c -o chipbackground.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c common_types.c -o common_types.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMrlm.c -o do_PLMrlm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMrma.c -o do_PLMrma.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c do_PLMthreestep.c -o do_PLMthreestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c idealmismatch.c -o idealmismatch.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c lm_threestep.c -o lm_threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c matrix_functions.c -o matrix_functions.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c nthLargestPM.c -o nthLargestPM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c preprocess.c -o preprocess.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c psi_fns.c -o psi_fns.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c qnorm_probeset.c -o qnorm_probeset.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c read_rmaexpress.c -o read_rmaexpress.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rlm_PLM.c -o rlm_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rlm_threestep.c -o rlm_threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rmaPLM_pseudo.c -o rmaPLM_pseudo.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rma_PLM.c -o rma_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c rma_common.c -o rma_common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c scaling.c -o scaling.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep.c -o threestep.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_PLM.c -o threestep_PLM.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_common.c -o threestep_common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_summary.c -o threestep_summary.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c threestep_summary_methods.c -o threestep_summary_methods.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/preprocessCore/include" -I/usr/local/include  -fpic  -g -O2  -c transfns.c -o transfns.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o affyPLM.so LESN.o PLM_avg_log.o PLM_biweight.o PLM_log_avg.o PLM_medianPM.o PLM_median_logPM.o PLM_medianpolish.o PLM_modelmatrix.o SCAB.o chipbackground.o common_types.o do_PLMrlm.o do_PLMrma.o do_PLMthreestep.o idealmismatch.o lm_threestep.o matrix_functions.o nthLargestPM.o preprocess.o psi_fns.o qnorm_probeset.o read_rmaexpress.o rlm_PLM.o rlm_threestep.o rmaPLM_pseudo.o rma_PLM.o rma_common.o scaling.o threestep.o threestep_PLM.o threestep_common.o threestep_summary.o threestep_summary_methods.o transfns.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lRlapack -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -lz -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘affy’ required by ‘affyPLM’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘zlibbioc’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘affy’ required by ‘affyPLM’ could not be found
Error: loading failed
Error : package ‘affy’ required by ‘affyPLM’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘affyPLM’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c BASH.c -o BASH.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c HULK.c -o HULK.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c determiningGridPositions.c -o determiningGridPositions.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c findAllOutliers.c -o findAllOutliers.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c imageProcessing.c -o imageProcessing.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -L/usr/local/lib64 -o beadarray.so BASH.o HULK.o determiningGridPositions.o findAllOutliers.o imageProcessing.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/lib -lR
Error: package ‘Biobase’ required by ‘beadarray’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘Biobase’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biobase’ required by ‘beadarray’ could not be found
Error: loading failed
Error : package ‘Biobase’ required by ‘beadarray’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘beadarray’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘graphite’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘AnnotationDbi’
Error: loading failed
Error: package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘reactome.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘reactome.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘AnnotationDbi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error: loading failed
Error : package ‘AnnotationDbi’ required by ‘hugene10sttranscriptcluster.db’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘hugene10sttranscriptcluster.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘XML’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error: loading failed
Error : package ‘Biobase’ required by ‘ArrayExpress’ could not be found
Error: loading failed
Error in loadNamespace(name) : there is no package called ‘ArrayExpress’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Biostrings’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error : package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error: loading failed
Error : package ‘Biostrings’ required by ‘pd.hugene.1.0.st.v1’ could not be found
Error: loading failed
Error in loadNamespace(name) : 
  there is no package called ‘pd.hugene.1.0.st.v1’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘DOSE’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Error: package or namespace load failed for ‘ReactomePA’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘DOSE’
Error: loading failed


* installing *binary* package ‘acepack’ ...
* DONE (acepack)
* installing *binary* package ‘affxparser’ ...
* DONE (affxparser)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *source* package ‘BeadDataPackR’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-BeadDataPackR/00new/BeadDataPackR/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BeadDataPackR)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
* installing *binary* package ‘brew’ ...
* DONE (brew)
* installing *binary* package ‘clipr’ ...
* DONE (clipr)
* installing *binary* package ‘clisymbols’ ...
* DONE (clisymbols)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘codetools’ ...
* DONE (codetools)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘commonmark’ ...
* DONE (commonmark)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘curl’ ...
* DONE (curl)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DBI’ ...
* DONE (DBI)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘fastmatch’ ...
* DONE (fastmatch)
* installing *binary* package ‘foreign’ ...
* DONE (foreign)
* installing *binary* package ‘formatR’ ...
* DONE (formatR)
* installing *binary* package ‘Formula’ ...
* DONE (Formula)
* installing *binary* package ‘futile.options’ ...
* DONE (futile.options)
* installing *binary* package ‘GenomeInfoDbData’ ...
* DONE (GenomeInfoDbData)
* installing *binary* package ‘git2r’ ...
* DONE (git2r)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gridGraphics’ ...
* DONE (gridGraphics)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘hwriter’ ...
* DONE (hwriter)
* installing *binary* package ‘ini’ ...
* DONE (ini)
* installing *binary* package ‘iterators’ ...
* DONE (iterators)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘limma’ ...
* DONE (limma)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘ps’ ...
* DONE (ps)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘rappdirs’ ...
* DONE (rappdirs)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘remotes’ ...
* DONE (remotes)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *source* package ‘setRNG’ ...
** package ‘setRNG’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (setRNG)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘SparseM’ ...
* DONE (SparseM)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *source* package ‘systemfonts’ ...
** package ‘systemfonts’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-systemfonts/00new/systemfonts/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (systemfonts)
* installing *binary* package ‘utf8’ ...
* DONE (utf8)
* installing *binary* package ‘viridisLite’ ...
* DONE (viridisLite)
* installing *binary* package ‘whisker’ ...
* DONE (whisker)
* installing *binary* package ‘withr’ ...
* DONE (withr)
* installing *binary* package ‘xfun’ ...
* DONE (xfun)
* installing *binary* package ‘XML’ ...
* DONE (XML)
* installing *binary* package ‘xtable’ ...
* DONE (xtable)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zeallot’ ...
* DONE (zeallot)
* installing *binary* package ‘zip’ ...
* DONE (zip)
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘affyio’ ...
* DONE (affyio)
* installing *binary* package ‘askpass’ ...
* DONE (askpass)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘bit64’ ...
* DONE (bit64)
* installing *binary* package ‘caTools’ ...
* DONE (caTools)
* installing *binary* package ‘checkmate’ ...
* DONE (checkmate)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘ff’ ...
* DONE (ff)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *source* package ‘gdtools’ ...
** package ‘gdtools’ successfully unpacked and MD5 sums checked
** using staged installation
Package cairo was not found in the pkg-config search path.
Perhaps you should add the directory containing `cairo.pc'
to the PKG_CONFIG_PATH environment variable
No package 'cairo' found
Package cairo was not found in the pkg-config search path.
Perhaps you should add the directory containing `cairo.pc'
to the PKG_CONFIG_PATH environment variable
No package 'cairo' found
ERROR: configuration failed for package ‘gdtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/gdtools’
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *source* package ‘gridSVG’ ...
** package ‘gridSVG’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gridSVG)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘memoise’ ...
* DONE (memoise)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘openxlsx’ ...
* DONE (openxlsx)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘rvcheck’ ...
* DONE (rvcheck)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
* installing *binary* package ‘triebeard’ ...
* DONE (triebeard)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘affy’ ...
* DONE (affy)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘futile.logger’ ...
* DONE (futile.logger)
* installing *binary* package ‘gplots’ ...
* DONE (gplots)
* installing *binary* package ‘htmlwidgets’ ...
* DONE (htmlwidgets)
* installing *binary* package ‘igraph’ ...
* DONE (igraph)
* installing *binary* package ‘IRanges’ ...
* DONE (IRanges)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘openssl’ ...
* DONE (openssl)
* installing *binary* package ‘RcppEigen’ ...
* DONE (RcppEigen)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘sessioninfo’ ...
* DONE (sessioninfo)
* installing *binary* package ‘survival’ ...
* DONE (survival)
ERROR: dependency ‘gdtools’ is not available for package ‘svglite’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/svglite’
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
* installing *binary* package ‘urltools’ ...
* DONE (urltools)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘xopen’ ...
* DONE (xopen)
* installing *binary* package ‘base64’ ...
* DONE (base64)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘GenomeInfoDb’ ...
* DONE (GenomeInfoDb)
* installing *binary* package ‘graphlayouts’ ...
* DONE (graphlayouts)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pheatmap’ ...
* DONE (pheatmap)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘XVector’ ...
* DONE (XVector)
* installing *binary* package ‘Biostrings’ ...
* DONE (Biostrings)
* installing *binary* package ‘bookdown’ ...
* DONE (bookdown)
* installing *binary* package ‘DelayedArray’ ...
* DONE (DelayedArray)
* installing *binary* package ‘GenomicRanges’ ...
* DONE (GenomicRanges)
* installing *binary* package ‘gh’ ...
* DONE (gh)
* installing *binary* package ‘illuminaio’ ...
* DONE (illuminaio)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘rcmdcheck’ ...
* DONE (rcmdcheck)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘BiocStyle’ ...
* DONE (BiocStyle)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *source* package ‘gcrma’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-gcrma/00new/gcrma/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gcrma)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘roxygen2’ ...
* DONE (roxygen2)
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘usethis’ ...
* DONE (usethis)
* installing *source* package ‘affyPLM’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-affyPLM/00new/affyPLM/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (affyPLM)
* installing *binary* package ‘annotate’ ...
* DONE (annotate)
* installing *source* package ‘beadarray’ ...
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-beadarray/00new/beadarray/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (beadarray)
* installing *binary* package ‘cowplot’ ...
* DONE (cowplot)
* installing *binary* package ‘devtools’ ...
* DONE (devtools)
* installing *binary* package ‘DO.db’ ...
* DONE (DO.db)
* installing *binary* package ‘europepmc’ ...
* DONE (europepmc)
* installing *binary* package ‘fgsea’ ...
* DONE (fgsea)
* installing *binary* package ‘ggforce’ ...
* DONE (ggforce)
* installing *binary* package ‘ggplotify’ ...
* DONE (ggplotify)
* installing *binary* package ‘ggrepel’ ...
* DONE (ggrepel)
* installing *binary* package ‘ggridges’ ...
* DONE (ggridges)
* installing *binary* package ‘GO.db’ ...
* DONE (GO.db)
* installing *source* package ‘graphite’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (graphite)
* installing *binary* package ‘oligoClasses’ ...
* DONE (oligoClasses)
* installing *binary* package ‘org.Hs.eg.db’ ...
* DONE (org.Hs.eg.db)
* installing *binary* package ‘qvalue’ ...
* DONE (qvalue)
* installing *source* package ‘reactome.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (reactome.db)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘UpSetR’ ...
* DONE (UpSetR)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘vsn’ ...
* DONE (vsn)
* installing *binary* package ‘genefilter’ ...
* DONE (genefilter)
* installing *binary* package ‘geneplotter’ ...
* DONE (geneplotter)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *source* package ‘hugene10sttranscriptcluster.db’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (hugene10sttranscriptcluster.db)
* installing *binary* package ‘oligo’ ...
* DONE (oligo)
* installing *binary* package ‘tidygraph’ ...
* DONE (tidygraph)
* installing *binary* package ‘topGO’ ...
* DONE (topGO)
* installing *source* package ‘ArrayExpress’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ArrayExpress)
ERROR: dependency ‘svglite’ is not available for package ‘arrayQualityMetrics’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/arrayQualityMetrics’
* installing *binary* package ‘DOSE’ ...
* DONE (DOSE)
* installing *binary* package ‘ggraph’ ...
* DONE (ggraph)
* installing *source* package ‘pd.hugene.1.0.st.v1’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (pd.hugene.1.0.st.v1)
* installing *binary* package ‘enrichplot’ ...
* DONE (enrichplot)
* installing *binary* package ‘clusterProfiler’ ...
* DONE (clusterProfiler)
* installing *source* package ‘ReactomePA’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ReactomePA)


```
# MIGSA

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/MIGSA
* URL: http://www.bdmg.com.ar/
* Date/Publication: 2019-07-12
* Number of recursive dependencies: 93

Run `revdep_details(,"MIGSA")` for more info

</details>

## In both

*   checking whether package ‘MIGSA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/new/MIGSA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MIGSA’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘MIGSA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/new/MIGSA.Rcheck/MIGSA’

```
### CRAN

```
* installing *source* package ‘MIGSA’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘MIGSA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/MIGSA/old/MIGSA.Rcheck/MIGSA’

```
# MinimumDistance

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/MinimumDistance
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 77

Run `revdep_details(,"MinimumDistance")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/doRUnit.R’ failed.
    Last 13 lines of output:
      Number of errors: 2 
      Number of failures: 0 
      
       
      1 Test Suite : 
      MinimumDistance unit testing - 12 test functions, 2 errors, 0 failures
      ERROR in test_MAP2: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      ERROR in test_posteriorCalls: Error in msg && (requiredAssays() %in% names(assays(object))) : 
        'length(x) = 2 > 1' in coercion to 'logical(1)'
      Error: 
      
      unit testing failed (#test failures: 0, #R errors: 2)
      
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘MinimumDistance.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MinimumDistance.Rnw’
      ...
    > ind_id <- setNames(gsub(" ", "", sample_info$IndividualID), 
    +     sample_info$File)
    
    > colnames(views) <- ind_id[gsub(".txt", "", colnames(views))]
    
    > me <- MinDistExperiment(views, pedigree = ped_list[[2]])
    
      When sourcing ‘MinimumDistance.R’:
    Error: 'length(x) = 2 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Functions or methods with usage in documentation object 'coerce' but not in code:
      ‘as’
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

# SICtools

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/SICtools
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 39

Run `revdep_details(,"SICtools")` for more info

</details>

## In both

*   checking whether package ‘SICtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00install.out’ for details.
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

## Installation

### Devel

```
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/etc/Makeconf:167: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function ‘worker_aux’:
bgzf.c:392:9: warning: variable ‘tmp’ set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function ‘bgzf_close’:
bgzf.c:572:11: warning: variable ‘count’ set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function ‘resolve_cigar2’:
bam_pileup.c:75:9: warning: variable ‘is_head’ set but not used [-Wunused-but-set-variable]
  int k, is_head = 0;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_lpileup.c -o bam_lpileup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_md.c -o bam_md.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. razf.c -o razf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. faidx.c -o faidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedidx.c -o bedidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. knetfile.c -o knetfile.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_sort.c -o bam_sort.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_header.c -o sam_header.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_reheader.c -o bam_reheader.o
bam_reheader.c: In function ‘bam_reheader’:
bam_reheader.c:12:16: warning: variable ‘old’ set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function ‘kpa_glocal’:
kprobaln.c:78:21: warning: variable ‘is_diff’ set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function ‘bcf_fmt_core’:
bcf.c:233:9: warning: variable ‘iPL’ set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function ‘bcf_fit_alt’:
bcfutils.c:119:9: warning: variable ‘ipl’ set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function ‘bcf_em1’:
em.c:174:12: warning: variable ‘n2’ set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function ‘mpileup’:
bam_plcmd.c:333:28: warning: variable ‘ref16’ set but not used [-Wunused-but-set-variable]
    int total_depth, _ref0, ref16;
                            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_view.c -o sam_view.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdup.c -o bam_rmdup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdupse.c -o bam_rmdupse.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_mate.c -o bam_mate.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_stat.c -o bam_stat.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_color.c -o bam_color.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamtk.c -o bamtk.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kaln.c -o kaln.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf.c -o bam2bcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf_indel.c -o bam2bcf_indel.o
bam2bcf_indel.c: In function ‘bcf_call_gap_prep’:
bam2bcf_indel.c:121:28: warning: variable ‘query’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable ‘ref2’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable ‘ref_type’ set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable ‘score2’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable ‘score1’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function ‘main_cut_target’:
cut_target.c:137:36: warning: variable ‘lastpos’ set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
bam_tview_curses.c:5:20: fatal error: curses.h: No such file or directory
 #include <curses.h>
                    ^
compilation terminated.
make[1]: *** [bam_tview_curses.o] Error 1
make[1]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/new/SICtools.Rcheck/SICtools’

```
### CRAN

```
* installing *source* package ‘SICtools’ ...
** using staged installation
** libs
** arch - 
Makefile:24: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.1/lib64/R/etc/Makeconf:167: warning: ignoring old recipe for target `.c.o'
make[1]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -DBGZF_CACHE -I. bgzf.c -o bgzf.o
bgzf.c: In function ‘worker_aux’:
bgzf.c:392:9: warning: variable ‘tmp’ set but not used [-Wunused-but-set-variable]
  int i, tmp, stop = 0;
         ^
bgzf.c: In function ‘bgzf_close’:
bgzf.c:572:11: warning: variable ‘count’ set but not used [-Wunused-but-set-variable]
  int ret, count, block_length;
           ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kstring.c -o kstring.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_aux.c -o bam_aux.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam.c -o bam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_import.c -o bam_import.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam.c -o sam.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_index.c -o bam_index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_pileup.c -o bam_pileup.o
bam_pileup.c: In function ‘resolve_cigar2’:
bam_pileup.c:75:9: warning: variable ‘is_head’ set but not used [-Wunused-but-set-variable]
  int k, is_head = 0;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_lpileup.c -o bam_lpileup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_md.c -o bam_md.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. razf.c -o razf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. faidx.c -o faidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedidx.c -o bedidx.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. knetfile.c -o knetfile.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_sort.c -o bam_sort.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_header.c -o sam_header.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_reheader.c -o bam_reheader.o
bam_reheader.c: In function ‘bam_reheader’:
bam_reheader.c:12:16: warning: variable ‘old’ set but not used [-Wunused-but-set-variable]
  bam_header_t *old;
                ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kprobaln.c -o kprobaln.o
kprobaln.c: In function ‘kpa_glocal’:
kprobaln.c:78:21: warning: variable ‘is_diff’ set but not used [-Wunused-but-set-variable]
  int bw, bw2, i, k, is_diff = 0, is_backward = 1, Pr;
                     ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_cat.c -o bam_cat.o
ar -csru libbam.a bgzf.o kstring.o bam_aux.o bam.o bam_import.o sam.o bam_index.o bam_pileup.o bam_lpileup.o bam_md.o razf.o faidx.o bedidx.o knetfile.o bam_sort.o sam_header.o bam_reheader.o kprobaln.o bam_cat.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf.c -o bcf.o
bcf.c: In function ‘bcf_fmt_core’:
bcf.c:233:9: warning: variable ‘iPL’ set but not used [-Wunused-but-set-variable]
     int iPL = -1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. vcf.c -o vcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcfutils.c -o bcfutils.o
bcfutils.c: In function ‘bcf_fit_alt’:
bcfutils.c:119:9: warning: variable ‘ipl’ set but not used [-Wunused-but-set-variable]
     int ipl=-1, igt=-1;
         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. prob1.c -o prob1.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. em.c -o em.o
em.c: In function ‘bcf_em1’:
em.c:174:12: warning: variable ‘n2’ set but not used [-Wunused-but-set-variable]
  int i, n, n2;
            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kfunc.c -o kfunc.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. kmin.c -o kmin.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. index.c -o index.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. fet.c -o fet.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. mut.c -o mut.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I.. -I. bcf2qcall.c -o bcf2qcall.o
ar -csru libbcf.a bcf.o vcf.o bcfutils.o prob1.o em.o kfunc.o kmin.o index.o fet.o mut.o bcf2qcall.o
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/bcftools'
make[2]: Entering directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
make[2]: Nothing to be done for `lib'.
make[2]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src/misc'
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview.c -o bam_tview.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_plcmd.c -o bam_plcmd.o
bam_plcmd.c: In function ‘mpileup’:
bam_plcmd.c:333:28: warning: variable ‘ref16’ set but not used [-Wunused-but-set-variable]
    int total_depth, _ref0, ref16;
                            ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sam_view.c -o sam_view.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdup.c -o bam_rmdup.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_rmdupse.c -o bam_rmdupse.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_mate.c -o bam_mate.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_stat.c -o bam_stat.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_color.c -o bam_color.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamtk.c -o bamtk.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. kaln.c -o kaln.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf.c -o bam2bcf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2bcf_indel.c -o bam2bcf_indel.o
bam2bcf_indel.c: In function ‘bcf_call_gap_prep’:
bam2bcf_indel.c:121:28: warning: variable ‘query’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                            ^
bam2bcf_indel.c:121:21: warning: variable ‘ref2’ set but not used [-Wunused-but-set-variable]
  char *inscns = 0, *ref2, *query, **ref_sample;
                     ^
bam2bcf_indel.c:120:16: warning: variable ‘ref_type’ set but not used [-Wunused-but-set-variable]
  int N, l_run, ref_type;
                ^
bam2bcf_indel.c:119:82: warning: variable ‘score2’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                                  ^
bam2bcf_indel.c:119:73: warning: variable ‘score1’ set but not used [-Wunused-but-set-variable]
  int i, s, j, k, t, n_types, *types, max_rd_len, left, right, max_ins, *score1, *score2, max_ref2;
                                                                         ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. errmod.c -o errmod.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. sample.c -o sample.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. cut_target.c -o cut_target.o
cut_target.c: In function ‘main_cut_target’:
cut_target.c:137:36: warning: variable ‘lastpos’ set but not used [-Wunused-but-set-variable]
  int c, tid, pos, n, lasttid = -1, lastpos = -1, l, max_l;
                                    ^
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. phase.c -o phase.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam2depth.c -o bam2depth.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. padding.c -o padding.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bedcov.c -o bedcov.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bamshuf.c -o bamshuf.o
gcc -c -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -D_USE_KNETFILE -D_CURSES_LIB=1 -I. bam_tview_curses.c -o bam_tview_curses.o
bam_tview_curses.c:5:20: fatal error: curses.h: No such file or directory
 #include <curses.h>
                    ^
compilation terminated.
make[1]: *** [bam_tview_curses.o] Error 1
make[1]: Leaving directory `/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/00_pkg_src/SICtools/src'
make: *** [all-recur] Error 1
ERROR: compilation failed for package ‘SICtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/SICtools/old/SICtools.Rcheck/SICtools’

```
# TCA

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/TCA
* URL: https://www.biorxiv.org/content/10.1101/437368v1
* BugReports: https://github.com/cozygene/TCA/issues
* Date/Publication: 2019-05-22 14:10:03 UTC
* Number of recursive dependencies: 45

Run `revdep_details(,"TCA")` for more info

</details>

## In both

*   checking whether package ‘TCA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TCA/new/TCA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TCA’ ...
** package ‘TCA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘TCA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TCA/new/TCA.Rcheck/TCA’

```
### CRAN

```
* installing *source* package ‘TCA’ ...
** package ‘TCA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in !is.na(line <- it()) && line$token != "SPECIAL" : 
  'length(x) = 9 > 1' in coercion to 'logical(1)'
Error: unable to load R code in package ‘lambda.r’
Execution halted
ERROR: lazy loading failed for package ‘TCA’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/TCA/old/TCA.Rcheck/TCA’

```
