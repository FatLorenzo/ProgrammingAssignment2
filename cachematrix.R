## Programming Assignment: Caching the Inverse of a Matrix
## Author:  Lars Hermes
## Date:    Dec. 20th, 2014
## Version: 0.1

## Function to create a cached matrix and also caches
## the inverse of the matrix (when calculated).
##
## Returns a list of funtions to get and set the respective
## values.

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL ## initialize inverse matrix
    set <- function(m) { ## store matrix in cache
        x <<- m
        im <<- NULL ## reset inverse matrix
    }
    get <- function() x ## returns matrix from cache
    setInverse <- function(inverse) im <<- inverse ## store inverse matrix in cache
    getInverse <- function() im ## returns inverse matrix from cache
    list( set = set
         ,get = get
         ,setInverse = setInverse
         ,getInverse = getInverse) ## list for accessing cached values
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
