here::i_am("code/karl_analysis.R")

data <- read.csv("data/course_engagement.csv")

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