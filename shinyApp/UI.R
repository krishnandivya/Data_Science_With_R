library(shiny)
library(nycflights13)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Histogram of Departure Time"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 24,
                  value = 60)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("depTimePlot")
    )
  )
))