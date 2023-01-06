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
