# cna

<details>

* Version: 3.0.0
* GitHub: NA
* Source code: https://github.com/cran/cna
* Date/Publication: 2020-09-13 13:10:14 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "cna")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Error: processing vignette 'cna_vignette.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'cna_vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `nicefrac.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.12 \usepackage
                    {float}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building 'cna_vignette.Rnw'
    
    SUMMARY: processing the following file failed:
      'cna_vignette.Rnw'
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

