## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
       set <- function(y) {
             x <<- y
            inv <<- NULL
         }
       get <- function() x
      setInverse <- function() inv <<- solve(x) #calculate the inverse
       getInverse <- function() inv
       list(set = set,
                       get = get,
                       setInverse = setInverse,
                      getInverse = getInverse)

}


## returns the cached inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  invx <- x$getInverse()         
  if(!is.null(invx)){            
    message("getting cached data")
    return(xinv)
  }
  data <- x$get()
  xinv <- solve(data, ...)
  x$setInverse(xinv)
  xinv
}


