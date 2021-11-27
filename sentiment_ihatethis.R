install.packages("SentimentAnalysis")
library(SentimentAnalysis)
library(tm)

sentiment <- analyzeSentiment(msnbc_corpus)

convertToBinaryResponse(analyzeSentiment(msnbc_corpus)$SentimentQDAP)
sentiment$SentimentQDAP

convertToDirection(sentiment$SentimentQDAP)


### https://www.r-bloggers.com/2021/05/sentiment-analysis-in-r-3/

tdm <- TermDocumentMatrix(cleanset)
tdm <- as.matrix(tdm)
tdm[1:10, 1:20]