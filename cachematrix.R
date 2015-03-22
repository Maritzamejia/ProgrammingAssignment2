## functions allows the matrix to store it's inverse value for 
## faster computation times
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initialize the inverse property
  t <- NULL
  set <- function( matrix ) {
    m <<- matrix
    t <<- NULL
  }
  ## setting up the matrix
  get <- function() { m }
  
  ## setting the function to inverse the matrix
  setInverse <- function(inverse) {
    t <<- inverse
  }
  
  ## getting the inverse of the matrix
  getInverse <- function() { t }
    ## Back the inverse property
    
  ## list of methods 
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## Computing the inverse of the unique matrix back by "makeCacheMatrix"
## Back to a matrix  "m"
m <- x$getInverse()
if( !is.null(m) ) {
  message("getting stored data")
  return(m)
}
## Compute the inverse via matrix multiplication
m <- solve(data) %*% data
## Setting the inverse to "x"
x$setInverse(m)
## show matrix
m




