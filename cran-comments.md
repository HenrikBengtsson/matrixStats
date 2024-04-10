# CRAN submission matrixStats 1.3.0

on 2024-04-10

This submission fixes two PROTECT/UNPROTECT issues detected by the 'rchk' tool.

I've verified this submission has no negative impact on any of the 480 reverse package dependencies available on CRAN (n=264) and Bioconductor (n=216).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.6.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L   W  |   .    |    W            |
| 4.3.x     | L M W  | .   .  | M1 W            |
| devel     | L   W  | .      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

_Not run_
