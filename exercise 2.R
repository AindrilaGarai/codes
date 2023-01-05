library(matlib)

A <- matrix(c(1,2,1,1), nrow = 2, ncol = 2)
b <- c(4, 5)
Solve(A, b)
solve(A, b)

plotEqn(A,b)


A <- matrix(c(1,-2,1,-2), nrow = 2, ncol = 2)
b <- c(4, 5)
Solve(A, b)
solve(A, b)

plotEqn(A,b)


A <- matrix(c(1,-1,1,-1), nrow = 2, ncol = 2)
b <- c(4, -4)
Solve(A, b)
solve(A, b)

plotEqn(A,b)


A <- matrix(c(1,-2,-1,2,3,2,3,-2,1), nrow = 3, ncol = 3)
b <- c(6, -1, 2)
Solve(A, b)
solve(A, b)
plotEqn3d(A,b, xlim=c(0,4), ylim=c(0,4)) # just look the beautiful plot

A <- matrix(c(0, -1, 1, 0, 1, 1, 0, 1, 3, -4, 2, 0, -1, 0, 4, -4), 4, 4)
b <- c(1, 1, 5, -2)
showEqn(A, b)
echelon(A, b, verbose=TRUE, fractions=TRUE) # echelon form 
# verbose shows all the steps
# frcations shows the fractional form not the decimal form


A <- matrix(c(0, -9, 4, 4, 5, 6, 3, 8, 4, 6, 0, 4, 7, 7, 5, 12), 4, 4)
b <- c(-9, -17, -3, 0)
showEqn(A, b)


A <- matrix(c(0, -9, 4, 4, 5, 6, 3, 8, 4, 6, 0, 4, 7, 7, 5, 12), 4, 4)
b <- c(-9, -17, -3, -12)
showEqn(A, b)

# question1

A <- matrix(c(8,-9,7,-1,-9,-7,-25,-16,1,-3,-1,-2,10,-7,13,3),4,4)
b <- c(25,16,60,41)
showEqn(A, b)

Solve(A, b)
solve(A, b)
echelon(A, b, verbose = TRUE, fractions=TRUE)













