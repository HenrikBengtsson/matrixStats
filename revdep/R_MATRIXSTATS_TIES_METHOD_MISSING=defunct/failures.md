# flowWorkspace

<details>

* Version: 4.18.0
* GitHub: NA
* Source code: https://github.com/cran/flowWorkspace
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "flowWorkspace")` for more info

</details>

## In both

*   checking whether package ‘flowWorkspace’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/new/flowWorkspace.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘flowWorkspace’ ...
** package ‘flowWorkspace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++17
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_API.cpp -o R_API.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingHierarchy.cpp -o R_GatingHierarchy.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingSet.cpp -o R_GatingSet.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c getSingleCellExpression.cpp -o getSingleCellExpression.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c h5_error_r_handler.cpp -o h5_error_r_handler.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c setCounts.cpp -o setCounts.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -L/usr/local/lib64 -o flowWorkspace.so R_API.o R_GatingHierarchy.o R_GatingSet.o cpp11.o cytoframeAPI.o cytosetAPI.o getDescendants.o getPopStats.o getSingleCellExpression.o h5_error_r_handler.o setCounts.o /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/lib/libcytolib.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5_cpp.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5.a -lcrypto -lcurl -lsz -laec -lz -ldl -lm -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRlapack -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRblas -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lR
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -lsz: No such file or directory
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -laec: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/share/make/shlib.mk:10: flowWorkspace.so] Error 1
ERROR: compilation failed for package ‘flowWorkspace’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/new/flowWorkspace.Rcheck/flowWorkspace’


```
### CRAN

```
* installing *source* package ‘flowWorkspace’ ...
** package ‘flowWorkspace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++17
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_API.cpp -o R_API.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingHierarchy.cpp -o R_GatingHierarchy.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c R_GatingSet.cpp -o R_GatingSet.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c getSingleCellExpression.cpp -o getSingleCellExpression.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c h5_error_r_handler.cpp -o h5_error_r_handler.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG -DROUT -I../inst/include -DBOOST_NO_AUTO_PTR -Wno-pedantic  -w -Wfatal-errors -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cpp11/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/BH/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/RProtoBufLib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/include' -I/usr/local/include    -fpic  -g -O2  -c setCounts.cpp -o setCounts.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -L/usr/local/lib64 -o flowWorkspace.so R_API.o R_GatingHierarchy.o R_GatingSet.o cpp11.o cytoframeAPI.o cytosetAPI.o getDescendants.o getPopStats.o getSingleCellExpression.o h5_error_r_handler.o setCounts.o /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/cytolib/lib/libcytolib.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5_cpp.a /c4/home/henrik/repositories/matrixStats/revdep/library/flowWorkspace/Rhdf5lib/lib/libhdf5.a -lcrypto -lcurl -lsz -laec -lz -ldl -lm -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRlapack -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lRblas -L/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/lib -lR
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -lsz: No such file or directory
/opt/rh/gcc-toolset-13/root/usr/libexec/gcc/x86_64-redhat-linux/13/ld: cannot find -laec: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/share/make/shlib.mk:10: flowWorkspace.so] Error 1
ERROR: compilation failed for package ‘flowWorkspace’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/flowWorkspace/old/flowWorkspace.Rcheck/flowWorkspace’


```
# graper

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 70

Run `revdepcheck::revdep_details(, "graper")` for more info

</details>

## In both

*   checking whether package ‘graper’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/new/graper.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from /c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/digamma.hpp:16,
                 from graper_linear_dense_ff.h:2,
...
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note: candidate: ‘template<class RT1, class RT2, class RT3, class Policy> boost::math::tools::promote_args_t<RT1, RT2, A> boost::math::beta(RT1, RT2, RT3, const Policy&)’
 1638 |    beta(RT1 a, RT2 b, RT3 x, const Policy&)
      |    ^~~~
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/binomial.hpp:49:61: note:   candidate expects 4 arguments, 3 provided
   49 |          result = static_cast<T>((n - k) * boost::math::beta(static_cast<T>(k+1), static_cast<T>(n-k), pol));
      |                                            ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/etc/Makeconf:204: fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/new/graper.Rcheck/graper’


```
### CRAN

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/Rcpp/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/RcppArmadillo/include' -I'/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include' -I/usr/local/include    -fpic  -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from /c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/digamma.hpp:16,
                 from graper_linear_dense_ff.h:2,
...
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note: candidate: ‘template<class RT1, class RT2, class RT3, class Policy> boost::math::tools::promote_args_t<RT1, RT2, A> boost::math::beta(RT1, RT2, RT3, const Policy&)’
 1638 |    beta(RT1 a, RT2 b, RT3 x, const Policy&)
      |    ^~~~
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/beta.hpp:1638:4: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/matrixStats/revdep/library/graper/BH/include/boost/math/special_functions/binomial.hpp:49:61: note:   candidate expects 4 arguments, 3 provided
   49 |          result = static_cast<T>((n - k) * boost::math::beta(static_cast<T>(k+1), static_cast<T>(n-k), pol));
      |                                            ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.4.2-gcc13/lib64/R/etc/Makeconf:204: fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/graper/old/graper.Rcheck/graper’


```
