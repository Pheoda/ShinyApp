library(shiny)

shinyUI(fluidPage(

  titlePanel("Comparaison de deux variances"),

  # Entrée des 2 fichiers sources
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Fichier échantillon 1", accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
      fileInput("file2", "Fichier échantillon 2", accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv'))
    ),

    # Affichage du rendu
    mainPanel(
      textOutput("p_value"),
      plotOutput("plot")
    )
  )
))