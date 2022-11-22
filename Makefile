report: report.Rmd code/render_report.R data_clean_normal karl_figures chang_figures angelo_figures
	Rscript code/render_report.R

report_param: report.Rmd code/render_report.R data_clean_param data/course_engagement.csv karl_figures chang_figures angelo_figures
	Rscript code/render_report.R

karl_figures: code/karl_analysis.R data/course_engagement.csv
	Rscript code/karl_analysis.R

chang_figures: code/chang_summary.R data/course_engagement.csv
	Rscript code/chang_summary.R
	
angelo_figures: code/angelo_analysis.R output/data_clean.rds
	Rscript code/angelo_analysis.R

data_clean_normal: code/data_clean_normal.R data/course_engagement.csv
	Rscript code/data_clean_normal.R

data_clean_param: code/data_clean_param.R data/course_engagement.csv
	Rscript code/data_clean_param.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html && rm -f output/*.png

.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"