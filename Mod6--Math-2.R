#Module 6 Assignment: Doing Math in R Part 2
#This script performs a few operations with matrices.
#First, the matrices A and B are defined.
#Then the operations A+B and A-B are performed.
A <- matrix(c(2,0,1,3), ncol=2)
A
B <- matrix(c(5,2,4,-1), ncol=2)
B
A+B
A-B
#Second, the diag() function is used to build a specific matrix.
C <- diag(c(4,1,2,3))
C
#Third, another specific matrix must be built.
D <- diag(rep(3,5))
D[2:5,1] <- rep(2,4)
D[1,2:5] <- rep(1,4)
D