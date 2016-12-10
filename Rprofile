
# Load (.Rprofile):
# source("~/../SkyDrive/my/dev/R/Rprofile") 

# Create a symbolic link
# New-Item -ItemType SymbolicLink -Path .Rprofile -Target "C:\Users\amatos\Dropbox\my\projects\R\Rprofile"

my.load = function () {
  #  my own
  oldpwd = getwd()             # save current working dir
  setwd("C:\\Users\\amatos\\Dropbox\\my\\projects\\R") # go to my r file folder
  for (file in dir()) {        # load each .r found
    if (substr(file, nchar(file)-1, nchar(file)+1) %in% c(".r", ".R"))
      source(file)
  }
  setwd(oldpwd)          # restore working dir
  apropos("^a\\.")       # list all my funcs 
}

# a.lib = function (lib) {
#   # if exists loads, else installs
#   if (is.element(lib, installed.packages()[,1])) {
#     command = paste("library(",lib,")", sep="")
#     #eval(eval(parse(text=command)))
#     eval(parse(text=command))
#   } else {
#     install.packages(lib, dependencies = TRUE)
#   }
# }
# 
# # load
# a.load = function () {
#   
#   # standard libs
#   a.lib('knitr')
#   a.lib('xtable')
#   a.lib("munsell")
#   a.lib("ggplot2")
#   a.lib("gridExtra")
#   a.lib("doBy")
#   a.lib("sqldf")
#   a.lib("data.table")
#   a.lib("zoo")
#   a.lib("reshape")
#   a.lib("wordcloud")
#   a.lib("tm")
#   a.lib("RColorBrewer")
#   a.lib("markdown")
#   a.lib("devtools")
#   a.lib("scales")
#   a.lib("RCurl")
#   #a.lib("xlsReadWrite")
# 
#   #install_github('rCharts', 'ramnathv')
#   a.lib( "rCharts" )
# 
#   #  my own
#   oldpwd = getwd()             # save current working dir
#   setwd("~/../DropBox/my/code/R/") # go to my r file folder
#   for (file in dir()) {        # load each .r found
#     if (substr(file, nchar(file)-1, nchar(file)+1) %in% c(".r", ".R"))
#       source(file)
#   }
#   setwd(oldpwd)          # restore working dir
#   apropos("^a\\.")       # list all my funcs 
# }
# 
# # load my stuff
# options(sqldf.driver  = "SQLite")
# options(gsubfn.engine = "R")
# options(repos=structure(c(CRAN="http://cran.rstudio.com/")))
# a.load()
# 
# .First = function(){
#   cat("\nWelcome at", date(), "\n")
#   cat("\ndon't forget to a.load()\n")
# }
# 
# .Last = function(){
#  cat("\nGoodbye at ", date(), "\n")
# }
# 

# Sample Rprofile.site file 

# Things you might want to change
# options(papersize="a4") 
# options(editor="notepad") 
# options(pager="internal")

# R interactive prompt 
# options(prompt="> ")
# options(continue="+ ") 

# to prefer Compiled HTML 
#help options(chmhelp=TRUE) 
# to prefer HTML help 
# options(htmlhelp=TRUE) 

# General options 
options(tab.width = 2) 
options(width = 130)
options(graphics.record=TRUE) 

.First <- function(){
 library(pacman)
 p_load(utils)
 p_load(ggplot2)
 p_load(dplyr)
 
 my.load()
 cat("Ola' at", date(), "\n") 
}

.Last <- function(){ 
 cat("\nGoodbye at ", date(), "\n")
}






