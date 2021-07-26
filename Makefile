include .make/Makefile

test: $(R_OUTDIR)/tests/%.R
	$(MKDIR) $(R_OUTDIR)/tests/utils
	$(CP) tests/utils/*.R $(R_OUTDIR)/tests/utils
	$(CD) $(R_OUTDIR)/tests;\
	$(R_SCRIPT) -e "for (f in list.files(pattern='[.]R$$')) { print(f); source(f, echo=TRUE) }"

spelling:
	$(R_SCRIPT) -e "spelling::spell_check_package()"
	$(R_SCRIPT) -e "spelling::spell_check_files(c('NEWS', dir('vignettes', pattern='[.]rsp$$', full.names=TRUE)), ignore=readLines('inst/WORDLIST', warn=FALSE))"


build-old-r: $(PKG_FILES)
	$(MKDIR) $(R_OUTDIR)
	$(RM) $@
	$(CD) $(R_OUTDIR);\
	$(R) $(R_NO_INIT) CMD build --no-vignettes $(R_BUILD_OPTS) $(PKG_DIR)

check-old-r: $(R_OUTDIR)/$(PKG_TARBALL)
	$(CD) $(R_OUTDIR);\
	export _R_CHECK_FORCE_SUGGESTS_=false;\
	export _R_CHECK_FULL_=$(_R_CHECK_FULL_);\
	$(R) --no-init-file CMD check $(PKG_TARBALL);\
	echo done > $(PKG_NAME).Rcheck/.check.complete
