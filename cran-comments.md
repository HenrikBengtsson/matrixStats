# CRAN submission matrixStats 0.61.0

on 2021-09-15

This is a submission in response to the CRAN Team's request to address a check problem.  I've verified that this submission does not cause issues for the 361 reverse package dependencies available on CRAN and Bioconductor.

Thank you


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub  | AppVeyor | R-hub    | win-builder | CentOS 7  |
| --------- | ------- | -------- | -------- | ----------- | --------- |
| 2.15.0    |         |          |          |             |           |
| 3.3.x     | L       |          |          |             |           |
| 3.4.x     | L       |          |          |             |           |
| 4.0.x     | L  M W  |          |          |             |           |
| 4.1.x     | Lv   W  | W        |          | W           |           |
| devel     | L  M W  | W        |          | W           |           |

_Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows, s = ASan/UBSan, v = Valgrind_
