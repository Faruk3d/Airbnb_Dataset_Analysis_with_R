library(shiny)
library(knitr)

ui <- shinyUI(
  fluidPage(
    uiOutput('markdown')
  )
)
server <- function(input, output) {
  output$markdown <- renderUI({
    HTML(markdown::markdownToHTML(knit('AirBnB_exam.Rmd', quiet = TRUE)))
  })
}

shinyApp(ui, server)