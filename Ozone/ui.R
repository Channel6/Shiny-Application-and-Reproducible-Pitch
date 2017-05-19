#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("New York Ozone Temperature"),
  # sidebar
  #pageWithSidebar (
  headerPanel("New York Ozone Temperature"),
  sidebarPanel(
    selectInput("sliderTemp", "Which month?", c(5:9), selected = 5),
    #sliderInput("sliderTemp", "Which month?", 5, 9, value = 5),
    actionButton("do", "Calculate temperature")
  ),
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("plot1")
  )
))
