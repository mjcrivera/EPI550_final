# Code Description

`code/01_make_output1.R`
- reads harvard (raw dataset)
- cleans harvard to df_clean (clean dataset)
- generates summary statistics in `output1/` folder

`code/02_make_output2.R`
- produces histogram in `output2/` folder

`report.Rmd`
- loads the table and figure saved by the two `.R` scripts

## Code for creating Table 1 is in code/01_make_output.R
## Code for creating Figure 1 is in code/02_make_output2

### Confirm code base is stable and generate the final report
- download and unzip the project
- confirm that you can build the report by executing `make`
- if the report does not build, correct code until it builds correctly
- the `main` branch of the GitHub repo is the "stable" version of the code
- make sure that the local `main` branch is up to date with the remote `main` branch

#### Push access to EPI550_final repo on GitHub

##### Synchronize project environment

1. Open the R project in R Studio.

2. Confirm that has the `renv` package installed.
	- e.g., you could run `"renv" %in% row.names(installed.packages())`
	- If the above command returns `FALSE`, install the `renv` package using `install.packages('renv')`

3. In an R console, use `setwd` and `getwd` to confirm that the working directory is the project directory.

4. Once you are __positive__ that you are in the correct working directory, restore the package library using `renv::restore()`.
	- use `renv::status()` as appropriate to check warning messages
	
5. Once the environment is synchronized, confirm that the report builds, e.g., by running `make` or by executing the contents of `code/01_make_output1.R`. `code/02_make_output2.R`, and `code/03_render_report.R`.
	- It is recommended to complete this step via `make` or running code from the command line.
	- If you are running code interactively in the R console, __be sure__ that the package environment is activated!