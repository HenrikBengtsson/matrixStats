# CRAN submission matrixStats 1.1.0

on 2023-11-06

I've verified this submission has no negative impact on any of the 463 reverse package dependencies available on CRAN (n=249) and Bioconductor (n=214).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L   W  |   M    |                 |
| 4.3.x     | L M W  | L   W  | M1 W            |
| devel     | L   W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "linux-x86_64-rocker-gcc-san",
##  "windows-x86_64-release"  ## not available
))
print(res)
```

gives

```
── matrixStats 1.1.0: OK

  Build ID:   matrixStats_1.1.0.tar.gz-584775420c10477fa32a5680a238bb26
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  34m 23.4s ago
  Build time: 26m 7.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.1.0: OK

  Build ID:   matrixStats_1.1.0.tar.gz-e2f19f2b63ea4769b081dd1e7647dc51
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  34m 23.4s ago
  Build time: 19m 29.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.1.0: OK

  Build ID:   matrixStats_1.1.0.tar.gz-68cb91d4ec36497c9862e036422f005e
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  34m 23.4s ago
  Build time: 26m 3.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.1.0: OK

  Build ID:   matrixStats_1.1.0.tar.gz-1ed6b2434fad4d5eab44c077bf994eba
  Platform:   Debian Linux, R-devel, GCC ASAN/UBSAN
  Submitted:  46m 39.8s ago
  Build time: 43m 59.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
