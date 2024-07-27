library(shiny)
ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "spacelab"),
  pageWithSidebar(
    # Application title
    headerPanel("Pregnancy Due Date Calculator"),
    
    sidebarPanel(
      dateInput('LMP', "Last Menstrual Period", 0, value = Sys.Date()),
      submitButton('Calculate')
    ),
    mainPanel(
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Expected Date of Delivery'),
      verbatimTextOutput("prediction")
    )
  )
)


EDD <- function(LMP) LMP + 282

server <- shinyServer(
  function(input, output) {
    thematic::thematic_shiny()
    LMP <- reactive({input$LMP})
    output$inputValue <- renderPrint({LMP()})
    output$prediction <- renderPrint({EDD(LMP())})
  }
)

shinyApp(ui, server)
