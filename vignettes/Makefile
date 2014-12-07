# MACRO DEFINITIONS
RM=rm -f
R=$(R_HOME)/bin/Rscript

# TARGET DEFINITIONS
all: vignettes tex index.html

# Build all vignettes that has a %\VignetteBuild{} markup
vignettes:
	"$(R)" -e "if (getRversion() < 3) R.rsp::buildNonSweaveVignettes()"
	"$(R)" -e "if (getRversion() >= 3) unlink('dummy.Rnw')"

# Compile any TeX files for which a PDF is missing
tex:
	"$(R)" -e "if (packageVersion('R.rsp') >= '0.9.1') R.rsp::buildNonSweaveTexToPdf()"

# Create an HTML vignette index page
index.html:
	"$(R)" -e "if (getRversion() < 3) R.rsp::buildPkgIndexHtml()"

# Certain LaTeX files (e.g. bib, bst, sty) must be part of the build 
# such that they are available for R CMD check.  These are excluded
# from the install using .Rinstignore in the top-level directory.
clean:
	$(RM) enginesMap.R
	$(RM) index.html.rsp
	$(RM) *.rsp.R
	$(RM) *.tex *.aux *.bbl *.blg *.log *.out *.sty *.toc
	$(RM) -r figures/
	$(RM) Makefile
