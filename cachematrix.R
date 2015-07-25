##this function is goinng to simplify the way we obtain inverse matrix
##It will use tha cache method in order to save previuos results

## This function will create the cache matrix

makeCacheMatrix <- function(x = matrix()) {
              m=NULL
              set = function(y){
                x<<- y
                m<<-NULL
                }
            
                get= function() x
                setinverse= function(solve) m <<- solve
                getinverse= function() m
                list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
       
}


## This function is going to calculate the inverse and check if previuos results exists
##Otherwise it will calculate again

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m= x$getinverse()
       if (!is.null(m)){
                  message("getting cached data")
                  return(m)}
       data=x$get()
        m=solve(data,...) 
        x$setinverse(m) 
        m
}

