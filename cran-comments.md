# CRAN submission matrixStats 0.15.0
on 2015-10-26

Updates related to R / CRAN:

* Explicitly importing core R functions

Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.0.3 (2014-03-06)
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R version 3.2.2 Patched (2015-10-23 r69563)
  - R Under development (unstable) (2015-10-23 r69563)

* Platform: x86_64-apple-darwin13.4.0 (64-bit):
  - R version 3.2.2 Patched (2015-10-22 r69556)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 Patched (2015-10-19 r69550)
  - R Under development (unstable) (2015-10-24 r69569)

It has also verified using the <http://win-builder.r-project.org/> service.

Moreover, the updates cause no issues for any of the following
66 reverse dependency on CRAN and Bioconductor, which have been
tested with `R CMD check --as-cran`: ACNE 0.8.0, CNPBayes 1.1.1,
ChIPpeakAnno 3.5.0, Clomial 1.7.0, CopywriteR 2.3.0, DAMOCLES 1.1,
EMDomics 2.1.0, EasyqpcR 1.13.0, EnrichedHeatmap 1.1.1,
FastHCS 0.0.5, FastPCS 0.1.2, FastRCS 0.0.7, GAD 1.1.1,
GUIDEseq 1.1.4, Gviz 1.15.0, LS2Wstat 2.0-3, Luminescence 0.4.6,
MFHD 0.0.1, MPAgenomics 1.1.2, MetaQC 0.1.13, MethylAid 1.5.0,
MinimumDistance 1.15.0, NSA 0.0.32, NanoStringDiff 1.1.0,
PSCBS 0.50.0, QDNAseq 1.7.0, RnBeads 1.3.1, SICtools 1.1.0,
VanillaICE 1.33.0, WGCNA 1.47, XBSeq 1.1.0, antiProfiles 1.11.0,
aroma.affymetrix 2.14.0, aroma.cn 1.6.0, aroma.core 2.14.0,
aroma.light 3.1.0, bdynsys 1.3, bingat 1.1, bnclassify 0.3.0,
bsseq 1.7.0, bumphunter 1.11.0, calmate 0.12.0, crlmm 1.29.0,
dplR1.6.3, fslr 1.5.0, genomation 1.3.0, localgauss 0.34,
loo 0.1.3, metagenomeSeq 1.13.0, methylumi 2.17.0, minfi 1.17.0,
mmtfa 0.1, monocle 1.5.0, motifbreakR 1.1.0, pandaR 1.3.0,
pcaMethods 1.61.0, r2dRue 1.0.4, randomizationInference 1.0.3,
samr 2.0, shinyMethyl 1.5.0, statar 0.3.0, stm 1.1.0,
tmlenet 0.1.0, ttScreening 1.5, visualFields 0.4.2 and
wateRmelon 1.11.0.
