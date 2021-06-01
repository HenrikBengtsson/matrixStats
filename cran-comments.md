# CRAN submission matrixStats 0.59.0

on 2021-05-31

I've verified that this submission does not cause issues for the 345 reverse package dependencies available on CRAN and Bioconductor with a total processing time of ~300 CPU hours = ~12.5 CPU days.  In addition, the package have been validated on R oldrel, R release, and R devel on Linux, macOS, and Windows. On Linux it's also been checked back to R 3.3.0, and with Valgrind and ASan/UBSan. On Solaris, it's been checked with R release.

Thank you


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | Travis | AppVeyor | R-hub | win-builder |
| --------- | ------ | ------ | -------- | ----- | ----------- |
| 3.3.x     | L      |        |          |       |             |
| 3.4.x     | L      |        |          |       |             |
| 4.0.x     | L   W  | L      |          |       |             |
| 4.1.x     | L M W  | L      | W        | L* S  | W           |
| devel     | L M W  | L      | W        | L     | W           |

_Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows, *ASan/UBSan_
