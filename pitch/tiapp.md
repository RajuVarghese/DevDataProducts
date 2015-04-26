<style>
.footer {
  color: gray;
  position: fixed;
  top: 90%;
  text-align:right;
  width:100%;
}

.page {
  color: lightgray;
  position: fixed;
  top: 1%;
  text-align:right;
  width:100%;
  font-size: 10%;
}
</style>

Top Income Share by Countries
========================================================

#### Interactive app for displaying the top income share of selected countries over the years

<small>Project of the [Coursera](http://coursera.org) [Data Science specialization](https://www.coursera.org/specialization/jhudatascience/1) course #9 [Developing Data Products](https://class.coursera.org/devdataprod-013) course. This *R Presentation* is the pitch of the developed [Shiny app](https://rajuvarghese.shinyapps.io/tiapp/) using the R language.</small>

<div class="footer">Raju Varghese // April 26, 2015</div>


Introduction
========================================================

The shiny app hosted on shinyapps.io shows the top income share of the population of selected countries during the last 150 years.

Recently, this topic has invoked much discussion. The effects of inequality on countries has been heatedly debated ever since [Thomas Picketty](http://en.wikipedia.org/wiki/Thomas_Piketty)'s [book](http://en.wikipedia.org/wiki/Capital_in_the_Twenty-First_Century) was published in 2014.

<div class="page">2/5</div>

Application Usage
========================================================

The shiny application has two columns:

* Controls
  * Country selector to choose the required set of countries
  * Year slider to select the first and last year that is to be displayed in the output.
  * Percentile radio button. Choose the top 10%, 1%, 0.1% or 0.01%
* Output
  * Chart display
  * Table display
  * Additional information and help

<div class="page">3/5</div>

Data Source/References
========================================================

The data was obtained from the [Paris School of Economics](http://topincomes.g-mond.parisschoolofeconomics.eu/#Database:). For easier analysis, the data has been lightly processed. Please note that not all countries have data for the last 150 years. List of countries:


```
[1] "Argentina Australia Canada China Colombia Denmark Finland France Germany India Indonesia Ireland Italy Japan Korea Malaysia Mauritius Netherlands New Zealand Norway Portugal Singapore South Africa Spain Sweden Switzerland Taiwan Tanzania United Kingdom United States Uruguay"
```

<div class="page">4/5</div>


Conclusion
========================================================

This simple application shows that some countries have rising inequality whereas others have decreased over the years. It would be interesting to correlate this with productivity, unemployment and the Gini coefficient over the same period.

Links:

* [interactive Shiny application](https://rajuvarghese.shinyapps.io/tiapp/)
* [R Presentation](http://rpubs.com/RajuVarghese/74602) (this document)
* [Github repository](https://github.com/RajuVarghese/DevDataProducts/) with the source of the above two

<div class="page">5/5</div>
