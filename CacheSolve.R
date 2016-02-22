cacheSolve <- function(x, ...) {

  inv = x$getinv()
  
  if (!is.null(inv)){
    message("Recieving Cache Data")
    return(inv)
  }
  
  mat.data = x$get()
  inv = solve(mat.data, ...)
  
  x$setinv(inv)
  
  return(inv)
}