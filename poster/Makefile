TEX=xelatex

poster-beamerposter.pdf: poster-beamerposter.tex cocopf.bib bbob.bib
	rm -f poster-beamerposter.bbl
	$(TEX) poster-beamerposter
	bibtex poster-beamerposter || :
	$(TEX) poster-beamerposter
	$(TEX) poster-beamerposter

clean:
	rm -f poster-beamerposter.pdf poster-beamerposter.bbl poster-beamerposter.aux poster-beamerposter.log poster-beamerposter.blg

all: poster-beamerposter.pdf
