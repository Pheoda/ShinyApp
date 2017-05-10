library(shiny)

shinyUI(fluidPage(

  titlePanel("Comparaison de deux variances"),

  # Entrée des 2 fichiers sources
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Fichier échantillon 1"),
      fileInput("file2", "Fichier échantillon 2")
    ),

    # Affichage du rendu
    mainPanel(
      htmlOutput("text")
    )
  )
))
