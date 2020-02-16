# da079a3b

<h1 align="center">Amazon Comments analysis (35000 Comments Data) </h1>
<p> This app takes 35000 comments on the various food products on Amazon Shop and helps in filter various comments according to ratings given to product by the comments.
This app also compares the Helpful and non helpful votes of particula comments according to the ratings given in order to analyze if the comments given are fake or true,helpful or not to future buyers.
<br>
  
<h2> Installation</h2>

```R
# first install the R package "devtools" if not installed (install.packages("devtools")
devtools::install_github('unimi-dse/da079a3b')
```

<h2> Usage</h2>
<p> Load the package. </p>

```R
require(commentanalysis)
```
<p> The Data used is very big,so it may take some time for the Shiny app to load and also to plot graphs.</p>

<h3> Functions </h3>
<li><code> runapp()</code></li>


<h2> Technologies </h2>

- Shiny App: interactive web apps
- R language

<br>
<h2> Description of the application </h2>
<p> This app takes Data from over 35000 comments on amazon and helps us to view various comments according to their ratings.It also plots graph to see the data of comments are helpful for future buyers and how much are not helpful</p>

<h3> Tab 1 - Data </h3>

<p> This page shows the Data table of various comments.The user has to select the rating in order to view the relevant comments according to the ratings gives to the product.



<h3> Tab 2: Ratings to helpful Graph </h3>

<p> Here the app calculates the varous comments according to the ratings given by those comments and compares it with the helpful mete/votes given by the future customers who thought that the particular comment helped them to buy the product or not
</p>


<h3> Tab 3= Ratings to Non helpful Graph </h3>
<li>Here the app calculates the varous comments according to the ratings given by those comments and compares it with the non helpful mete/votes given by the future customers who thought that the particular comment meant nothing and were not at all helpful for their decision making 

</li>
