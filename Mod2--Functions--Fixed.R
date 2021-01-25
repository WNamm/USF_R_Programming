#Module 2 Assignment: Introduction to Data Types and Functions
#This is the code that has been fixed so that it will work.
#First, assignment2 is assigned values.
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#Then, the myMean function is defined to determine the mean of a set of data.
myMean <- function(someData) {
  return(sum(someData)/length(someData))
}
#Finally, the myMean function is called with assignment2 passed into it, outputting its mean.
myMean(assignment2)