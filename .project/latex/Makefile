LATEX = pdflatex
BIBER = biber
DOCS = main numerology map

.PHONY: all clean distclean

all: $(DOCS:%=%.pdf)

%.pdf: %.tex ../../references.bib
	$(LATEX) -interaction=nonstopmode $*
	$(BIBER) $*
	$(LATEX) -interaction=nonstopmode $*
	$(LATEX) -interaction=nonstopmode $*

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.synctex.gz *.fdb_latexmk *.fls

distclean: clean
	rm -f $(DOCS:%=%.pdf)
