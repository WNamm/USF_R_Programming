#Module 11 Assignment: Debugging and Defensive Programming
#For this assignment, the code for the tukey_multiple() function is provided with errors.
#It has to be debugged for it to work.
#The tukey.outlier() function is defined ahead of the given code so that it works.
#It returns a vector of logicals indicating outliers.
tukey.outlier <- function(set) {
  outlier <- vector(length=length(set))
  for (i in 1:length(outlier)) {
    if (set[i] > mean(set) + 3*sd(set) || set[i] < mean(set) - 3*sd(set)) {
      outlier[i] <- TRUE
    }
  }
  return(outlier)
}
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) }
  return(outlier.vec) }
#Some code is added to test the tukey_multiple() function.
sample <- matrix(1:30, byrow = T, nrow = 5)
sample
tukey_multiple(sample)
