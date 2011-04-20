# Run make capitulo to build the capitulo.pdf file
pdf: capitulo.tex
	@echo "\n"
	@echo "Building PDF..."
	@echo "\n"
	make dvi
	rm -f capitulo.pdf
	dvips capitulo.dvi
	ps2pdf capitulo.ps
	@echo "\n"
	@echo "Done!"
	@echo "\n"

# Run make dvi to build the capitulo.dvi file
dvi: capitulo.tex
	@echo "\n"
	@echo "Building the capitulo..."
	@echo "\n"
	latex capitulo.tex 
	@echo "\n"
	@echo "Building the bibliography"
	@echo "\n"
	bibtex capitulo 
	latex capitulo.tex 
	latex capitulo.tex
	@echo "\n"
	@echo "Done!"
	@echo "\n"
	
# Run make clean to delete Latex object files
clean:
	@echo "\n"
	@echo "Cleaning object files..."
	@echo "\n"
	rm -rf capitulo.aux capitulo.bbl capitulo.blg capitulo.dvi capitulo.idx capitulo.ilg capitulo.ind capitulo.lof capitulo.log capitulo.toc 
	@echo "\n"
	@echo "Done!"
	@echo "\n"
