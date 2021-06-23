# Notes

## Setup

```r
> options(Ncpus = 6L)
> install.packages("remotes")
> remotes::install_github("r-lib/revdepcheck")
```

```sh
## Used by R itself
$ revdep/run.R --preinstall RCurl XML
```


## Pre-installation

In order to run these checks successfully on a machine _without internet
access_, make sure to first populate the 'crancache' cache by pre-installing
all packages to be tested plus a few more.

```sh
## Needed by some packages to be tested (identified by trial and error)
$ revdep/run.R --preinstall Rsamtools sf

## Update current crancache
$ revdep/run.R --preinstall-update

## OpenMx needed by semtree (gcc >= 4.9.3)
$ scl enable devtoolset-6 "revdep/run.R --preinstall OpenMx"

## Rfast needed by IMIFA and obfuscatoR (gcc 6.3.1)
## (https://github.com/RfastOfficial/Rfast/issues/8#issuecomment-586522490)
$ scl enable devtoolset-6 "revdep/run.R --preinstall Rfast"

## RccpAlgos needed by ImpactEffectsize (gcc 5.3.1)
## (https://github.com/jwood000/RcppAlgos/issues/10)
$ scl enable devtoolset-4 "revdep/run.R --preinstall RcppAlgos"

## All packages to be tested
$ revdep/run.R --preinstall-children
```


## Testing

### Package with spurious port errors

* DMCFB


### Packages that timed out (> 30-minute walltime)

Packages that gave "R CMD check timed out":

* eGST
* flowSpy
* graper
* Luminescence
* MethylAid

Other timeouts:

* maEndToEnd
* metrix
* splatter


### Packages that depend on **oligo**

Packages that depend on **oligo**, which triggers [a `_R_CHECK_LENGTH_1_LOGIC2` bug in the **methods** package](https://stat.ethz.ch/pipermail/r-devel/2019-June/078049.html) when testing on R (<= 3.6.2):

 * oligo
 * ArrayExpress
 * maEndToEnd
 * pd.hugene.1.0.st.v1

Manually pre-installing these might help.




### Package that requires Internet

The following packages will fail when tested in 'offline' mode because
their examples or tests require a working internet connection:

* bumphunter: "cannot open URL 'ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_25/gencode.v25.annotation.gtf.gz'"
* crossmeta: "AnnotatingURL 'https://bioconductor.org/config.yaml': status was 'Couldn't resolve host, ..."
* DeepBlueR: "Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known"
* Doscheda: "Could not resolve host: www.humanmine.org; Name or service not known"
* GAPGOM: "trying to add rname 'http://fantom.gsc.riken.jp/5/datafiles/latest/extra/CAGE_peaks/mm9.cage_peak_phase1and2combined_tpm_ann.osc.txt.gz' produced error: attempt to write a readonly database. Error in bfcrpath(bfc, url) : not all 'rnames' found or unique."
* Pigengene: "Could not resolve host: useast.ensembl.org; Name or service not known"
* PrecisionTrialDrawer: "Could not resolve host: www.cbioportal.org; Name or service not known"
* stm: "cannot open the connection to 'http://goo.gl/VPdxlS'"
* STROMA4: "trying to use CRAN without setting a mirror"
* yarn: "Could not resolve host: www.ensembl.org; Name or service not known"

The following packages produce errors on "No internet connection using 'localHub=TRUE'":

* AMARETTO
* biscuiteer
* DEqMS
* hipathia
* MEAL
* RNAmodR
* sesame


To check these on a machine with internet access, do:

```r
$ revdep/run.R --add bumphunter crossmeta DeepBlueR Doscheda GAPGOM Pigengene PrecisionTrialDrawer stm STROMA4 yarn AMARETTO biscuiteer DEqMS hipathia MEAL RNAmodR sesame
$ NSLOTS=8 revdep/run.R
```


### Missing dependencies

* CATALYST: "Error in loadNamespace(name) : there is no package called ‘uwot’"
* muscat: "statmod package required but is not installed"


### Package with R_CHECK_LENGTH_1_*_ errors

* SIAMCAT: "Error in pred.names != "" && !is.null(pred.names) : 'length(x) = 2 > 1' in coercion to 'logical(1)'"
  - https://bioconductor.org/checkResults/devel/bioc-LATEST/SIAMCAT/malbec2-checksrc.html
  
* VanillaICE: "Error in msg && (requiredAssays() %in% names(assays(object))) : 'length(x) = 2 > 1' in coercion to 'logical(1)'"
  - https://bioconductor.org/checkResults/devel/bioc-LATEST/VanillaICE/malbec2-checksrc.html



### Packages with installation errors (?!?)

* SICtools: "bam_tview_curses.c:5:20: fatal error: curses.h: No such file or directory"

