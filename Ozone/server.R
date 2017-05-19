#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
data("airquality")

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  plotvals <- eventReactive(input$do, {
    input$sliderTemp
  })
  
  output$plot1 <- renderPlot({
    desiredmonth <- airquality[airquality$Month == plotvals(), ]
    plot(
      desiredmonth$Temp,
      desiredmonth$Ozone,
      xlab = "Temperature",
      ylab = "Ozone",
      bty = "n",
      pch = 13,
      col = "blue",
      xlim = c(50, 100),
      ylim = c(0, 150),
      abline(
        lm(
          Ozone ~ Temp,
          data = desiredmonth,
          col = "red",
          lwd = 2
        )
      )
      #,observeEvent(
      #  input$do, {
      #    MonthTemp <- airquality[airquality$Month == TempInput, ]
      #    plot(
      #      MonthTemp$Temp,
      #      MonthTemp$Ozone,
      #      xlab = "Temperature",
      #      ylab = "Ozone",
      #      bty = "n",
      #      pch = 13,
      #      col = "blue",
      #      xlim = c(50, 100),
      #      ylim = c(0, 150),
      #      abline(
      #        lm(
      #          Ozone ~ Temp,
      #          data = MonthTemp,
      #          col = "red",
      #          lwd = 2
      #        )
      #      )
      #    )
      #  }
      #)
    )
  })
})
