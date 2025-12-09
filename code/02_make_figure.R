here::i_am("code/02_make_figure.R")

clean_data <- readRDS(
  file = here::here("data/clean_data.rds")
)

library(ggplot2)

histogram <- 
  ggplot(clean_data, aes(x = iief)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "white") +
  labs(
    title = "Figure 1. Distribution of Erectile Dysfunction",
    x = "IIEF-5 Score",
    y = "Number of Patients"
  )

ggsave(
  here::here("figure/histogram.png"),
  plot = histogram,
  device = "png"
)
