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
      textOutput("p_value"), #Affichage du texte de la p-value
      plotOutput("plot")     #Affichage du graphique
    )
  ),
  
  titlePanel("Test de Kolmogorov-Smirnov"),
  
  # Entrée des 2 fichiers sources
  sidebarLayout(
    sidebarPanel(
      fileInput("file1KS", "Fichier échantillon 1", accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
      fileInput("file2KS", "Fichier échantillon 2", accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv'))
    ),
    
    # Affichage du rendu
    mainPanel(
      textOutput("p_valueKS"), #Affichage du texte de la p-value
      plotOutput("plotKS")     #Affichage du graphique
    )
  )
))