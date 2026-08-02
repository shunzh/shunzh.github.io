# AGENTS.md

This file provides guidance to coding agents when working with code in this repository.

## Overview

This is a Jekyll-based personal academic homepage for Shun Zhang, hosted at `shunzh.github.io`. It is a fork of [leonidk/new_website](https://github.com/leonidk/new_website) (itself a fork of Jekyll Now), with a design inspired by [Jon Barron's website](https://jonbarron.info/).

## Commands

```bash
# Serve locally
jekyll serve

# Build the site
jekyll build

# Generate CV PDF from YAML data through LaTeX
bash generate_cv_pdf.sh
```

The site builds to `_site/`. There is no test suite.

## CV PDF Generation

The PDF CV is committed at `pdfs/shun-zhang-cv.pdf` and is generated from the shared YAML data files through LaTeX. Use one source of truth for local generation:

```bash
bash generate_cv_pdf.sh
```

`generate_cv_pdf.sh` calls `ruby generate_cv_tex.rb` to render `tmp/cv/shun-zhang-cv.tex`, compiles it with `latexmk -xelatex`, and copies the result to `pdfs/shun-zhang-cv.pdf`. Review the generated PDF before committing it.

## Architecture

Content is driven entirely by YAML data files and Markdown pages — no JavaScript frameworks or build steps beyond Jekyll + Sass.

**Data files (`_data/`)** are the primary place to add/edit content:
- `publications.yaml` — publication list; set `selected: true` to show on homepage; fields include `title`, `authors` (list of strings matching names in `authors.yaml`), `venue`, `year`, `paper`, `slides`, `poster`, `website`, `code`, `image`, `excerpt`, `category` (`paper` or `preprint`)
- `authors.yaml` — author metadata; `is_me: true` bolds the name; `website` enables hyperlinks when `enable_links=true`
- `timeline.yaml` — career/education entries; `type: experience` or `type: education`; `description` is a list of Markdown strings; `hide: true` suppresses an entry
- `academic_services.yaml` — reviewer/service entries

**Layouts (`_layouts/`):**
- `minimal.html` — main homepage layout; renders profile header, about blurb, career timeline, and selected publications; uses Bootstrap 5.3 via CDN
- `cv.tex.erb` — moderncv LaTeX template used by `generate_cv_tex.rb` to render the PDF CV

**Pages (`_pages/`):**
- `index.md` — uses `minimal` layout
- `about.md` — short homepage bio content, loaded by `minimal.html` via `site.pages`

**Stylesheets:**
- `style.scss` — homepage styles (compiled to `style.css`)
- `_sass/_variables.scss` — shared color variables imported by both stylesheets

**Includes (`_includes/`):**
- `list_authors.html` — renders a formatted author list, bolding `is_me` authors and optionally hyperlinking known authors
- `ga4.html` — Google Analytics 4 snippet

**Site config (`_config.yml`):** personal info (name, description, email, GitHub/LinkedIn/Scholar IDs, avatar, CV PDF path) and Jekyll settings. Update this when personal details change.

## Key Conventions

- Author names in `publications.yaml` must exactly match the `name` field in `authors.yaml` for linking/bolding to work.
- PDF files go in `pdfs/`, images go in `images/`. Both are served from the root path (e.g., `/pdfs/foo.pdf`).
- `images/shun_profile.png` is the homepage avatar referenced by `_config.yml`.
- To hide a timeline entry without deleting it, set `hide: true`.
- The homepage CV link points to the committed PDF at `cv_pdf_path` in `_config.yml`.
