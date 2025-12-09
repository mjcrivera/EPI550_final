report.html: code/03_render_report.R report.Rmd data/clean_data.rds table/table_one.rds figure/histogram.png
	Rscript code/03_render_report.R

data/clean_data.rds: code/00_clean_data.R data/Priapism\ ED\ Outcomes.csv
	Rscript code/00_clean_data.R

table/table_one.rds: code/01_make_table.R
	Rscript code/01_make_table.R
	
figure/histogram.png: code/02_make_figure.R
	Rscript code/02_make_figure.R

.PHONY: clean
clean:
	rm -f data/*.rds && rm -f table/*.rds && rm -f figure/*.png && rm -f report.html
	
.PHONY: install 
install:
	Rscript -e "renv::restore(prompt = FALSE)"