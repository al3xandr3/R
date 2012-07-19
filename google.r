
a.google.spreadsheet = function (key, verbose=FALSE) {
  a.lib("RCurl")
  tt = getForm("http://spreadsheets.google.com/spreadsheet/pub", 
                hl ="en_GB",
                key = key, 
                single = "true", gid ="0", 
                output = "csv", 
                .opts = list(followlocation = TRUE, verbose = verbose, ssl.verifypeer = FALSE)) 
  read.csv(textConnection(tt), header = TRUE)
}

# a.google.search.count("due on monday")
a.google.search.count = function(search=NULL) {
  a.lib("RJSONIO")
  fromJSON(getForm("http://ajax.googleapis.com/ajax/services/search/web",
    q =search, v = "1.0"))$responseData$cursor$estimatedResultCount
}
