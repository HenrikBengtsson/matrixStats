# CRAN submission matrixStats 0.62.0

on 2022-04-18

As requested, this package no longer use legacy S constant 'DOUBLE_XMAX'.

I've verified this submission has no negative impact on any of the 398 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub    | R-hub    | mac/win-builder |
| --------- | --------- | -------- | --------------- |
| 3.4.x     | L         |          |                 |
| 3.5.x     | L         |          |                 |
| 3.6.x     | L         |          |                 |
| 4.0.x     | L      W  | L        |                 |
| 4.1.x     | L Lv M W  | L M M1 W | M1 W            |
| 4.2.0 RC  |           |          |    W            |
| devel     |      M W  | L        |                 |

*Legend: OS: L = Linux, Lv = Linux with Valgrind,
             M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release")
print(res)
```

gives

```
── matrixStats 0.62.0: OK

  Build ID:   matrixStats_0.62.0.tar.gz-f5d3f1ff59444fc78eca030e3d1af0a2
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  33m 55s ago
  Build time: 25m 42s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.62.0: OK

  Build ID:   matrixStats_0.62.0.tar.gz-52d2ba2a18a240a08d597a933ea47252
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  33m 55s ago
  Build time: 21m 40s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.62.0: OK

  Build ID:   matrixStats_0.62.0.tar.gz-eab15d8a07314dc3a943ba66b0014dea
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  33m 55s ago
  Build time: 18m 48.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.62.0: OK

  Build ID:   matrixStats_0.62.0.tar.gz-9f5e81e5b58c498cb9cfb826a28bc945
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  33m 55s ago
  Build time: 4m 29.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.62.0: ERROR

  Build ID:   matrixStats_0.62.0.tar.gz-982e60b80f9c4c409f34e1fd8de73dd3
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  33m 55.1s ago
  Build time: 1m 25.2s

❯ checking tests ...
  See below...

1 error ✖ | 0 warnings ✔ | 0 notes ✔

── matrixStats 0.62.0: OK

  Build ID:   matrixStats_0.62.0.tar.gz-b7d1f291d3a8436bbf60d84404cad09f
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  33m 55.1s ago
  Build time: 10m 55.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
