# CRAN submission matrixStats 0.14.2
on 2015-06-23

This submission corrects a bug introduced in 0.14.1:

o BUG FIX: x_OP_y() and t_tx_OP_y() would return garbage on 
  Solaris SPARC (and possibly other architectures as well)
  when input was integer and had missing values.

which was due to macros expanding to an invalid / non-defined
`(int) R_NaReal` coercion, cf. Section 'Using the Undefined
Behaviour Sanitizer' in WRE.

Thank you


## Notes not sent to CRAN
matrixStats 0.14.2 have been verified using `R CMD check --as-cran` on:

* R version 3.2.1 (2015-06-18) [Platform: x86_64-unknown-linux-gnu (64-bit)]
* R version 3.2.1 Patched (2015-06-18 r68542) [Platform: x86_64-w64-mingw32/x64 (64-bit)]
* R Under development (unstable) (2015-06-22 r68571) [Platform: x86_64-w64-mingw32/x64 (64-bit)]
* R release and R devel by the <http://win-builder.r-project.org/> service.

and R CMD check --use-valgrind on:

* R version 3.2.0 (2015-06-18) [Platform: x86_64-unknown-linux-gnu (64-bit)]
* R version 3.2.1 (2015-06-18) [Platform: x86_64-unknown-linux-gnu (64-bit)]


Footnotes:
(*) The submitted updates cause no issues for any of the following 54 reverse dependencies on CRAN and Bioconductor: ACNE 0.8.0, Clomial 1.4.0, CopywriteR 2.0.6, DAMOCLES 1.1, EMDomics 1.0.0, EasyqpcR 1.10.1, FastHCS 0.0.5, FastPCS 0.1.2, FastRCS 0.0.6, GAD 1.1.1, Gviz 1.12.0, LS2Wstat 2.0-3, Luminescence 0.4.4, MFHD 0.0.1, MPAgenomics 1.1.2, MetaQC 0.1.13, MethylAid 1.2.5, MinimumDistance 1.12.0, NSA 0.0.32, PSCBS 0.44.0, QDNAseq 1.4.0, RnBeads 1.0.0, VanillaICE 1.30.1, WGCNA 1.47, antiProfiles 1.8.0, aroma.affymetrix 2.13.2, aroma.cn 1.6.0, aroma.core 2.13.1, aroma.light 2.4.0, bdynsys 1.3, bingat 1.1, bsseq 1.4.0, bumphunter 1.8.0, calmate 0.12.0, crlmm 1.26.0, dplR 1.6.3, fslr 1.4.4, localgauss 0.34, metagenomeSeq 1.10.0, methylumi 2.14.0, minfi 1.14.0, mmtfa 0.1, monocle 1.2.0, pcaMethods 1.58.0, r2dRue 1.0.4, randomizationInference 1.0.3, refund 0.1-11, samr 2.0, shinyMethyl 1.2.0, statar 0.3.0, stm 1.0.8, ttScreening 1.5, visualFields 0.4.2 and wateRmelon 1.8.0.
