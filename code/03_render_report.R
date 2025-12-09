here::i_am("code/03_render_report.R")

library(rmarkdown)
# rendering a report in production mode
rmarkdown::render(
  input = here::here("report.Rmd"),
  output_dir = here::here("report")
)