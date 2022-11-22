here::i_am("code/karl_analysis.R")

WHICH_CONFIG<-Sys.getenv("WHICH_CONFIG")
config_list<-config::get(config=WHICH_CONFIG)

data <- readRDS(file=paste0("output/",config_list$file))

data$engagement <- data$unique_viewers/47

library(ggplot2)

linreg <- ggplot(data, aes(video_number, engagement)) +
  geom_point() +
  geom_smooth(method="lm") +
  xlab("Video Number") +
  ylab("Engagement")

print(linreg)

ggsave(
  "output/karl_analysis.png",
  plot = linreg,
  device = "png"
)