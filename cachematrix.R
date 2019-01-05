## caching the inverse of a matrix

## create a special object that store a numeric vector and cache's its inverse

makeCacheMatrix <- function(x = matrix()) {
mat.inv <- NULL
set <- function(y) {
        x <<- y
        mat.inv <<- NULL
        }
        
get <- function() x
setInverse <- function(inverse) ,mat.inv <<- inverse
getInverse <- function() mat.inv
        
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
        
}

## compute the inverse of the special matrix returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed) 
##then the cachesolve would retrieve the inverse from the cache.

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
mat.inv <- x$getInverse()

        if (!is.null(mat.inv)) 
        {
        message("getting cached data")
        return(mat.inv)
        }
        
mat <- x$get()
mat.inv <- solve(mat, ...)
x$setInverse(mat.inv)
mat.inv

}

