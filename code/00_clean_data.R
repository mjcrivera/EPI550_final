here::i_am("code/00_clean_data.R")
absolute_path_to_data <- here::here("data", "Priapism ED Outcomes.csv")
raw_data <- read.csv(absolute_path_to_data, header = TRUE)

library(labelled)
library(tidyverse)
library(gtsummary)
library(janitor)

clean_data <- raw_data |>
  clean_names() |>
  drop_na(iief)

saveRDS(
  clean_data, 
  file = here::here("data/clean_data.rds")
)