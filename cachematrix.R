## Put comments here that give an overall description of what your functions do
## The program consists of two functions which calculate and cache the inverse of a matrix

## Write a short comment describing this function
## makeCacheMatrix creates a matrix object whose inverse can be cached

makeCacheMatrix <- function(x = matrix()) { ## define the argument with default mode of matrix
  
            inv <- NULL                  ##initialize inv as NULL. Will hold value of matrix inverse
            set <- function(y){          ## define the set function to assign new value of matrix in parent environment
                    x <<- y
                    inv <<- NULL         ##if there is a new matrix, reset inv to NULL    
            }
            
            get <- function()x                         ##define the get function - returns value of the matrix argument
            
            setinv <- function(inverse) inv<<-inverse  ##assigns the value of inv in parent environment
            getinv <- function()inv                    ## gets the value of inv where called
            list(set = set, get = get,                 ##you need this in order to refer to the functions with the $ operator
                 setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

## cacheSolve is a function which calculates the inverse of the makeCacheMatrix. 
## It also retrieves the cached data when a particular matrix has already been calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
