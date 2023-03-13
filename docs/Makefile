.PHONY: build-html
build-html:
	mkdir -p _build/docs/html
	sphinx-build -b html -d _build/docs/doctrees notice _build/docs/html


.PHONY: build-pdf
build-pdf:
	mkdir -p _build/docs/pdf
	sphinx-build -b latex -d _build/docs/doctrees notice _build/docs/latex
	make -C _build/docs/latex all-pdf
