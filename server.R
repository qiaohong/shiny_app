
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)
source("helper.R")
data <- readRDS("data/data_for_map.rds")
shinyServer(function(input, output) {

  output$ggplot <- renderPlot({

   make_plot(data, input$year)
  })
  output$caption <- renderText({
    "This is a simple visualization of US election results in 2012 and 2016. 
    The color for each state indicates the difference of democratic votes v.s. republican votes in %.
    For example, 10 means the state has 10% more democratic votes than republican votes, and vice versa.
    States with more democratic votes are colored blue, while more republican votes are colored red.
    Darker color suggests bigger differences. White means the difference is close to 0.
    
    Click on the radio button to see data for the corresponding year."
  })
  
  
})
