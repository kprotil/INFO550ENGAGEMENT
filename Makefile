karl_analysis: data/course_engagement.csv
	Rscript code/karl_analysis.R

chang_summary: data/course_engagement.csv
	Rscript code/chang_summary.R

angelo_analysis: data/course_engagement.csv
	Rscript code/angelo_analysis.R

reports: code/renderreports.r \
code/angelo_analysis.R code/chang_summary.R code/karl_analysis.R \
data/course_engagement.csv
	Rscript code/renderreports.R

	
