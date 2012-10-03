
# Load (.Rprofile):
# source("~/Dropbox/my/dev/R/Rprofile")

a.lib = function (lib) {
  # if exists loads, else installs
  if (is.element(lib, installed.packages()[,1])) {
    command = paste("library(",lib,")", sep="")
    #eval(eval(parse(text=command)))
    eval(parse(text=command))
  } else {
    install.packages(lib, dependencies = TRUE)
  }
}

# load
a.load = function () {
  
  # standard libs
  a.lib('knitr')
  a.lib('xtable')
  a.lib("munsell")
  a.lib("ggplot2")
  a.lib("gridExtra")
  a.lib("doBy")
  a.lib("sqldf")
  a.lib("data.table")
  a.lib("zoo")
  a.lib("reshape")
  a.lib("wordcloud")
  a.lib("tm")
  a.lib("RColorBrewer")

  #  my own
  oldpwd = getwd()             # save current working dir
  setwd("~/Dropbox/my/dev/R/") # go to my r file folder
  for (file in dir()) {        # load each .r found
    if (substr(file, nchar(file)-1, nchar(file)+1) %in% c(".r", ".R"))
      source(file)
  }
  setwd(oldpwd)          # restore working dir
  apropos("^a\\.")       # list all my funcs 
}

# load my stuff
options(sqldf.driver = "SQLite")
options(gsubfn.engine = "R")
a.load()

.First = function(){
  cat("\nWelcome at", date(), "\n")
  cat("\ndon't forget to a.load()\n")
}

.Last = function(){
 cat("\nGoodbye at ", date(), "\n")
}
