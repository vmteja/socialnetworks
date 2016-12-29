library(twitteR)
librar(plyr)
library(dplyr)
require(httr)
library(RCurl)
library(RJSONIO)
library(stringr)
library(tm)
library(wordcloud)

tw = read.csv("/Users/Krishna Teja/Documents/Study Material/185 - C2/tweets.csv", stringsAsFactors = FALSE)
Tw.text = laply(tw,function(t)tw$Tweet)
pos = scan('/Users/Krishna Teja/Documents/Study Material/185 - C2/positive-words.txt', what='character', comment.char = ';')
neg = scan('/Users/Krishna Teja/Documents/Study Material/185 - C2/negative-words.txt', what='character', comment.char = ';')

score.sentiment <- function(sentences, pos.words, neg.words, .progress='none')
{
  require(plyr)
  require(stringr)
  scores <- laply(sentences, function(sentence, pos.words, neg.words){
    sentence <- gsub('[[:punct:]]', "", sentence)
    sentence <- gsub('[[:cntrl:]]', "", sentence)
    sentence <- gsub('\d+', "", sentence)
    sentence <- tolower(sentence)
    word.list <- str_split(sentence, '\s+')
    words <- unlist(word.list)
    pos.matches <- match(words, pos.words)
    neg.matches <- match(words, neg.words)
    pos.matches <- !is.na(pos.matches)
    neg.matches <- !is.na(neg.matches)
    score <- sum(pos.matches) - sum(neg.matches)
    return(score)
  }, pos.words, neg.words, .progress=.progress)
  scores.df <- data.frame(score=scores, text=sentences)
  return(scores.df)
}
a = score.sentiment(Tw.text,pos,neg)
mean(a$score)
hist(a$score)