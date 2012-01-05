# /.Rprofile : 
# source("/my/proj/r/rprofile.r")

al3x.lib = function (lib) {
  # if exists loads, else installs
  if (is.element(lib, installed.packages()[,1])) {
    command = paste("library(",lib,")",sep="")
    eval(eval(parse(text=command)))
  } else {
    install.packages(lib, dep = T)
  }
}

# load all my .r files
al3x.load = function () {
  al3x.lib("ggplot2")
  al3x.lib("gridExtra")
  al3x.lib("doBy")
  al3x.lib("sqldf")
  al3x.lib("data.table")
  al3x.lib("zoo")
  al3x.lib("reshape")
  al3x.lib("wordcloud")
  al3x.lib("tm")
  al3x.lib("RColorBrewer")

  oldpwd = getwd()       # save current working dir
  setwd("/my/proj/r/")   # go to my r file folder
  for (file in dir()) {  # load each .r found
    if (substr(file, nchar(file)-1, nchar(file)+1) %in% c(".r", ".R"))
      source(file)
  }
  setwd(oldpwd)          # restore working dir
  apropos("al3x")        # list all al3x funcs 
}

.First = function(){
  cat("\nWelcome at", date(), "\n")
  cat("\ndon't forget to al3x.load()\n")
}

.Last = function(){
 cat("\nGoodbye at ", date(), "\n")
}




