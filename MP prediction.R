library(shiny)

ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "darkly"),
  pageWithSidebar(
    headerPanel("Menstrual Period Calculator"),
    sidebarPanel(
      dateInput('LMP', "Last Menstrual Period", value = Sys.Date()),
      numericInput('CycleLength', 'Cycle Length (days)', 28, min = 0, max = 31, step = 1),
      actionButton('calc_button', 'Calculate')
    ),
    mainPanel(
      h4('Last Menstrual Date'),
      verbatimTextOutput("inputValue"),
      h4('Next Menstrual Date'),
      verbatimTextOutput("prediction")
    )
  )
)

server <- shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$LMP})
    
    output$prediction <- eventReactive(input$calc_button, {
      NMD <- input$LMP + input$CycleLength
      return(NMD)
    })
  }
)

shinyApp(ui, server)
