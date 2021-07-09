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
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether we are using the GNU C++ compiler... yes
...
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o ks.so ks.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c count_neighbors.c -o count_neighbors.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o ggpointdensity.so count_neighbors.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c cumulative_prop.cpp -o cumulative_prop.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c downsample_counts.cpp -o downsample_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c fit_linear_model.cpp -o fit_linear_model.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o


trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/cytolib_2.4.0.tar.gz'
Content type 'application/x-gzip' length 5465755 bytes (5.2 MB)
==================================================
downloaded 5.2 MB

trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/CytoML_2.4.0.tar.gz'
Content type 'application/x-gzip' length 8274828 bytes (7.9 MB)
==================================================
downloaded 7.9 MB

...
* DONE (broom)
ERROR: dependencies ‘flowCore’, ‘ncdfFlow’, ‘flowWorkspace’ are not available for package ‘ggcyto’
* removing ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/ggcyto’
* installing *binary* package ‘rainbow’ ...
* DONE (rainbow)
* installing *binary* package ‘rio’ ...
* DONE (rio)
* installing *source* package ‘scuttle’ ...
** using staged installation
** libs


```
### CRAN

```
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether we are using the GNU C++ compiler... yes
...
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o ks.so ks.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c count_neighbors.c -o count_neighbors.o
gcc -shared -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -L/usr/local/lib64 -o ggpointdensity.so count_neighbors.o -L/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c cumulative_prop.cpp -o cumulative_prop.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c downsample_counts.cpp -o downsample_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c fit_linear_model.cpp -o fit_linear_model.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.0-gcc8/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/Rcpp/include' -I'/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o


trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/cytolib_2.4.0.tar.gz'
Content type 'application/x-gzip' length 5465755 bytes (5.2 MB)
==================================================
downloaded 5.2 MB

trying URL 'https://bioconductor.org/packages/3.13/bioc/src/contrib/CytoML_2.4.0.tar.gz'
Content type 'application/x-gzip' length 8274828 bytes (7.9 MB)
==================================================
downloaded 7.9 MB

...
* DONE (broom)
ERROR: dependencies ‘flowCore’, ‘ncdfFlow’, ‘flowWorkspace’ are not available for package ‘ggcyto’
* removing ‘/scratch/henrik/revdepcheck.extras/matrixStats/revdep/library/CATALYST/ggcyto’
* installing *binary* package ‘rainbow’ ...
* DONE (rainbow)
* installing *binary* package ‘rio’ ...
* DONE (rio)
* installing *source* package ‘scuttle’ ...
** using staged installation
** libs


```
