
a.html = function (dir, file, title, func) {
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


## define pretty windows fonts to use in graphs
## ex: ggplot + theme(plot.title=element_text(face="bold", colour="#000000", size=20, vjust=3, family="SegoeUILight")) +
windowsFonts(Segoe = windowsFont("Segoe"),
             SegoeUI = windowsFont("Segoe UI"),
             SegoeUILight = windowsFont("Segoe UI Light"))