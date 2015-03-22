TEX=pdflatex -shell-escape

yodaqa.pdf: yodaqa.tex qa.bib ranks.eps yodaqa-arch.eps
	rm -f yodaqa.bbl
	$(TEX) yodaqa
	bibtex yodaqa || :
	$(TEX) yodaqa
	$(TEX) yodaqa

ranks.eps: ranks.gle
	gle -cairo ranks.gle

clean:
	rm -f yodaqa.pdf yodaqa.bbl yodaqa.aux yodaqa.log yodaqa.blg ranks.eps

all: yodaqa.pdf
