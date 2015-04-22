library(shiny)
library (ggplot2)
library (dplyr)
library (tidyr)

ti <- read.csv ("./top-income.csv")
names (ti) <- c("Country", "Year", "Top1000", "Top0100", "Top0010", "Top0001")
ti <- ti %>% gather (Type, Percentile, Top1000:Top0001)
ti$Country <- as.character (ti$Country)

# Define server logic required to a plot of the top income share
shinyServer(function(input, output) {

  dat <- reactive ({
    ti %>%
    filter (Year >= input$range [1], Year <= input$range [2],
            Country %in% input$countries,
            Type == input$percentile) %>%
    filter (!is.na (Percentile))
  })
  
  output$plot <- renderPlot({
    print (ggplot (dat (), aes (x=Year, y=Percentile, group=Country, color=Country)) + geom_line())
  })
  
  output$table <- renderDataTable ({
    dat ()
  })
})
