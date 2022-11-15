# CRAN submission matrixStats 0.63.0

on 2022-11-14

I've verified this submission has no negative impact on any of the 421
reverse package dependencies available on CRAN (n = 216) and
Bioconductor (n = 205).


Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.4.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.0.x     | L      |        |                 |
| 4.1.x     | L      |   M    |                 |
| 4.2.x     | L M W  | L   W  | M1 W            |
| devel     | L M W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "linux-x86_64-rocker-gcc-san",
  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
── matrixStats 0.63.0: OK

  Build ID:   matrixStats_0.63.0.tar.gz-6f82a5ef12004aaa851cf8158e48fc37
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1h 4m 54.1s ago
  Build time: 56m 58.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.63.0: OK

  Build ID:   matrixStats_0.63.0.tar.gz-8f7588d724494f98966f3fb98340e714
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  1h 4m 54.1s ago
  Build time: 41m 47.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.63.0: OK

  Build ID:   matrixStats_0.63.0.tar.gz-de9b7adfa4fa4925a14f9bd28bbab095
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  1h 4m 54.1s ago
  Build time: 52m 41.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.63.0: IN-PROGRESS

  Build ID:   matrixStats_0.63.0.tar.gz-fd9370ecb1704b4abaadcce40185b0d1
  Platform:   Debian Linux, R-devel, GCC ASAN/UBSAN
  Submitted:  1h 4m 54.1s ago


── matrixStats 0.63.0: OK

  Build ID:   matrixStats_0.63.0.tar.gz-f67442083a944e19979f9383456e804d
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  1h 4m 54.1s ago
  Build time: 5m 7.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.63.0: OK

  Build ID:   matrixStats_0.63.0.tar.gz-bcb03ccc4d344fcf84508bfc5e684190
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  1h 4m 54.1s ago
  Build time: 9m 1.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
