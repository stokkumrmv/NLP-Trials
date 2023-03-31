## NLP TRIALS 

#install.packages("gutenbergr")
#install.packages("tidytext")
#install.packages("word2vec")
#install.packages("stringr")
#install.packages("openNLP")
#install.packages("quanteda")
#install.packages("spacyr")

library(dplyr)
library(gutenbergr)
library(tidytext)
library(word2vec)
library(stringr)
library(openNLP)
library(quanteda)
library(spacyr)

hume <- gutenberg_download(gutenberg_id = 36120)

hume_words <- hume %>% unnest_tokens(word,text)

hume_words %>% count(word, sort = TRUE) %>% print(n = 100)
get_stopwords()

