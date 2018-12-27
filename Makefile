.PHONY: figs slides handouts notes all

notefiles := $(shell fgrep -l "\\note" *.tex)

basic: slides

all: slides handouts

figs:
	(cd figs/09 ; make)

notes: figs
	mkdir -p logs/notes
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \slidesfalse \handoutsfalse \notestrue \widefalse\input{%S}'" -outdir=./logs/notes -silent -pdf $(notefiles)
	
slides: figs
	(cd figs/07 ; make)
	mkdir -p logs/slides
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \notesfalse \handoutsfalse \slidestrue  \widefalse\input{%S}'" -outdir=./logs/slides -pdf

wide: figs
	(cd figs/07 ; make)
	mkdir -p logs/wide
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \notesfalse \handoutsfalse \slidesfalse \widetrue\input{%S}'" -outdir=./logs/wide -pdf

	
handouts: figs
	mkdir -p logs/handouts
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \slidesfalse \notesfalse \handoutstrue \widefalse\input{%S}'" -outdir=./logs/handouts -pdf

clean-slides:
	(cd logs/slides ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)
	
clean-wide:
	(cd logs/wide ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)
	
clean-handouts:
	(cd logs/handouts ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)

clean-notes:
	(cd logs/notes ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)
	
cleanall: clean-slides clean-handouts
	
