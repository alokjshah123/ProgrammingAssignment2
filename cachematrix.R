## Put comments here that give an overall description of what your
## functions do

## We are writing two functions, essentially to cache the inverse of matrix 

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
set <- function(y){
    x <<- y
    j <<- NULL
}
get <- function()x
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
    setInverse = setInverse, 
    getInverse = getInverse)
}


## cacheSolve function will inverse the special matrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
j <- x$getInverse()
if(!is.null(j)){
message("getting cached data")
return(j)
}
mat <- x$get()
j <- solve(mat,...)
x$setInverse(j)
j
}

## Given below is the output
## m <- matrix(rnorm(16),4,4)
## m1 <- makeCacheMatrix(m)
## cacheSolve(m1)

##         [,1]       [,2]       [,3]       [,4]
## [1,] -0.1653269  0.2592203  0.6176218 -0.7520955
## [2,]  0.2828334 -0.1853499  0.4511382  0.2094365
## [3,]  0.1434840  1.0413868 -0.3550853 -0.3261154
## [4,]  0.1793583 -0.4252171 -0.4371493 -0.1749830

