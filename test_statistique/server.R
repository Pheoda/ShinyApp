library(shiny)

shinyServer(function(input, output) {
  
  output$p_value <- renderText({
    #Vérification si des fichiers de données on été rentrés
    if(!is.null(input$file1) && !is.null(input$file2))
    {
      #Rangement des valeurs dans des tableaux
      x <- c(as.matrix(read.csv(input$file1$datapath)));
      y <- c(as.matrix(read.csv(input$file2$datapath)));
      
      #Affichage de la p-value retournée
      paste("Valeur de p : ", var.test(x, y)$p.value);
    }
  })
  
  output$plot <- renderPlot({
    #Vérification si des fichiers de données on été rentrés
    if(!is.null(input$file1) && !is.null(input$file2))
    {
      #Rangement des valeurs dans des tableaux
      x <- c(as.matrix(read.csv(input$file1$datapath)));
      y <- c(as.matrix(read.csv(input$file2$datapath)));
      
      #Tri par ordre croissant des valeurs reçues
      x <- sort(x);
      y <- sort(y);
      
      abscisse <- c(1:length(x));
      
      #Affichage du premier jeu en noir
      plot(abscisse, x, main = "Rendu des échantillons", xlab = "Numéro", ylab = "Valeur", type = "p");
      #Affichage du second jeu en rouge
      points(abscisse, y, col="red");
    }
  })
  
})
