library(shiny)

shinyServer(function(input, output) {
  
  output$p_value <- renderText({
    if(!is.null(input$file1) && !is.null(input$file2))
    {
      x <- c(as.matrix(read.csv(input$file1$datapath)));
      y <- c(as.matrix(read.csv(input$file2$datapath)));
      paste("Valeur de p : ", var.test(x, y)$p.value);
    }
  })
  
  output$plot <- renderPlot({
    if(!is.null(input$file1) && !is.null(input$file2))
    {
      x <- c(as.matrix(read.csv(input$file1$datapath)));
      y <- c(as.matrix(read.csv(input$file2$datapath)));
      x <- sort(x);
      y <- sort(y);
      abscisse <- c(1:length(x));
      plot(abscisse, x, main = "Rendu des échantillons", xlab = "X", ylab = "Y", type = "p");
      points(abscisse, y, col="red");
    }
  })
  
})
