#!/bin/bash
set -e

mkdir -p ./outputs/pdf
mkdir -p ./outputs/html

CURRENT_PATH=`pwd`
ASCIIDOCTOR_PDF_DIR=`gem contents asciidoctor-pdf --show-install-dir`

asciidoctor -B ${CURRENT_PATH}/ -D ${CURRENT_PATH}/outputs/html/ -o index.html CV.adoc
asciidoctor-pdf -B ${CURRENT_PATH}/ -D ${CURRENT_PATH}/outputs/pdf/ -a pdf-theme=theme.yml -a pdf-fontsdir="${CURRENT_PATH}/fonts;GEM_FONTS_DIR" -o CV.pdf CV.adoc
