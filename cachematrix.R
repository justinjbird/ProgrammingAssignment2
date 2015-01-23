## Functions built to pass ProgrammingAssignment2 of R Programming
## Written by Justin Bird 23/01/2015

## Code to use for testing
 ## mydata <- c(44.412, 0.238, -0.027, 93.128, 0.238, 0.427, -0.193, 0.673, 0.027, -0.033, 0.084, -0.764, 68.123, 0.468, -0.764, 205.144) ## Initial data
 ## mymatrix <- matrix(mydata, ncol = 4 ) ## Set as matrix
 ## solve(mymatrix) ## control results
 ## makeCacheMatrix(mymatrix) ## Sets up cached matrix
 ## identical(solve(mymatrix),ms) ## Proves that cached matrix is identical to control results
 ## cacheSolve(m) ## Same matrix supplied
 ## cacheSolve(mymatrix) ## Different matrix supplied

## My own notes for working out solution
 ## makeCacheMatrix
  ## will be used to set up cached matrix
  ## is only re-used if new matrix needs caching
 ## cacheSolve 
  ## all testing using this function
  ## needs to check if matrix has changed so will need to use
  ## runs new solve or returns cache

  
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
		## caches an inverse of matrix 'x'
	m <<- x ## caches initial matrix
	ms <<- solve(x) ## caches inverted matrix
}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve 
## the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		if (identical (x,m)) ## does matrix 'x' match the cached matrix of 'm'
			{ ms } ## if so return the cached inversed matrix of 'ms'
		else 
			{ solve(x) } ## otherwise calculate inversed matrix of 'x'
		}
