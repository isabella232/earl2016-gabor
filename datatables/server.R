
shinyServer(function(input, output, session) {

  output$table <- renderDataTable(
    {
      d <- input$dataset
      if (d == "iris") {
        iris
      } else if (d == "mtcars") {
        mtcars
      } else if (d == "diamonds") {
        ggplot2::diamonds
      }
    },
    options = list(pageLength = 5)
  )

})
