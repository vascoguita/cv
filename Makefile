.PHONY: all
all: test build

.PHONY: build
build: cv.pdf

cv.pdf: cv.tex
	latexmk -pdf cv.tex

.PHONY: test
test: lint-latex

.PHONY: lint-latex
lint-latex:
	chktex cv.tex

.PHONY: clean
clean:
	rm -f cv.aux cv.fdb_latexmk cv.fls cv.log cv.out cv.pdf cv.synctex.gz
