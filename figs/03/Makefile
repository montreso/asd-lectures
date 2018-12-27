pdffiles := $(patsubst %-nocrop.pdf,%-crop.pdf,$(wildcard *-nocrop.pdf))

all: $(pdffiles) 

%-crop.pdf : %-nocrop.pdf
	pdfcrop $< $@ 

clean:
	rm -f *.crop.pdf
