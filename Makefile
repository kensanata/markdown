.PHONY: all clean mrproper
all: light.pdf

%.pdf: %.tex main.tex
	latexmk $<

clean:
	latexmk -c
	rm -f *.snm *.run.xml *.nav *.bbl

mrproper: clean
	rm -rf _markdown_dark _markdown_light _markdown_main _minted-dark _minted-light _minted-main
	latexmk -C
