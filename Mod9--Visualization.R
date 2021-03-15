#Module 9 Assignment: Visualization in R
#This script takes a data set on Survival from Malignant Melanoma and creates three graphs.
#Documentation for this data set can be found at: https://vincentarelbundock.github.io/Rdatasets/doc/boot/melanoma.html
#First, the data is imported from the CSV file as a data frame.
melanoma.df <- read.csv("USF_R_Programming/Melanoma_Data.csv")
#Using basic graphics in R, a graph is plotted with tumor thickness for x and survival time for y.
plot(melanoma.df$thickness, melanoma.df$time, xlab = "Tumor Thickness in mm", ylab = "Survival Time in Days Since Operation", main = "Tumor Thickness and Patient Survival Time")
#Using the lattice package, a graph is plotted with the patient's age for x and the tumor thickness for y.
#The graph is also color-coded based on the presence of an ulcer, and a key is drawn accordingly.
library(lattice)
ulcer.key <- simpleKey(text = c("No Ulcer", "Ulcer Present"))
xyplot(melanoma.df$thickness ~ melanoma.df$age, xlab = "Patient's Age in Years at the time of the Operation", ylab = "Tumor Thickness in mm", grid = T, group = melanoma.df$ulcer, key = ulcer.key, main = "Age of Patients and Tumor Thickness")
#Finally, using the ggplot2 package, a graph is plotted with age for x and survival time for y.
library(ggplot2)
plot3 <- ggplot(data.frame(age = melanoma.df$age, survival = melanoma.df$time), aes(age, survival))
plot3 + geom_point() + xlab("Patient's Age in Years at the time of the Operation") + ylab("Survival Time in Days Since Operation") + ggtitle("Age of Patients and their Survival Time")
