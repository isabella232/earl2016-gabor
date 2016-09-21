shinyUI(pageWithSidebar(
  headerPanel('Data table example'),
  sidebarPanel(
    selectInput('dataset', 'Data set', c('iris', 'diamonds', 'mtcars'))
  ),
  mainPanel(
    dataTableOutput('table')
  )
))
