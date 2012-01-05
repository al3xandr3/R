
al3x.html = function (dir, file, title, func) {
  library(R2HTML)
  html = HTMLInitFile(dir, file, 
            useLaTeX=FALSE,
            useGrid=FALSE,
            CSSFile="http://blueprintcss.org/blueprint/screen.css")
  HTML("<div class='container'><div class='span-8 last'>")
  HTML(as.title(title),file=html)
  func(html) #yeld content
  cat("</div></div></body></html>", append=TRUE, file=html)
}
