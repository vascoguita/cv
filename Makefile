# SPDX-FileCopyrightText: 2025 Vasco Guita <vasco@guita.org>
#
# SPDX-License-Identifier: MIT

.PHONY: all
all: build test

.PHONY: build
build: cv.pdf

cv.pdf: cv.tex
	pdflatex -interaction=nonstopmode -halt-on-error cv.tex

.PHONY: test
test: lint-latex lint-md lint-make lint-license

.PHONY: lint-latex
lint-latex:
	chktex cv.tex

.PHONY: lint-md
lint-md:
	markdownlint-cli2 "**/*.md"

.PHONY: lint-make
lint-make:
	checkmake Makefile

.PHONY: lint-license
lint-license:
	reuse lint

.PHONY: clean
clean:
	rm -f cv.aux cv.fdb_latexmk cv.fls cv.log cv.out cv.pdf cv.synctex.gz
