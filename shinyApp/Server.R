library(shiny)
library(nycflights13)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  # Getting the NYC flights dataset
  nyFlights<-nycflights13::flights
  # Extracting the Departure Time 
  depTime<-nyFlights[,4]
  # Removing missing values
  depTime<-depTime[!is.na(depTime)]
  # Rendering the plot
  output$depTimePlot <- renderPlot({
    x    <- depTime  # Dep time data of NYC flights
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # Drawing histogram with the default number of bins
    hist(x, breaks = bins, col = 'skyblue', border = 'white',xlab="Departure Time",ylab="Frequency",main="Histogram of Departure Time of NYC Flights")
  })
})

