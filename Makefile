MAIN = main
LATEX = pdflatex
BIBER = biber

.PHONY: all clean distclean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEX) -interaction=nonstopmode $(MAIN)
	$(BIBER) $(MAIN)
	$(LATEX) -interaction=nonstopmode $(MAIN)
	$(LATEX) -interaction=nonstopmode $(MAIN)

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc

distclean: clean
	rm -f $(MAIN).pdf
