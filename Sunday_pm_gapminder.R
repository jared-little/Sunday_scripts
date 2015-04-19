# This is a script to explore the gapminder dataset using r
# Jared Little
# jared.david.little@gmail.com
# April 19th, 2015

#read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)

