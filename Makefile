report: report.Rmd code/render_report.R output/data_all.rds output/data_install.rds karl_figures chang_figures angelo_figures
	Rscript code/render_report.R
	
output/data_all.rds: code/data_clean.R data/course_engagement.csv
	Rscript code/data_clean.R
	
output/data_install.rds: code/data_clean.R data/course_engagement.csv
	Rscript code/data_clean.R

karl_figures: code/karl_analysis.R output/data_all.rds output/data_install.rds
	Rscript code/karl_analysis.R

chang_figures: code/chang_summary.R output/data_all.rds output/data_install.rds
	Rscript code/chang_summary.R
	
angelo_figures: code/angelo_analysis.R output/data_all.rds output/data_install.rds
	Rscript code/angelo_analysis.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html && rm -f output/*.png

.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"