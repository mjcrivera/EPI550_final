FROM rocker/tidyverse:4.5.1 AS base

RUN mkdir -p /home/rstudio/EPI550_final
WORKDIR /home/rstudio/EPI550_final

RUN mkdir -p renv
COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN mkdir -p renv/.cache
ENV RENV_PATHS_CACHE=renv/.cache

RUN Rscript -e "renv::restore(prompt = FALSE)"

###### DO NOT EDIT STAGE 1 BUILD LINES ABOVE ######

FROM rocker/tidyverse:4.5.1

RUN mkdir -p /home/rstudio/EPI550_final
WORKDIR /home/rstudio/EPI550_final

COPY --from=base /home/rstudio/EPI550_final .

RUN mkdir -p code figure table report data
COPY Makefile .
COPY report.Rmd .
COPY data/ data/

COPY code/ code/
CMD ["bash", "-c", "make report.html report"]