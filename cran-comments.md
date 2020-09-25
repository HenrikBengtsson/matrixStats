# CRAN submission matrixStats 0.56.1

I've verified that this submission does not cause issues for the 287 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance



## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub Actions | Travis CI | AppVeyor CI | Rhub    | Win-builder |
| --------- | -------------- | --------- | ----------- | ------- | ----------- |
| 3.2.x     | L              |           |             |         |             |
| 3.4.x     | L              |           |             |         |             |
| 3.6.x     | L  M  W        | L, M      |             | L       |             |
| 4.0.x     | L,    W        | L, M      | W           |    S    |             |
| devel     | L  M  W        | L         | W (32 & 64) | L,    W | W           |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows. Architecture: 32 = 32-bit, 64 = 64-bit. L! = Linux with GCC ASAN/UBSAN*
