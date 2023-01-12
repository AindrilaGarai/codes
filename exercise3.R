library(ggplot2)
sigma <- matrix(c(4,2,2,3), ncol = 2, nrow = 2) 

## Mean
mu <- c(1, 2)
n <- 1000
set.seed(123)
x <- rmvnorm(n = n, mean = mu, sigma = sigma)
d <- data.frame(x)
p2 <- ggplot(d, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p2

rotate <- function(df, degree)
{
  dfr <- df
  degree <- pi * degree /180
  l <- sqrt(df$X1^2 + df$X2^2)
  theta <- atan(df$X2 / df$X1)
  dfr$X1 <- round(l * cos(theta-degree))
  dfr$X2 <- round(l * sin(theta-degree))
  return(dfr)
}
new <- rotate(d,45)

p3 <- ggplot(new, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3

library(matlib)
library(mvtnorm)
library(ggplot2)
library(pracma)
sigma <- matrix(c(4,2,2,3), ncol = 2, nrow = 2) 

## Mean
mu <- c(1, 2)
n <- 1000
set.seed(123)
x <- rmvnorm(n = n, mean = mu, sigma = sigma)
d <- data.frame(x)
p2 <- ggplot(d, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p2

rotation <- function(degree)
{
  t <- (pi * degree) / 180
  data <- c(cos(t),sin(t),-sin(t),cos(t))
  ma <- matrix(data,2,2)
  v <- vector(length = 2)
  new <- matrix(0,1000,2)
  for ( i in 1:1000)
  {
    a <- c(x[i,1],x[i,2])
    a <- as.vector(a)
    y[i] <- round((ma %*% a),2)
    u[i] <- as.matrix(t(y[i]))
    new[i,] <- u[i]
  }
  return(new)
}
dat <- data.frame(rotation(45))



p3 <- ggplot(dat, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3

