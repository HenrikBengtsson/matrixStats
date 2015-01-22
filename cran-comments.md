# CRAN submission matrixStats 0.13.1
on 2015-01-21

This submission corrects memory-access error detected by CRAN's
ASAN/UBSAN/valgrind checks on yesterday's matrixStats 0.13.0
submission.  From the NEWS file:

o BUG FIX: diff2() with differences >= 3 would *read* spurious values
  beyond the allocated memory.  This error, introduced in 0.13.0, was
  harmless in the sense that the returned value was unaffected and still
  correct.  Thanks to Brian Ripley and the CRAN check tools for catching
  this.  I could reproduce it locally with 'valgrind'.

Thank you,

Henrik
