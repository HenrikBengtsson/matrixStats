# biscuiteer

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
...
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (Mus.musculus)
ERROR: dependencies ‘bsseq’, ‘HDF5Array’ are not available for package ‘scmeth’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/scmeth’

The downloaded source packages are in
	‘/scratch/henrik/Rtmpfmh1WI/downloaded_packages’


```
### CRAN

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
...
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (Mus.musculus)
ERROR: dependencies ‘bsseq’, ‘HDF5Array’ are not available for package ‘scmeth’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/library/biscuiteer/scmeth’

The downloaded source packages are in
	‘/scratch/henrik/Rtmpfmh1WI/downloaded_packages’


```
# CATALYST

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
checking for a sed that does not truncate output... /usr/bin/sed
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c kkuiper.cpp -o kkuiper.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c local_density.cpp -o local_density.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c medianAbsoluteDeviation.cpp -o medianAbsoluteDeviation.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c misc.cpp -o misc.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c rQuantile.cpp -o rQuantile.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c singleDip.cpp -o singleDip.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c tautstring.cpp -o tautstring.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c tsGates.cpp -o tsGates.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c unlockNamespace.c -o unlockNamespace.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o openCyto.so RcppExports.o cpPmden.o cppApprox.o cppdip.o dynamic_prog.o fill_SMAWK.o getTautStringApprox.o kMedDP.o kkuiper.o local_density.o medianAbsoluteDeviation.o misc.o rQuantile.o singleDip.o tautstring.o tsGates.o unlockNamespace.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/diffcyt_1.12.0.tar.gz'
Content type 'application/x-gzip' length 797813 bytes (779 KB)
==================================================
downloaded 779 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘ash’ ...
* DONE (ash)
* installing *binary* package ‘backports’ ...
...
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


```
### CRAN

```
checking for a sed that does not truncate output... /usr/bin/sed
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c kkuiper.cpp -o kkuiper.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c local_density.cpp -o local_density.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c medianAbsoluteDeviation.cpp -o medianAbsoluteDeviation.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c misc.cpp -o misc.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c rQuantile.cpp -o rQuantile.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c singleDip.cpp -o singleDip.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c tautstring.cpp -o tautstring.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c tsGates.cpp -o tsGates.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/CATALYST/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c unlockNamespace.c -o unlockNamespace.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o openCyto.so RcppExports.o cpPmden.o cppApprox.o cppdip.o dynamic_prog.o fill_SMAWK.o getTautStringApprox.o kMedDP.o kkuiper.o local_density.o medianAbsoluteDeviation.o misc.o rQuantile.o singleDip.o tautstring.o tsGates.o unlockNamespace.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/diffcyt_1.12.0.tar.gz'
Content type 'application/x-gzip' length 797813 bytes (779 KB)
==================================================
downloaded 779 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘ash’ ...
* DONE (ash)
* installing *binary* package ‘backports’ ...
...
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


```
# celda

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks.c -o ks.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o distr.so init.o ks.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Warning in packageDescription("distrEx") :
  no package 'distrEx' was found
Creating a new generic function for ‘qqplot’ in package ‘distr’
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/beachmat/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/dqrng/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/beachmat/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/dqrng/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c ModularityOptimizer.cpp -o ModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RModularityOptimizer.cpp -o RModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c data_manipulation.cpp -o data_manipulation.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c fast_NN_dist.cpp -o fast_NN_dist.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c integration.cpp -o integration.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c snn.cpp -o snn.o


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertive.base’ ...
* DONE (assertive.base)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
...
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:637:5:   [ skipping 3 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:879:31:   required from ‘static void Eigen::internal::Assignment<DstXprType, SrcXprType, Functor, Eigen::internal::Dense2Dense, Weak>::run(DstXprType&, const SrcXprType&, const Functor&) [with DstXprType = Eigen::Transpose<Eigen::Matrix<double, -1, 1> >; SrcXprType = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Functor = Eigen::internal::assign_op<double, double>; Weak = void]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:836:49:   required from ‘void Eigen::internal::call_assignment_no_alias(Dst&, const Src&, const Func&) [with Dst = Eigen::Matrix<double, -1, 1>; Src = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Func = Eigen::internal::assign_op<double, double>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:732:41:   required from ‘Derived& Eigen::PlainObjectBase<Derived>::_set_noalias(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Derived = Eigen::Matrix<double, -1, 1>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:537:7:   required from ‘Eigen::PlainObjectBase<Derived>::PlainObjectBase(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Derived = Eigen::Matrix<double, -1, 1>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; _Scalar = double; int _Rows = -1; int _Cols = 1; int _Options = 0; int _MaxRows = -1; int _MaxCols = 1]’
integration.cpp:77:58:   required from here
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


```
### CRAN

```
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks.c -o ks.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o distr.so init.o ks.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Warning in packageDescription("distrEx") :
  no package 'distrEx' was found
Creating a new generic function for ‘qqplot’ in package ‘distr’
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/beachmat/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/dqrng/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/beachmat/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/dqrng/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c ModularityOptimizer.cpp -o ModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RModularityOptimizer.cpp -o RModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c data_manipulation.cpp -o data_manipulation.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c fast_NN_dist.cpp -o fast_NN_dist.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c integration.cpp -o integration.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c snn.cpp -o snn.o


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertive.base’ ...
* DONE (assertive.base)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
...
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:637:5:   [ skipping 3 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:879:31:   required from ‘static void Eigen::internal::Assignment<DstXprType, SrcXprType, Functor, Eigen::internal::Dense2Dense, Weak>::run(DstXprType&, const SrcXprType&, const Functor&) [with DstXprType = Eigen::Transpose<Eigen::Matrix<double, -1, 1> >; SrcXprType = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Functor = Eigen::internal::assign_op<double, double>; Weak = void]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:836:49:   required from ‘void Eigen::internal::call_assignment_no_alias(Dst&, const Src&, const Func&) [with Dst = Eigen::Matrix<double, -1, 1>; Src = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Func = Eigen::internal::assign_op<double, double>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:732:41:   required from ‘Derived& Eigen::PlainObjectBase<Derived>::_set_noalias(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Derived = Eigen::Matrix<double, -1, 1>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:537:7:   required from ‘Eigen::PlainObjectBase<Derived>::PlainObjectBase(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; Derived = Eigen::Matrix<double, -1, 1>]’
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::PartialReduxExpr<Eigen::Matrix<double, -1, -1>, Eigen::internal::member_sum<double>, 0>; _Scalar = double; int _Rows = -1; int _Cols = 1; int _Options = 0; int _MaxRows = -1; int _MaxCols = 1]’
integration.cpp:77:58:   required from here
/c4/home/henrik/repositories/matrixStats/revdep/library/celda/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


```
# ChAMP

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (Gviz)


```
### CRAN

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/ChAMP/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (Gviz)


```
# ChIPpeakAnno

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hic.cpp -o hic.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o trackViewer.so RcppExports.o hic.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


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
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (trackViewer)

The downloaded source packages are in
	‘/scratch/henrik/RtmpC6kHdY/downloaded_packages’


```
### CRAN

```
configuring the BLOSC filter...
x86_CPU=true
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
...
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hic.cpp -o hic.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o trackViewer.so RcppExports.o hic.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


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
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (trackViewer)

The downloaded source packages are in
	‘/scratch/henrik/RtmpC6kHdY/downloaded_packages’


```
# clusterExperiment

<details>

* Version: 2.12.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 181

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.7Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   3.6Mb
        doc   10.4Mb
        libs   1.9Mb
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function calls to a different package:
      .C(ape::node_depth, ...)
      .C(ape::node_depth_edgelength, ...)
      .C(ape::node_height, ...)
      .C(ape::node_height_clado, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# MEAL

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c cJADE.cpp -o cJADE.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o JADE.so cJADE.o init.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
in method for ‘add_methy’ with signature ‘"MultiDataSet","GenomicRatioSet"’: no definition for class “GenomicRatioSet”
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c functions.cpp -o functions.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o SmartSVA.so RcppExports.o functions.o registerDynamicSymbol.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
* installing *source* package ‘missMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
### CRAN

```
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c cJADE.cpp -o cJADE.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o JADE.so cJADE.o init.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
in method for ‘add_methy’ with signature ‘"MultiDataSet","GenomicRatioSet"’: no definition for class “GenomicRatioSet”
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c functions.cpp -o functions.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/MEAL/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o SmartSVA.so RcppExports.o functions.o registerDynamicSymbol.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
* installing *source* package ‘missMethyl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
# methylationArrayAnalysis

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Warning: replacing previous import 'minfi::getMeth' by 'bsseq::getMeth' when loading 'DMRcate'
Warning: replacing previous import 'minfi::getMeth' by 'bsseq::getMeth' when loading 'DMRcate'


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
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


```
### CRAN

```
Warning: replacing previous import 'minfi::getMeth' by 'bsseq::getMeth' when loading 'DMRcate'
Warning: replacing previous import 'minfi::getMeth' by 'bsseq::getMeth' when loading 'DMRcate'


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
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


```
# RNAmodR

<details>

* Version: 1.6.0
* GitHub: https://github.com/FelixErnst/RNAmodR
* Source code: https://github.com/cran/RNAmodR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 190

Run `revdep_details(, "RNAmodR")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'BiocGenerics:::replaceSlots' 'Biostrings:::XString'
      'IRanges:::.valid.CompressedList' 'IRanges:::coerceToCompressedList'
      'S4Vectors:::.valid.DataFrame' 'S4Vectors:::labeledLine'
      'S4Vectors:::make_zero_col_DataFrame'
      'S4Vectors:::prepare_objects_to_bind'
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      '.get_inosine_score'
    ```

# RnBeads

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/matrixStats
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fopenmp -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fopenmp -fpic  -g -O2  -c omp_funcs.c -o omp_funcs.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o awsMethods.so init.o omp_funcs.o -fopenmp -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c ICIsmooth.f -o ICIsmooth.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c Rentries.c -o Rentries.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c awslp.f -o awslp.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c awswghts.f -o awswghts.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c caws.f -o caws.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c cawsmask.f -o cawsmask.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c esiglike.f -o esiglike.o
...
Creating a new generic function for 'geom_rect' in package 'ggbio'
Creating a new generic function for 'geom_segment' in package 'ggbio'
Creating a new generic function for 'geom_bar' in package 'ggbio'
Creating a new generic function for 'stat_identity' in package 'ggbio'
Creating a new generic function for 'stat_bin' in package 'ggbio'
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
Creating a generic function from function ‘as.methylumi’ in package ‘wateRmelon’


trying URL 'https://bioconductor.org/packages/3.13/data/experiment/src/contrib/RnBeads.hg19_1.24.0.tar.gz'
Content type 'application/x-gzip' length 104966594 bytes (100.1 MB)
==================================================
downloaded 100.1 MB

trying URL 'https://bioconductor.org/packages/3.13/data/experiment/src/contrib/RnBeads.mm9_1.24.0.tar.gz'
Content type 'application/x-gzip' length 98975244 bytes (94.4 MB)
==================================================
downloaded 94.4 MB

...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
### CRAN

```
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fopenmp -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fopenmp -fpic  -g -O2  -c omp_funcs.c -o omp_funcs.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o awsMethods.so init.o omp_funcs.o -fopenmp -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c ICIsmooth.f -o ICIsmooth.o
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c Rentries.c -o Rentries.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c awslp.f -o awslp.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c awswghts.f -o awswghts.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c caws.f -o caws.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c cawsmask.f -o cawsmask.o
gfortran -fno-optimize-sibling-calls -fopenmp -fpic  -g -O2  -c esiglike.f -o esiglike.o
...
Creating a new generic function for 'geom_rect' in package 'ggbio'
Creating a new generic function for 'geom_segment' in package 'ggbio'
Creating a new generic function for 'geom_bar' in package 'ggbio'
Creating a new generic function for 'stat_identity' in package 'ggbio'
Creating a new generic function for 'stat_bin' in package 'ggbio'
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
Creating a generic function from function ‘as.methylumi’ in package ‘wateRmelon’


trying URL 'https://bioconductor.org/packages/3.13/data/experiment/src/contrib/RnBeads.hg19_1.24.0.tar.gz'
Content type 'application/x-gzip' length 104966594 bytes (100.1 MB)
==================================================
downloaded 100.1 MB

trying URL 'https://bioconductor.org/packages/3.13/data/experiment/src/contrib/RnBeads.mm9_1.24.0.tar.gz'
Content type 'application/x-gzip' length 98975244 bytes (94.4 MB)
==================================================
downloaded 94.4 MB

...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
