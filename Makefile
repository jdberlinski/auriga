.PHONY: main clean FORCE

all: main FORCE clean

main: presentation.pdf

%.pdf: FORCE
	latexmk -pdflatex='xelatex' -pdf $(patsubst %.pdf,%.tex,$@)

clean:
	latexmk -pdf -c
