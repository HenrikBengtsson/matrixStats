# CRAN submission matrixStats 1.2.0

on 2023-12-11

I've verified this submission has no negative impact on any of the 455 reverse package dependencies available on CRAN (n=247) and Bioconductor (n=208).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.6.x     | L      |        |                 |
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
  "windows-x86_64-release"
))
print(res)
```

gives

```
── matrixStats 1.2.0: OK

  Build ID:   matrixStats_1.2.0.tar.gz-b5bc92d3e89346558e3bb947e1b92a2a
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1h 4m 25.4s ago
  Build time: 41m 6.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.2.0: OK

  Build ID:   matrixStats_1.2.0.tar.gz-be1b3eb2c6374c15aa2eabd764025296
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  1h 4m 25.4s ago
  Build time: 30m 23.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.2.0: OK

  Build ID:   matrixStats_1.2.0.tar.gz-52106b4b9e0b4544bfcd7209aa673062
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  1h 4m 25.4s ago
  Build time: 36m 53.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.2.0: IN-PROGRESS

  Build ID:   matrixStats_1.2.0.tar.gz-e600ff00048d4e5d81f9f76ccb9f3b1b
  Platform:   Debian Linux, R-devel, GCC ASAN/UBSAN
  Submitted:  1h 14m 11.4s ago
  Build time: 1h 13m 36.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 1.2.0: OK

  Build ID:   matrixStats_1.2.0.tar.gz-4e95853005884e11b61c5d1923bf0984
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  1h 4m 25.4s ago
  Build time: 7m 16s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
