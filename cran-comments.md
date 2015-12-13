# CRAN submission matrixStats 0.50.0
on 2015-12-12

Comments related to R / CRAN:

* The version jump is intentional.
* The win-builder server reports package installation size
  to be 5.4 MB, which is due to libs/ being large (4.7 MB).
  
Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R Under development (unstable) (2015-12-12 r69761)
  
* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.0.0 (2013-04-03)
  - R version 3.0.3 (2014-03-06)
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 (2015-12-10)
  - R version 3.2.3 Patched (2015-12-10 r69760)
  - R Under development (unstable) (2015-12-10 r69760)

* Platform: x86_64-apple-darwin10.8.0 (64-bit):
  - R version 3.1.1 (2014-07-10)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 (2015-12-10)
  - R Under development (unstable) (2015-12-12 r69765)

The native code has been validated using Valgrind (`R CMD check
--use-valgrind`; valgrind 3.10.0) as well as ASan and UBSan sanitizers
(`gcc -fsanitize=undefined,address`; gcc 4.9.2) on Linux.

It has also verified using the <http://win-builder.r-project.org/> service.

Moreover, the updates cause no issues for any of the following
68 reverse dependency on CRAN and Bioconductor, which have been
tested with `R CMD check --as-cran`: ACNE 0.8.1, CNPBayes 1.1.3,
ChIPpeakAnno 3.5.0, Clomial 1.7.0, CopywriteR 2.3.0, DAMOCLES 1.1,
EMDomics 2.1.0, EasyqpcR 1.13.0, EnrichedHeatmap 1.1.1, FastHCS 0.0.5,
FastPCS 0.1.2, FastRCS 0.0.7, GAD 1.1.1, GUIDEseq 1.1.8, Gviz 1.15.0,
LS2Wstat 2.0-3, Luminescence 0.5.1, MFHD 0.0.1, MPAgenomics 1.1.2,
MetaQC 0.1.13, MethylAid 1.5.0, MinimumDistance 1.15.0, NSA 0.0.32,
NanoStringDiff 1.1.0, PSCBS 0.60.0, QDNAseq 1.7.0, RnBeads 1.3.3,
SICtools 1.1.0, VanillaICE 1.33.1, WGCNA 1.48, XBSeq 1.1.0,
antiProfiles 1.11.0, aroma.affymetrix 2.14.0, aroma.cn 1.6.1,
aroma.core 2.14.0, aroma.light 3.1.0, bdynsys 1.3, bingat 1.1,
bnclassify 0.3.2, bsseq 1.7.0, bumphunter 1.11.0, calmate 0.12.1,
crlmm 1.29.0, dplR 1.6.3, fslr 1.5.0, genomation 1.3.3,
localgauss 0.34, loo 0.1.4, metagene 2.3.1, metagenomeSeq 1.13.0,
methylumi 2.17.0, minfi 1.17.0, mmtfa 0.1, monocle 1.5.0,
motifbreakR 1.1.3, pandaR 1.3.0, pcaMethods 1.61.0, peakPick 0.11,
r2dRue 1.0.4, randomizationInference 1.0.3, samr 2.0,
shinyMethyl 1.5.0, statar 0.3.0, stm 1.1.0, tmlenet 0.1.0,
ttScreening 1.5, visualFields 0.4.2 and wateRmelon 1.11.0.
