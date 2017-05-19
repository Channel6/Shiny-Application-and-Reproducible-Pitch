Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Glenn Kerbein
date: May 18, 2017
autosize: true

Instructions
========================================================

This peer assessed assignment has two parts.

1. Create a Shiny application and deploy it on Rstudio's servers.
2. Use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.


Data Use in Project: Air Quality
========================================================

This application will provide a fitted regression line, with Temperature as the predictor and Ozone as the input.
From the Ozone dataset, in the ```datasets`` library:

Daily air quality measurements in New York, May to September 1973.

**Ozone**: Mean ozone in parts per billion from 1300 to 1500 hours at Roosevelt Island

**Solar.R**: Solar radiation in Langleys in the frequency band 4000–7700 Angstroms from 0800 to 1200 hours at Central Park

**Wind**: Average wind speed in miles per hour at 0700 and 1000 hours at LaGuardia Airport

**Temp**: Maximum daily temperature in degrees Fahrenheit at La Guardia Airport.


Data Use in Project: Air Quality
========================================================

```r{echo = TRUE}
summary(ozone)
```

Final output
========================================================

The Shiny application below shows the trend of how Ozone affects Temperature per month.

[Final R Shiny App](https://channel6.shinyapps.io/ozone_input/ "Hosted on ShinyApps.io")

[GitHub Project](https://github.com/Channel6/Shiny-Application-and-Reproducible-Pitch)

