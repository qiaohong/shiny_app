library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("US election - Vote for Democrat v.s. Republican candidates"),
  
  radioButtons("year", "Choose the year:",
               c("2012" = "d_r_12",
                 "2016" = "c_t")),
  selected = "2016",
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("ggplot"),
    textOutput("caption"),
    textOutput("caption2")
  )
)
)
