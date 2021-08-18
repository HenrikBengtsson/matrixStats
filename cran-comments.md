# CRAN submission matrixStats 0.60.1

on 2021-08-18

I've verified that this submission does not cause issues for the 359 reverse package dependencies available on CRAN and Bioconductor. In addition, the package have been validated on R oldrel, R release, and R devel on Linux, macOS, and Windows. On Linux it's also been checked as far back as R 2.15.0, and with Valgrind and ASan/UBSan on R release. On Solaris, it's been checked with R release.

Thank you


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub  | AppVeyor | R-hub    | win-builder | CentOS 7  |
| --------- | ------- | -------- | -------- | ----------- | --------- |
| 2.15.0    |         |          |          |             | L         |
| 3.3.x     | L       |          |          |             |           |
| 3.4.x     | L       |          |          |             |           |
| 4.0.x     | L  M W  |          |          |             |           |
| 4.1.x     | Lv   W  | W        | Ls S M   | W           |           |
| devel     | L  M W  | W        | L      W | W           |           |

_Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows, s = ASan/UBSan, v = Valgrind _
