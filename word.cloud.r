
# d = word.freq(data.frame(c("I don't have an iPhone and I still want this Futurama Head in a Jar app", "ASTERIX Big Data stack for Semi-structured Data Management & Analysis: New, long-range project from #hadoop", "Automatic Summarization of Photo Collections: from high-dim space to multi-objective optimization on a 5D concept space", "Hackers! Join us this Friday for the next bitly hackathon, with tons of new data to play with", "Re: Detecting Fake Reviews and Reviewers. A page maintained by Bing Liu of @IllinoisCS is a good starting point #spam", "Big Data Furnace, a proposal from @MSFTResearch: servers as primary heat source for homes & offices #greencomputing", "Data from HTML tables: 2 papers on WebTables (tool to extract relational-style data from the web)")))

al3x.word.freq = function (text.df) {
  library(tm)  # install.packages("tm")

  t.corpus = Corpus(DataframeSource(data.frame(text.df)))
  t.corpus = tm_map(t.corpus, removePunctuation)
  t.corpus = tm_map(t.corpus, tolower)
  t.corpus = tm_map(t.corpus, function(x) removeWords(x, stopwords("english")))

  t.tdm = TermDocumentMatrix(t.corpus)  
  t.m   = as.matrix(t.tdm)
  t.v   = sort(rowSums(t.m), decreasing=TRUE)
  t.d   = data.frame(word=names(t.v), freq=t.v)

  return(t.d)
}

# library(wordcloud) # install.packages("wordcloud")
# library(RColorBrewer)

# png("wordcloud.png", width=1280,height=800)

# wordcloud(d$word, d$freq, scale=c(8,.3), min.freq=2, max.words=100, random.order=TRUE, rot.per=.15, colors=brewer.pal(9, "BuGn")[-(1:2)], vfont=c("sans serif", "plain"))

# wordcloud(d$word, d$freq, scale=c(8,.2), min.freq=1, max.words=Inf, random.order=FALSE, rot.per=.15, colors=brewer.pal(8,"Dark2"))

# dev.off()



