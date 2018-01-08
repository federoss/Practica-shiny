#app.R
 # Aqui haremos la nueva practica de shiny.

library(shiny)
library(shinydashboard)
library(plotly)

ui <- shinyUI (dashboardPage(
  dashboardHeader( title = " Lotto Bias "
                   
  ),
  dashboardSidebar(
    tags$style(".skin-blue .main-header .logo {
    background-color: #0077a6;
               color: #fff;
               border-bottom: 0 solid transparent;
               } !important}"
               ),
    sidebarMenu(
      menuItem("What's your favourite number?", tabName = "favNumber", icon=icon("fa-krw", class="fa fa-krw")),
      menuItem("Guess the good one", tabName = "goodOne", icon = icon("fa-hand-o-up"  ,class= "fa fa-hand-o-up" )),
      menuItem("Guess the bad one", tabName = "badOne", icon = icon("fa-hand-o-down", class = "fa fa-hand-o-down"))
      
    )
  ),
  dashboardBody( 
    tabItems(
      tabItem(tabName = "dashboard"))
               )
               
      )
    )
server <- function(input, output){
  
}

shinyApp(ui, server)
