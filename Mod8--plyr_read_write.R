#Module 8 Assignment: Input/Output, String Manipulation, and Plyr Package
#This script uses the plyr package to read and write files, creating new data frames from the inputs.
#First, the required packages are installed and loaded.
install.packages("Rtools")
install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)
#Next, a text file is imported as a data frame and ddply() is used to create a new data frame.
#This new data frame will contain the mean grades for each sex, and will be written to a new text file.
data.set <- read.table("USF_R_Programming/Module 8 Dataset.txt", header = TRUE, sep =",")
data.set
average.grades <- ddply(data.set, "Sex", transform, average.by.sex = mean(Grade))
average.grades
write.table(average.grades, "USF_R_Programming/Module 8 Averages.txt")
#The next part creates a new data frame that just contains the entries of students who have the letter "i" in their name.
#The result is written to another file, this time in CSV format (separated with commas).
i.names <- subset(data.set, grepl("i", data.set$Name, ignore.case = TRUE))
i.names
cat("", file = "USF_R_Programming/Module 8 I-Names.csv")
for (r in 1:length(i.names$Name)) {
  cat(as.character(i.names[r,]), file = "USF_R_Programming/Module 8 I-Names.csv", sep=",", append = TRUE)
  cat("\n", file = "USF_R_Programming/Module 8 I-Names.csv", append = TRUE)
}