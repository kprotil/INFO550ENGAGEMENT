library(ggplot2)
library(ggpubr)
library(lubridate)

#Locate Data in the Code Folder
here::i_am("code/angelo_analysis.R")



data <- read.csv("data/course_engagement.csv")

data$length <- ms(data$length)
data$length <- period_to_seconds(data$length)  




linreg <- ggplot(data, aes(length, views)) +
  geom_point() +
  geom_smooth(method="lm") +
  xlab("Length of Video") +
  ylab("Views")

print(linreg)


data$length_value <- as.numeric(data$length)


saveRDS(figure3,here::here("output/figure3.rds"))