OUTPUT = blueprint2.xmt
SOURCES = content.xml meta.xml styles.xml META-INF/manifest.xml Thumbnails/thumbnail.png attachments/65j3ngi9msef2s1pqlg6h9duuq.png

.PHONY: all clean

all: clean $(OUTPUT)

$(OUTPUT): $(SOURCES)
	zip $(addsuffix .zip,$(basename $(OUTPUT))) $(SOURCES)
	mv -fT $(addsuffix .zip,$(basename $(OUTPUT))) $(OUTPUT)

clean:
	rm -f $(OUTPUT)