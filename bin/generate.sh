#!/bin/sh

mkdir -p result
bundle exec asciidoctor-pdf -a chapter-label= -a toc -a pdf-stylesdir=style -a pdf-style=style.yml -r asciidoctor-diagram -r asciidoctor-pdf-cjk -o result/document.pdf docs/document.adoc
