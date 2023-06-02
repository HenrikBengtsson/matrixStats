# CRAN submission matrixStats 1.0.0

on 2023-06-01

I've verified this submission has no negative impact on any of the 240 reverse package dependencies available on CRAN. Among the 204 reverse dependencies on Bioconductor, there are a few that breaks. Those will be promptly be fixed by when this new version of matrixStats is on CRAN. Those maintainers have been notified.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 4.0.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L   W  |   M    |                 |
| 4.3.x     | L M W  | L   W  | M1 W            |
| devel     | L M W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "linux-x86_64-rocker-gcc-san",
##  "macos-highsierra-release-cran",  ## not available
  "windows-x86_64-release"
))
print(res)
```

gives

```
── matrixStats 1.0.0: OK

  Build ID:   matrixStats_1.0.0.tar.gz-a056d7ab9b6144ad9417470f7ed34f5d
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  23m 43.9s ago
  Build time: 17m 49s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.0.0: OK

  Build ID:   matrixStats_1.0.0.tar.gz-b2aaf75346a04111ac727dc0de1a2368
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  23m 43.9s ago
  Build time: 13m 9.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.0.0: OK

  Build ID:   matrixStats_1.0.0.tar.gz-0408e6f9b6714379a530bfc13a082c2f
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  23m 43.9s ago
  Build time: 16m 39.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.0.0: OK

  Build ID:   matrixStats_1.0.0.tar.gz-17e8aa2c96cf4a22be70f288f8b62c92
  Platform:   Debian Linux, R-devel, GCC ASAN/UBSAN
  Submitted:  23m 43.9s ago
  Build time: 32m 56.4s

── matrixStats 1.0.0: OK

  Build ID:   matrixStats_1.0.0.tar.gz-4fb9e624fa0040f885e09b5dfd8930e1
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  23m 43.9s ago
  Build time: 6m 24.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
