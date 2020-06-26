## Put comments here that give an overall description of what your
## functions do

## This function returns a list which helps us obtain the matrix itself and its inverse which is cached

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This fucntion computes inverse of matrix if the value is not already cached, or simply returns the stored value otherwise

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)){
    print("getting cached inverse")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat)
  x$setinv(i)
  i
}
