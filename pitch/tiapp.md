Top Income Share by Countries
========================================================

#### Interactive app for displaying the top income share of selected countries over the years

<small>Project of the [Coursera](http://coursera.org) [Data Science specialization](https://www.coursera.org/specialization/jhudatascience/1) course #9 [Developing Data Products](https://class.coursera.org/devdataprod-013) course. This *R Presentation* is the pitch of the developed [Shiny app](https://rajuvarghese.shinyapps.io/tiapp/) using the R language.</small>

author: Raju Varghese
date: April 22, 2015


Introduction
========================================================

The shiny app hosted on shinyapps.io shows the top income share of the population of selected countries during the last 150 years.

Recently this topic has invoked much discussion. The effects of inequality on the country as a whole is a much debated topic among economists.


Application Usage
========================================================

The application has two columns:

* Controls
  * Country selector to choose the required set of countries
  * Year slider to select the first and last year that is to be displayed in the output.
  * Percentile radio button. Choose the top 10%, 1%, 0.1% or 0.01%
* output
  * Chart display
  * Table display
  * Additional information and help

Data Source/References
========================================================

The data was obtained from the [Paris School of Economics](http://topincomes.g-mond.parisschoolofeconomics.eu/#Database:). For easier analysis, the data has been lightly processed. Please note that not all countries have data for the last 150 years. List of countries:


```
[1] "Argentina Australia Canada China Colombia Denmark Finland France Germany India Indonesia Ireland Italy Japan Korea Malaysia Mauritius Netherlands New Zealand Norway Portugal Singapore South Africa Spain Sweden Switzerland Taiwan Tanzania United Kingdom United States Uruguay"
```

Conclusion
========================================================

This simple application shows that some countries have rising inequality whereas others have decreased over the years. It would be interesting to correlate this with productivity, unemployment and the Gini coefficient over the same period.
