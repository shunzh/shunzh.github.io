#!/bin/bash

# Check if either cv.md, cv.html, or something in _posts is part of the path in staged changes
git diff --name-only --cached | grep -E 'cv\.md|cv\.html|_posts/'
if [ $? -eq 0 ]; then
  echo "cv-related files are changed. regenerating cv pdf..."
  pagedjs-cli _site/cv/index.html -o pdfs/shun-zhang-cv.pdf

  git add pdfs/shun-zhang-cv.pdf
fi
