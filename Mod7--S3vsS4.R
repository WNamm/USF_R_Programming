#Module 7 Assignment: S3 vs S4 Objects
#This script creates a random data set and performs some object-oriented operations.
#First, the data set is created using a normal distribution and a defined seed for the random number generator.
#The data points are also rounded to integers for simplicity.
set.seed(735)
data.raw <- rnorm(30, 20, 5)
data <- sapply(data.raw, round)
data
#Next, a generic function is assigned to find the range of the data using a specific method.
findRange <- function(obj) {
  UseMethod("findRange", obj)
}
class(data)
findRange.numeric <- function(numSet) {
  max(numSet)-min(numSet)
}
findRange(data)
#Now, a new S3 class will be assigned to the data object.
class(data) <- append(class(data), "distribution")
class(data)
#Finally, an S4 class is created along with an object of the class that has the same values as the data object.
dataDist <- setClass("dataDist", slots = list(set="numeric", mean="numeric", stanDev="numeric"))
data.s4 <- new("dataDist", set=data, mean=mean(data), stanDev=sd(data))
data.s4
isS4(data.s4)