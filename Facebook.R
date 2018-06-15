library("devtools")
library("httr")
library("RCurl")
library("RColorBrewer")
require("Rfacebook")
library("rjson")
library("httpuv")


access_token<-"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
me<-searchFacebook(string ="narendramodi",token =access_token,n=100,since ="yesterday 00:00", until ="yesterday 23:59" )

fburl_Query<-"https://graph.facebook.com/v2.12/177526890164"
fb_Data<-GET(fburl_Query,token=access_token)
post1 <- getPost(page$id=177526890164,token=access_token)



posts <- searchFacebook( string="facebook", token=access_token, n=100 )
posts <- searchFacebook( string="facebook", token=access_token, n=100,
                         since = "yesterday 00:00", until = "yesterday 23:59" )

me1<-getUsers(user=me,token=access_token)
