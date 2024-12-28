all:
	asciidoctor-pdf -D build/ -a pdf-themesdir=resources/themes -a pdf-theme=zimera -r asciidoctor-diagram,asciidoctor-lists book-title.adoc

view:
	mupdf build/book-title.pdf
