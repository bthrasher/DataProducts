library(shiny)

shinyUI(fluidPage(
     titlePanel("How tall will my son be?"),
     textInput("fht", label = h3("Enther the father's height in inches:"), 
               value = "72"),
     hr(),
     h4("Your son has a 95% chance of being in the following range:"),
     h4(textOutput("value"))
     
))

