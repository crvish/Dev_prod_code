
library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Diamond cost prediction given weight in one tenth of a carat"),
    sidebarPanel(
      numericInput('carat', 'Diamond Wgt in one tenth of carats', 1.2, min = 1.2, max = 3.5, step = .1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of in Singapore Dollars '),
      verbatimTextOutput("prediction"),
      br(),
      br(),
      p("This application is meant to predict the value of of 1/10 of a carat of Diamond. Using the data"),
      p("obtained from the diamond data in the UsingR package. Please key the any value in 1/10 of a carat"),
      p("And you will get the predicted price of a diamond of that weight in Singapore Dollars"),
      p("Because of the limitation of the data from which this prediction was derived you can only"),
      p("key in values between 1.2 and 3.5 in steps of .1 ")
    )
  )
)