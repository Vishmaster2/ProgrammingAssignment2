## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creating a matrix
makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  
  #Set value of matrix
  set <- function(y) {
    x <<- y
    invr <<- NULL
  }
  
  #Get value of matrix
  get <- function() {x}
  
  #Set the value of matrix inverse
  setinverse <- function(inverse) {invr <<- inverse}
  
  #Get the value of matrix inverse
  getinverse <- function() {invr}
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

##-----------------------------------------------------------------------------

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invr <- x$getinverse()
  ##Checking if matrix already exists
  if (!is.null(invr)){
    message("getting chached data")
    return(invr)     ##Retrieving from Cache
  }
  data <- x$get()
  invr <- solve(data,...)  #Calculating the inverse
  x$setinverse(invr)
  invr
}
