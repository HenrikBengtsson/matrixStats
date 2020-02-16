# Notes

## Pre-installation

In order to run these checks successfully on a machine _without internet
access_, make sure to first populate the 'crancache' cache by pre-installing
all packages to be tested plus a few more:

```sh
## Update current crancache
$ revdep/run.R --preinstall-update

## Used by R itself
$ revdep/run.R --preinstall RCurl XML

## Needed by some packages to be tested (identified by trial and error)
$ revdep/run.R --preinstall Rsamtools sf

## Rfast needed by IMIFA and obfuscatoR (gcc 6.3.1)
## (https://github.com/RfastOfficial/Rfast/issues/8#issuecomment-586522490)
$ scl enable devtoolset-6 "revdep/run.R --preinstall Rfast"

## RccpAlgos needed by ImpactEffectsize (gcc 5.3.1)
## (https://github.com/jwood000/RcppAlgos/issues/10)
$ scl enable devtoolset-4 "revdep/run.R --preinstall RcppAlgos"

## OpenMx needed by semtree (gcc >= 4.9.3)
$ scl enable devtoolset-4 "revdep/run.R --preinstall OpenMx"

## All packages to be tested
$ revdep/run.R --preinstall-children
```


## Testing

### Package with spurious port errors

* DMCFB


### Packages that timed out

Packages that gave "R CMD check timed out":

* eGST
* flowSpy
* graper
* MethylAid



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
* GAPGOM
* Pigengene: "Could not resolve host: useast.ensembl.org; Name or service not known"
* PrecisionTrialDrawer: "Could not resolve host: www.cbioportal.org; Name or service not known"
* stm: "cannot open the connection to 'http://goo.gl/VPdxlS'"
* STROMA4: "trying to use CRAN without setting a mirror"
* yarn: "Could not resolve host: www.ensembl.org; Name or service not known"

The following packages produce errors on "No internet connection using 'localHub=TRUE'":

* RNAmodR
* AMARETTO
* biscuiteer
* DEqMS
* hipathia
* sesame


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
