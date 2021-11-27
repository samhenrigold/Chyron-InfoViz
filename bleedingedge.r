library(readr)
library(dplyr)
library(stringr)
library(quanteda)
library(data.table)
library(ggplot2)
library(tidyr)
library(ggthemes)
chy_1  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-14-tweets.tsv")
chy_2  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-13-tweets.tsv")
chy_3  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-12-tweets.tsv")
chy_4  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-11-tweets.tsv")
chy_5  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-10-tweets.tsv")
chy_6  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-09-tweets.tsv")
chy_7  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-08-tweets.tsv")
chy_8  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-07-tweets.tsv")
chy_9  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-06-tweets.tsv")
chy_10  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-05-tweets.tsv")
chy_11  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-04-tweets.tsv")
chy_12  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-02-tweets.tsv")
chy_13  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-01-tweets.tsv")

chy <- rbind(chy_1,chy_2,chy_3,chy_4,chy_5,chy_6,chy_7,chy_8,chy_9,chy_10,chy_11,chy_12,chy_13)

unwanted <- "800|8OO|888|[[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}|[[:alnum:]]{3}-[[:alnum:]]{3}-[[:alnum:]]{4}|1-[[:alnum:]]{3}-[[:alnum:]]{3}-[[:alnum:]]{4}|1-[[:digit:]]{3}-[A-Za-z]{0-10}|1-[[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}|1-[[:alnum:]]{3}-[[:alnum:]]{0,10}|1-[[:alnum:]]{3}-[[:alnum:]]{3}-[[:alnum:]]{0,10}|[Cc][Aa][Ll][Ll]\\s[Yy][Oo][Uu][Rr]\\s[Dd][Oo][Cc][Tt][Oo][Rr]\\w*|[Oo][Ff][Ff][Ee][Rr]|[Dd][Ee][Aa][Ll]\\w*|\\.[Cc][Oo][Mm]|[Ww][Ww][Ww]|[Ww][Ww][Ww]\\.|[Pp][Rr][Ee][Ss][Cc][Rr][Ii][Pp][Tt][Ii][Oo][Nn]|[Uu][Ss][Ee]\\s[Aa][Ss]\\s[Dd][Ii][Rr][Ee][Cc][Tt][Ee][Dd]"

chy <- chy[!grepl(unwanted, chy$text), ]

new_line <- c("\\n", "\\\\n")
chy$text <- str_replace_all(chy$text, paste(new_line, collapse = "|"), " ")


quote <- c("\'", "\"")
chy$text <- str_replace_all(chy$text, paste(quote, collapse = "|"), "")


punct <- c("\\.", "/", "\\\\", ":", ",", "|", "\\(", "\\)", "\\?", ">", "<", "-", "_", "u2014", "u2019")
chy$text <- str_replace_all(chy$text, paste(punct, collapse = "|"), "")

biden <- c("\\b[Dd][Ee][Nn]\\b", "\\b[Ii][Dd][Ee][Nn]\\b", "\\b\\{[Dd][Ee][Nn]\\b")
president <- c("\\b\\{[Ee][Ss][Ii][Dd][Ee][Nn][Tt]\\b", "\\b[Pp][Rr][Ee][Ss]\\.\\b", "\\b[Pp][Rr][Ee][Ss]\\b", "\\b[Ee][Ss][Ii][Dd][Ee][Nn][Tt]\\b")
democrats <- c("\\b[Dd][Ee][Mm][Ss]\\b", "\\b[Dd][Ee][Mm][Oo][Cc][Rr][Aa][Tt][Ss]\\b", "\\b[Dd][Ee][Mm]\\b")
republicans <- c("\\b[Rr][Ee][Pp][Uu][Bb][Ll][Ii][Cc][Aa][Nn][Ss][Ss]\\b")
senator <- c("\\b[Ss][Ee][Nn][Aa][Tt][Oo][Rr]\\w*\\b", "\\b[Ss][Ee][Nn]\\.\\b", "\\b[Ss][Ee][Nn]\\b")
kenosha <- c("\\b[Kk][Ee][Nn][Oo][Ss][Hh][Aa]\\w*\\b", "\\b[Kk][Ee][Nn]\\.\\b", "\\b[Kk][Ee][Nn]\\b")
representative <- c("\\b[Rr][Ee][Pp]\\.\\b", "\\b[Rr][Ee][Pp]\\b", "\\b[Rr][Ee][Pp][Rr][Ee][Ss][Ee][Nn][Tt][Aa][Tt][Ii][Vv][Ee]\\w*\\b") 
rittenhouse <- c("\\b[Rr][Ii][Tt]\\.\\b", "\\b[Rr][Ii][Tt]\\b", "\\b[Rr][Ii][Tt][Tt][Ee][Nn][Hh][Oo][Uu][Ss][Ee]\\w*\\b") 
nyt <- c("\\b[Nn][Yy] [Tt][Ii][Mm][Ee][Ss]\\b")
update <- c("\\b[Pp][Dd][Aa][Tt][Ee]\\b")
obama <- c("\\b[Bb][Aa][Mm][Aa]\\b")
covid <- c("\\b[Oo][Vv][Ii][Dd]\\b")
trump <- c("\\b[Uu][Mm][Pp]\\b", "\\b[Rr][Uu][Mm][Pp]\\b", "\\b\\{[Uu][Mm][Pp]\\b")

chy$text <- str_replace_all(chy$text, paste(biden, collapse = "|"), "BIDEN")
chy$text <- str_replace_all(chy$text, paste(president, collapse = "|"), "PRESIDENT")
chy$text <- str_replace_all(chy$text, paste(democrats, collapse = "|"), "DEMOCRATS")
chy$text <- str_replace_all(chy$text, paste(kenosha, collapse = "|"), "KENOSHA")
chy$text <- str_replace_all(chy$text, paste(rittenhouse, collapse = "|"), "RITTENHOUSE")
chy$text <- str_replace_all(chy$text, paste(senator, collapse = "|"), "SENATOR")
chy$text <- str_replace_all(chy$text, paste(representative, collapse = "|"), "REPRESENTATIVE")
chy$text <- str_replace_all(chy$text, paste(trump, collapse = "|"), "TRUMP")

chy$text <- str_replace_all(chy$text, nyt, "NYT")
chy$text <- str_replace_all(chy$text, republicans, "REPUBLICANS")  
chy$text <- str_replace_all(chy$text, update, "UPDATE")
chy$text <- str_replace_all(chy$text, obama, "OBAMA")
chy$text <- str_replace_all(chy$text, covid, "COVID")

cnn <- chy[chy$channel == "CNNW", ]

msnbc <- chy[chy$channel == "MSNBCW", ]

fox <- chy[chy$channel == "FOXNEWSW", ]

bbc <- chy[chy$channel == "BBCNEWS", ]
bbc <- bbc[8028:nrow(bbc), ]

duplicates <- function(x){
  repeats <- c()
  for(i in 1:(nrow(x) - 1)){
    first_three <- unlist(strsplit(x[[i,5]], split = "\\s+"))[1:3]
    second_three <- unlist(strsplit(x[[i + 1,5]], split = "\\s+"))[1:3]
    check <- all.equal(first_three, second_three)
    if(check == TRUE){
      repeats <- c(repeats, i)
      next
    }
    if(check == FALSE){
      next
    }
  }
  return(repeats)
}


a <- duplicates(cnn)
cnn <- cnn[-a, ]

b <- duplicates(msnbc)
msnbc <- msnbc[-b, ]

c <- duplicates(fox)
fox <- fox[-c,]

d <- duplicates(bbc)
bbc <- bbc[-d, ]

data.frame(channel = c("cnn", "msnbc", "fox", "bbc"), count = c(nrow(cnn), nrow(msnbc), nrow(fox), nrow(bbc)))

cnn_corpus <- paste(cnn$text, collapse = " ") %>% corpus()

msnbc_corpus <- paste(msnbc$text, collapse = " ") %>% corpus()

fox_corpus <- paste(fox$text, collapse = " ") %>% corpus()

bbc_corpus <- paste(bbc$text, collapse = " ") %>% corpus()

all <- c(paste(cnn$text, collapse = " "), paste(msnbc$text, collapse = " "), paste(fox$text, collapse = " "), paste(bbc$text, collapse = " ")) %>% corpus()
docnames(all) <- c("CNN", "MSNBC", "FOX", "BBC")
docvars(all, "channel") <- c("CNN", "MSNBC", "FOX", "BBC")

cnn_dfm <- dfm(cnn_corpus, remove = c(stopwords("english"), "|", "l", "m", "{", "n", "&", "s", "-", "I", "8", "6", "e", "r"), remove_punct = TRUE)
cnn_tf <- topfeatures(cnn_dfm, 20) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(cnn_tf) <- c("word", "count")

msnbc_dfm <- dfm(msnbc_corpus, remove = c(stopwords("english"), "|", "l", "m", "{", "n", "&", "s", "-", "I", "8", "6", "e", "r"), remove_punct = TRUE)
msnbc_tf <- topfeatures(msnbc_dfm, 20) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(msnbc_tf) <- c("word", "count")

fox_dfm <- dfm(fox_corpus, remove = c(stopwords("english"), "u2014", "|", "l", "m", "{", "n", "&", "s", "-", "I", "8", "6", "e", "r"), remove_punct = TRUE)
fox_tf <- topfeatures(fox_dfm, 20) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE) 
colnames(fox_tf) <- c("word", "count")

bbc_dfm <- dfm(bbc_corpus, remove = c(stopwords("english"), "weather", "later", "u2019", "8", "citaty", "|", "I", "6", "e", "r"), remove_punct = TRUE)
bbc_tf <- topfeatures(bbc_dfm, 20) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(bbc_tf) <- c("word", "count")

write.csv(msnbc_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/msnbc_tf.csv", row.names = FALSE)
write.csv(cnn_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/cnn_tf.csv", row.names = FALSE)
write.csv(fox_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/fox_tf.csv", row.names = FALSE)
write.csv(bbc_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/bbc_tf.csv", row.names = FALSE)
write.csv(msnbc_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/msnbc_dfm.csv", row.names = FALSE)
write.csv(cnn_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/cnn_dfm.csv", row.names = FALSE)
write.csv(fox_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/fox_dfm.csv", row.names = FALSE)
write.csv(bbc_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/bbc_dfm.csv", row.names = FALSE)


all_dfm <- dfm(all, groups = c("CNN", "MSNBC", "FOX", "BBC"), remove = c(stopwords("english"), "n", "m"), remove_punct = TRUE)
all_freq <- dfm_sort(all_dfm)[,1:20] %>% as.data.frame()

write.csv(all_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/all_dfm.csv", row.names = FALSE)
write.csv(all_freq, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/all_freq.csv", row.names = FALSE)

p_cnntf <- ggplot(cnn_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "CNN's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_cnntf)

p_msnbctf <- ggplot(msnbc_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "MSNBC's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_msnbctf)

p_foxtf <- ggplot(fox_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "FOX's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_foxtf)

p_bbctf <- ggplot(bbc_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "BBC's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_bbctf)


dict <- dictionary(list(kenosha = c("self-defense", "shooting", "murdered", "killed", "kenosha", "rittenhouse"), bbb = c("build back better", "infrastructure"), climate = c("glasgow", "scotland", "summit", "cop26", "climate", "climate change")))
a <- dfm(all, dictionary = dict) %>% as.data.frame()
a <- melt(a)
colnames(a) <- c("channel", "word", "count")

ggplot(a, aes(word, count, group = channel)) + geom_point(aes(color = a$channel)) + geom_line(aes(color = a$channel)) + scale_color_discrete(name = "channel") + labs(title = "Word Count: Kenosha, BBB, Climate") + theme_minimal() + theme(text = element_text(size = 20))