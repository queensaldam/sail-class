library(shiny)
library(bslib)


ui <- fluidPage(
  theme = bs_theme(bg = "white", fg = "green",
                   base_font = font_google("Source Sans Pro"),
                   code_font = font_google("Space Mono")),
  pageWithSidebar(
    headerPanel("Pregnancy Due Date Calculator"),
    sidebarPanel(
      dateInput('LMP', "Last Menstrual Period", value = Sys.Date()),
      actionButton('calc_button', 'Calculate', class = "btn-lg  btn-success")
    ),
    mainPanel(
      h4('Last Menstrual Date'),
      verbatimTextOutput("inputValue"),
      h4('Expected Delivery Date'),
      verbatimTextOutput("prediction")
    )
  )
)

server <- shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$LMP})
    
    output$prediction <- eventReactive(input$calc_button, {
      EDD <- input$LMP + 282
      return(EDD)
    })
  }
)

shinyApp(ui, server)
