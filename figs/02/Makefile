pdffiles := $(patsubst %.plt,%.pdf,$(wildcard *.plt))

all: $(pdffiles) 

%.pdf : %.plt setpdf.gpt Makefile 
	gnuplot setpdf.gpt $< > $@

clean:
	rm -f *.pdf
