# CRAN submission matrixStats 0.60.0

on 2021-07-26

I've verified that this submission does not cause issues for the 354 reverse package dependencies available on CRAN and Bioconductor. In addition, the package have been validated on R oldrel, R release, and R devel on Linux, macOS, and Windows. On Linux it's also been checked with Valgrind and ASan/UBSan as well as as far back as R 2.15.0. On Solaris, it's been checked with R release.

Thank you


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | AppVeyor | R-hub  | win-builder |
| --------- | ------ | -------- | ------ | ----------- |
| 3.3.x     | L      |          |        |             |
| 3.4.x     | L      |          |        |             |
| 4.0.x     | L   W  |          |        |             |
| 4.1.x     | L M W  | W        | L* S M | W           |
| devel     | L M W  | W        | L      | W           |

_Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows, *ASan/UBSan_
