library(ggplot2)
library(ggpubr)
library(lubridate)

#Locate Data in the Code Folder
here::i_am("code/angelo_analysis.R")

WHICH_CONFIG<-Sys.getenv("WHICH_CONFIG")
config_list<-config::get(config=WHICH_CONFIG)

data <- readRDS(file=paste0("output/",config_list$file))

data$length <- ms(data$length)
data$length <- period_to_seconds(data$length)  




Graph_3 <- ggplot(data, aes(length, views)) +
  geom_point() +
  geom_smooth(method="lm") +
  xlab("Length of Video") +
  ylab("Views") +
  ggtitle("Video Views vs. Video Length")


ggsave(
  "output/angelo_analysis.png",
  plot = Graph_3,
  device = "png"
)
