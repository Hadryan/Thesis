PROJECT_NAME = thesis_main

all: paper

clean:
	rm -f *.dat
	rm -f $(PROJECT_NAME).pdf
	rm -f $(PROJECT_NAME).blg
	rm -f $(PROJECT_NAME).bbl
	rm -f $(PROJECT_NAME).aux
	rm -f $(PROJECT_NAME).out
	rm -f $(PROJECT_NAME).fls
	rm -f $(PROJECT_NAME).log

paper: $(PROJECT_NAME).pdf

$(PROJECT_NAME).pdf: clean
	pdflatex --recorder $(PROJECT_NAME)
	bibtex $(PROJECT_NAME)
	pdflatex --recorder $(PROJECT_NAME)
	pdflatex --recorder $(PROJECT_NAME)
