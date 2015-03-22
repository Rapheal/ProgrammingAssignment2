## The following fucntion creates a special matrix
## a list containing a function to:
## -set the value of the matrix
## -get the value of the matrix
## - set the value of the inverse
## - get value of the inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

# setting the value of the matrix
set < - function(y) {
  x <<- y
  inv <<- NULL
    
}
 # getting the value of the matrix 
get <- function() x    
 # setting the inverse
 setinv <- function(inv_)
   inv <<- inv_

getting the inverse
 getinv <- function () inv

# Returing a list ofthe functions that i created
list(set = set, get = get, setinv = setinv , getinv = getinv)

}


## The followig function calculates the inverse of the special matrix
# check if inverse is calculated


cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)        
}

# check if inverse is already cached
data <- x$get()

# compute the inverse
inv <- solve(data,...)
# cache the inverse
x$setinv(inv)

# return data
 inv

} 


















