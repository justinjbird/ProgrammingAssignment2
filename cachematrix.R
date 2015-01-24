## Functions built to pass ProgrammingAssignment2 of R Programming
## Written by Justin Bird 23/01/2015

## Dear assessor, welcome to my assignment :)
## Before you assess, I wanted to explain my interpretation of the assignment.  In the interests of 
## keeping this simple, I started with my own code and didn't take the example code and mess with it.
## So my code simply picks up the matrix passed in by 'x', caches it in 'm' and caches the inverse to 'ms'.
## The second function then does a comparison of the new 'x' to 'm' then either returns ms or solve('x').
## I've also kept all my workings and notes...

## Code to use for testing
 ## mydata <- c(44.412, 0.238, -0.027, 93.128, 0.238, 0.427, -0.193, 0.673, 0.027, -0.033, 0.084, -0.764, 68.123, 0.468, -0.764, 205.144) ## Initial data
 ## x <- matrix(mydata, ncol = 4 ) ## Set as matrix
 ## ix <- solve(mymatrix) ## control results
 ## makeCacheMatrix(x) ## Sets up cached matrix
 ## identical(ix,ms) ## Proves that cached matrix is identical to control results by returning TRUE
 ## cacheSolve(x) ## Same matrix supplied
 ## cacheSolve(ix) ## Different matrix supplied

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
	m <<- (x) # caches the matrix for comparison later
	ms <<- solve(x) # caches inverted matrix
}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve 
## the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		if (identical (x,m)) # does matrix 'x' match 'm'
			{ ms } # if so return the cached inverse matrix of 'ms'
		else 
			{ solve(x) } # otherwise calculate inverse matrix of 'x'
		}
