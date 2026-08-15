## Put comments here that give an overall description of what your
## functions do
## These functions create a special matrix object that can cache
## its inverse, and retrieve the cached inverse when available.
## Create a special matrix object that stores both the matrix
## and its cached inverse.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL

    set <- function(y) {
        x <<- y
        m <<- NULL
        }

    get <- function() x

    setsolve <- function(solve) {
        m <<- solve
    }

    getsolve <- function() m

    list(
        set = set,
        get = get,
        setsolve = setsolve,
        getsolve = getsolve
    )
}


## Write a short comment describing this function
## Return the inverse of the matrix. If it has already been
## calculated, retrieve it from the cache.
cacheSolve <- function(x, ...) {
    m <- x$getsolve()

    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }

    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)

    m
        ## Return a matrix that is the inverse of 'x'
}
