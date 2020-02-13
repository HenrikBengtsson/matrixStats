# Notes

In order to run these checks successfully on a machine _without internet
access_, make sure to first populate the 'crancache' cache by pre-installing
all packages to be tested plus a few more:

```sh
## Used by R itself
$ revdep/run.R --preinstall RCurl XML

## Needed by some packages to be tested (identified by trial and error)
$ revdep/run.R --preinstall Rsamtools sf

## All packages to be tested
$ revdep/run.R --preinstall-children
```
