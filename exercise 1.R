# inputs
Jan <- c(1,1,1,3,2,2,2,0,0,1,0,0)
Feb <- c(0,0,0,0,1,0,0,0,0,1,1,1)
March <- c(0,0,0,2,1,0,2,0,0,0,1,1)
April <- c(0,1,0,0,1,0,1,3,1,2,1,0)
May <- c(1,0,2,0,1,1,0,0,1,0,2,0)
JUne <- c(2,0,1,0,1,0,0,0,0,0,0,0)
JUly <- c(0,0,0,1,1,0,0,1,0,1,0,1)
August <- c(0,0,0,0,1,0,0,0,0,0,2,0)
SEp <- c(1,0,0,1,1,0,1,0,0,0,0,0)
Oct <- c(0,1,0,3,1,0,1,1,0,1,1,0)
Nov <- c(1,0,0,1,1,0,1,0,1,1,1,0)
DEc <- c(0,2,1,1,0,0,2,2,0,0,0,0)

# making the matrix
mat <- matrix(c(Jan,Feb,March,April,May, JUne,JUly,August,SEp,Oct,Nov,DEc),nrow=12,ncol=12)

# naming the rows and columns
row.names(mat) <- month.abb
colnames(mat) <- month.abb

# creating the submatrix
ques1 <- mat[3:9,8]
ques2 <- mat[3:9,8:12]
ques3 <- mat[3:9,c(5,8,12)]

