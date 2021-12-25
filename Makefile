.PHONY: slides handouts wide all

slidefiles := $(patsubst %.tex,slides/%.pdf,$(wildcard *.tex))
handoutfiles := $(patsubst %.tex,handouts/%.pdf,$(wildcard *.tex))
widefiles := $(patsubst %.tex,wide/%.pdf,$(wildcard *.tex))

default: slides 

all: slides handouts

slides: slides-compile $(slidefiles)

handouts: handouts-compile $(handoutfiles)
	
wide: wide-compile $(widefiles)
	
slides/%.pdf : %.tex
	ln -f logs/$@ $@
	chmod 644 logs/$@

handouts/%.pdf : %.tex
	ln -f logs/$@ $@
	chmod 644 logs/$@

wide/%.pdf : %.tex
	ln -f logs/$@ $@
	chmod 644 logs/$@

slides-compile: figs
	mkdir -p logs/slides
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \notesfalse \handoutsfalse \slidestrue  \widefalse\input{%S}'" -outdir=./logs/slides -pdf
	
handouts-compile: figs
	mkdir -p logs/handouts
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \slidesfalse \notesfalse \handoutstrue \widefalse\input{%S}'" -outdir=./logs/handouts -pdf

wide-compile: figs
	mkdir -p logs/wide
	latexmk -logfilewarninglist -bibtex- -pdflatex="pdflatex --shell-escape %O '\newif \ifwide \newif \ifnotes \newif \ifslides \newif \ifhandouts \notesfalse \handoutsfalse \slidesfalse \widetrue\input{%S}'" -outdir=./logs/wide -pdf

figs:
	(cd figs/07 ; make)
	(cd figs/09 ; make)
	
clean-slides:
	(cd logs/slides ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)
	(cd slides ; rm -f *.pdf)
	
clean-handouts:
	(cd logs/handouts ; rm -f *.pdf *.log *.aux *.fdb_latexmk *.fls *.nav *.bbl *.blg *.out *.toc *.snm *.synctex.gz *.vrb)
	(cd handouts ; rm -f *.pdf)
	
cleanall: clean-slides clean-handouts
	
