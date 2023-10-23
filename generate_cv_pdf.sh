#!/bin/bash

git diff --name-only --cached | grep 'cv.md'
if [ $? -eq 0 ]; then
  echo "cv.md is updated, regenerating pdf..."
  pagedjs-cli _site/cv/index.html -o pdfs/shun-zhang-cv.pdf

  git add pdfs/shun-zhang-cv.pdf
fi
