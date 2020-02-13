# Notes

In order to run these checks successfully on a machine _without internet
access_, make sure to first populate the 'crancache' cache by pre-installing
all packages to be tested plus a few more:

```sh
## Update current crancache
$ revdep/run.R --preinstall-update

## Used by R itself
$ revdep/run.R --preinstall RCurl XML

## Needed by some packages to be tested (identified by trial and error)
$ revdep/run.R --preinstall Rsamtools sf

## All packages to be tested
$ revdep/run.R --preinstall-children
```


## Package that requires Internet

The following packages will fail when tested in 'offline' mode because
their examples or tests require a working internet connection:

* bumphunter
* GAPGOM
