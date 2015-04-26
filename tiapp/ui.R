library(shiny)
library (markdown)

ti <- read.csv ("./top-income.csv")
names (ti) <- c("Country", "Year", "Top1000", "Top0100", "Top0010", "Top0001")

countries <- as.character (unique (ti[,"Country"]))
yearMin <- min (ti[,"Year"])
yearMax <- max (ti[,"Year"])

# Define UI for application that Top Income Share
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Top Income Share"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      p ("Input controls. For information on how to use them please click on the Help tab on the right"),
      br (),
      selectInput('countries', 'Countries:', countries, multiple=TRUE, selectize=TRUE, selected=c("Switzerland", "United States")),
      sliderInput("range", "Year:", sep="",
                  min = yearMin, max = yearMax, value = c(1800, 2015)),
      radioButtons("percentile", "Income Percentile:",
                   c("Top 10.0%"  = "Top1000",
                     "Top  1.0%"  = "Top0100",
                     "Top  0.1%"  = "Top0010",
                     "Top  0.01%" = "Top0001"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel (
        tabPanel ("Graph", h4 ("Graph of Top Income"),
                  plotOutput ("plot")),
        tabPanel ("Table", h4 ("Table of Top Income"),
                  dataTableOutput ("table")),
        tabPanel ("Data Source", h4 ("Information on the Data Used in this Application"),
                  includeMarkdown ("dataSourcePage.md")),
        tabPanel ("Help",  h4 ("Help on using the Application"),
                  includeMarkdown ("helpPage.md")),
        tabPanel ("About",  h4 ("About this Application"),
                  includeMarkdown ("aboutPage.md"))        
      )
    )
  )
))
