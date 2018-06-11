@ECHO OFF
cd /d %~dp0\..

SET DOCUMENT_NAME=document

CALL bundle exec asciidoctor -r asciidoctor-diagram -o result/%DOCUMENT_NAME%.html docs/%DOCUMENT_NAME%.adoc

REM PDFに変換する。
REM 以下のプラグインを使用:
REM   asciidoctor-diagram
REM   asciidoctor-pdf-cjk
REM 目次を作り、各章に"Chapter"を付けないためには
REM adoc中のアトリビュート指定ではなく
REM オプション引数で指定する必要あり。
CALL bundle exec asciidoctor-pdf -a chapter-label= -a toc -a pdf-stylesdir=style -a pdf-style=style.yml -r asciidoctor-diagram -r asciidoctor-pdf-cjk -o result/%DOCUMENT_NAME%.pdf docs/%DOCUMENT_NAME%.adoc
