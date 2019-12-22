## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        i <- NULL # i for final inverse matrix, default as NULL
        set <- function(y) {
                x <<- y # y for data, set x as data
                i <<- NULL # once set, reset i
        }
        get <- function() x # x for data, if been set, simply read x
        
        setinverse <- function(so) i <<- so # set i (cross environment)
        getinverse <- function() i # read i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        
        
}