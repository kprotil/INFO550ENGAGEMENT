report: report.Rmd code/render_report.R data/course_engagement.csv karl_figures chang_figures angelo_figures
	Rscript code/render_report.R

karl_figures: code/karl_analysis.R data/course_engagement.csv
	Rscript code/karl_analysis.R

chang_figures: code/chang_summary.R data/course_engagement.csv
	Rscript code/chang_summary.R
	
angelo_figures: code/angelo_analysis.R data/course_engagement.csv
	Rscript code/angelo_analysis.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html && rm -f output/*.png

.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"