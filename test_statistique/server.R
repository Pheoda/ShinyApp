library(shiny)
library(readxl)

shinyServer(function(input, output) {

  output$text <- renderText({
    if(is.null(input$file1) || is.null(input$file2))
      return(NULL);
    var.test(read_excel(input$file1, col_names = FALSE), read_excel(input$file2, col_names = FALSE));
  })
  
})
