library(shiny)
library(shinythemes)


ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "spacelab"),
  pageWithSidebar(
  headerPanel("BMI Calculator"),
  sidebarPanel(
    numericInput('weight', 'Weight (kg)', 0, min = 1, max = 200, step = 0.5),
    numericInput('height', 'Height (metres)', 0, min = 0.5, max = 2.5, step = 0.01),
    submitButton('Calculate')
  ),
  mainPanel(
    h3('Showing outputs'),
    h4('Weight'),
    verbatimTextOutput("weight"),
    h4('Height'),
    verbatimTextOutput("height"),
    h4('BMI'),
    verbatimTextOutput("BMIresult"),
    h4('Category'),
    verbatimTextOutput("BMICategory")
  )
))

server <- shinyServer(function(input, output) {
  thematic::thematic_shiny()
  output$weight <- renderPrint({input$weight})
  output$height <- renderPrint({input$height})
  
  output$BMIresult <- renderPrint({
    weight <- input$weight
    height <- input$height
    BMI <- weight / (height ^ 2)
    return(BMI)
  })
  
  output$BMICategory <- renderPrint({
    weight <- input$weight
    height <- input$height
    BMI <- weight / (height ^ 2)
    
    if (BMI < 18.5) {
      category <- "Underweight"
    } else if (BMI >= 18.5 & BMI < 24.9) {
      category <- "Normal weight"
    } else if (BMI >= 25 & BMI < 29.9) {
      category <- "Overweight"
    } else {
      category <- "Obese"
    }
    
    return(category)
  })
})

shinyApp(ui, server)
