#Module 5 Assignment: Doing Math and Statistics
#This script finds the determinants and inverses of two example matrices.
#Since these matrices do not have inverses, another matrix is tried afterward.
#First, the matrices are defined.
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)
A
B
#Starting with A, the determinant is found and the inverse is attempted.
det(A)
solve(A)
#Matrices with determinants of 0 have no inverse.  So, the transpose of A is tried instead.
t(A)
det(t(A))
solve(t(A))
#Now the determinant of B and its inverse are attempted.
det(B)
solve(B)
#A seed is set for the random number generator.
#That way, matrix C below has the same elements every time the script runs.
set.seed(735)
#A new matrix is created from random integers, and then its determinant and inverse are found.
C <- matrix(floor(runif(100, 1, 100)), nrow=10)
C
det(C)
solve(C)
#The matrices C and its inverse are multiplied to test and see if they make an identity matrix.
C%*%solve(C)