library(shiny)

shinyUI(fluidPage(
  titlePanel("Child's height through his parents"),
  sidebarLayout(
    
    mainPanel(
      htmlOutput("parentsText"),
      htmlOutput("prediction"),
      plotOutput("barsPlot", width = "100%")
    ),
    sidebarPanel(
            helpText("This application predicts child's height through his gender
                     and the parents's height, uses Galton's data."),
            helpText("Please make a choice of parameters:"),
            sliderInput(inputId = "inFh",
                        label = "Father's height in cm:",
                        value = 172,
                        min = 150,
                        max = 210,
                        step = 1),
            sliderInput(inputId = "inMh",
                        label = "Mother's height in cm:",
                        value = 157,
                        min = 140,
                        max = 200,
                        step = 1),
            radioButtons(inputId = "inGen",
                         label = "Child's gender: ",
                         choices = c("Female"="female", "Male"="male"),
                         inline = TRUE)
    )
    )
))