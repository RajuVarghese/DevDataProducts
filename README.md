# Developing Data Products Project
The project directory for Coursera Data Science course #9, Developing Data Products. The project consists of two parts:

* a Shiny application
* an R Presentation that serves as a pitch for the Shiny application

# The Project
The project is titled "Top Income Share" and it displays the top income share of the population of various countries over a period of time. It lets the user choose the countries whose data is to be displayed as well as the years and the percentile (0.01%, 0.1%, 1% and 1%). It is a fairly simple project as it just uses a single data frame with about 2480 rows.

# The Data

The data for the project was taken from the [Paris School of Economics](http://topincomes.g-mond.parisschoolofeconomics.eu/#Database:). The web site allows one to select the required data and the following were chosen:

* All countries in box #1
* All years in box #2
* Top 10% Income Share, Top 1% Income Share,Top 0.1% Income Share, Top 0.01% Income Share in box #3

The downloaded file was in XLSX format. Only the worksheet titled "Series-layout A" was used as the others were either notes or reformatted data. Some simple cleaning was performed *before* adding it to this project:

* the first header line was deleted
* only the first income share columns were used out of the 4 as it contained the most data. In the case of Canada, some data were copied from the second column as the first one was empty.

# The Shiny Application
The [Shiny app](https://rajuvarghese.shinyapps.io/tiapp/) consists of R code in two files:

* ui.R
* server.R

The app has two panels:

* the left panel allows the user to select the items of interest
* the right panel displays the data of the chosen items

# The Pitch
The [R Presentation](http://rpubs.com/RajuVarghese/74602) has 5 slides (a requirement of the project) in one file (tiapp.Rpres) and it describes the shiny application. It includes a chunk of R code, as required.

# The License
The code listed here may be used for any purpose. I accept no responsibility for it.

