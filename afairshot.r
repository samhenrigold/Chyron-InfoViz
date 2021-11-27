library(readr)
library(dplyr)
library(stringr)
library(quanteda)
library(data.table)
library(ggplot2)
library(tidyr)
library(ggthemes)
chy_1  <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-06-tweets.tsv")
chy_2 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-03-tweets.tsv")
chy_3 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-01-tweets.tsv")
chy_4 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-05-tweets.tsv")
chy_5 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-04-tweets.tsv")
chy_6 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-30-tweets.tsv")
chy_7 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-11-02-tweets.tsv")
chy_8 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-31-tweets.tsv")
chy_9 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-29-tweets.tsv")
chy_10 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-27-tweets.tsv")
chy_11 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-25-tweets.tsv")
chy_12 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-28-tweets.tsv")
chy_13 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-26-tweets.tsv")
chy_14 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-23-tweets.tsv")
chy_15 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-18-tweets.tsv")
chy_16 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-24-tweets.tsv")
chy_17 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-22-tweets.tsv")
chy_18 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-15-tweets.tsv")
chy_19 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-21-tweets.tsv")
chy_20 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-17-tweets.tsv")
chy_21 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-16-tweets.tsv")
chy_22 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-20-tweets.tsv")
chy_23 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-19-tweets.tsv")
chy_24 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-13-tweets.tsv")
chy_25 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-10-tweets.tsv")
chy_26 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-14-tweets.tsv")
chy_27 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-12-tweets.tsv")
chy_28 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-11-tweets.tsv")
chy_29 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-09-tweets.tsv")
chy_30 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-04-tweets.tsv")
chy_31 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-08-tweets.tsv")
chy_32 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-05-tweets.tsv")
chy_33 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-07-tweets.tsv")
chy_34 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-01-tweets.tsv")
chy_35 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-06-tweets.tsv")
chy_36 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-30-tweets.tsv")
chy_37 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-03-tweets.tsv")
chy_38 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-10-02-tweets.tsv")
chy_39 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-29-tweets.tsv")
chy_40 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-28-tweets.tsv")
chy_41 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-27-tweets.tsv")
chy_42 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-26-tweets.tsv")
chy_43 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-24-tweets.tsv")
chy_44 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-25-tweets.tsv")
chy_45 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-23-tweets.tsv")
chy_46 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-22-tweets.tsv")
chy_47 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-21-tweets.tsv")
chy_48 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-15-tweets.tsv")
chy_49 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-20-tweets.tsv")
chy_50 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-19-tweets.tsv")
chy_51 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-17-tweets.tsv")
chy_52 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-13-tweets.tsv")
chy_53 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-18-tweets.tsv")
chy_54 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-16-tweets.tsv")
chy_55 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-07-tweets.tsv")
chy_56 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-14-tweets.tsv")
chy_57 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-11-tweets.tsv")
chy_58 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-12-tweets.tsv")
chy_59 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-10-tweets.tsv")
chy_60 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-09-tweets.tsv")
chy_61 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-08-tweets.tsv")
chy_62 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-02-tweets.tsv")
chy_63 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-03-tweets.tsv")
chy_64 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-06-tweets.tsv")
chy_65 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-05-tweets.tsv")
chy_66 <- read_tsv("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/RawChyron/2021-09-04-tweets.tsv")

# chy <- rbind(chy_1,chy_3,chy_4,chy_5,chy_6,chy_7,chy_8,chy_9,chy_10,chy_11,chy_12,chy_13,chy_14,chy_15,chy_16,chy_17,chy_18,chy_19,chy_20,chy_21,chy_22,chy_23,chy_24,chy_25,chy_26,chy_27,chy_28,chy_29,chy_30,chy_31,chy_32,chy_33,chy_34,chy_35,chy_36,chy_37,chy_38,chy_39,chy_40,chy_41,chy_42,chy_43,chy_44,chy_45,chy_46,chy_47,chy_48,chy_49,chy_50,chy_51,chy_52,chy_53,chy_54,chy_55,chy_56,chy_57,chy_58,chy_59,chy_60,chy_61,chy_62,chy_63,chy_64,chy_65,chy_66)

chy <- rbind(chy_1,chy_3,chy_4,chy_5,chy_7,chy_8,chy_10,chy_11,chy_12,chy_13,chy_16,chy_17,chy_18,chy_19,chy_20,chy_21,chy_22,chy_23,chy_24,chy_26,chy_27,chy_29,chy_31,chy_32,chy_33,chy_34,chy_35,chy_36,chy_37,chy_38,chy_39,chy_41,chy_42,chy_44,chy_45,chy_46,chy_47,chy_48,chy_49,chy_50,chy_51,chy_52,chy_53,chy_54,chy_55,chy_56,chy_57,chy_58,chy_59,chy_60,chy_61,chy_62,chy_63,chy_64,chy_65,chy_66)

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
representative <- c("\\b[Rr][Ee][Pp]\\.\\b", "\\b[Rr][Ee][Pp]\\b", "\\b[Rr][Ee][Pp][Rr][Ee][Ss][Ee][Nn][Tt][Aa][Tt][Ii][Vv][Ee]\\w*\\b") 
nyt <- c("\\b[Nn][Yy] [Tt][Ii][Mm][Ee][Ss]\\b")
update <- c("\\b[Pp][Dd][Aa][Tt][Ee]\\b")
obama <- c("\\b[Bb][Aa][Mm][Aa]\\b")
covid <- c("\\b[Oo][Vv][Ii][Dd]\\b")
trump <- c("\\b[Uu][Mm][Pp]\\b", "\\b[Rr][Uu][Mm][Pp]\\b", "\\b\\{[Uu][Mm][Pp]\\b")

chy$text <- str_replace_all(chy$text, paste(biden, collapse = "|"), "BIDEN")
chy$text <- str_replace_all(chy$text, paste(president, collapse = "|"), "PRESIDENT")
chy$text <- str_replace_all(chy$text, paste(democrats, collapse = "|"), "DEMOCRATS")
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
cnn_tf <- topfeatures(cnn_dfm, 100) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(cnn_tf) <- c("word", "count")

msnbc_dfm <- dfm(msnbc_corpus, remove = c(stopwords("english"), "|", "l", "m", "{", "n", "&", "s", "-", "I", "8", "6", "e", "r"), remove_punct = TRUE)
msnbc_tf <- topfeatures(msnbc_dfm, 100) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(msnbc_tf) <- c("word", "count")

fox_dfm <- dfm(fox_corpus, remove = c(stopwords("english"), "u2014", "|", "l", "m", "{", "n", "&", "s", "-", "I", "8", "6", "e", "r"), remove_punct = TRUE)
fox_tf <- topfeatures(fox_dfm, 100) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE) 
colnames(fox_tf) <- c("word", "count")

bbc_dfm <- dfm(bbc_corpus, remove = c(stopwords("english"), "weather", "later", "u2019", "8", "citaty", "|", "I", "6", "e", "r"), remove_punct = TRUE)
bbc_tf <- topfeatures(bbc_dfm, 100) %>% as.data.frame() %>% setDT(., keep.rownames = TRUE)
colnames(bbc_tf) <- c("word", "count")

write.csv(msnbc_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/msnbc_tf.csv", row.names = FALSE)
write.csv(cnn_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/cnn_tf.csv", row.names = FALSE)
write.csv(fox_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/fox_tf.csv", row.names = FALSE)
write.csv(bbc_tf, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bbc_tf.csv", row.names = FALSE)
write.csv(msnbc_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/msnbc_dfm.csv", row.names = FALSE)
write.csv(cnn_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/cnn_dfm.csv", row.names = FALSE)
write.csv(fox_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/fox_dfm.csv", row.names = FALSE)
write.csv(bbc_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bbc_dfm.csv", row.names = FALSE)


all_dfm <- dfm(all, groups = c("CNN", "MSNBC", "FOX", "BBC"), remove = c(stopwords("english"), "n", "m"), remove_punct = TRUE)
all_freq <- dfm_sort(all_dfm)[,1:20] %>% as.data.frame()

write.csv(all_dfm, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/all_dfm.csv", row.names = FALSE)
write.csv(all_freq, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/all_freq.csv", row.names = FALSE)

p_cnntf <- ggplot(cnn_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "CNN's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_cnntf)

p_msnbctf <- ggplot(msnbc_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "MSNBC's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_msnbctf)

p_foxtf <- ggplot(fox_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "FOX's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_foxtf)

p_bbctf <- ggplot(bbc_tf, aes(word, count, fill = count)) + geom_bar(stat = "identity") + scale_fill_gradient(low = "lightblue1", high = "indianred1") + labs(title = "BBC's 10 Most Frequent Chyron Words") + theme_minimal() + theme(text = element_text(size = 20))
print(p_bbctf)