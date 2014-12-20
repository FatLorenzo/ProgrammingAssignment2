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


## Function which calculates inverse of a cached matrix. It makes use of the 
## above defined function and stores the result (inverse matrix) also in the 
## cache.

cacheSolve <- function(x, ...) {
    im <- x$getInverse()    ## fetches cached value for inverse matrix
    if(!is.null(im)) {      ## if the fetched value is not NULL it was already
        return(im)          ## calculated and will be returned
    }
    m <- x$get()            ## inverse matrix was not yet calculated and the
                            ## stored matrix will be fetched
    im <- solve(m,...)      ## calculate inverse matrix
    x$setInverse(im)        ## and store it the cache
    im
}
