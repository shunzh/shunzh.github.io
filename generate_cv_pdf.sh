#!/bin/bash
set -e

ruby generate_cv_tex.rb
latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir=tmp/cv tmp/cv/shun-zhang-cv.tex
cp tmp/cv/shun-zhang-cv.pdf pdfs/shun-zhang-cv.pdf
