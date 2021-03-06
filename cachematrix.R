## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix provides a set of 4 functions to get/set a matrix and its inverse
## by leveraging lexicol scope

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  
  setinv <- function(inv) i <<-inv
  getinv <- function() i
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

## cacheSolve takes in the list returned by makeCacheMatrix 
## retrives the inverse if it's available. 
## otherwise it calculates the inverse and caches it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)){
    message("Getting cached data")
    return(m)
  }
  
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}

#