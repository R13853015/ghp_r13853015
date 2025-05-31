#Dengue Assignment - how many cases reported in 2014?

setwd("/Users/jessica/Documents/GitHub/ghp_r13853015") #setting working directory
getwd() #checking what directory we are currently in

# required package to read file
library(readr)

# Loading the dataset and naming it
data <- read_csv("dengue_assignment.csv")

# Perform basic analysis
summary(data)

#find out how many cases were reported in 2014?
# Filter rows where year is 2014, then sum the case_number column
total_cases_2014 <- sum(data$case_number[data$year == 2014], na.rm = TRUE)

print(total_cases_2014) #to see the number of cases

#Total cases reported in 2014 is 15747
