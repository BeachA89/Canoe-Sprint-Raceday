server <- function(input, output) {
  
  output$currentTime <- renderText({
    # invalidateLater causes this output to automatically
    # become invalidated when input$interval milliseconds
    # have elapsed
    invalidateLater(as.integer(1000))
    
    format(now(tzone = "Turkey"), format = "%H:%M:%S")
    
  })
  
  tab_upcoming <- reactive({
    invalidateLater(as.integer(60000))
    format((now(tzone = "Turkey") + 1800), format = "%H:%M")
  })
  
  tab_Racing1 <- reactive({
    invalidateLater(as.integer(60000))
    format((now(tzone = "Turkey") - 300), format = "%H:%M")  })
  
  tab_Racing2 <- reactive({
    invalidateLater(as.integer(60000))
    format((now(tzone = "Turkey") + 300), format = "%H:%M")  })
  
  
  #now(tzone = 'Australia/Sydney')
  
  output$racetable <- DT::renderDataTable({
    Racing1 = tab_Racing1()
    Racing2 = tab_Racing2()
    Upcoming = tab_upcoming()
    racetable <- racedata  
    datatable(racetable,  rownames = NULL, options = list("pageLength" = 100, columnDefs = list(list(className = 'dt-center', targets = "_all")),dom='t')) %>%
      formatStyle(
        'Time',
        target = 'row',
        backgroundColor = styleInterval(c(Racing1,Racing2, Upcoming), c('white','yellow', 'lightblue', 'white')))
        
      
  })
  
  
  
  
}





