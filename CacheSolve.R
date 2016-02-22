cacheSolve <- function(x, ...) {

  ## will return the inverse of the orignally inputed matrix in MakeCacheMatrix function
  inv = x$getinv()
  
  ## in the case that the inverse is already calcualted
  if (!is.null(inv)){
    message("Recieving Cache Data")
    return(inv)
  }
  
  ## or else, calulates the inverse
  mat.data = x$get()
  inv = solve(mat.data, ...)
  
  x$setinv(inv)
  
  return(inv)
}