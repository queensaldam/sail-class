
library(shiny)
ui <- shinyUI(pageWithSidebar(
  headerPanel("Data science SAIL!"),
  
  sidebarPanel(
    h3('Sidebar text')
  ),
  mainPanel(
    h3('Main Panel text')
  )
))


server <- shinyServer(
  function(input, output) {
  }
)

shinyApp(ui, server)



getwd()
[1] "C:/Users/Open user.DESKTOP-IHOKR1O/Documents"
> setwd("R_shiny/")
> getwd()
[1] "C:/Users/Open user.DESKTOP-IHOKR1O/Documents/R_shiny"
> list.files()
[1] "server.R" "ui.R"    
> RunApp()