pdffiles := $(patsubst %.plt,%.pdf,$(wildcard *.plt))

all: $(pdffiles) 

%.eps : %.plt seteps.gpt Makefile 
	gnuplot seteps.gpt $< > $@

%.pdf : %.eps
	epstopdf $< 

clean:
	rm -f *.pdf
