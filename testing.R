## Programming Assignment: Caching the Inverse of a Matrix
## Author:  Lars Hermes
## Date:    Dec. 20th, 2014
## Version: 0.1

## Some sample matrices for testing purposes
a=rbind(c(2, 1), c(1, 1))       ## simple test matrix
b=rbind(c(1, -1), c(-1, 2))     ## inverse matrix of a
i=rbind(c(1, 0), c(0, 1))       ## identity matrix

## Simple test case if makeCacheMatrix works.
testMakeCacheMatrix <- function() {
    print("Matrix a:")
    print(a)
    print("Calling makeCacheMatrix with matrix a: m <- makeCacheMatrix(a)")
    m <- makeCacheMatrix(a)
    print("Get internal stored matrix of m and assigning it to c: c <- m$get()")
    c <- m$get()
    print("Matrix c:")
    print(c)
    print("Check wether if a and c are equal")
    print(identical(a,c))
    print("Check wether if a and internal stored value are identical")
    print(identical(a,m$get()))
    print("Matrix b:")
    print(b)
    print("Store matrix b in m: m$set(b)")
    m$set(b)
    print("Check wether if b and internal stored value are identical")
    print(identical(b,m$get()))
} 

## Simple test case if cacheSolve works
testCacheSolve <- function() {
    print("Matrix a:")
    print(a)
    print("Calling makeCacheMatrix with matrix a: m <- makeCacheMatrix(a)")
    m <- makeCacheMatrix(a)
    print("Get inverse matrix from cache")
    print(m$getInverse())
    print("Call function cacheSolve for matrix m")
    print(cacheSolve(m))
    print("Get inverse matrix from cache")
    print(m$getInverse())
    print("Inverse of matrix a should be equal to matrix b")
    print(identical(b,m$getInverse()))
    print("Stored matrix multiplied with its inverse should return identity matrix")
    print(m$get() %*% m$getInverse())
}