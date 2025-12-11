*DATA 550: Data Science Toolkit
Fall 2025
Final Project*

# Priapism and Erectile Dysfunction
by Monica Rivera
December 11, 2025

## Overview
The __Replication Data for Erectile dysfunction and psychosocial outcomes following priapism treatment: A retrospective study__ from the Harvard Dataverse (https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/PVH4QS). My final report presents a table of the descriptive statistics and a histogram figure of the distribution of erectile dysfunction severity, measured using the International Index of Erectile Function (IIEF-5) among the participants.

### Contents of the Report 
* __Table 1:__ Summary Statistics of Study Participants
* __Figure 1:__ Distribution of Erectile Dysfunction

---

## Docker
- Open Docker Desktop and log-in on your Docker account.

---

## EPI550_final repository
- Fork and clone `https://github.com/mjcrivera/EPI550_final`.

---

## Final Project.Rproj in EPI550_final
- Open terminal in `Final Project.Rproj` and use `cd` to navigate to `EPI550_final` directory, if not already.

---

## Building the Docker Image: final4
- Execute `docker build -t final4 .` in the terminal.

---

## Make report
- Execute `make docker-run` in the terminal.
- See `report.html` in `report` folder located at local project folder.

---

## Code description

`code/00_clean_data.R`

  - Loads and reads the `Prapism ED Outcomes.csv` to `raw_data`
  - Cleans the `raw_data` to `clean_data` 
  - Saves `clean_data` to an `.rds` object in `data` folder

`code/01_make_table.R`

  - Generates `table_one`
  - Saves `table_one` as an `.rds` object in `table` folder
  
`code/02_make_figure.R`

  - Generates `histogram`
  - Saves `histogram` as a `.png` object in `figure` folder 

`code/03_render_report.R`

  - Renders `report.Rmd` 

`report.Rmd`

  - Loads each of the four `.R` scripts
  - Makes 1 table, 1 figure, and 1 report
  
`Makefile`

  - Contains rules for building the report
  - Execute `make` to generate `report.html`
  
`Dockerfile`

  - Sets of instructions to build the Docker image via DockerHub
  - Saves `report.Rmd` to an `.html` object into `report` folder located at local project folder
  
`final4`

  - Docker image is called `final4` to build the container
  - Link to the image on DockerHub: https://hub.docker.com/repository/docker/mjcrivera/final4/general

`Final Project.Rproj`

  - RStudio project session to run code in