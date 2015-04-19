# This is a script to explore the gapminder dataset using r
# Jared Little
# jared.david.little@gmail.com
# April 19th, 2015

#Install dplyr package and dependencies
#install.packages("dplyr", dependencies = TRUE)

#Load dplyr library into working environment
library("dplyr")

#read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)

gap.in %>%
  filter(country == "China") %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

# Challenge
# Calculate the mean population per continent per year for years prior to 1990

mean.pop<-gap.in %>%
  filter(year < 1990)%>%
  select(continent, year, pop)%>%
  group_by(continent, year)%>%
  summarize(mean = mean(pop))%>%
  as.data.frame

#attach iris data frame to environment
attach(iris)

# Install tidyr package
#install.packages("tidyr", dependencies=TRUE)

# Load tidyr package
library("tidyr")

#Turn iris dataset from wide into long format
iris.long<-gather(iris, "Measurement", "Value", 1:4)
