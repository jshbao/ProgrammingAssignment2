## Put comments here that give an overall description of what your
> ## functions do
  > 
  > ## Write a short comment describing this function
  > ## Set the value of the vector, get value of vector, set value of solve, get value of solve
  > makeCacheMatrix <- function(x = matrix()) {
    +         s <- NULL
    +         set <- function(y) {
      +                 x <<- y
      +                 s <<- NULL
      + }
    +         get <- function() x
              setslove <- function(solve) s <<- solve
              getslove <- function() s
              list(set = set, get = get,
                   setsolve = setsolve,
                   getsolve = getsolve)   
      + 
      + ## Write a short comment describing this function
      + ## Compute inverse of matrix given above, set inverse matrix, get inverse matrix
      + cachesolve <- function(x, ...) {
              s <- x$getsolve()
              if(!is.null(s)) {
                message("getting cached data")
                return(s)
              }
              data <- x$get()
              s <- solve(data, ...)
              x$setsolve(s)
              s
        +         ## Return a matrix that is the inverse of 'x'
