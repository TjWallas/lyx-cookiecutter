LYX = $(shell which lyx)
LYX_ARGS = --force-overwrite --export-to pdf2

FILENAME = {{cookiecutter.document_name}}

TARGET = $(FILENAME).pdf
SOURCE = $(FILENAME).lyx

.PHONY: clean rebuild all

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(LYX) $(LYX_ARGS) $@ $(SOURCE)

clean:
	$(RM) $(FILENAME).tex $(FILENAME).aux $(FILENAME).bbl $(FILENAME).blg $(FILENAME).pdf
	$(RM) $(FILENAME).log $(FILENAME).out $(FILENAME).idx

rebuild: clean all
