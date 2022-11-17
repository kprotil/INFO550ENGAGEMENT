.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"