## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL

    ## Setting the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## Get the matrix
    get <- function() {
     ## Return matrix
     m
    }

    ## Set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Get the inverse of the matrix
    getInverse <- function() {
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(m) ) {
            message("Get the cached data")
            return(m)
    }

    ## Get the matrix from the object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}
