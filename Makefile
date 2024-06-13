all:
	asciidoctor-pdf -D build/ -a pdf-themesdir=resources/themes -a pdf-theme=zimera book-title.adoc

all-with-diagram:
	asciidoctor-pdf -D build/ -a pdf-themesdir=resources/themes -a pdf-theme=zimera -r asciidoctor-diagram book-title.adoc

view:
	mupdf build/book-title.pdf
