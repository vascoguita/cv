# Curriculum Vitae

[![License CC BY-SA 4.0](https://img.shields.io/badge/License-CC_BY--SA_4.0-yellow.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](.github/CODE_OF_CONDUCT.md)
[![Build](https://github.com/vascoguita/cv/actions/workflows/build.yml/badge.svg)](https://github.com/vascoguita/cv/actions/workflows/build.yml)
[![CodeQL](https://github.com/vascoguita/cv/actions/workflows/github-code-scanning/codeql/badge.svg)](https://github.com/vascoguita/cv/actions/workflows/github-code-scanning/codeql)
[![Dependabot](https://github.com/vascoguita/cv/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/vascoguita/cv/actions/workflows/dependabot/dependabot-updates)

This repository contains my CV written in LaTeX.

## Build

### Using Docker (Recommended)

Build the PDF file with the official TeX Live image:

```shell
docker run -v $(pwd):/data -w /data texlive/texlive:latest latexmk -pdf cv.tex
```

### Locally

**Requirements**: [TeX Live](https://www.tug.org/texlive).

Build the PDF file with:

```shell
latexmk -pdf cv.tex
```
