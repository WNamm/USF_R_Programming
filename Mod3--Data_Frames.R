#Module 3 Assignment: Introduction to Data Frames
#This script takes some made-up data and uses it in a data frame.
#First, the data is assigned to vectors.
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)
#Next, the data is made into a matrix and printed, with each vector becoming a column.
poll_results_m <- cbind(Name, ABC, CBS)
poll_results_m
#Now, the same data is put into a data frame and printed.
poll_results_df <- data.frame(Name, ABC, CBS)
poll_results_df
#The means of the data sets are printed, first all three columns.
#This shouldn't work since the first column is characters.
mean(poll_results_df)
#Now to just find the means of only the two columns with numeric values.
ABC_mean <- mean(poll_results_df[,2])
CBS_mean <- mean(poll_results_df[,3])
mean_results <- data.frame(ABC_mean, CBS_mean)
mean_results
#A data frame is created with just the numerical values of the poll results.
num_results_df <- data.frame(ABC, CBS)
num_results_df
#Next example_m is created as a matrix, num_results_df is set as a matrix, and they are multiplied.
example_m <- matrix(1:14, nrow=2, byrow = T)
example_m
as.matrix(num_results_df) %*% example_m
#The mean of example_m is printed, both as a matrix and a data frame.
mean(example_m)
example_df <- as.data.frame(example_m)
example_df_means <- c(0, 0)
for (i in seq(1, length(example_df[1,]), by=1)) {
  example_df_means[i] <- mean(example_df[,i])
}
example_df_means