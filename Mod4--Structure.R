#Module 4 Assignment: Programming Structure
#This script uses some made-up hospital data to create box plots and histograms.
#The data is first assigned to vectors, and then these become the variables in a single data frame.
freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
blood.press <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
#The next three variables are the results of doctors' assessments;
#1 indicates "bad" or "high risk" and 0 indicates "good" or "low risk."
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
final <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
hosp.data <- data.frame(freq, blood.press, first, second, final)
hosp.data
#A box plot and then a histogram is made for the frequency of hospital visits.
boxplot(freq)
hist(freq, main = "Frequency of Visits")
#A box plot and then a histogram is made for the blood pressures.
boxplot(blood.press)
hist(blood.press, main = "Blood Pressures")
#A new vector is made containing the sums of each patient's assessments of "bad" or "high risk."
high.risk <- apply(hosp.data[,3:5], 1, sum, na.rm = T)
high.risk
#A box plot and histogram are made with the new high risk totals.
boxplot(high.risk)
hist(high.risk, main = "High Risk Assessments", xlab = "High Risk Assessments Per Patient")