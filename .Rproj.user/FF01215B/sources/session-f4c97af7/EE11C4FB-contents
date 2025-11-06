report.html: code/03_render_report.R report.Rmd
	Rscript code/03_render_report.R

output1/random_numbers1.rds: code/01_make_output1.R
	Rscript code/01_make_output1.R
	
output2/random_numbers2.rds: code/02_make_output2.R
	Rscript code/02_make_output2.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html