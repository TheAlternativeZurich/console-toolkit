TEX=latexmk
TEXOPTS=-output-directory=build \
		-pdf \
		-latexoption=-interaction=nonstopmode \
		-latexoption=-file-line-error

# Set PREVIEW=1 to enable preview. Make sure an appropriate viewer is
# configured in $HOME/.latexmkrc.
# Example usage: make PREVIEW=1 opendata
ifdef PREVIEW
PREVIEWOPTS=-pvc
endif

defaul: exercises

# To include the current git revision in the header, write it to 'GIT_TAG'
# file, which the LaTeX source can include.
gitrev:
	@printf "r%s.%s" "$$(git rev-list --count HEAD)" "$$(git rev-parse --short HEAD)" > GIT_TAG

# Create build directory if it doesnt exist
builddir:
	@[ -d build ] || mkdir build

# All documents need to be compiled twice.
# This is because some necessary information is only available after
# the first compiler run, like \pageref{LastPage}.
exercises: exercises.tex gitrev builddir
	@$(TEX) $(TEXOPTS) $(PREVIEWOPTS) $<
	mv build/exercises.pdf .

clean:
	@rm -rf build/*

