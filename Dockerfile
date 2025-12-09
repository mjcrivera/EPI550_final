FROM rocker/tidyverse:4.5.1 AS base

RUN mkdir /home/rstudio/EPI550_final
WORKDIR /home/rstudio/EPI550_final

RUN mkdir -p renv
COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN mkdir renv/.cache
ENV RENV_PATHS_CACHE=renv/.cache

RUN Rscript -e "renv::restore(prompt = FALSE)"

###### DO NOT EDIT STAGE 1 BUILD LINES ABOVE ######

FROM rocker/tidyverse:4.5.1

RUN mkdir /home/rstudio/EPI550_final

WORKDIR /home/rstudio/EPI550_final
COPY --from=base /home/rstudio/EPI550_final .

RUN mkdir code
RUN mkdir figure
RUN mkdir table
RUN mkdir -p report
COPY Makefile .
COPY report.Rmd .
RUN mkdir data
COPY data/ data/
COPY code code