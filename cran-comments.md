# CRAN submission matrixStats 0.50.1
on 2015-12-14

Comments related to R / CRAN:

* The Undefined Behavior Sanitizer (UBsan) reported on a
  `memcpy(src, dest, 0)` call where `dest == null`.
  Now this copying is conditional on `dest`.
  
Thank you


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R Under development (unstable) (2015-12-14 r69773)
  
* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.2.3 Patched (2015-12-10 r69760)
  - R Under development (unstable) (2015-12-13 r69768)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.2.3 (2015-12-10)
  - R Under development (unstable) (2015-12-12 r69765)

The native code has been validated using Valgrind (`R CMD check
--use-valgrind`; valgrind 3.10.0) as well as ASan and UBSan sanitizers
(`gcc -fsanitize=undefined,address`; gcc 5.1.1) on Linux.

It has also verified using the <http://win-builder.r-project.org/> service.
