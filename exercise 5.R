mat <- function(k)
{
  matr <- matrix(0,3,3)
  matr [1,1] <- k
  matr [1,2] <- k^2
  matr [2,1] <- k^2
  matr [1,3] <- k^3
  matr [3,1] <- k^3
  matr [2,2] <- k^4
  matr [2,3] <- k^6
  matr [3,2] <- k^6
  matr [3,3] <- k^9
  
  deter <- det(matr)
  
  return(deter)
}
mat(10)

x <- seq(1e2, 1, length = 1e2)
y <- sapply(x, mat)

plot(x,y)
