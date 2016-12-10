
# whats the value in X iterations, given the history delta?
# mean(a.predict.in.iterationc(79, 7, c(0.1, -0.1, 0.2)))
my.value.in.iterations = function(value, iterations, deltavector) {

  iter = function (value, iterations, deltavector) {
    for (i in 1:iterations) {
      value = value + sample(deltavector, 1, replace=TRUE)
    }
    return(value)
  }
  
  replicate(10000, iter(value, iterations, deltavector))
}

# how many iterations to value, given the history delta?
# mean(a.iterations.to.value(75, 79, c(0.1, -0.1, -0.2)))
my.iterations.to.value = function(target, current, deltavector) {

  iter = function (target, current, deltavector) {
    iteration = 0
    while (current > target) {
      current = current + sample(deltavector, 1, replace=TRUE)
       iteration = iteration + 1
       if (iteration >= 1095) # if value too crazy just interrupt the loop
          break
    }
    return(iteration)
  }

  replicate(10000, iter(target, current, deltavector))
}