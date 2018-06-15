library(shiny)
library(shinyjs)
library(shinydashboard)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("superhero"),
                  
                  headerPanel("Sentiment Analysis of Tweets about Indian Prime Minister"),
                  
                  # Getting User Inputs
                  
                  sidebarPanel(
                               sliderInput("maxTweets","Number of recent tweets to use for analysis",
                                           min=5,max=1000,value=500), 
                               submitButton(text="Analyse")  
                  ),
                  
                  mainPanel(
                    tabsetPanel(
                      
          
                      tabPanel("Histogram",
                               HTML
                               ("<div><h3> Histograms graphically depict the positivity or negativity
                                 of peoples' opinion about of the hashtag
                                 </h3></div>"), plotOutput("histPos"), plotOutput("histNeg"), plotOutput("histScore")
                               ),
                      
                      
                      tabPanel("Pie Chart",
                               HTML
                               ("<div><h4> A pie chart is a circular statistical graphic, which is divided 
                                 into slices to illustrate the sentiment of the hashtag. In a pie chart, 
                                 the arc length of each slice (and consequently its central angle and area),
                                 is proportional to the quantity it represents.</h4></div>"),plotOutput("piechart")
                               
                               ),
                      
                      tabPanel("Table",
                               HTML ("<div><h4> The table depicts the sentiment (positive, negative or neutral) of the tweets 
                      associated with the search hashtag by showing the score for each type of sentiment. </h4></div>"),
                               tableOutput("tabledata")),
                      
                      
                      tabPanel("Top Tweeters",
                               HTML("<div><h3> Top 20 Tweeters of hashtag </h3></div>"),
                               plotOutput("tweetersplot"), tableOutput("tweeterstable")),
                      
                      tabPanel("Top Hashtags of User", plotOutput("tophashtagsplot"),
                               HTML("<div><h3> Hashtag frequencies in the tweets of the tweeter
      </h3></div>")  )    
                      )
                      )
                  
                      ))