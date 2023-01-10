mat1 <- matrix(c(2,2,1,0,0,1,1,-1,1), 3, 3, byrow= TRUE)
mat2 <- matrix(c(5,3,1,2,2,1,1,-1,1), 3, 3, byrow= TRUE)
mat3 <- matrix(c(5,3,1,1,-1,1,4,-1,1), 3, 3, byrow= TRUE)
mat4 <- matrix(c(5,3,1,6,-2,1,4,-1,1), 3, 3, byrow= TRUE)

ans <- (det(mat1)+det(mat2)+det(mat3)+det(mat4))/2
ans
