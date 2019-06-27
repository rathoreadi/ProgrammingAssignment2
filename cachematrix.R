## This functions sets a martrix and inverses the matrix. 
##If already set, cache the matrix, getting cached matrix

## Sets and gets the matrix here

makeCacheMatrix <- function(x = matrix()) {
    mat <- NULL
    set <- function(here){
        x<<- here
        mat <<- NULL
        
    }
    get <- function()x
    setmat <- function(solve) { mat <<- solve}
    getmat <- function() mat
    list(get=get, set= set, setmat=setmat, getmat= getmat)
    
}


## Inverse the matrix and cache the matrix if already present in cache

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    mat <- x$getmat()
    if(!is.null(mat)){
        print("caching Matrix")
        return(mat)
    }
    data <- x$get()
    mat <- solve(data)
    x$setmat(mat)
    mat
}