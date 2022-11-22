here::i_am("code/data_clean.R")

data <- read.csv(file=here::here("data/course_engagement.csv"))

saveRDS(
  data,
  file= here::here("output/data_all.rds")
)

data <- read.csv(file=here::here("data/course_engagement.csv"))
data <- data[data$topic%in%c("windows_install","mac_install"),]

saveRDS(
  data,
  file= here::here("output/data_install.rds")
)