caratPrice <- function(carat) (-259.6259 + carat*372.1025)
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$carat})
    output$prediction <- renderPrint({caratPrice(input$carat)})
  }
)