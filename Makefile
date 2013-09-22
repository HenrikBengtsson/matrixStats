# Makefile for R packages

# CORE MACROS
ifeq ($(OS), Windows_NT)
CD=cd
else
CD=cd -P "$(CURDIR)"; cd   # This handles the case when CURDIR is a softlink
endif
CP=cp
MAKE=make
MV=mv
RM=rm -f
MKDIR=mkdir -p

# PACKAGE MACROS
PKG_VERSION := $(shell grep -i ^version DESCRIPTION | cut -d : -d \  -f 2)
PKG_NAME    := $(shell grep -i ^package DESCRIPTION | cut -d : -d \  -f 2)
PKG_DIR     := $(shell basename "$(CURDIR)")
PKG_TARBALL := $(PKG_NAME)_$(PKG_VERSION).tar.gz

# FILE MACROS
FILES_R := $(wildcard R/*.R)
FILES_DATA := $(wildcard data/*)
FILES_MAN := $(wildcard man/*.Rd)
FILES_INCL := $(wildcard incl/*)
FILES_INST := $(wildcard inst/* inst/*/* inst/*/*/* inst/*/*/*/*)
FILES_VIGNETTES := $(wildcard vignettes/*)
FILES_SRC := $(wildcard src/* src/*/* src/*/*/* src/*/*/*/* src/*/*/*/*/* src/*/*/*/*/*/* src/*/*/*/*/*/*/* src/*/*/*/*/*/*/*/*)
FILES_TESTS := $(wildcard tests/*.R)
FILES_NEWS := $(wildcard NEWS inst/NEWS)
FILES_ROOT := DESCRIPTION NAMESPACE $(wildcard .Rbuildignore .Rinstignore)
PKG_FILES := $(FILES_ROOT) $(FILES_NEWS) $(FILES_R) $(FILES_DATA) $(FILES_MAN) $(FILES_INST) $(FILES_VIGNETTES) $(FILES_SRC) $(FILES_TESTS)
FILES_MAKEFILE := $(wildcard ../../Makefile)

# Has vignettes in 'vignettes/' or 'inst/doc/'?
DIR_VIGNS := $(wildcard vignettes inst/doc)

# R MACROS
R_HOME := $(shell echo "$(R_HOME)" | tr "\\\\" "/")
R = R --no-init-file
R_CMD = $(R) CMD
R_SCRIPT = Rscript
R_VERSION_STATUS := $(shell $(R_SCRIPT) -e "status <- tolower(R.version[['status']]); if (regexpr('unstable', status) != -1L) status <- 'devel'; cat(status)")
R_VERSION := $(shell $(R_SCRIPT) -e "cat(as.character(getRversion()))")
R_VERSION_FULL := $(R_VERSION)$(R_VERSION_STATUS)
R_LIBS_USER_X := $(shell $(R_SCRIPT) -e "cat(.libPaths()[1])")
R_OUTDIR := _R-$(R_VERSION_FULL)
## R_BUILD_OPTS := 
## R_BUILD_OPTS := $(R_BUILD_OPTS) --no-build-vignettes
R_CHECK_OUTDIR := $(R_OUTDIR)/$(PKG_NAME).Rcheck
R_CHECK_OPTS = --as-cran --timings
R_CRAN_OUTDIR := $(R_OUTDIR)/$(PKG_NAME)_$(PKG_VERSION).CRAN

HAS_ASPELL := $(shell $(R_SCRIPT) -e "cat(!is.na(utils:::aspell_find_program('aspell')))")

all: build install check


# Displays macros
debug: 
	@echo CURDIR=\'$(CURDIR)\'
	@echo R_HOME=\'$(R_HOME)\'
	@echo
	@echo PKG_DIR=\'$(PKG_DIR)\'
	@echo PKG_NAME=\'$(PKG_NAME)\'
	@echo PKG_VERSION=\'$(PKG_VERSION)\'
	@echo PKG_TARBALL=\'$(PKG_TARBALL)\'
	@echo
	@echo HAS_ASPELL=\'$(HAS_ASPELL)\'
	@echo
	@echo R=\'$(R)\'
	@echo R_CMD=\'$(R_CMD)\'
	@echo R_SCRIPT=\'$(R_SCRIPT)\'
	@echo R_VERSION=\'$(R_VERSION)\'
	@echo R_VERSION_STATUS=\'$(R_VERSION_STATUS)\'
	@echo R_VERSION_FULL=\'$(R_VERSION_FULL)\'
	@echo R_LIBS_USER_X=\'$(R_LIBS_USER_X)\'
	@echo R_OUTDIR=\'$(R_OUTDIR)\'
	@echo R_CHECK_OUTDIR=\'$(R_CHECK_OUTDIR)\'
	@echo R_CHECK_OPTS=\'$(R_CHECK_OPTS)\'
	@echo R_CRAN_OUTDIR=\'$(R_CRAN_OUTDIR)\'
	@echo "Default packages:" $(shell $(R) --slave -e "cat(paste(getOption('defaultPackages'), collapse=', '))")


debug_full: debug
	@echo
	@echo FILES_ROOT=\'$(FILES_ROOT)\'
	@echo FILES_R=\'$(FILES_R)\'
	@echo FILES_DATA=\'$(FILES_DATA)\'
	@echo FILES_MAN=\'$(FILES_MAN)\'
	@echo FILES_INST=\'$(FILES_INST)\'
	@echo FILES_VIGNETTES=\'$(FILES_VIGNETTES)\'
	@echo FILES_SRC=\'$(FILES_SRC)\'
	@echo FILES_TESTS=\'$(FILES_TESTS)\'
	@echo FILES_INCL=\'$(FILES_INCL)\'
	@echo
	@echo DIR_VIGNS=\'$(DIR_VIGNS)\'
	@echo dirname\(DIR_VIGNS\)=\'$(shell dirname $(DIR_VIGNS))\'



# Update existing packages
update:
	$(R_SCRIPT) -e "update.packages(ask=FALSE); source('http://bioconductor.org/biocLite.R'); biocLite(ask=FALSE);"

# Install missing dependencies
deps: DESCRIPTION
	$(MAKE) update
	$(R_SCRIPT) -e "x <- unlist(strsplit(read.dcf('DESCRIPTION',fields=c('Depends', 'Imports', 'Suggests')),',')); x <- gsub('([[:space:]]*|[(].*[)])', '', x); libs <- .libPaths()[file.access(.libPaths(), mode=2) == 0]; x <- unique(setdiff(x, c('R', rownames(installed.packages(lib.loc=libs))))); if (length(x) > 0) { install.packages(x); x <- unique(setdiff(x, c('R', rownames(installed.packages(lib.loc=libs))))); source('http://bioconductor.org/biocLite.R'); biocLite(x); }"

setup:	update deps
	$(R_SCRIPT) -e "source('http://aroma-project.org/hbLite.R'); hbLite('R.oo')"


# Build source tarball
../$(R_OUTDIR)/$(PKG_TARBALL): $(PKG_FILES)
	$(MKDIR) ../$(R_OUTDIR)
	$(CD) ../$(R_OUTDIR);\
	$(R_CMD) build $(R_BUILD_OPTS) ../$(PKG_DIR)

build: ../$(R_OUTDIR)/$(PKG_TARBALL)

build_force:
	$(RM) ../$(R_OUTDIR)/$(PKG_TARBALL)
	$(MAKE) install


# Install on current system
$(R_LIBS_USER_X)/$(PKG_NAME)/DESCRIPTION: ../$(R_OUTDIR)/$(PKG_TARBALL)
	$(CD) ../$(R_OUTDIR);\
	$(R_CMD) INSTALL $(PKG_TARBALL)

install: $(R_LIBS_USER_X)/$(PKG_NAME)/DESCRIPTION

install_force:
	$(RM) $(R_LIBS_USER_X)/$(PKG_NAME)/DESCRIPTION
	$(MAKE) install


# Check source tarball
../$(R_CHECK_OUTDIR)/.check.complete: ../$(R_OUTDIR)/$(PKG_TARBALL)
	$(CD) ../$(R_OUTDIR);\
	$(RM) -r $(PKG_NAME).Rcheck;\
	export _R_CHECK_CRAN_INCOMING_=1;\
	export _R_CHECK_DOT_INTERNAL_=1;\
	export _R_CHECK_USE_CODETOOLS_=1;\
	export _R_CHECK_CRAN_INCOMING_USE_ASPELL_=$(HAS_ASPELL);\
	export _R_CHECK_FORCE_SUGGESTS_=0;\
	export _R_CHECK_FULL_=1;\
	$(R_CMD) check $(R_CHECK_OPTS) $(PKG_TARBALL);\
	echo done > $(PKG_NAME).Rcheck/.check.complete

check: ../$(R_CHECK_OUTDIR)/.check.complete


check_force:
	$(RM) -r ../$(R_CHECK_OUTDIR)
	$(MAKE) check


# Install and build binaries
binary: ../$(R_OUTDIR)/$(PKG_TARBALL)
	$(CD) ../$(R_OUTDIR);\
	$(R_CMD) INSTALL --build --merge-multiarch $(PKG_TARBALL)


# Check the line width of incl/*.(R|Rex) files [max 100 chars in R devel]
check_Rex:
	$(R_SCRIPT) -e "if (!file.exists('incl')) quit(status=0); setwd('incl/'); fs <- dir(pattern='[.](R|Rex)$$'); ns <- sapply(fs, function(f) max(nchar(readLines(f)))); ns <- ns[ns > 100]; print(ns); if (length(ns) > 0L) quit(status=1)"


# Build Rd help files from Rdoc comments
Rd: check_Rex
	$(R_SCRIPT) -e "setwd('..'); Sys.setlocale(locale='C'); R.oo::compileRdoc('$(PKG_NAME)', path='$(PKG_DIR)')"

%.Rd:
	$(R_SCRIPT) -e "setwd('..'); Sys.setlocale(locale='C'); R.oo::compileRdoc('$(PKG_NAME)', path='$(PKG_DIR)', '$*.R')"


spell_Rd:
	$(R_SCRIPT) -e "f <- list.files('man', pattern='[.]Rd$$', full.names=TRUE); utils::aspell(f, filter='Rd')"


spell_NEWS:
	$(R_SCRIPT) -e "utils::aspell('$(FILES_NEWS)')"

spell:
	$(R_SCRIPT) -e "utils::aspell('DESCRIPTION', filter='dcf')"


# Build package vignettes
../$(R_OUTDIR)/vigns: install
	$(MKDIR) ../$(R_OUTDIR)/vigns/$(shell dirname $(DIR_VIGNS))
	$(CP) DESCRIPTION ../$(R_OUTDIR)/vigns/
	$(CP) -r $(DIR_VIGNS) ../$(R_OUTDIR)/vigns/$(shell dirname $(DIR_VIGNS))
	$(CD) ../$(R_OUTDIR)/vigns;\
	$(R_SCRIPT) -e "v <- tools::buildVignettes(dir='.'); file.path(getwd(), v[['outputs']])"

vignettes: ../$(R_OUTDIR)/vigns


# Run package tests
../$(R_OUTDIR)/tests/%.R: $(FILES_TESTS)
	$(MKDIR) ../$(R_OUTDIR)/tests
	$(CP) $? ../$(R_OUTDIR)/tests

test_files: ../$(R_OUTDIR)/tests/*.R

test: ../$(R_OUTDIR)/tests/%.R
	$(CD) ../$(R_OUTDIR)/tests;\
	$(R_SCRIPT) -e "for (f in list.files(pattern='[.]R$$')) { source(f, echo=TRUE) }"



# Run extensive CRAN submission checks
../$(R_CRAN_OUTDIR)/$(PKG_TARBALL): ../$(R_OUTDIR)/$(PKG_TARBALL)
	$(MKDIR) ../$(R_CRAN_OUTDIR)
	$(CP) ../$(R_OUTDIR)/$(PKG_TARBALL) ../$(R_CRAN_OUTDIR)

../$(R_CRAN_OUTDIR)/$(PKG_NAME),EmailToCRAN.txt: ../$(R_CRAN_OUTDIR)/$(PKG_TARBALL)
	$(CD) ../$(R_CRAN_OUTDIR);\
	$(R_SCRIPT) -e "RCmdCheckTools::testPkgsToSubmit()"

setup_RCmdCheckTools:
	$(R_SCRIPT) -e "source('http://aroma-project.org/hbLite.R'); hbLite('RCmdCheckTools', devel=TRUE)"

cran: setup_RCmdCheckTools ../$(R_CRAN_OUTDIR)/$(PKG_NAME),EmailToCRAN.txt

# Backward compatibilities
submit: cran


Makefile: $(FILES_MAKEFILE)
	$(R_SCRIPT) -e "d <- 'Makefile'; s <- '../../Makefile'; if (file_test('-nt', s, d) && (regexpr('Makefile for R packages', readLines(s, n=1L)) != -1L)) file.copy(s, d, overwrite=TRUE)"
