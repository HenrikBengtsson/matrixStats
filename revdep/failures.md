# clusterExperiment

<details>

* Version: 2.10.0
* GitHub: https://github.com/epurdom/clusterExperiment
* Source code: https://github.com/cran/clusterExperiment
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 177

Run `revdep_details(, "clusterExperiment")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("rsecFluidigm", package = "clusterExperiment"):
      Search path was changed
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.6Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        data   3.6Mb
        doc   10.3Mb
        libs   1.9Mb
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function calls to a different package:
      .C(ape::node_depth, ...)
      .C(ape::node_depth_edgelength, ...)
      .C(ape::node_height, ...)
      .C(ape::node_height_clado, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘scRNAseq’, ‘ConsensusClusterPlus’
    ```

# metagene

<details>

* Version: 2.22.0
* GitHub: https://github.com/CharlesJB/metagene
* Source code: https://github.com/cran/metagene
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 136

Run `revdep_details(, "metagene")` for more info

</details>

## In both

*   checking whether package ‘metagene’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘DESeq’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/new/metagene.Rcheck/metagene’

```
### CRAN

```
* installing *source* package ‘metagene’ ...
** using staged installation
** R
Warning: namespace ‘metagene’ is not available and has been replaced
by .GlobalEnv when processing object ‘demo_bh_multicore’
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘DESeq’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘metagene’
* removing ‘/c4/home/henrik/repositories/matrixStats/revdep/checks/metagene/old/metagene.Rcheck/metagene’

```
