library(shiny)

ti <- read.csv ("./top-income.csv")
names (ti) <- c("Country", "Year", "Top1000", "Top0100", "Top0010", "Top0001")

countries <- as.character (unique (ti[,"Country"]))
yearMin <- min (ti[,"Year"])
yearMax <- max (ti[,"Year"])

helpPage <- div (
  p ("The side panel on the left has 3 widgets for setting parameters.",
     "On changing any of the three parameters the graph and the table in the main panel will be automatically updated"),
  p ("B"),
  h2 ("X"),
  p ("Z")
  )

# Define UI for application that Top Income Share
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Top Income Share"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput('countries', 'Countries:', countries, multiple=TRUE, selectize=TRUE, selected=c("Switzerland", "United States")),
      sliderInput("range", "Year:", sep="",
                  min = yearMin, max = yearMax, value = c(1800, 2015)),
      radioButtons("percentile", "Percentile:",
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
                  dataTableOutput ("table"))
#         tabPanel ("Data Source", h4 ("Information on the Data Used in this Application"),
#                   helpText ("table"), helpText ("More stuff")),
#         tabPanel ("Help",  h4 ("Help on using the Application"),
#                   helpPage)
      )
    )
  )
))
