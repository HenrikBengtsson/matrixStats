# ChAMP

<details>

* Version: 2.16.1
* Source code: https://github.com/cran/ChAMP
* Date/Publication: 2019-12-16
* Number of recursive dependencies: 230

Run `revdep_details(,"ChAMP")` for more info

</details>

## In both

*   checking whether package ‘ChAMP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'minfi', 'ChAMPdata', 'FEM', 'DMRcate',
      'Illumina450ProbeVariants.db',
      'IlluminaHumanMethylationEPICmanifest', 'DT'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

## Installation

### Devel

```
* installing *source* package ‘ChAMP’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
In addition: Warning message:
multiple methods tables found for ‘splitAsList’ 
Execution halted
ERROR: lazy loading failed for package ‘ChAMP’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/new/ChAMP.Rcheck/ChAMP’

```
### CRAN

```
* installing *source* package ‘ChAMP’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/old/ChAMP.Rcheck/00_pkg_src/ChAMP: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error: package or namespace load failed for ‘bumphunter’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rsamtools’
Error: package ‘bumphunter’ could not be loaded
In addition: Warning message:
multiple methods tables found for ‘splitAsList’ 
Execution halted
ERROR: lazy loading failed for package ‘ChAMP’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/ChAMP/old/ChAMP.Rcheck/ChAMP’

```
# Chicago

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
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c attrutil.c -o attrutil.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c bit.c -o bit.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c chunkutil.c -o chunkutil.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c clone.c -o clone.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c rle.c -o rle.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o bit.so attrutil.o bit.o chunkutil.o clone.o init.o rle.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c assumptions.c -o assumptions.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c has.c -o has.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c nchar.c -o nchar.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c read.c -o read.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c rnchar.c -o rnchar.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c state.c -o state.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c strip.c -o strip.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c strsplit.c -o strsplit.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c tabs.c -o tabs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c tohtml.c -o tohtml.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c unhandled.c -o unhandled.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c unique.c -o unique.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c utils.c -o utils.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c wrap.c -o wrap.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o fansi.so assumptions.o has.o init.o nchar.o read.o rnchar.o state.o strip.o strsplit.o tabs.o tohtml.o unhandled.o unique.o utf8.o utils.o wrap.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c ColorSpace.cpp -o ColorSpace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Comparison.cpp -o Comparison.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Conversion.cpp -o Conversion.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c encode.cpp -o encode.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c farver.cpp -o farver.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.cpp -o init.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o farver.so ColorSpace.o Comparison.o Conversion.o encode.o farver.o init.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c R_systat.c -o R_systat.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Rdbfread.c -o Rdbfread.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Rdbfwrite.c -o Rdbfwrite.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c SASxport.c -o SASxport.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c avl.c -o avl.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c dbfopen.c -o dbfopen.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c file-handle.c -o file-handle.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c format.c -o format.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c minitab.c -o minitab.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c pfm-read.c -o pfm-read.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c sfm-read.c -o sfm-read.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c spss.c -o spss.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c stataread.c -o stataread.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o foreign.so R_systat.o Rdbfread.o Rdbfwrite.o SASxport.o avl.o dbfopen.o file-handle.o format.o init.o minitab.o pfm-read.o sfm-read.o spss.o stataread.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c collapse_array.c -o collapse_array.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c collapse_object.c -o collapse_object.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c collapse_pretty.c -o collapse_pretty.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c escape_chars.c -o escape_chars.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c integer64_to_na.c -o integer64_to_na.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c is_datelist.c -o is_datelist.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c is_recordlist.c -o is_recordlist.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c is_scalarlist.c -o is_scalarlist.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c modp_numtoa.c -o modp_numtoa.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c null_to_na.c -o null_to_na.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c num_to_char.c -o num_to_char.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c parse.c -o parse.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c prettify.c -o prettify.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c push_parser.c -o push_parser.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c r-base64.c -o r-base64.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c register.c -o register.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c row_collapse.c -o row_collapse.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c transpose_list.c -o transpose_list.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c validate.c -o validate.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl.c -o yajl/yajl.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_alloc.c -o yajl/yajl_alloc.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_buf.c -o yajl/yajl_buf.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_encode.c -o yajl/yajl_encode.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_gen.c -o yajl/yajl_gen.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_lex.c -o yajl/yajl_lex.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_parser.c -o yajl/yajl_parser.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -Iyajl/api  -I/usr/local/include -fvisibility=hidden  -fpic  -g -O2  -c yajl/yajl_tree.c -o yajl/yajl_tree.o
ar rcs yajl/libstatyajl.a yajl/yajl.o yajl/yajl_alloc.o yajl/yajl_buf.o yajl/yajl_encode.o yajl/yajl_gen.o yajl/yajl_lex.o yajl/yajl_parser.o yajl/yajl_tree.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o jsonlite.so base64.o collapse_array.o collapse_object.o collapse_pretty.o escape_chars.o integer64_to_na.o is_datelist.o is_recordlist.o is_scalarlist.o modp_numtoa.o null_to_na.o num_to_char.o parse.o prettify.o push_parser.o r-base64.o register.o row_collapse.o transpose_list.o validate.o -Lyajl -lstatyajl -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c rawmatch.c -o rawmatch.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o mime.so init.o rawmatch.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I./lib/  -I/usr/local/include  -fpic  -g -O2  -c capture.c -o capture.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I./lib/  -I/usr/local/include  -fpic  -g -O2  -c export.c -o export.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I./lib/  -I/usr/local/include  -fpic  -g -O2  -c internal.c -o internal.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I./lib/  -I/usr/local/include  -fpic  -g -O2  -c lib.c -o lib.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o rlang.so capture.o export.o internal.o lib.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
checking for R_HOME... /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R
checking for R... /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/R
checking for endianness... little
checking for R >= 3.1.0 for C++11 use... yes
checking for R < 3.4.0 for CXX1X flag use... no
checking for cat... /bin/cat
checking for local ICUDT_DIR... /wynton/home/cbi/hb/shared/apps/manual/icu-55
checking for gcc... gcc -std=gnu99
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking how to run the C preprocessor... gcc -std=gnu99 -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking elf.h usability... yes
checking elf.h presence... yes
checking for elf.h... yes
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
checking whether the C++ compiler supports the long long type... yes
checking whether the compiler implements namespaces... yes
checking whether the compiler supports Standard Template Library... yes
checking whether std::map is available... yes
checking for pkg-config... /bin/pkg-config
checking with pkg-config for the system ICU4C... 50.2
checking for ICU4C >= 55... no
*** ICU4C 50.2 has been detected
*** Minimal requirements, i.e., ICU4C >= 55, are not met
*** Trying with "standard" fallback flags
checking whether we may build an ICU4C-based project... yes
checking programmatically for sufficient U_ICU_VERSION_MAJOR_NUM... no
*** The available ICU4C cannot be used
checking whether we may compile src/icu61/common/putil.cpp... yes
checking whether we may compile src/icu61/i18n/number_affixutils.cpp... yes
checking whether we can fetch icudt... configure: creating ./config.status
config.status: creating src/Makevars
config.status: creating src/uconfig_local.h
config.status: creating src/install.libs.R

*** stringi configure summary:
    ICU_FOUND=0
    ICUDT_DIR=/wynton/home/cbi/hb/shared/apps/manual/icu-55
    ICU_BUNDLE_VERSION=61
    ICUDT_ENDIANNESS=little
    STRINGI_CXXSTD=CXX_STD=CXX11
    STRINGI_CFLAGS=   -fpic
    STRINGI_CPPFLAGS=-I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H
    STRINGI_CXXFLAGS=   -fpic
    STRINGI_LDFLAGS=  
    STRINGI_LIBS=  

*** compiler settings used:
    CC=gcc -std=gnu99
    LD=g++ -std=gnu++11
    CFLAGS=-g -O2 -fpic  
    CPPFLAGS=-I/usr/local/include   -UDEBUG -DNDEBUG
    CXX=g++ -std=gnu++11
    CXXFLAGS=-g -O2 -fpic  
    LDFLAGS=  
    LIBS=  

g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_brkiter.cpp -o stri_brkiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_collator.cpp -o stri_collator.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_common.cpp -o stri_common.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_compare.cpp -o stri_compare.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_base.cpp -o stri_container_base.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_bytesearch.cpp -o stri_container_bytesearch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_listint.cpp -o stri_container_listint.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_listraw.cpp -o stri_container_listraw.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_listutf8.cpp -o stri_container_listutf8.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_regex.cpp -o stri_container_regex.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_usearch.cpp -o stri_container_usearch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_utf16.cpp -o stri_container_utf16.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_utf8.cpp -o stri_container_utf8.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_container_utf8_indexable.cpp -o stri_container_utf8_indexable.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_encoding_conversion.cpp -o stri_encoding_conversion.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_encoding_detection.cpp -o stri_encoding_detection.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_encoding_management.cpp -o stri_encoding_management.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_escape.cpp -o stri_escape.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_exception.cpp -o stri_exception.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_ICU_settings.cpp -o stri_ICU_settings.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_join.cpp -o stri_join.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_length.cpp -o stri_length.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_pad.cpp -o stri_pad.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_prepare_arg.cpp -o stri_prepare_arg.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_random.cpp -o stri_random.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_reverse.cpp -o stri_reverse.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_count.cpp -o stri_search_class_count.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_detect.cpp -o stri_search_class_detect.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_extract.cpp -o stri_search_class_extract.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_locate.cpp -o stri_search_class_locate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_replace.cpp -o stri_search_class_replace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_split.cpp -o stri_search_class_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_startsendswith.cpp -o stri_search_class_startsendswith.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_subset.cpp -o stri_search_class_subset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_class_trim.cpp -o stri_search_class_trim.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_common.cpp -o stri_search_common.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_count.cpp -o stri_search_coll_count.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_detect.cpp -o stri_search_coll_detect.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_extract.cpp -o stri_search_coll_extract.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_locate.cpp -o stri_search_coll_locate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_replace.cpp -o stri_search_coll_replace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_split.cpp -o stri_search_coll_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_startsendswith.cpp -o stri_search_coll_startsendswith.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_coll_subset.cpp -o stri_search_coll_subset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_boundaries_count.cpp -o stri_search_boundaries_count.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_boundaries_extract.cpp -o stri_search_boundaries_extract.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_boundaries_locate.cpp -o stri_search_boundaries_locate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_boundaries_split.cpp -o stri_search_boundaries_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_count.cpp -o stri_search_fixed_count.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_detect.cpp -o stri_search_fixed_detect.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_extract.cpp -o stri_search_fixed_extract.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_locate.cpp -o stri_search_fixed_locate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_replace.cpp -o stri_search_fixed_replace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_split.cpp -o stri_search_fixed_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_subset.cpp -o stri_search_fixed_subset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_fixed_startsendswith.cpp -o stri_search_fixed_startsendswith.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_in.cpp -o stri_search_in.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_other_split.cpp -o stri_search_other_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_count.cpp -o stri_search_regex_count.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_detect.cpp -o stri_search_regex_detect.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_extract.cpp -o stri_search_regex_extract.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_locate.cpp -o stri_search_regex_locate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_match.cpp -o stri_search_regex_match.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_replace.cpp -o stri_search_regex_replace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_split.cpp -o stri_search_regex_split.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_search_regex_subset.cpp -o stri_search_regex_subset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_sort.cpp -o stri_sort.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_stats.cpp -o stri_stats.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_stringi.cpp -o stri_stringi.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_sub.cpp -o stri_sub.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_test.cpp -o stri_test.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_time_zone.cpp -o stri_time_zone.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_time_calendar.cpp -o stri_time_calendar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_time_symbols.cpp -o stri_time_symbols.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_time_format.cpp -o stri_time_format.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_trans_casemap.cpp -o stri_trans_casemap.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_trans_other.cpp -o stri_trans_other.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_trans_normalization.cpp -o stri_trans_normalization.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_trans_transliterate.cpp -o stri_trans_transliterate.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_ucnv.cpp -o stri_ucnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_uloc.cpp -o stri_uloc.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_utils.cpp -o stri_utils.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c stri_wrap.cpp -o stri_wrap.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/appendable.cpp -o icu61/common/appendable.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bmpset.cpp -o icu61/common/bmpset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/brkeng.cpp -o icu61/common/brkeng.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/brkiter.cpp -o icu61/common/brkiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bytesinkutil.cpp -o icu61/common/bytesinkutil.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bytestream.cpp -o icu61/common/bytestream.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bytestrie.cpp -o icu61/common/bytestrie.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bytestriebuilder.cpp -o icu61/common/bytestriebuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/bytestrieiterator.cpp -o icu61/common/bytestrieiterator.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/caniter.cpp -o icu61/common/caniter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/chariter.cpp -o icu61/common/chariter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/charstr.cpp -o icu61/common/charstr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/cmemory.cpp -o icu61/common/cmemory.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/cstr.cpp -o icu61/common/cstr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/cstring.cpp -o icu61/common/cstring.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/cwchar.cpp -o icu61/common/cwchar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/dictbe.cpp -o icu61/common/dictbe.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/dictionarydata.cpp -o icu61/common/dictionarydata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/dtintrv.cpp -o icu61/common/dtintrv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/edits.cpp -o icu61/common/edits.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/errorcode.cpp -o icu61/common/errorcode.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/filteredbrk.cpp -o icu61/common/filteredbrk.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/filterednormalizer2.cpp -o icu61/common/filterednormalizer2.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/icudataver.cpp -o icu61/common/icudataver.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/icuplug.cpp -o icu61/common/icuplug.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/listformatter.cpp -o icu61/common/listformatter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/loadednormalizer2impl.cpp -o icu61/common/loadednormalizer2impl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locavailable.cpp -o icu61/common/locavailable.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locbased.cpp -o icu61/common/locbased.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locdispnames.cpp -o icu61/common/locdispnames.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locdspnm.cpp -o icu61/common/locdspnm.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locid.cpp -o icu61/common/locid.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/loclikely.cpp -o icu61/common/loclikely.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locmap.cpp -o icu61/common/locmap.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locresdata.cpp -o icu61/common/locresdata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/locutil.cpp -o icu61/common/locutil.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/messagepattern.cpp -o icu61/common/messagepattern.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/normalizer2.cpp -o icu61/common/normalizer2.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/normalizer2impl.cpp -o icu61/common/normalizer2impl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/normlzr.cpp -o icu61/common/normlzr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/parsepos.cpp -o icu61/common/parsepos.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/patternprops.cpp -o icu61/common/patternprops.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/pluralmap.cpp -o icu61/common/pluralmap.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/propname.cpp -o icu61/common/propname.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/propsvec.cpp -o icu61/common/propsvec.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/punycode.cpp -o icu61/common/punycode.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/putil.cpp -o icu61/common/putil.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbi_cache.cpp -o icu61/common/rbbi_cache.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbi.cpp -o icu61/common/rbbi.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbidata.cpp -o icu61/common/rbbidata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbinode.cpp -o icu61/common/rbbinode.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbirb.cpp -o icu61/common/rbbirb.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbiscan.cpp -o icu61/common/rbbiscan.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbisetb.cpp -o icu61/common/rbbisetb.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbistbl.cpp -o icu61/common/rbbistbl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/rbbitblb.cpp -o icu61/common/rbbitblb.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/resbund_cnv.cpp -o icu61/common/resbund_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/resbund.cpp -o icu61/common/resbund.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/resource.cpp -o icu61/common/resource.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ruleiter.cpp -o icu61/common/ruleiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/schriter.cpp -o icu61/common/schriter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/serv.cpp -o icu61/common/serv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servlk.cpp -o icu61/common/servlk.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servlkf.cpp -o icu61/common/servlkf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servls.cpp -o icu61/common/servls.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servnotf.cpp -o icu61/common/servnotf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servrbf.cpp -o icu61/common/servrbf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/servslkf.cpp -o icu61/common/servslkf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/sharedobject.cpp -o icu61/common/sharedobject.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/simpleformatter.cpp -o icu61/common/simpleformatter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/stringpiece.cpp -o icu61/common/stringpiece.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/stringtriebuilder.cpp -o icu61/common/stringtriebuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uarrsort.cpp -o icu61/common/uarrsort.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubidi_props.cpp -o icu61/common/ubidi_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubidi.cpp -o icu61/common/ubidi.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubidiln.cpp -o icu61/common/ubidiln.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubiditransform.cpp -o icu61/common/ubiditransform.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubidiwrt.cpp -o icu61/common/ubidiwrt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ubrk.cpp -o icu61/common/ubrk.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucase.cpp -o icu61/common/ucase.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucasemap_titlecase_brkiter.cpp -o icu61/common/ucasemap_titlecase_brkiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucasemap.cpp -o icu61/common/ucasemap.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucat.cpp -o icu61/common/ucat.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uchar.cpp -o icu61/common/uchar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucharstrie.cpp -o icu61/common/ucharstrie.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucharstriebuilder.cpp -o icu61/common/ucharstriebuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucharstrieiterator.cpp -o icu61/common/ucharstrieiterator.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uchriter.cpp -o icu61/common/uchriter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucln_cmn.cpp -o icu61/common/ucln_cmn.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucmndata.cpp -o icu61/common/ucmndata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_bld.cpp -o icu61/common/ucnv_bld.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_cb.cpp -o icu61/common/ucnv_cb.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_cnv.cpp -o icu61/common/ucnv_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_ct.cpp -o icu61/common/ucnv_ct.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_err.cpp -o icu61/common/ucnv_err.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_ext.cpp -o icu61/common/ucnv_ext.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_io.cpp -o icu61/common/ucnv_io.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_lmb.cpp -o icu61/common/ucnv_lmb.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_set.cpp -o icu61/common/ucnv_set.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_u16.cpp -o icu61/common/ucnv_u16.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_u32.cpp -o icu61/common/ucnv_u32.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_u7.cpp -o icu61/common/ucnv_u7.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv_u8.cpp -o icu61/common/ucnv_u8.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv.cpp -o icu61/common/ucnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnv2022.cpp -o icu61/common/ucnv2022.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvbocu.cpp -o icu61/common/ucnvbocu.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvdisp.cpp -o icu61/common/ucnvdisp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvhz.cpp -o icu61/common/ucnvhz.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvisci.cpp -o icu61/common/ucnvisci.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvlat1.cpp -o icu61/common/ucnvlat1.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvmbcs.cpp -o icu61/common/ucnvmbcs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvscsu.cpp -o icu61/common/ucnvscsu.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucnvsel.cpp -o icu61/common/ucnvsel.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucol_swp.cpp -o icu61/common/ucol_swp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ucurr.cpp -o icu61/common/ucurr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/udata.cpp -o icu61/common/udata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/udatamem.cpp -o icu61/common/udatamem.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/udataswp.cpp -o icu61/common/udataswp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uenum.cpp -o icu61/common/uenum.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uhash_us.cpp -o icu61/common/uhash_us.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uhash.cpp -o icu61/common/uhash.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uidna.cpp -o icu61/common/uidna.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uinit.cpp -o icu61/common/uinit.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uinvchar.cpp -o icu61/common/uinvchar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uiter.cpp -o icu61/common/uiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ulist.cpp -o icu61/common/ulist.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ulistformatter.cpp -o icu61/common/ulistformatter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uloc_keytype.cpp -o icu61/common/uloc_keytype.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uloc_tag.cpp -o icu61/common/uloc_tag.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uloc.cpp -o icu61/common/uloc.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/umapfile.cpp -o icu61/common/umapfile.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/umath.cpp -o icu61/common/umath.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/umutex.cpp -o icu61/common/umutex.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unames.cpp -o icu61/common/unames.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unifiedcache.cpp -o icu61/common/unifiedcache.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unifilt.cpp -o icu61/common/unifilt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unifunct.cpp -o icu61/common/unifunct.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uniset_closure.cpp -o icu61/common/uniset_closure.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uniset_props.cpp -o icu61/common/uniset_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uniset.cpp -o icu61/common/uniset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unisetspan.cpp -o icu61/common/unisetspan.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr_case_locale.cpp -o icu61/common/unistr_case_locale.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr_case.cpp -o icu61/common/unistr_case.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr_cnv.cpp -o icu61/common/unistr_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr_props.cpp -o icu61/common/unistr_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr_titlecase_brkiter.cpp -o icu61/common/unistr_titlecase_brkiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unistr.cpp -o icu61/common/unistr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unorm.cpp -o icu61/common/unorm.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/unormcmp.cpp -o icu61/common/unormcmp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uobject.cpp -o icu61/common/uobject.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uprops.cpp -o icu61/common/uprops.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ures_cnv.cpp -o icu61/common/ures_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uresbund.cpp -o icu61/common/uresbund.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uresdata.cpp -o icu61/common/uresdata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/usc_impl.cpp -o icu61/common/usc_impl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uscript_props.cpp -o icu61/common/uscript_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uscript.cpp -o icu61/common/uscript.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uset_props.cpp -o icu61/common/uset_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uset.cpp -o icu61/common/uset.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/usetiter.cpp -o icu61/common/usetiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ushape.cpp -o icu61/common/ushape.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/usprep.cpp -o icu61/common/usprep.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustack.cpp -o icu61/common/ustack.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustr_cnv.cpp -o icu61/common/ustr_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustr_titlecase_brkiter.cpp -o icu61/common/ustr_titlecase_brkiter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustr_wcs.cpp -o icu61/common/ustr_wcs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustrcase_locale.cpp -o icu61/common/ustrcase_locale.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustrcase.cpp -o icu61/common/ustrcase.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustrenum.cpp -o icu61/common/ustrenum.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustrfmt.cpp -o icu61/common/ustrfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustring.cpp -o icu61/common/ustring.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/ustrtrns.cpp -o icu61/common/ustrtrns.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utext.cpp -o icu61/common/utext.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utf_impl.cpp -o icu61/common/utf_impl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/util_props.cpp -o icu61/common/util_props.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/util.cpp -o icu61/common/util.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utrace.cpp -o icu61/common/utrace.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utrie.cpp -o icu61/common/utrie.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utrie2_builder.cpp -o icu61/common/utrie2_builder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utrie2.cpp -o icu61/common/utrie2.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uts46.cpp -o icu61/common/uts46.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/utypes.cpp -o icu61/common/utypes.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uvector.cpp -o icu61/common/uvector.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uvectr32.cpp -o icu61/common/uvectr32.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/uvectr64.cpp -o icu61/common/uvectr64.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/common/wintz.cpp -o icu61/common/wintz.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/affixpatternparser.cpp -o icu61/i18n/affixpatternparser.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/alphaindex.cpp -o icu61/i18n/alphaindex.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/anytrans.cpp -o icu61/i18n/anytrans.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/astro.cpp -o icu61/i18n/astro.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/basictz.cpp -o icu61/i18n/basictz.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/bocsu.cpp -o icu61/i18n/bocsu.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/brktrans.cpp -o icu61/i18n/brktrans.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/buddhcal.cpp -o icu61/i18n/buddhcal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/calendar.cpp -o icu61/i18n/calendar.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/casetrn.cpp -o icu61/i18n/casetrn.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/cecal.cpp -o icu61/i18n/cecal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/chnsecal.cpp -o icu61/i18n/chnsecal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/choicfmt.cpp -o icu61/i18n/choicfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/coleitr.cpp -o icu61/i18n/coleitr.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/coll.cpp -o icu61/i18n/coll.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collation.cpp -o icu61/i18n/collation.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationbuilder.cpp -o icu61/i18n/collationbuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationcompare.cpp -o icu61/i18n/collationcompare.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationdata.cpp -o icu61/i18n/collationdata.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationdatabuilder.cpp -o icu61/i18n/collationdatabuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationdatareader.cpp -o icu61/i18n/collationdatareader.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationdatawriter.cpp -o icu61/i18n/collationdatawriter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationfastlatin.cpp -o icu61/i18n/collationfastlatin.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationfastlatinbuilder.cpp -o icu61/i18n/collationfastlatinbuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationfcd.cpp -o icu61/i18n/collationfcd.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationiterator.cpp -o icu61/i18n/collationiterator.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationkeys.cpp -o icu61/i18n/collationkeys.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationroot.cpp -o icu61/i18n/collationroot.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationrootelements.cpp -o icu61/i18n/collationrootelements.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationruleparser.cpp -o icu61/i18n/collationruleparser.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationsets.cpp -o icu61/i18n/collationsets.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationsettings.cpp -o icu61/i18n/collationsettings.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationtailoring.cpp -o icu61/i18n/collationtailoring.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/collationweights.cpp -o icu61/i18n/collationweights.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/compactdecimalformat.cpp -o icu61/i18n/compactdecimalformat.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/coptccal.cpp -o icu61/i18n/coptccal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/cpdtrans.cpp -o icu61/i18n/cpdtrans.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csdetect.cpp -o icu61/i18n/csdetect.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csmatch.cpp -o icu61/i18n/csmatch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csr2022.cpp -o icu61/i18n/csr2022.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csrecog.cpp -o icu61/i18n/csrecog.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csrmbcs.cpp -o icu61/i18n/csrmbcs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csrsbcs.cpp -o icu61/i18n/csrsbcs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csrucode.cpp -o icu61/i18n/csrucode.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/csrutf8.cpp -o icu61/i18n/csrutf8.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/curramt.cpp -o icu61/i18n/curramt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/currfmt.cpp -o icu61/i18n/currfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/currpinf.cpp -o icu61/i18n/currpinf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/currunit.cpp -o icu61/i18n/currunit.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dangical.cpp -o icu61/i18n/dangical.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/datefmt.cpp -o icu61/i18n/datefmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dayperiodrules.cpp -o icu61/i18n/dayperiodrules.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dcfmtsym.cpp -o icu61/i18n/dcfmtsym.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decContext.cpp -o icu61/i18n/decContext.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decfmtst.cpp -o icu61/i18n/decfmtst.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decimalformatpattern.cpp -o icu61/i18n/decimalformatpattern.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decimfmt.cpp -o icu61/i18n/decimfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decimfmtimpl.cpp -o icu61/i18n/decimfmtimpl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/decNumber.cpp -o icu61/i18n/decNumber.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitaffix.cpp -o icu61/i18n/digitaffix.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitaffixesandpadding.cpp -o icu61/i18n/digitaffixesandpadding.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitformatter.cpp -o icu61/i18n/digitformatter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitgrouping.cpp -o icu61/i18n/digitgrouping.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitinterval.cpp -o icu61/i18n/digitinterval.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/digitlst.cpp -o icu61/i18n/digitlst.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion-bignum-dtoa.cpp -o icu61/i18n/double-conversion-bignum-dtoa.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion-bignum.cpp -o icu61/i18n/double-conversion-bignum.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion-cached-powers.cpp -o icu61/i18n/double-conversion-cached-powers.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion-diy-fp.cpp -o icu61/i18n/double-conversion-diy-fp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion-fast-dtoa.cpp -o icu61/i18n/double-conversion-fast-dtoa.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/double-conversion.cpp -o icu61/i18n/double-conversion.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dtfmtsym.cpp -o icu61/i18n/dtfmtsym.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dtitvfmt.cpp -o icu61/i18n/dtitvfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dtitvinf.cpp -o icu61/i18n/dtitvinf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dtptngen.cpp -o icu61/i18n/dtptngen.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/dtrule.cpp -o icu61/i18n/dtrule.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/esctrn.cpp -o icu61/i18n/esctrn.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/ethpccal.cpp -o icu61/i18n/ethpccal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/fmtable_cnv.cpp -o icu61/i18n/fmtable_cnv.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/fmtable.cpp -o icu61/i18n/fmtable.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/format.cpp -o icu61/i18n/format.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/fphdlimp.cpp -o icu61/i18n/fphdlimp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/fpositer.cpp -o icu61/i18n/fpositer.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/funcrepl.cpp -o icu61/i18n/funcrepl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/gender.cpp -o icu61/i18n/gender.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/gregocal.cpp -o icu61/i18n/gregocal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/gregoimp.cpp -o icu61/i18n/gregoimp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/hebrwcal.cpp -o icu61/i18n/hebrwcal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/indiancal.cpp -o icu61/i18n/indiancal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/inputext.cpp -o icu61/i18n/inputext.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/islamcal.cpp -o icu61/i18n/islamcal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/japancal.cpp -o icu61/i18n/japancal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/measfmt.cpp -o icu61/i18n/measfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/measunit.cpp -o icu61/i18n/measunit.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/measure.cpp -o icu61/i18n/measure.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/msgfmt.cpp -o icu61/i18n/msgfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/name2uni.cpp -o icu61/i18n/name2uni.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nfrs.cpp -o icu61/i18n/nfrs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nfrule.cpp -o icu61/i18n/nfrule.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nfsubs.cpp -o icu61/i18n/nfsubs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nortrans.cpp -o icu61/i18n/nortrans.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nounit.cpp -o icu61/i18n/nounit.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/nultrans.cpp -o icu61/i18n/nultrans.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_affixutils.cpp -o icu61/i18n/number_affixutils.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_compact.cpp -o icu61/i18n/number_compact.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_decimalquantity.cpp -o icu61/i18n/number_decimalquantity.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_decimfmtprops.cpp -o icu61/i18n/number_decimfmtprops.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_fluent.cpp -o icu61/i18n/number_fluent.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_formatimpl.cpp -o icu61/i18n/number_formatimpl.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_grouping.cpp -o icu61/i18n/number_grouping.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_integerwidth.cpp -o icu61/i18n/number_integerwidth.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_longnames.cpp -o icu61/i18n/number_longnames.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_modifiers.cpp -o icu61/i18n/number_modifiers.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_notation.cpp -o icu61/i18n/number_notation.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_padding.cpp -o icu61/i18n/number_padding.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_patternmodifier.cpp -o icu61/i18n/number_patternmodifier.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_patternstring.cpp -o icu61/i18n/number_patternstring.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_rounding.cpp -o icu61/i18n/number_rounding.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_scientific.cpp -o icu61/i18n/number_scientific.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/number_stringbuilder.cpp -o icu61/i18n/number_stringbuilder.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/numfmt.cpp -o icu61/i18n/numfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/numsys.cpp -o icu61/i18n/numsys.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/olsontz.cpp -o icu61/i18n/olsontz.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/persncal.cpp -o icu61/i18n/persncal.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/pluralaffix.cpp -o icu61/i18n/pluralaffix.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/plurfmt.cpp -o icu61/i18n/plurfmt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/plurrule.cpp -o icu61/i18n/plurrule.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/precision.cpp -o icu61/i18n/precision.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/quant.cpp -o icu61/i18n/quant.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/quantityformatter.cpp -o icu61/i18n/quantityformatter.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbnf.cpp -o icu61/i18n/rbnf.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbt_data.cpp -o icu61/i18n/rbt_data.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbt_pars.cpp -o icu61/i18n/rbt_pars.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbt_rule.cpp -o icu61/i18n/rbt_rule.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbt_set.cpp -o icu61/i18n/rbt_set.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbt.cpp -o icu61/i18n/rbt.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -I. -Iicu61       -Iicu61/unicode -Iicu61/common       -Iicu61/i18n -DU_STATIC_IMPLEMENTATION       -DU_COMMON_IMPLEMENTATION -DU_I18N_IMPLEMENTATION -DUCONFIG_USE_LOCAL   -UDEBUG -DNDEBUG -DU_HAVE_ELF_H  -I/usr/local/include -fpic -fpic  -g -O2  -c icu61/i18n/rbtz.cpp -o icu61/i18n/rbtz.o


* installing *binary* package ‘acepack’ ...
* DONE (acepack)
* installing *source* package ‘argparser’ ...
** package ‘argparser’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (argparser)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *source* package ‘BH’ ...
** package ‘BH’ successfully unpacked and MD5 sums checked
** using staged installation
** inst
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BH)
* installing *binary* package ‘BiocGenerics’ ...
* DONE (BiocGenerics)
* installing *binary* package ‘BiocManager’ ...
* DONE (BiocManager)
* installing *source* package ‘BiocVersion’ ...
** using staged installation
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (BiocVersion)
* installing *source* package ‘bit’ ...
** package ‘bit’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-bit/00new/bit/libs
** R
** exec
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
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
* installing *binary* package ‘Delaporte’ ...
* DONE (Delaporte)
* installing *binary* package ‘dichromat’ ...
* DONE (dichromat)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *source* package ‘fansi’ ...
** package ‘fansi’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-fansi/00new/fansi/libs
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
* DONE (fansi)
* installing *source* package ‘farver’ ...
** package ‘farver’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-farver/00new/farver/libs
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (farver)
* installing *binary* package ‘fastmap’ ...
* DONE (fastmap)
* installing *source* package ‘foreign’ ...
** package ‘foreign’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-foreign/00new/foreign/libs
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
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘jpeg’ ...
* DONE (jpeg)
* installing *source* package ‘jsonlite’ ...
** package ‘jsonlite’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-jsonlite/00new/jsonlite/libs
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
* DONE (jsonlite)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *source* package ‘mime’ ...
** package ‘mime’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-mime/00new/mime/libs
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (mime)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
ERROR: dependency ‘Chicago’ is not available for package ‘PCHiCdata’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/PCHiCdata’
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *source* package ‘prettyunits’ ...
** package ‘prettyunits’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (prettyunits)
* installing *binary* package ‘ProtGenerics’ ...
* DONE (ProtGenerics)
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
* installing *source* package ‘rlang’ ...
** package ‘rlang’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/Chicago/00LOCK-rlang/00new/rlang/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *source* package ‘rstudioapi’ ...
** package ‘rstudioapi’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (rstudioapi)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘sourcetools’ ...
* DONE (sourcetools)
* installing *source* package ‘stringi’ ...
** package ‘stringi’ successfully unpacked and MD5 sums checked
** using staged installation
icudt already downloaded
** libs


```
### CRAN

```
* using log directory ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck’
* using R version 3.6.2 (2019-12-12)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Chicago/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Chicago’ version ‘1.14.0’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
Packages suggested but not available for checking: 'PCHiCdata', 'Rsamtools'
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .BBSoptions
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘Chicago’ can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking ‘build’ directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... OK
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd cross-references ... WARNING
Unknown package ‘PCHiCdata’ in Rd xrefs
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... ERROR
Running examples in ‘Chicago-Ex.R’ failed
The error most likely occurred in:

> ### Name: exportResults
> ### Title: Export Results
> ### Aliases: exportResults exportToGI
> 
> ### ** Examples
> 
> data(cdUnitTest)
> 
> ##modifications to cdUnitTest, ensuring it uses correct design directory
> designDir <- file.path(system.file("extdata", package="Chicago"), "unitTestDesign")
> cdUnitTest <- modifySettings(cd=cdUnitTest, designDir=designDir)
Warning: settings are not checked for consistency with the original ones.
Locating <baitmapfile>.baitmap in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/Chicago/extdata/unitTestDesign...
Found unitTest.baitmap
Locating <rmapfile>.rmap in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/Chicago/extdata/unitTestDesign...
Found unitTest.rmap
Locating <nperbinfile>.npb in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/Chicago/extdata/unitTestDesign...
Found unitTest.npb
Locating <nbaitsperbinfile>.nbpb in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/Chicago/extdata/unitTestDesign...
Found unitTest.nbpb
Locating <proxOEfile>.poe in /wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/Chicago/extdata/unitTestDesign...
Found unitTest.poe
Checking the design files...
Reading the settings from NPB file header...
> 
> ##create a temporary directory, export output there
> tempDirectory <- tempdir()
> print(tempDirectory)
[1] "/scratch/191442.1.long.q/RtmpqbsP9F"
> exportResults(cdUnitTest, outfileprefix = file.path(tempDirectory, "unitTestOutput"))
Reading the restriction map file...
Reading the bait map file...
Preparing the output table...
Writing out for seqMonk...
Writing out interBed...
Preprocessing for WashU outputs...
Writing out text file for WashU browser upload...
> 
> GI <- exportToGI(cdUnitTest)
Reading the restriction map file...
Reading the bait map file...
Preparing the output table...
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Rsamtools’
Calls: exportToGI ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...
 OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ...
  ‘Chicago.Rmd’... OK
 NONE
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs




.Rprofile error [/scratch/191442.1.long.q/RtmpPGMCLq/file6df85127cb18: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-restore --slave --args nextArgChicago_1.14.0.tar.gznextArg--no-manualnextArg--no-build-vignettesnextArg-onextArg/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old]: there is no package called ‘startup’
  Running ‘testthat.R’

See
  ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/Chicago/old/Chicago.Rcheck/00check.log’
for details.





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
Creating a new generic function for ‘explode’ in package ‘grImport’
cd "htslib-1.7" && make -f "/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf" -f "Makefile.Rhtslib"
make[1]: Entering directory `/scratch/209540.1.long.q/RtmpbHONr6/R.INSTALL23d762a62e4d0/Rhtslib/src/htslib-1.7'
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o kfunc.o kfunc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o knetfile.o knetfile.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o kstring.o kstring.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o bcf_sr_sort.o bcf_sr_sort.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o bgzf.o bgzf.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o errmod.o errmod.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o faidx.o faidx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile.o hfile.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile_net.o hfile_net.c
echo '#define HTS_VERSION "1.7"' > version.h
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hts.o hts.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hts_os.o hts_os.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o md5.o md5.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o multipart.o multipart.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o probaln.o probaln.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o realn.o realn.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o regidx.o regidx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o sam.o sam.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o synced_bcf_reader.o synced_bcf_reader.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcf_sweep.o vcf_sweep.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o tbx.o tbx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o textutils.o textutils.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o thread_pool.o thread_pool.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcf.o vcf.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcfutils.o vcfutils.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_codecs.o cram/cram_codecs.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_decode.o cram/cram_decode.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_encode.o cram/cram_encode.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_external.o cram/cram_external.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_index.o cram/cram_index.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_io.o cram/cram_io.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_samtools.o cram/cram_samtools.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_stats.o cram/cram_stats.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/files.o cram/files.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/mFILE.o cram/mFILE.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/open_trace_file.o cram/open_trace_file.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/pooled_alloc.o cram/pooled_alloc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/rANS_static.o cram/rANS_static.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/sam_header.o cram/sam_header.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/string_alloc.o cram/string_alloc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile_libcurl.o hfile_libcurl.c
make[1]: Leaving directory `/scratch/209540.1.long.q/RtmpbHONr6/R.INSTALL23d762a62e4d0/Rhtslib/src/htslib-1.7'
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c alignment.c -o alignment.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c fastacc.c -o fastacc.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c getzlibsock.c -o getzlibsock.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c kaks.c -o kaks.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c packagename_init.c -o packagename_init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c util.c -o util.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c zsockr.c -o zsockr.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o seqinr.so alignment.o fastacc.o getzlibsock.o kaks.o packagename_init.o util.o zsockr.o -lz -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c Biostrings_stubs.c -o Biostrings_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c COMPAT_bcf_hdr_read.c -o COMPAT_bcf_hdr_read.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c PileupBuffer.cpp -o PileupBuffer.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c PosCacheColl.cpp -o PosCacheColl.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c R_init_Rsamtools.c -o R_init_Rsamtools.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c ResultManager.cpp -o ResultManager.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c as_bam.c -o as_bam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam.c -o bam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_data.c -o bam_data.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_mate_iter.cpp -o bam_mate_iter.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_plbuf.c -o bam_plbuf.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_sort.c -o bam_sort.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bambuffer.c -o bambuffer.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bamfile.c -o bamfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bcffile.c -o bcffile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c encode.c -o encode.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c fafile.c -o fafile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c idxstats.c -o idxstats.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c io_sam.c -o io_sam.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pbuffer_wrapper.cpp -o pbuffer_wrapper.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pileup.cpp -o pileup.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pileupbam.c -o pileupbam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam.c -o sam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam_opts.c -o sam_opts.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam_utils.c -o sam_utils.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c samtools_patch.c -o samtools_patch.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c scan_bam_data.c -o scan_bam_data.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c tabixfile.c -o tabixfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c tagfilter.c -o tagfilter.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c zip_compression.c -o zip_compression.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o Rsamtools.so Biostrings_stubs.o COMPAT_bcf_hdr_read.o IRanges_stubs.o PileupBuffer.o PosCacheColl.o R_init_Rsamtools.o ResultManager.o S4Vectors_stubs.o XVector_stubs.o as_bam.o bam.o bam_data.o bam_mate_iter.o bam_plbuf.o bam_sort.o bambuffer.o bamfile.o bcffile.o encode.o fafile.o idxstats.o io_sam.o pbuffer_wrapper.o pileup.o pileupbam.o sam.o sam_opts.o sam_utils.o samtools_patch.o scan_bam_data.o tabixfile.o tagfilter.o utilities.o zip_compression.o /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/usrlib/libhts.a -lcurl -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
checking for gcc... gcc -std=gnu99
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking how to run the C preprocessor... gcc -std=gnu99 -E
checking for gcc -std=gnu99 option to support OpenMP... -fopenmp
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dispatch/dispatch.h usability... no
checking dispatch/dispatch.h presence... no
checking for dispatch/dispatch.h... no
checking whether OpenMP will work in a package... yes
configure: creating ./config.status
config.status: creating src/Makevars
config.status: creating src/config.h
config.status: src/config.h is unchanged
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c Gadem_Analysis.c -o Gadem_Analysis.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c align_sites.c -o align_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c alloc.c -o alloc.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c background.c -o background.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c base_frequency.c -o base_frequency.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c check_convergence.c -o check_convergence.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c check_pwm_dist.c -o check_pwm_dist.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c consensus.c -o consensus.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c construct_pwm.c -o construct_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c copy_pwm.c -o copy_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c crossover.c -o crossover.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c effect_seq_len.c -o effect_seq_len.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c evalue_meme.c -o evalue_meme.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c extend_alignment.c -o extend_alignment.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c initial_population.c -o initial_population.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c mask_sites.c -o mask_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c mutation.c -o mutation.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c normalization.c -o normalization.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c output.c -o output.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c pwm_score_distr.c -o pwm_score_distr.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_matrix.c -o read_matrix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_pwm0.c -o read_pwm0.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_seq.c -o read_seq.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c reverse_seq.c -o reverse_seq.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c sample_wo_replacement.c -o sample_wo_replacement.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c scan_sites.c -o scan_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c score_subsequence.c -o score_subsequence.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c selection.c -o selection.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c sort.c -o sort.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c top_kmers.c -o top_kmers.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c transform_pwm.c -o transform_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c weights.c -o weights.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o rGADEM.so Gadem_Analysis.o align_sites.o alloc.o background.o base_frequency.o check_convergence.o check_pwm_dist.o consensus.o construct_pwm.o copy_pwm.o crossover.o effect_seq_len.o evalue_meme.o extend_alignment.o initial_population.o mask_sites.o mutation.o normalization.o output.o pwm_score_distr.o read_matrix.o read_pwm0.o read_seq.o reverse_seq.o sample_wo_replacement.o scan_sites.o score_subsequence.o selection.o sort.o top_kmers.o transform_pwm.o weights.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
checking for gcc... gcc -std=gnu99
checking for C compiler default output file name... a.out
checking whether the C compiler works... yes
checking whether we are cross compiling... no
checking for suffix of executables... 
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking for gsl-config... /wynton/home/cbi/shared/software/CBI/gsl-2.6/bin/gsl-config
checking for GSL - version >= 1.6... yes
configure: creating ./config.status
config.status: creating src/Makevars
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Alignment.cpp -o Alignment.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c ColumnComp.cpp -o ColumnComp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c DeclareAll.cpp -o DeclareAll.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Motif.cpp -o Motif.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c MotifDistances.cpp -o MotifDistances.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c MotifMatch.cpp -o MotifMatch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c PlatformSupport.cpp -o PlatformSupport.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c RandPSSMGen.cpp -o RandPSSMGen.o
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c Biostrings_stubs.c -o Biostrings_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c R_init_VariantAnnotation.c -o R_init_VariantAnnotation.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c rle.c -o rle.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/usrlib/libhts.a -lcurl -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’


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
* installing *binary* package ‘farver’ ...
* DONE (farver)
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
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘ProtGenerics’ ...
* DONE (ProtGenerics)
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
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘segmented’ ...
* DONE (segmented)
* installing *source* package ‘seqLogo’ ...
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
* installing *source* package ‘grImport’ ...
** package ‘grImport’ successfully unpacked and MD5 sums checked
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
* DONE (grImport)
* installing *source* package ‘grImport2’ ...
** package ‘grImport2’ successfully unpacked and MD5 sums checked
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
* DONE (grImport2)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *source* package ‘Rhtslib’ ...
** using non-staged installation via StagedInstall field
** libs
Makefile.Rhtslib:128: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf:168: warning: ignoring old recipe for target `.c.o'
hfile_libcurl.c:45:23: fatal error: curl/curl.h: No such file or directory
 #include <curl/curl.h>
                       ^
compilation terminated.
make[1]: *** [hfile_libcurl.o] Error 1
make: *** [htslib] Error 2
ERROR: compilation failed for package ‘Rhtslib’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib’
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
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
* installing *source* package ‘seqinr’ ...
** package ‘seqinr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-seqinr/00new/seqinr/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (seqinr)
* installing *binary* package ‘survival’ ...
* DONE (survival)
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
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
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
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
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
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *source* package ‘Rsamtools’ ...
** using staged installation
** libs
In file included from bam_mate_iter.cpp:2:0:
BamRangeIterator.h: In member function ‘virtual void BamRangeIterator::finalize_inprogress(bamFile)’:
BamRangeIterator.h:138:39: warning: ignoring return value of ‘int64_t bgzf_seek(BGZF*, int64_t, int)’, declared with attribute warn_unused_result [-Wunused-result]
         bam_seek(bfile, pos, SEEK_SET);
                                       ^
In file included from BamRangeIterator.h:7:0,
                 from bam_mate_iter.cpp:2:
BamIterator.h: In constructor ‘BamIterator::BamIterator(bamFile, const bam_index_t*)’:
BamIterator.h:87:30: warning: ignoring return value of ‘int64_t bgzf_seek(BGZF*, int64_t, int)’, declared with attribute warn_unused_result [-Wunused-result]
         bam_seek(bfile, 0, 0);
                              ^
bamfile.c: In function ‘bamfile_isincomplete’:
bamfile.c:168:22: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
             bgzf_seek(bfile->file->x.bam, offset, SEEK_SET);
                      ^
In file included from /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/sam.h:29:0,
                 from bamfile.h:5,
                 from idxstats.c:1:
idxstats.c: In function ‘idxstats_bamfile’:
/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/bam.h:57:41: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
 #define bam_seek(fp, pos, dir) bgzf_seek(fp, pos, dir)
                                         ^
idxstats.c:20:5: note: in expansion of macro ‘bam_seek’
     bam_seek(fp, 0, 0);
     ^
In file included from /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/sam.h:29:0,
                 from io_sam.c:2:
io_sam.c: In function ‘_scan_bam_all’:
/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/bam.h:57:41: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
 #define bam_seek(fp, pos, dir) bgzf_seek(fp, pos, dir)
                                         ^
io_sam.c:304:5: note: in expansion of macro ‘bam_seek’
     bam_seek(bfile->file->x.bam, bfile->pos0, SEEK_SET);
     ^
tabixfile.c: In function ‘index_tabix’:
tabixfile.c:190:5: warning: ‘bgzf_is_bgzf’ is deprecated (declared at /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/htslib/bgzf.h:243): Use bgzf_compression() or hts_detect_format() instead [-Wdeprecated-declarations]
     if (bgzf_is_bgzf(fn) != 1)
     ^
/bin/ld: cannot find -lcurl
collect2: error: ld returned 1 exit status
make: *** [Rsamtools.so] Error 1
ERROR: compilation failed for package ‘Rsamtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rsamtools’
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘dbplyr’ ...
* DONE (dbplyr)
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
* installing *binary* package ‘BiocFileCache’ ...
* DONE (BiocFileCache)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *binary* package ‘rtracklayer’ ...
* DONE (rtracklayer)
* installing *binary* package ‘biomaRt’ ...
* DONE (biomaRt)
* installing *binary* package ‘BSgenome’ ...
* DONE (BSgenome)
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
* installing *binary* package ‘BSgenome.Hsapiens.UCSC.hg19’ ...
* DONE (BSgenome.Hsapiens.UCSC.hg19)
* installing *binary* package ‘GenomicFeatures’ ...
* DONE (GenomicFeatures)
* installing *binary* package ‘regioneR’ ...
* DONE (regioneR)
* installing *source* package ‘rGADEM’ ...
** using staged installation
** libs
normalization.c: In function ‘range’:
normalization.c:124:3: warning: implicit declaration of function ‘Rprintf’ [-Wimplicit-function-declaration]
   if(i==20) Rprintf("score is smaller than 10e-20\n");
   ^
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-rGADEM/00new/rGADEM/libs
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
* DONE (rGADEM)
* installing *binary* package ‘ensembldb’ ...
* DONE (ensembldb)
* installing *source* package ‘MotIV’ ...
** using staged installation
** libs
RandPSSMGen.cpp:32:31: fatal error: gsl/gsl_histogram.h: No such file or directory
 #include <gsl/gsl_histogram.h>
                               ^
compilation terminated.
make: *** [RandPSSMGen.o] Error 1
ERROR: compilation failed for package ‘MotIV’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/MotIV’
* installing *binary* package ‘OrganismDbi’ ...
* DONE (OrganismDbi)
* installing *binary* package ‘TxDb.Hsapiens.UCSC.hg19.knownGene’ ...
* DONE (TxDb.Hsapiens.UCSC.hg19.knownGene)
* installing *source* package ‘TxDb.Hsapiens.UCSC.hg38.knownGene’ ...
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
* DONE (TxDb.Hsapiens.UCSC.hg38.knownGene)
* installing *source* package ‘VariantAnnotation’ ...
** using staged installation
** libs
/bin/ld: cannot find -lcurl
collect2: error: ld returned 1 exit status
make: *** [VariantAnnotation.so] Error 1
ERROR: compilation failed for package ‘VariantAnnotation’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/VariantAnnotation’
ERROR: dependency ‘VariantAnnotation’ is not available for package ‘biovizBase’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/biovizBase’
* installing *source* package ‘EnsDb.Hsapiens.v75’ ...
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
* DONE (EnsDb.Hsapiens.v75)
* installing *source* package ‘EnsDb.Hsapiens.v79’ ...
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
* DONE (EnsDb.Hsapiens.v79)
ERROR: dependency ‘MotIV’ is not available for package ‘motifStack’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/motifStack’
* installing *binary* package ‘Gviz’ ...
* DONE (Gviz)
ERROR: failed to lock directory ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno’ for modifying
Try removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-trackViewer’


```
### CRAN

```
Creating a new generic function for ‘explode’ in package ‘grImport’
cd "htslib-1.7" && make -f "/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf" -f "Makefile.Rhtslib"
make[1]: Entering directory `/scratch/209540.1.long.q/RtmpbHONr6/R.INSTALL23d762a62e4d0/Rhtslib/src/htslib-1.7'
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o kfunc.o kfunc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o knetfile.o knetfile.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o kstring.o kstring.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o bcf_sr_sort.o bcf_sr_sort.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o bgzf.o bgzf.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o errmod.o errmod.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o faidx.o faidx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile.o hfile.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile_net.o hfile_net.c
echo '#define HTS_VERSION "1.7"' > version.h
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hts.o hts.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hts_os.o hts_os.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o md5.o md5.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o multipart.o multipart.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o probaln.o probaln.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o realn.o realn.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o regidx.o regidx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o sam.o sam.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o synced_bcf_reader.o synced_bcf_reader.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcf_sweep.o vcf_sweep.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o tbx.o tbx.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o textutils.o textutils.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o thread_pool.o thread_pool.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcf.o vcf.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o vcfutils.o vcfutils.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_codecs.o cram/cram_codecs.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_decode.o cram/cram_decode.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_encode.o cram/cram_encode.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_external.o cram/cram_external.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_index.o cram/cram_index.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_io.o cram/cram_io.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_samtools.o cram/cram_samtools.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/cram_stats.o cram/cram_stats.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/files.o cram/files.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/mFILE.o cram/mFILE.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/open_trace_file.o cram/open_trace_file.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/pooled_alloc.o cram/pooled_alloc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/rANS_static.o cram/rANS_static.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/sam_header.o cram/sam_header.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o cram/string_alloc.o cram/string_alloc.c
gcc -std=gnu99 -g -O2  -fpic -I. -I/usr/local/include -D_FILE_OFFSET_BITS=64 -c -o hfile_libcurl.o hfile_libcurl.c
make[1]: Leaving directory `/scratch/209540.1.long.q/RtmpbHONr6/R.INSTALL23d762a62e4d0/Rhtslib/src/htslib-1.7'
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c alignment.c -o alignment.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c fastacc.c -o fastacc.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c getzlibsock.c -o getzlibsock.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c kaks.c -o kaks.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c packagename_init.c -o packagename_init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c util.c -o util.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -DUSE_TYPE_CHECKING_STRICT -fpic  -g -O2  -c zsockr.c -o zsockr.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o seqinr.so alignment.o fastacc.o getzlibsock.o kaks.o packagename_init.o util.o zsockr.o -lz -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c Biostrings_stubs.c -o Biostrings_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c COMPAT_bcf_hdr_read.c -o COMPAT_bcf_hdr_read.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c PileupBuffer.cpp -o PileupBuffer.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c PosCacheColl.cpp -o PosCacheColl.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c R_init_Rsamtools.c -o R_init_Rsamtools.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c ResultManager.cpp -o ResultManager.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c as_bam.c -o as_bam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam.c -o bam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_data.c -o bam_data.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_mate_iter.cpp -o bam_mate_iter.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_plbuf.c -o bam_plbuf.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bam_sort.c -o bam_sort.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bambuffer.c -o bambuffer.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bamfile.c -o bamfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c bcffile.c -o bcffile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c encode.c -o encode.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c fafile.c -o fafile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c idxstats.c -o idxstats.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c io_sam.c -o io_sam.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pbuffer_wrapper.cpp -o pbuffer_wrapper.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pileup.cpp -o pileup.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c pileupbam.c -o pileupbam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam.c -o sam.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam_opts.c -o sam_opts.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c sam_utils.c -o sam_utils.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c samtools_patch.c -o samtools_patch.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c scan_bam_data.c -o scan_bam_data.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c tabixfile.c -o tabixfile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c tagfilter.c -o tagfilter.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I/usr/local/include  -fpic  -g -O2  -c zip_compression.c -o zip_compression.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o Rsamtools.so Biostrings_stubs.o COMPAT_bcf_hdr_read.o IRanges_stubs.o PileupBuffer.o PosCacheColl.o R_init_Rsamtools.o ResultManager.o S4Vectors_stubs.o XVector_stubs.o as_bam.o bam.o bam_data.o bam_mate_iter.o bam_plbuf.o bam_sort.o bambuffer.o bamfile.o bcffile.o encode.o fafile.o idxstats.o io_sam.o pbuffer_wrapper.o pileup.o pileupbam.o sam.o sam_opts.o sam_utils.o samtools_patch.o scan_bam_data.o tabixfile.o tagfilter.o utilities.o zip_compression.o /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/usrlib/libhts.a -lcurl -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
checking for gcc... gcc -std=gnu99
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking how to run the C preprocessor... gcc -std=gnu99 -E
checking for gcc -std=gnu99 option to support OpenMP... -fopenmp
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dispatch/dispatch.h usability... no
checking dispatch/dispatch.h presence... no
checking for dispatch/dispatch.h... no
checking whether OpenMP will work in a package... yes
configure: creating ./config.status
config.status: creating src/Makevars
config.status: creating src/config.h
config.status: src/config.h is unchanged
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c Gadem_Analysis.c -o Gadem_Analysis.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c align_sites.c -o align_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c alloc.c -o alloc.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c background.c -o background.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c base_frequency.c -o base_frequency.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c check_convergence.c -o check_convergence.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c check_pwm_dist.c -o check_pwm_dist.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c consensus.c -o consensus.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c construct_pwm.c -o construct_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c copy_pwm.c -o copy_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c crossover.c -o crossover.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c effect_seq_len.c -o effect_seq_len.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c evalue_meme.c -o evalue_meme.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c extend_alignment.c -o extend_alignment.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c initial_population.c -o initial_population.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c mask_sites.c -o mask_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c mutation.c -o mutation.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c normalization.c -o normalization.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c output.c -o output.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c pwm_score_distr.c -o pwm_score_distr.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_matrix.c -o read_matrix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_pwm0.c -o read_pwm0.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c read_seq.c -o read_seq.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c reverse_seq.c -o reverse_seq.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c sample_wo_replacement.c -o sample_wo_replacement.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c scan_sites.c -o scan_sites.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c score_subsequence.c -o score_subsequence.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c selection.c -o selection.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c sort.c -o sort.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c top_kmers.c -o top_kmers.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c transform_pwm.c -o transform_pwm.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include -fopenmp -fpic  -g -O2  -c weights.c -o weights.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o rGADEM.so Gadem_Analysis.o align_sites.o alloc.o background.o base_frequency.o check_convergence.o check_pwm_dist.o consensus.o construct_pwm.o copy_pwm.o crossover.o effect_seq_len.o evalue_meme.o extend_alignment.o initial_population.o mask_sites.o mutation.o normalization.o output.o pwm_score_distr.o read_matrix.o read_pwm0.o read_seq.o reverse_seq.o sample_wo_replacement.o scan_sites.o score_subsequence.o selection.o sort.o top_kmers.o transform_pwm.o weights.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
checking for gcc... gcc -std=gnu99
checking for C compiler default output file name... a.out
checking whether the C compiler works... yes
checking whether we are cross compiling... no
checking for suffix of executables... 
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking for gsl-config... /wynton/home/cbi/shared/software/CBI/gsl-2.6/bin/gsl-config
checking for GSL - version >= 1.6... yes
configure: creating ./config.status
config.status: creating src/Makevars
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Alignment.cpp -o Alignment.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c ColumnComp.cpp -o ColumnComp.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c DeclareAll.cpp -o DeclareAll.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c Motif.cpp -o Motif.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c MotifDistances.cpp -o MotifDistances.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c MotifMatch.cpp -o MotifMatch.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c PlatformSupport.cpp -o PlatformSupport.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c RandPSSMGen.cpp -o RandPSSMGen.o
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c Biostrings_stubs.c -o Biostrings_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c R_init_VariantAnnotation.c -o R_init_VariantAnnotation.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c rle.c -o rle.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/S4Vectors/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/IRanges/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/XVector/include" -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Biostrings/include" -I"/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include" -I/usr/local/include  -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/usrlib/libhts.a -lcurl -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’
Warning message:
multiple methods tables found for ‘splitAsList’ 
Warning: multiple methods tables found for ‘splitAsList’
Warning: multiple methods tables found for ‘splitAsList’


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
* installing *binary* package ‘farver’ ...
* DONE (farver)
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
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *binary* package ‘ProtGenerics’ ...
* DONE (ProtGenerics)
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
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘segmented’ ...
* DONE (segmented)
* installing *source* package ‘seqLogo’ ...
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
* installing *source* package ‘grImport’ ...
** package ‘grImport’ successfully unpacked and MD5 sums checked
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
* DONE (grImport)
* installing *source* package ‘grImport2’ ...
** package ‘grImport2’ successfully unpacked and MD5 sums checked
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
* DONE (grImport2)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *source* package ‘Rhtslib’ ...
** using non-staged installation via StagedInstall field
** libs
Makefile.Rhtslib:128: warning: overriding recipe for target `.c.o'
/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/etc/Makeconf:168: warning: ignoring old recipe for target `.c.o'
hfile_libcurl.c:45:23: fatal error: curl/curl.h: No such file or directory
 #include <curl/curl.h>
                       ^
compilation terminated.
make[1]: *** [hfile_libcurl.o] Error 1
make: *** [htslib] Error 2
ERROR: compilation failed for package ‘Rhtslib’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rhtslib’
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘tinytex’ ...
* DONE (tinytex)
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
* installing *source* package ‘seqinr’ ...
** package ‘seqinr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-seqinr/00new/seqinr/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (seqinr)
* installing *binary* package ‘survival’ ...
* DONE (survival)
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
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘rmarkdown’ ...
* DONE (rmarkdown)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
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
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
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
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *source* package ‘Rsamtools’ ...
** using staged installation
** libs
In file included from bam_mate_iter.cpp:2:0:
BamRangeIterator.h: In member function ‘virtual void BamRangeIterator::finalize_inprogress(bamFile)’:
BamRangeIterator.h:138:39: warning: ignoring return value of ‘int64_t bgzf_seek(BGZF*, int64_t, int)’, declared with attribute warn_unused_result [-Wunused-result]
         bam_seek(bfile, pos, SEEK_SET);
                                       ^
In file included from BamRangeIterator.h:7:0,
                 from bam_mate_iter.cpp:2:
BamIterator.h: In constructor ‘BamIterator::BamIterator(bamFile, const bam_index_t*)’:
BamIterator.h:87:30: warning: ignoring return value of ‘int64_t bgzf_seek(BGZF*, int64_t, int)’, declared with attribute warn_unused_result [-Wunused-result]
         bam_seek(bfile, 0, 0);
                              ^
bamfile.c: In function ‘bamfile_isincomplete’:
bamfile.c:168:22: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
             bgzf_seek(bfile->file->x.bam, offset, SEEK_SET);
                      ^
In file included from /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/sam.h:29:0,
                 from bamfile.h:5,
                 from idxstats.c:1:
idxstats.c: In function ‘idxstats_bamfile’:
/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/bam.h:57:41: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
 #define bam_seek(fp, pos, dir) bgzf_seek(fp, pos, dir)
                                         ^
idxstats.c:20:5: note: in expansion of macro ‘bam_seek’
     bam_seek(fp, 0, 0);
     ^
In file included from /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/sam.h:29:0,
                 from io_sam.c:2:
io_sam.c: In function ‘_scan_bam_all’:
/wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/bam.h:57:41: warning: ignoring return value of ‘bgzf_seek’, declared with attribute warn_unused_result [-Wunused-result]
 #define bam_seek(fp, pos, dir) bgzf_seek(fp, pos, dir)
                                         ^
io_sam.c:304:5: note: in expansion of macro ‘bam_seek’
     bam_seek(bfile->file->x.bam, bfile->pos0, SEEK_SET);
     ^
tabixfile.c: In function ‘index_tabix’:
tabixfile.c:190:5: warning: ‘bgzf_is_bgzf’ is deprecated (declared at /wynton/home/cbi/hb/R/x86_64-pc-linux-gnu-library/3.6-CBI/Rhtslib/include/htslib/bgzf.h:243): Use bgzf_compression() or hts_detect_format() instead [-Wdeprecated-declarations]
     if (bgzf_is_bgzf(fn) != 1)
     ^
/bin/ld: cannot find -lcurl
collect2: error: ld returned 1 exit status
make: *** [Rsamtools.so] Error 1
ERROR: compilation failed for package ‘Rsamtools’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/Rsamtools’
* installing *binary* package ‘SummarizedExperiment’ ...
* DONE (SummarizedExperiment)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘dbplyr’ ...
* DONE (dbplyr)
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
* installing *binary* package ‘BiocFileCache’ ...
* DONE (BiocFileCache)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *binary* package ‘rtracklayer’ ...
* DONE (rtracklayer)
* installing *binary* package ‘biomaRt’ ...
* DONE (biomaRt)
* installing *binary* package ‘BSgenome’ ...
* DONE (BSgenome)
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
* installing *binary* package ‘BSgenome.Hsapiens.UCSC.hg19’ ...
* DONE (BSgenome.Hsapiens.UCSC.hg19)
* installing *binary* package ‘GenomicFeatures’ ...
* DONE (GenomicFeatures)
* installing *binary* package ‘regioneR’ ...
* DONE (regioneR)
* installing *source* package ‘rGADEM’ ...
** using staged installation
** libs
normalization.c: In function ‘range’:
normalization.c:124:3: warning: implicit declaration of function ‘Rprintf’ [-Wimplicit-function-declaration]
   if(i==20) Rprintf("score is smaller than 10e-20\n");
   ^
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-rGADEM/00new/rGADEM/libs
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
* DONE (rGADEM)
* installing *binary* package ‘ensembldb’ ...
* DONE (ensembldb)
* installing *source* package ‘MotIV’ ...
** using staged installation
** libs
RandPSSMGen.cpp:32:31: fatal error: gsl/gsl_histogram.h: No such file or directory
 #include <gsl/gsl_histogram.h>
                               ^
compilation terminated.
make: *** [RandPSSMGen.o] Error 1
ERROR: compilation failed for package ‘MotIV’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/MotIV’
* installing *binary* package ‘OrganismDbi’ ...
* DONE (OrganismDbi)
* installing *binary* package ‘TxDb.Hsapiens.UCSC.hg19.knownGene’ ...
* DONE (TxDb.Hsapiens.UCSC.hg19.knownGene)
* installing *source* package ‘TxDb.Hsapiens.UCSC.hg38.knownGene’ ...
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
* DONE (TxDb.Hsapiens.UCSC.hg38.knownGene)
* installing *source* package ‘VariantAnnotation’ ...
** using staged installation
** libs
/bin/ld: cannot find -lcurl
collect2: error: ld returned 1 exit status
make: *** [VariantAnnotation.so] Error 1
ERROR: compilation failed for package ‘VariantAnnotation’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/VariantAnnotation’
ERROR: dependency ‘VariantAnnotation’ is not available for package ‘biovizBase’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/biovizBase’
* installing *source* package ‘EnsDb.Hsapiens.v75’ ...
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
* DONE (EnsDb.Hsapiens.v75)
* installing *source* package ‘EnsDb.Hsapiens.v79’ ...
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
* DONE (EnsDb.Hsapiens.v79)
ERROR: dependency ‘MotIV’ is not available for package ‘motifStack’
* removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/motifStack’
* installing *binary* package ‘Gviz’ ...
* DONE (Gviz)
ERROR: failed to lock directory ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno’ for modifying
Try removing ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/ChIPpeakAnno/00LOCK-trackViewer’


```
# cola

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
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c batch-supersom.cpp -o batch-supersom.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c distance-functions.cpp -o distance-functions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c map.cpp -o map.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c neighbourhood-functions.cpp -o neighbourhood-functions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c pbatch-supersom.cpp -o pbatch-supersom.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c supersom.cpp -o supersom.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o kohonen.so RcppExports.o batch-supersom.o distance-functions.o map.o neighbourhood-functions.o pbatch-supersom.o supersom.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c distance.cpp -o distance.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c divergence.cpp -o divergence.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c euclidean.cpp -o euclidean.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o NMF.so distance.o divergence.o euclidean.o registerDynamicSymbol.o utils.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Setting package specific options: package:NMF (10 default option(s))
Creating meta registry in package 'NMF' ... OK
Creating registry 'algorithm' in package 'NMF' ... OK
Registering NMF algorithm '.R#brunet' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'brunet' [NMFStrategyIterative] based on template '.R#brunet' ... OK
Registering NMF algorithm 'KL' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.R#lee' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'lee' [NMFStrategyIterative] based on template '.R#lee' ... OK
Registering NMF algorithm 'Frobenius' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.R#offset' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'offset' [NMFStrategyIterative] based on template '.R#offset' ... OK
Registering NMF algorithm '.R#nsNMF' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'nsNMF' [NMFStrategyIterative] based on template '.R#nsNMF' ... OK
Registering NMF algorithm 'ls-nmf' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'pe-nmf' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.siNMF' [NMFStrategyIterative] based on template 'lee' ... OK
Registering NMF algorithm 'siNMF' [NMFStrategyIterative] based on template 'lee' ... OK
Registering NMF algorithm 'snmf/r' [NMFStrategyFunction] ... OK
Registering NMF algorithm 'snmf/l' [NMFStrategyFunction] ... OK
Registering extra action 'bigmemory' for handler 'install.packages' ... OK
Creating registry 'pkgmaker::extra_action' in package 'NMF' ... OK
Adding entry 'bigmemory' in registry 'NMF::pkgmaker::extra_action' ... OK
Registering extra action 'synchronicity' for handler 'install.packages' ... OK
Adding entry 'synchronicity' in registry 'NMF::pkgmaker::extra_action' ... OK
Creating registry 'seed' in package 'NMF' ... OK
Registering NMF seeding method 'none' [NMFSeed] ... OK
Registering NMF seeding method 'random' [NMFSeed] ... OK
Registering NMF seeding method 'ica' [NMFSeed] ... OK
Registering NMF seeding method 'nndsvd' [NMFSeed] ... OK


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
* installing *binary* package ‘brew’ ...
* DONE (brew)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
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
* installing *binary* package ‘DEoptimR’ ...
* DONE (DEoptimR)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘dynamicTreeCut’ ...
* DONE (dynamicTreeCut)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘fastcluster’ ...
* DONE (fastcluster)
* installing *binary* package ‘fastmap’ ...
* DONE (fastmap)
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
* installing *binary* package ‘GenSA’ ...
* DONE (GenSA)
* installing *binary* package ‘GlobalOptions’ ...
* DONE (GlobalOptions)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gridBase’ ...
* DONE (gridBase)
* installing *binary* package ‘gridGraphics’ ...
* DONE (gridGraphics)
* installing *binary* package ‘GSA’ ...
* DONE (GSA)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘impute’ ...
* DONE (impute)
* installing *binary* package ‘iterators’ ...
* DONE (iterators)
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
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mclust’ ...
* DONE (mclust)
* installing *binary* package ‘microbenchmark’ ...
* DONE (microbenchmark)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘mvtnorm’ ...
* DONE (mvtnorm)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
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
* installing *binary* package ‘registry’ ...
* DONE (registry)
* installing *binary* package ‘rjson’ ...
* DONE (rjson)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘shape’ ...
* DONE (shape)
* installing *binary* package ‘slam’ ...
* DONE (slam)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘sourcetools’ ...
* DONE (sourcetools)
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
* installing *binary* package ‘xtable’ ...
* DONE (xtable)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zip’ ...
* DONE (zip)
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
* installing *binary* package ‘circlize’ ...
* DONE (circlize)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘clue’ ...
* DONE (clue)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘fit.models’ ...
* DONE (fit.models)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘GetoptLong’ ...
* DONE (GetoptLong)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *source* package ‘kohonen’ ...
** package ‘kohonen’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/00LOCK-kohonen/00new/kohonen/libs
** R
** data
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (kohonen)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘later’ ...
* DONE (later)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘pcaPP’ ...
* DONE (pcaPP)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘polylabelr’ ...
* DONE (polylabelr)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rngtools’ ...
* DONE (rngtools)
* installing *binary* package ‘robustbase’ ...
* DONE (robustbase)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘Rtsne’ ...
* DONE (Rtsne)
* installing *binary* package ‘rvcheck’ ...
* DONE (rvcheck)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘triebeard’ ...
* DONE (triebeard)
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘bibtex’ ...
* DONE (bibtex)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘ComplexHeatmap’ ...
* DONE (ComplexHeatmap)
* installing *source* package ‘data.tree’ ...
** package ‘data.tree’ successfully unpacked and MD5 sums checked
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
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (data.tree)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘doParallel’ ...
* DONE (doParallel)
* installing *binary* package ‘eulerr’ ...
* DONE (eulerr)
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
* installing *binary* package ‘promises’ ...
* DONE (promises)
* installing *binary* package ‘RcppEigen’ ...
* DONE (RcppEigen)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘reticulate’ ...
* DONE (reticulate)
* installing *binary* package ‘rrcov’ ...
* DONE (rrcov)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘skmeans’ ...
* DONE (skmeans)
* installing *binary* package ‘survival’ ...
* DONE (survival)
* installing *binary* package ‘urltools’ ...
* DONE (urltools)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘graphlayouts’ ...
* DONE (graphlayouts)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httpuv’ ...
* DONE (httpuv)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pamr’ ...
* DONE (pamr)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘pkgmaker’ ...
* DONE (pkgmaker)
* installing *binary* package ‘robust’ ...
* DONE (robust)
* installing *binary* package ‘RSpectra’ ...
* DONE (RSpectra)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘shiny’ ...
* DONE (shiny)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘umap’ ...
* DONE (umap)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘shinyFiles’ ...
* DONE (shinyFiles)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘annotate’ ...
* DONE (annotate)
* installing *binary* package ‘cowplot’ ...
* DONE (cowplot)
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
* installing *source* package ‘NMF’ ...
** package ‘NMF’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/00LOCK-NMF/00new/NMF/libs
** R
** data
** demo
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
* DONE (NMF)
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
* installing *binary* package ‘samr’ ...
* DONE (samr)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘dendextend’ ...
* DONE (dendextend)
* installing *binary* package ‘genefilter’ ...
* DONE (genefilter)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *source* package ‘hu6800.db’ ...
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
* DONE (hu6800.db)
* installing *binary* package ‘tidygraph’ ...
* DONE (tidygraph)
* installing *binary* package ‘DOSE’ ...
* DONE (DOSE)
* installing *binary* package ‘ggraph’ ...
* DONE (ggraph)
* installing *binary* package ‘WGCNA’ ...
* DONE (WGCNA)
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
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c batch-supersom.cpp -o batch-supersom.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c distance-functions.cpp -o distance-functions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c map.cpp -o map.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c neighbourhood-functions.cpp -o neighbourhood-functions.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c pbatch-supersom.cpp -o pbatch-supersom.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG  -I"/wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/Rcpp/include" -I/usr/local/include -fopenmp -fpic  -g -O2  -c supersom.cpp -o supersom.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o kohonen.so RcppExports.o batch-supersom.o distance-functions.o map.o neighbourhood-functions.o pbatch-supersom.o supersom.o -fopenmp -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c distance.cpp -o distance.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c divergence.cpp -o divergence.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c euclidean.cpp -o euclidean.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++11 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o NMF.so distance.o divergence.o euclidean.o registerDynamicSymbol.o utils.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR
Setting package specific options: package:NMF (10 default option(s))
Creating meta registry in package 'NMF' ... OK
Creating registry 'algorithm' in package 'NMF' ... OK
Registering NMF algorithm '.R#brunet' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'brunet' [NMFStrategyIterative] based on template '.R#brunet' ... OK
Registering NMF algorithm 'KL' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.R#lee' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'lee' [NMFStrategyIterative] based on template '.R#lee' ... OK
Registering NMF algorithm 'Frobenius' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.R#offset' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'offset' [NMFStrategyIterative] based on template '.R#offset' ... OK
Registering NMF algorithm '.R#nsNMF' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'nsNMF' [NMFStrategyIterative] based on template '.R#nsNMF' ... OK
Registering NMF algorithm 'ls-nmf' [NMFStrategyIterative] ... OK
Registering NMF algorithm 'pe-nmf' [NMFStrategyIterative] ... OK
Registering NMF algorithm '.siNMF' [NMFStrategyIterative] based on template 'lee' ... OK
Registering NMF algorithm 'siNMF' [NMFStrategyIterative] based on template 'lee' ... OK
Registering NMF algorithm 'snmf/r' [NMFStrategyFunction] ... OK
Registering NMF algorithm 'snmf/l' [NMFStrategyFunction] ... OK
Registering extra action 'bigmemory' for handler 'install.packages' ... OK
Creating registry 'pkgmaker::extra_action' in package 'NMF' ... OK
Adding entry 'bigmemory' in registry 'NMF::pkgmaker::extra_action' ... OK
Registering extra action 'synchronicity' for handler 'install.packages' ... OK
Adding entry 'synchronicity' in registry 'NMF::pkgmaker::extra_action' ... OK
Creating registry 'seed' in package 'NMF' ... OK
Registering NMF seeding method 'none' [NMFSeed] ... OK
Registering NMF seeding method 'random' [NMFSeed] ... OK
Registering NMF seeding method 'ica' [NMFSeed] ... OK
Registering NMF seeding method 'nndsvd' [NMFSeed] ... OK


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
* installing *binary* package ‘brew’ ...
* DONE (brew)
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
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
* installing *binary* package ‘DEoptimR’ ...
* DONE (DEoptimR)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘dynamicTreeCut’ ...
* DONE (dynamicTreeCut)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘fastcluster’ ...
* DONE (fastcluster)
* installing *binary* package ‘fastmap’ ...
* DONE (fastmap)
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
* installing *binary* package ‘GenSA’ ...
* DONE (GenSA)
* installing *binary* package ‘GlobalOptions’ ...
* DONE (GlobalOptions)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gridBase’ ...
* DONE (gridBase)
* installing *binary* package ‘gridGraphics’ ...
* DONE (gridGraphics)
* installing *binary* package ‘GSA’ ...
* DONE (GSA)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘impute’ ...
* DONE (impute)
* installing *binary* package ‘iterators’ ...
* DONE (iterators)
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
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mclust’ ...
* DONE (mclust)
* installing *binary* package ‘microbenchmark’ ...
* DONE (microbenchmark)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘mvtnorm’ ...
* DONE (mvtnorm)
* installing *binary* package ‘nnet’ ...
* DONE (nnet)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
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
* installing *binary* package ‘registry’ ...
* DONE (registry)
* installing *binary* package ‘rjson’ ...
* DONE (rjson)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘rpart’ ...
* DONE (rpart)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘shape’ ...
* DONE (shape)
* installing *binary* package ‘slam’ ...
* DONE (slam)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘sourcetools’ ...
* DONE (sourcetools)
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
* installing *binary* package ‘xtable’ ...
* DONE (xtable)
* installing *binary* package ‘yaml’ ...
* DONE (yaml)
* installing *binary* package ‘zip’ ...
* DONE (zip)
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
* installing *binary* package ‘circlize’ ...
* DONE (circlize)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘clue’ ...
* DONE (clue)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘fit.models’ ...
* DONE (fit.models)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘GetoptLong’ ...
* DONE (GetoptLong)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *source* package ‘kohonen’ ...
** package ‘kohonen’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/00LOCK-kohonen/00new/kohonen/libs
** R
** data
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (kohonen)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘later’ ...
* DONE (later)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘pcaPP’ ...
* DONE (pcaPP)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘polylabelr’ ...
* DONE (polylabelr)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rngtools’ ...
* DONE (rngtools)
* installing *binary* package ‘robustbase’ ...
* DONE (robustbase)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘Rtsne’ ...
* DONE (Rtsne)
* installing *binary* package ‘rvcheck’ ...
* DONE (rvcheck)
* installing *binary* package ‘S4Vectors’ ...
* DONE (S4Vectors)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘triebeard’ ...
* DONE (triebeard)
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
* installing *binary* package ‘xml2’ ...
* DONE (xml2)
* installing *binary* package ‘bibtex’ ...
* DONE (bibtex)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘ComplexHeatmap’ ...
* DONE (ComplexHeatmap)
* installing *source* package ‘data.tree’ ...
** package ‘data.tree’ successfully unpacked and MD5 sums checked
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
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (data.tree)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘doParallel’ ...
* DONE (doParallel)
* installing *binary* package ‘eulerr’ ...
* DONE (eulerr)
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
* installing *binary* package ‘promises’ ...
* DONE (promises)
* installing *binary* package ‘RcppEigen’ ...
* DONE (RcppEigen)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘reticulate’ ...
* DONE (reticulate)
* installing *binary* package ‘rrcov’ ...
* DONE (rrcov)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘skmeans’ ...
* DONE (skmeans)
* installing *binary* package ‘survival’ ...
* DONE (survival)
* installing *binary* package ‘urltools’ ...
* DONE (urltools)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘BiocParallel’ ...
* DONE (BiocParallel)
* installing *binary* package ‘blob’ ...
* DONE (blob)
* installing *binary* package ‘graphlayouts’ ...
* DONE (graphlayouts)
* installing *binary* package ‘hms’ ...
* DONE (hms)
* installing *binary* package ‘htmlTable’ ...
* DONE (htmlTable)
* installing *binary* package ‘httpuv’ ...
* DONE (httpuv)
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘pamr’ ...
* DONE (pamr)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘pkgmaker’ ...
* DONE (pkgmaker)
* installing *binary* package ‘robust’ ...
* DONE (robust)
* installing *binary* package ‘RSpectra’ ...
* DONE (RSpectra)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘progress’ ...
* DONE (progress)
* installing *binary* package ‘RSQLite’ ...
* DONE (RSQLite)
* installing *binary* package ‘shiny’ ...
* DONE (shiny)
* installing *binary* package ‘tibble’ ...
* DONE (tibble)
* installing *binary* package ‘umap’ ...
* DONE (umap)
* installing *binary* package ‘AnnotationDbi’ ...
* DONE (AnnotationDbi)
* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)
* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)
* installing *binary* package ‘shinyFiles’ ...
* DONE (shinyFiles)
* installing *binary* package ‘testthat’ ...
* DONE (testthat)
* installing *binary* package ‘annotate’ ...
* DONE (annotate)
* installing *binary* package ‘cowplot’ ...
* DONE (cowplot)
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
* installing *source* package ‘NMF’ ...
** package ‘NMF’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/cola/00LOCK-NMF/00new/NMF/libs
** R
** data
** demo
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
* DONE (NMF)
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
* installing *binary* package ‘samr’ ...
* DONE (samr)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)
* installing *binary* package ‘dendextend’ ...
* DONE (dendextend)
* installing *binary* package ‘genefilter’ ...
* DONE (genefilter)
* installing *binary* package ‘GOSemSim’ ...
* DONE (GOSemSim)
* installing *binary* package ‘Hmisc’ ...
* DONE (Hmisc)
* installing *source* package ‘hu6800.db’ ...
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
* DONE (hu6800.db)
* installing *binary* package ‘tidygraph’ ...
* DONE (tidygraph)
* installing *binary* package ‘DOSE’ ...
* DONE (DOSE)
* installing *binary* package ‘ggraph’ ...
* DONE (ggraph)
* installing *binary* package ‘WGCNA’ ...
* DONE (WGCNA)
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
# flowWorkspace

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
gcc -std=gnu99 -g -O2  -Wall px.c -o px
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-common.c -o api-common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c common.c -o common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c extra.c -o extra.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c dummy.c -o dummy.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c posix.c -o posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-posix.c -o api-posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c linux.c -o linux.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-linux.c -o api-linux.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o ps.so init.o api-common.o common.o extra.o dummy.o posix.o api-posix.o linux.o api-linux.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR


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
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘corpcor’ ...
* DONE (corpcor)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘cytolib’ ...
* DONE (cytolib)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DEoptimR’ ...
* DONE (DEoptimR)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘ellipse’ ...
* DONE (ellipse)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘flowWorkspaceData’ ...
* DONE (flowWorkspaceData)
* installing *binary* package ‘FNN’ ...
* DONE (FNN)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘jpeg’ ...
* DONE (jpeg)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘kernlab’ ...
* DONE (kernlab)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mclust’ ...
* DONE (mclust)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘mnormt’ ...
* DONE (mnormt)
* installing *binary* package ‘mvtnorm’ ...
* DONE (mvtnorm)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *source* package ‘ps’ ...
** package ‘ps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing via 'install.libs.R' to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/flowWorkspace/00LOCK-ps/00new/ps
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
* DONE (ps)
* installing *binary* package ‘R.methodsS3’ ...
* DONE (R.methodsS3)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘RcppParallel’ ...
* DONE (RcppParallel)
* installing *binary* package ‘Rhdf5lib’ ...
* DONE (Rhdf5lib)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘RProtoBufLib’ ...
* DONE (RProtoBufLib)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘RUnit’ ...
* DONE (RUnit)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
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
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘clue’ ...
* DONE (clue)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘IDPmisc’ ...
* DONE (IDPmisc)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘multicool’ ...
* DONE (multicool)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘pcaPP’ ...
* DONE (pcaPP)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘R.oo’ ...
* DONE (R.oo)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘robustbase’ ...
* DONE (robustbase)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘fda’ ...
* DONE (fda)
* installing *binary* package ‘flowCore’ ...
* DONE (flowCore)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘R.utils’ ...
* DONE (R.utils)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘rrcov’ ...
* DONE (rrcov)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘flowViz’ ...
* DONE (flowViz)
* installing *binary* package ‘ks’ ...
* DONE (ks)
* installing *binary* package ‘ncdfFlow’ ...
* DONE (ncdfFlow)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘flowClust’ ...
* DONE (flowClust)
* installing *binary* package ‘flowStats’ ...
* DONE (flowStats)


```
### CRAN

```
gcc -std=gnu99 -g -O2  -Wall px.c -o px
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-common.c -o api-common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c common.c -o common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c extra.c -o extra.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c dummy.c -o dummy.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c posix.c -o posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-posix.c -o api-posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c linux.c -o linux.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-linux.c -o api-linux.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o ps.so init.o api-common.o common.o extra.o dummy.o posix.o api-posix.o linux.o api-linux.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR


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
* installing *binary* package ‘cluster’ ...
* DONE (cluster)
* installing *binary* package ‘colorspace’ ...
* DONE (colorspace)
* installing *binary* package ‘corpcor’ ...
* DONE (corpcor)
* installing *binary* package ‘crayon’ ...
* DONE (crayon)
* installing *binary* package ‘cytolib’ ...
* DONE (cytolib)
* installing *binary* package ‘data.table’ ...
* DONE (data.table)
* installing *binary* package ‘DEoptimR’ ...
* DONE (DEoptimR)
* installing *binary* package ‘digest’ ...
* DONE (digest)
* installing *binary* package ‘ellipse’ ...
* DONE (ellipse)
* installing *binary* package ‘evaluate’ ...
* DONE (evaluate)
* installing *binary* package ‘fansi’ ...
* DONE (fansi)
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘flowWorkspaceData’ ...
* DONE (flowWorkspaceData)
* installing *binary* package ‘FNN’ ...
* DONE (FNN)
* installing *binary* package ‘glue’ ...
* DONE (glue)
* installing *binary* package ‘gtable’ ...
* DONE (gtable)
* installing *binary* package ‘gtools’ ...
* DONE (gtools)
* installing *binary* package ‘highr’ ...
* DONE (highr)
* installing *binary* package ‘jpeg’ ...
* DONE (jpeg)
* installing *binary* package ‘jsonlite’ ...
* DONE (jsonlite)
* installing *binary* package ‘kernlab’ ...
* DONE (kernlab)
* installing *binary* package ‘KernSmooth’ ...
* DONE (KernSmooth)
* installing *binary* package ‘labeling’ ...
* DONE (labeling)
* installing *binary* package ‘lattice’ ...
* DONE (lattice)
* installing *binary* package ‘lazyeval’ ...
* DONE (lazyeval)
* installing *binary* package ‘magrittr’ ...
* DONE (magrittr)
* installing *binary* package ‘MASS’ ...
* DONE (MASS)
* installing *binary* package ‘mclust’ ...
* DONE (mclust)
* installing *binary* package ‘mime’ ...
* DONE (mime)
* installing *binary* package ‘mnormt’ ...
* DONE (mnormt)
* installing *binary* package ‘mvtnorm’ ...
* DONE (mvtnorm)
* installing *binary* package ‘pkgconfig’ ...
* DONE (pkgconfig)
* installing *binary* package ‘plogr’ ...
* DONE (plogr)
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *source* package ‘ps’ ...
** package ‘ps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing via 'install.libs.R' to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/flowWorkspace/00LOCK-ps/00new/ps
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
* DONE (ps)
* installing *binary* package ‘R.methodsS3’ ...
* DONE (R.methodsS3)
* installing *binary* package ‘R6’ ...
* DONE (R6)
* installing *binary* package ‘RColorBrewer’ ...
* DONE (RColorBrewer)
* installing *binary* package ‘Rcpp’ ...
* DONE (Rcpp)
* installing *binary* package ‘RcppParallel’ ...
* DONE (RcppParallel)
* installing *binary* package ‘Rhdf5lib’ ...
* DONE (Rhdf5lib)
* installing *binary* package ‘rlang’ ...
* DONE (rlang)
* installing *binary* package ‘RProtoBufLib’ ...
* DONE (RProtoBufLib)
* installing *binary* package ‘rstudioapi’ ...
* DONE (rstudioapi)
* installing *binary* package ‘RUnit’ ...
* DONE (RUnit)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
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
* installing *binary* package ‘zlibbioc’ ...
* DONE (zlibbioc)
* installing *binary* package ‘Biobase’ ...
* DONE (Biobase)
* installing *binary* package ‘cli’ ...
* DONE (cli)
* installing *binary* package ‘clue’ ...
* DONE (clue)
* installing *binary* package ‘ellipsis’ ...
* DONE (ellipsis)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘IDPmisc’ ...
* DONE (IDPmisc)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
* installing *binary* package ‘markdown’ ...
* DONE (markdown)
* installing *binary* package ‘Matrix’ ...
* DONE (Matrix)
* installing *binary* package ‘multicool’ ...
* DONE (multicool)
* installing *binary* package ‘munsell’ ...
* DONE (munsell)
* installing *binary* package ‘nlme’ ...
* DONE (nlme)
* installing *binary* package ‘pcaPP’ ...
* DONE (pcaPP)
* installing *binary* package ‘plyr’ ...
* DONE (plyr)
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘R.oo’ ...
* DONE (R.oo)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘robustbase’ ...
* DONE (robustbase)
* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘stringr’ ...
* DONE (stringr)
* installing *binary* package ‘callr’ ...
* DONE (callr)
* installing *binary* package ‘desc’ ...
* DONE (desc)
* installing *binary* package ‘fda’ ...
* DONE (fda)
* installing *binary* package ‘flowCore’ ...
* DONE (flowCore)
* installing *binary* package ‘knitr’ ...
* DONE (knitr)
* installing *binary* package ‘mgcv’ ...
* DONE (mgcv)
* installing *binary* package ‘R.utils’ ...
* DONE (R.utils)
* installing *binary* package ‘RBGL’ ...
* DONE (RBGL)
* installing *binary* package ‘reshape2’ ...
* DONE (reshape2)
* installing *binary* package ‘Rgraphviz’ ...
* DONE (Rgraphviz)
* installing *binary* package ‘rrcov’ ...
* DONE (rrcov)
* installing *binary* package ‘scales’ ...
* DONE (scales)
* installing *binary* package ‘vctrs’ ...
* DONE (vctrs)
* installing *binary* package ‘flowViz’ ...
* DONE (flowViz)
* installing *binary* package ‘ks’ ...
* DONE (ks)
* installing *binary* package ‘ncdfFlow’ ...
* DONE (ncdfFlow)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *binary* package ‘flowClust’ ...
* DONE (flowClust)
* installing *binary* package ‘flowStats’ ...
* DONE (flowStats)


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
gcc -std=gnu99 -g -O2  -Wall px.c -o px
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-common.c -o api-common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c common.c -o common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c extra.c -o extra.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c dummy.c -o dummy.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c posix.c -o posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-posix.c -o api-posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c linux.c -o linux.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-linux.c -o api-linux.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o ps.so init.o api-common.o common.o extra.o dummy.o posix.o api-posix.o linux.o api-linux.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR


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
* installing *binary* package ‘BeadDataPackR’ ...
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
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘fastmap’ ...
* DONE (fastmap)
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
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *source* package ‘ps’ ...
** package ‘ps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing via 'install.libs.R' to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-ps/00new/ps
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
* installing *binary* package ‘setRNG’ ...
* DONE (setRNG)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘sourcetools’ ...
* DONE (sourcetools)
* installing *binary* package ‘SparseM’ ...
* DONE (SparseM)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘systemfonts’ ...
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
* installing *binary* package ‘ff’ ...
* DONE (ff)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘gdtools’ ...
* DONE (gdtools)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘gridSVG’ ...
* DONE (gridSVG)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘later’ ...
* DONE (later)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rex’ ...
* DONE (rex)
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
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
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


```
### CRAN

```
gcc -std=gnu99 -g -O2  -Wall px.c -o px
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-common.c -o api-common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c common.c -o common.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c extra.c -o extra.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c dummy.c -o dummy.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c posix.c -o posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-posix.c -o api-posix.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c linux.c -o linux.o
gcc -std=gnu99 -I"/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/include" -DNDEBUG   -I/usr/local/include  -fpic  -g -O2  -c api-linux.c -o api-linux.o
gcc -std=gnu99 -shared -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -L/usr/local/lib64 -o ps.so init.o api-common.o common.o extra.o dummy.o posix.o api-posix.o linux.o api-linux.o -L/wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/lib -lR


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
* installing *binary* package ‘BeadDataPackR’ ...
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
* installing *binary* package ‘farver’ ...
* DONE (farver)
* installing *binary* package ‘fastmap’ ...
* DONE (fastmap)
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
* installing *binary* package ‘png’ ...
* DONE (png)
* installing *binary* package ‘polyclip’ ...
* DONE (polyclip)
* installing *binary* package ‘praise’ ...
* DONE (praise)
* installing *binary* package ‘preprocessCore’ ...
* DONE (preprocessCore)
* installing *binary* package ‘prettyunits’ ...
* DONE (prettyunits)
* installing *source* package ‘ps’ ...
** package ‘ps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
installing via 'install.libs.R' to /wynton/home/cbi/hb/repositories/matrixStats/revdep/library/maEndToEnd/00LOCK-ps/00new/ps
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
* installing *binary* package ‘setRNG’ ...
* DONE (setRNG)
* installing *binary* package ‘snow’ ...
* DONE (snow)
* installing *binary* package ‘sourcetools’ ...
* DONE (sourcetools)
* installing *binary* package ‘SparseM’ ...
* DONE (SparseM)
* installing *binary* package ‘stringi’ ...
* DONE (stringi)
* installing *binary* package ‘sys’ ...
* DONE (sys)
* installing *binary* package ‘systemfonts’ ...
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
* installing *binary* package ‘ff’ ...
* DONE (ff)
* installing *binary* package ‘foreach’ ...
* DONE (foreach)
* installing *binary* package ‘fs’ ...
* DONE (fs)
* installing *binary* package ‘gdata’ ...
* DONE (gdata)
* installing *binary* package ‘gdtools’ ...
* DONE (gdtools)
* installing *binary* package ‘graph’ ...
* DONE (graph)
* installing *binary* package ‘gridExtra’ ...
* DONE (gridExtra)
* installing *binary* package ‘gridSVG’ ...
* DONE (gridSVG)
* installing *binary* package ‘hexbin’ ...
* DONE (hexbin)
* installing *binary* package ‘htmltools’ ...
* DONE (htmltools)
* installing *binary* package ‘lambda.r’ ...
* DONE (lambda.r)
* installing *binary* package ‘later’ ...
* DONE (later)
* installing *binary* package ‘latticeExtra’ ...
* DONE (latticeExtra)
* installing *binary* package ‘lifecycle’ ...
* DONE (lifecycle)
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
* installing *binary* package ‘processx’ ...
* DONE (processx)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)
* installing *binary* package ‘RcppArmadillo’ ...
* DONE (RcppArmadillo)
* installing *binary* package ‘RCurl’ ...
* DONE (RCurl)
* installing *binary* package ‘rex’ ...
* DONE (rex)
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
* installing *binary* package ‘tweenr’ ...
* DONE (tweenr)
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


```
# NanoStringDiff

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/NanoStringDiff
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 44

Run `revdep_details(,"NanoStringDiff")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NanoStringDiff/new/NanoStringDiff.Rcheck’
* using R version 3.6.2 (2019-12-12)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘NanoStringDiff/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘NanoStringDiff’ version ‘1.16.0’
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘NanoStringDiff’ can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking ‘build’ directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... NOTE
PlotsPositiveHousekeeping: no visible global function definition for
  ‘read.table’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘glm’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘poisson’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘rowVars’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘par’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘plot’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘abline’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘lm’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘title’
PlotsPositiveHousekeeping: no visible global function definition for
  ‘textxy’
compute.baseSigma: no visible global function definition for ‘IQR’
createNanoStringSetFromCsv: no visible global function definition for
  ‘read.table’
est.dispersion : get.phihat: no visible global function definition for
  ‘optimize’
estNormalizationFactors: no visible global function definition for
  ‘glm’
estNormalizationFactors: no visible global function definition for
  ‘poisson’
estNormalizationFactors: no visible binding for global variable
  ‘median’
glm.LRT: no visible global function definition for ‘pchisq’
glm.LRT: no visible global function definition for ‘p.adjust’
glmfit.OneGroup : get.mu: no visible global function definition for
  ‘optimize’
glmfit.full: no visible global function definition for ‘lm’
glmfit.full: no visible global function definition for ‘median’
glmfit.full: no visible global function definition for ‘IQR’
glmfit.full : get.phi: no visible global function definition for
  ‘optimize’
glmfit.full : get.beta.full: no visible global function definition for
  ‘optim’
glmfit.reduce: no visible global function definition for ‘lm’
glmfit.reduce : get.beta.reduce: no visible global function definition
  for ‘optim’
rnegbinom: no visible global function definition for ‘rpois’
rnegbinom: no visible global function definition for ‘rgamma’
Undefined global functions or variables:
  IQR abline glm lm median optim optimize p.adjust par pchisq plot
  poisson read.table rgamma rowVars rpois textxy title
Consider adding
  importFrom("graphics", "abline", "par", "plot", "title")
  importFrom("stats", "IQR", "glm", "lm", "median", "optim", "optimize",
             "p.adjust", "pchisq", "poisson", "rgamma", "rpois")
  importFrom("utils", "read.table")
to your NAMESPACE file.
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘compute.baseSigma’ ‘est.dispersion’ ‘fun5’ ‘glmfit.OneGroup’
  ‘glmfit.full’ ‘glmfit.reduce’ ‘rnegbinom’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking line endings in C/C++/Fortran sources/headers ... OK
* checking compiled code ... OK
* checking sizes of PDF files under ‘inst/doc’ ... OK
* checking installed files from ‘inst/doc’ ... NOTE
The following files look like leftovers/mistakes:
  ‘NanoStringDiff.log’
Please remove them from your package.
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...
 OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ...
  ‘NanoStringDiff.Rnw’... OK
 OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 WARNING, 2 NOTEs




.Rprofile error [/scratch/228426.1.long.q/Rtmp6EZX1a/file48ea3353e00f8: /wynton/home/cbi/shared/software/CBI/R-3.6.2/lib64/R/bin/exec/R --no-restore --slave --args nextArgNanoStringDiff_1.16.0.tar.gznextArg--no-manualnextArg--no-build-vignettesnextArg-onextArg/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NanoStringDiff/new]: there is no package called ‘startup’
  Running ‘testthat.R’

See
  ‘/wynton/home/cbi/hb/repositories/matrixStats/revdep/checks/NanoStringDiff/new/NanoStringDiff.Rcheck/00check.log’
for details.






```
### CRAN

```






```
