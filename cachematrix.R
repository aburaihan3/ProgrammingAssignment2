<<<<<<< HEAD
## The 2 functions are supposed to compute the inverse of a matrix and caching it

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()){
  m <- NULL
  ## set the value of the matrix
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  ## get the value of the matrix
  get <- function() x
  ## set the value of the inverse
  setinverse <- function(inverse) m <<- inverse
  ## get the value of the inverse
  getinverse <- function() m
  ## creates a list from the above functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned
## by the function above. If the inverse has already been calculated
## and the matrix has not changed, then cacheSolve should retrieve the inverse
## from the cache.

cacheSolve <- function(x, ...){
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7a708988bdb4c8c2d09ffaa75ce773e27547ccc3
