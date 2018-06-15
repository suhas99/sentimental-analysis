library("httr")
install.packages(c("jsonlite", "lubridate"))
library("jsonlite")
library("lubridate")

query<-"https://newsapi.org/v2/everything?sources=the-times-of-india&apiKey=58c40205bcf54a3095c5460698c1cdb4"
query1<-"https://newsapi.org/v2/narendramodhi&apiKey=58c40205bcf54a3095c5460698c1cdb4"
query3<-"https://timesofindia.indiatimes.com/india/my-governments-given-maximum-respect-to-br-ambedkar-pm-modi/articleshow/63619004.cms"
out<-GET(query3)
out1<-GET(query1)


http_status(out1)
content(out)
data<-content(out)

data$response


#scrapping

library("RCurl")
library("XML")
library("stringr")
library("plyr")


url5<-"https://economictimes.indiatimes.com/news/politics-and-nation/view-it-wont-be-easy-for-an-sp-bsp-alliance-to-take-on-the-bjp-in-2019/articleshow/63371729.cms"
filename5<-getHTMLLinks(url5)
content(filename5)
content$response
http_status(filename5)
installed.packages("tidyverse")
library("rvest")
library("dplyr")
library("stringi")
library("tidyverse")
vignette("selectorgadget")

news<-"https://economictimes.indiatimes.com/topic/Narendra-Modi"
news%>%
html_nodes(".p")%>%  
html_text() 

read_html(news)

news_html=html_nodes(news,'p')  
news1 <-html_text(news_html)
news1




