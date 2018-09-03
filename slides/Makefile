TEX=latexmk
TEXOPTS=-output-directory=build \
		-pdf \
		-latexoption=-interaction=nonstopmode \
		-latexoption=-file-line-error

# set PREVIEW=1 to enable preview
# example usage: make PREVIEW=1 target
ifdef PREVIEW
PREVIEWOPTS=-pvc
endif

default: pres

# create build directory if it doesnt exist
builddir:
	@[ -d build ] || mkdir build

pres: pres.tex builddir
	@$(TEX) $(TEXOPTS) $(PREVIEWOPTS) $<
	mv build/pres.pdf .

clean:
	@rm -rf build/*

