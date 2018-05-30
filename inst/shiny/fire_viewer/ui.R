
library(shiny)

shinyUI(fluidPage(

  title = "GEOS Fire Viewer",

  fileInput("files", label = "Select processed files", accept = ".csv", multiple = TRUE),
  fluidRow(
    column(width = 2,
           sliderInput("timestep", label = "Time step", min = 1, max = 1, value = 1,
                       animate = animationOptions(interval = 500, loop = TRUE))),
    column(width = 2, textOutput("time"))
  ),
  fluidRow(
    column(width = 6,
           leafletOutput("map"),
           plotOutput("ts")
           ),
    column(width = 6, tableOutput("table"))
  )
))