MakeCacheMatrix <- function(x = matrix()) {

  ## the following funtion will return a list containing the following functions:
  ##  1. Set the matrix, 2. Get he matrix, 3. set inverse, 4. get the inverse, later to be used as the input for cacheSolve function
  inv = NULL
  
  ## <<- is used to give a value to an object which resides outside the current enviornment 
  set = function(y) {
    x <<- y
    inv <<- NULL
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}

