#!/bin/bash
set -e

pagedjs-cli --allowedDomain localhost http://localhost:4000/cv/ -o pdfs/shun-zhang-cv.pdf
