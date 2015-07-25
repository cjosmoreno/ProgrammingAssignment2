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
                setmean= function(solve) m <<- mean
                getmean= function() m
                list(set=set,get=get,setmean=setmean,getmean=getmean)
}


## This function is going to calculate the inverse and check if previuos results exits, otherwise it will calculate it

cacheSolve <- function(x, ...) {
             ## Return a matrix that is the inverse of 'x'
  m= x$getmean()
       if (!is.null(m)){
                  message("getting cached data")
                  return(m)}
       data=x$get()
        m=solve(data,...) 
        x$setmean(m) 
        m
}
