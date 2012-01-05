
al3x.skew = function (x, na.rm = FALSE) 
{
   if (na.rm)    x <- x[!is.na(x)]             #remove missing values
   sum((x - mean(x))^3)/(length(x) * sd(x)^3)  #calculate skew   
}


#general descriptive statistics 
#basic stats after dropping non-numeric data
al3x.describe = function (x, digits = 2,na.rm=TRUE)   
{
    #first, define a local function
    valid <- function(x) {      
        return(sum(!is.na(x)))
   	}
    if (is.vector(x) )          #do it for vectors or 
    	{
    	    stats = matrix(rep(NA,6),ncol=6)    #create a temporary array
    
			stats[1, 1] <-  mean(x, na.rm=na.rm )
			stats[1, 2] <-  median(x,na.rm=na.rm  )
			stats[1, 3] <-  min(x, na.rm=na.rm )
			stats[1, 4] <-  max(x, na.rm=na.rm )
			stats[1, 5] <-  al3x.skew(x,na.rm=na.rm  )
			stats[1, 6] <-  valid(x )
        	len <- 1;
    	}
    	
    	
    else  {len = dim(x)[2]     #do it for matrices or data.frames
    
    stats = matrix(rep(NA,len*6),ncol=6)    #create a temporary array
    for (i in 1:len) {
    	if (is.numeric(x[,i])) {   #just do this for numeric data
			stats[i, 1] <-  mean(x[,i], na.rm=na.rm )
			stats[i, 2] <-  median(x[,i],na.rm=na.rm  )
			stats[i, 3] <-  min(x[,i], na.rm=na.rm )
			stats[i, 4] <-  max(x[,i], na.rm=na.rm )
			stats[i, 5] <-  al3x.skew(x[,i],na.rm=na.rm  )
			stats[i, 6] <-  valid(x[,i] )
        		}
    	}
    	}
   temp = data.frame(n = stats[,6],mean = stats[,1], sd = sd(x,na.rm=TRUE), median = stats[,2],min= stats[,3],max=stats[,4], range=stats[,4]-stats[,3],skew = stats[, 5])
    answer = round(data.frame(V=seq(1:len),temp, se = temp$sd/sqrt(temp$n)),  digits)

    return(answer)
}
