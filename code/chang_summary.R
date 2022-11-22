library(labelled)
library(gtsummary)
library(knitr)
library(kableExtra)
library(ggplot2)
library(lubridate)
rm(list=ls())
here::i_am("code/chang_summary.R")

WHICH_CONFIG<-Sys.getenv("WHICH_CONFIG")
config_list<-config::get(config=WHICH_CONFIG)

# load data
data <- readRDS(file=paste0("output/",config_list$file))

# clean the names for video topic
data$topic[data$topic=="course_logistics"]<-"Logistics"
data$topic[data$topic=="mac_install"]<-"Install in Mac"
data$topic[data$topic=="make"]<-"Make"
data$topic[data$topic=="project_org"]<-"Project Organization"
data$topic[data$topic=="rmarkdown"]<-"Rmarkdown"
data$topic[data$topic=="terminal"]<-"Terminal"
data$topic[data$topic=="windows_install"]<-"Install in Windows"

# convert video length into minutes
data$length[data$length=="1:04:56"]<-"64:56"
data$length<-round(as.numeric(ms(data$length))/60,digits=1)

# label variables
var_label(data) <- list(
  views="Views",
  unique_viewers="Unique Viewers",
  length="Length (min)")

# table 1 to summarize for each topic
table1<-tbl_summary(data[,c("topic","views","unique_viewers","length")],by = topic,type = where(is.numeric) ~ "continuous") %>%
  add_p() %>%
  bold_p() %>%
  modify_header(label = "**Variable**") %>%
  bold_labels() %>%
  modify_caption("**Table 1. Summary statistics of videos.**\n
Variables shown as median (IQR). P values derived from Wilcoxon rank sum test.") %>%
  as_kable() %>%
  kable_material(c("striped", "hover"))
saveRDS(table1,here::here("output/table1.rds"))

# histogram to summarize total length for each topic
figure1 <- ggplot(data, aes(x=topic, y=length, fill=topic)) +
  geom_bar(stat="identity") +
  xlab(" ") + ylab("Length (min)") +
  ggtitle("Figure 1. Histogram of total length by topic.") +
  guides(fill=guide_legend(title="Topic")) +
  theme_light()+
  theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust=1))
saveRDS(figure1,here::here("output/figure1.rds"))
