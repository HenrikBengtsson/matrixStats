# CRAN submission matrixStats 0.53.1

on 2018-03-10

* This release fixes broken package assertion tests on R-devel related to recent updates in base::sum().

* The win-builder server reports package installation size to be 5.6 MB, which is due to built libs/ being large (4.8 MB).

* I've verified that the submitted version causes no issues for any of the 159 reverse dependencies on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.4.3 (2017-11-30)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.2 (2017-01-27)
  - R Under development (unstable) (2018-02-08 r74238)

* Platform x86_64-unknown-linux-gnu (64-bit) w/ valgrind [Travis CI]:
  - R version 3.4.2 (2017-01-27)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.12.2 (2011-02-25)
  - R version 2.13.1 (2011-07-08)
  - R version 2.15.3 (2013-03-01)
  - R version 3.0.3 (2014-10-31)
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.0 (2015-04-16)
  - R version 3.3.0 (2016-05-03)
  - R version 3.4.3 (2017-11-30)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.3 (2017-11-30)
  - R Under development (unstable) (2018-02-03 r74202)

* Platform x86_64-pc-linux-gnu (64-bit) w/ ASan/UBSan [r-hub]:
  - R Under development (unstable) (2017-07-26 r72972)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.3 (2017-11-30)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2018-02-07 r74236)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R Under development (unstable) (2018-02-05 r74215)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.4.3 (2017-11-30)
  - R Under development (unstable) (2018-02-07 r74236)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
#  - R version 3.4.3 (2017-11-30)
  - R Under development (unstable) (2018-02-09 r74240)
