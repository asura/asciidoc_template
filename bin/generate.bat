@ECHO OFF
cd /d %~dp0\..

SET DOCUMENT_NAME=document

CALL bundle exec asciidoctor -r asciidoctor-diagram -o result/%DOCUMENT_NAME%.html docs/%DOCUMENT_NAME%.adoc

REM PDF�ɕϊ�����B
REM �ȉ��̃v���O�C�����g�p:
REM   asciidoctor-diagram
REM   asciidoctor-pdf-cjk
REM �ڎ������A�e�͂�"Chapter"��t���Ȃ����߂ɂ�
REM adoc���̃A�g���r���[�g�w��ł͂Ȃ�
REM �I�v�V���������Ŏw�肷��K�v����B
CALL bundle exec asciidoctor-pdf -a chapter-label= -a toc -a pdf-stylesdir=style -a pdf-style=style.yml -r asciidoctor-diagram -r asciidoctor-pdf-cjk -o result/%DOCUMENT_NAME%.pdf docs/%DOCUMENT_NAME%.adoc
