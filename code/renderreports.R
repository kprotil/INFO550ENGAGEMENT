here::i_am("code/renderreports.R")

rmarkdown::render(here::here("code/angelo_analysis.R"))

rmarkdown::render(here::here("code/chang_summary.R"))

rmarkdown::render(here::here("code/karl_analysis.R"))