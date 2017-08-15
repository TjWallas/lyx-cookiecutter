LYX = $(shell which lyx)
LYX_ARGS = --force-overwrite --export-to pdflatex

PDFLATEX = $(shell which pdflatex)
PDFLATEX_ARGS = -halt-on-error -jobname

BIBTEX = $(shell which bibtex)

FILENAME = {{cookiecutter.document_name}}

TARGET = $(FILENAME).pdf
TARGET_TEX = $(FILENAME).tex

SOURCE = $(FILENAME).lyx
SOURCE_BIB = $(wildcard *.bib)

.PHONY: clean rebuild all

all: $(TARGET)

$(TARGET): $(SOURCE) $(SOURCE_BIB)
	$(LYX) $(LYX_ARGS) $(TARGET_TEX) $(SOURCE)
	$(PDFLATEX) $(PDFLATEX_ARGS) $(FILENAME) $(TARGET_TEX)
	$(BIBTEX) $(FILENAME).aux
	$(PDFLATEX) $(PDFLATEX_ARGS) $(FILENAME) $(TARGET_TEX)
	$(PDFLATEX) $(PDFLATEX_ARGS) $(FILENAME) $(TARGET_TEX)

clean:
	$(RM) $(FILENAME).tex $(FILENAME).aux $(FILENAME).bbl $(FILENAME).blg $(FILENAME).pdf $(FILENAME).log $(FILENAME).out $(FILENAME).idx

rebuild: clean all
