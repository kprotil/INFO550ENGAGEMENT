here::i_am("code/data_clean_normal.R")

data <- read.csv(file=here::here("data/course_engagement.csv"))
data <- data[data$topic=="terminal",]

saveRDS(
  data,
  file= here::here("output/data_clean.rds")
)