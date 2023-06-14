#!/bin/bash

chrome_cmd="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$chrome_cmd" --headless --no-sandbox --no-pdf-header-footer --print-to-pdf=shun-zhang-cv.pdf _site/cv/index.html

git add shun-zhang-cv.pdf
