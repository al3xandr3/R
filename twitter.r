
# a.twitter.search.geo('#skype', city.latlong[1,]$lat, city.latlong[1,]$long, city.latlong[1,]$radius, 1000)
a.twitter.search.geo = function(search, lat, long, radius, num) {
  require(plyr)
  library(twitteR)
  iter = 0
  delta.text = NULL
  while (length(delta.text) < num && iter < 10) {
    cat(".")
    delta.tweets = searchTwitter(search, lang="en", geocode=paste(lat, long, radius, sep=","), n=num)
    delta.text = laply(delta.tweets, function(t) t$getText())
    iter = iter + 1
    Sys.sleep(3)
  }
  if(length(delta.text) == 0) { NA }
  else { delta.text }
 }
