## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$solve()
        if (!is.null(m)){
                message("getting chached data")
                return(m)
        }
        data <- x$get()
        m <- solve(x,...)
        m
}
