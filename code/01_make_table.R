here::i_am("code/01_make_table.R")

clean_data <- readRDS(
  file = here::here("data/clean_data.rds")
)

library(gtsummary)

table_one <- tbl_summary(
  clean_data,
  include = c(age, age_first, iief, episodes, severity_ed),
  label = list(
    age ~ "Age (years)",
    age_first ~ "Age at 1st Episode",
    iief ~ "IIEF-5 Score",
    episodes ~ "Number of Priapism Episodes",
    severity_ed ~ "ED Severity"
  ),
  statistic = list(
    all_continuous() ~ "{mean} ({sd})",
    all_categorical() ~ "{n} ({p}%)"
  ),
  missing_text = "Missing"
) %>%
  modify_caption("**Table 1. Summary Statistics of Study Participants**")

saveRDS(
  table_one,
  file = here::here("table/table_one.rds")
)