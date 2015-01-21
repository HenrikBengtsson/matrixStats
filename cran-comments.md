# CRAN submission matrixStats 0.13.0
on 2015-01-20

I have verified the package and its 51 reverse-dependent packages(*)
using `R CMD build` and `R CMD check --as-cran` on

* R version 2.15.3 (2013-03-01) [Platform: x86_64-unknown-linux-gnu (64-bit)].
* R version 3.0.3 (2014-03-06) [Platform: x86_64-unknown-linux-gnu (64-bit)].
* R version 3.1.2 Patched (2015-01-19 r67548) [Platform: x86_64-unknown-linux-gnu (64-bit)].
* R Under development (unstable) (2015-01-16 r67487) [Platform: x86_64-unknown-linux-gnu (64-bit)].

For the latter `R CMD check --as-cran --use-valgrind` was also used.  The native code has been validated using also `clang -c --pedantic -I... src/*.c`.

I have also verified the package using the <http://win-builder.r-project.org/> service.


Thank you,

Henrik Bengtsson
(maintainer of matrixStats)

Footnotes:
(*) The submitted updates cause no issues for any of the following 51
reverse dependencies: ACNE 0.7.0, Clomial 1.3.0, DAMOCLES 1.0,
DetMCD 0.0.1, EMDomics 0.99.0, EasyqpcR 1.9.0, FastHCS 0.0.4,
FastPCS 0.1.2, FastRCS 0.0.6, GAD 1.1.1, Gviz 1.11.5, LS2Wstat 2.0-3,
Luminescence 0.4.0, MFHD 0.0.1, MPAgenomics 1.1.2, MetaQC 0.1.13,
MethylAid 1.1.0, MinimumDistance 1.11.1, NSA 0.0.32, PSCBS 0.43.0,
QDNAseq 1.3.3, VanillaICE 1.29.4, WGCNA 1.43, antiProfiles 1.7.0,
aroma.affymetrix 2.13.0, aroma.cn 1.5.0, aroma.core 2.13.0,
aroma.light 2.3.1, bdynsys 1.3, bingat 1.1, bsseq 1.3.4,
bumphunter 1.7.3, calmate 0.11.0, crlmm 1.25.0, fslr 1.3,
localgauss 0.34, metagenomeSeq 1.9.15, methylumi 2.13.6, minfi 1.13.8,
monocle 1.1.5, pcaMethods 1.57.0, r2dRue 1.0.4,
randomizationInference 1.0.3, refund 0.1-11, samr 2.0,
shinyMethyl 1.1.0, statar 0.1.3, stm 1.0.8, ttScreening 1.5,
visualFields 0.4 and wateRmelon 1.7.0.
