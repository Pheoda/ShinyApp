library(shiny)
library(readxl)

shinyServer(function(input, output) {
  
  output$text <- renderPrint({
    if(!is.null(input$file1) && !is.null(input$file2))
    {
      x <- c(as.matrix(read_excel(input$file1, col_names = FALSE)));
      y <- c(as.matrix(read_excel(input$file2, col_names = FALSE)));
    }
  })
  
})
