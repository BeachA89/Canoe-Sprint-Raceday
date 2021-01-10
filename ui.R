#Valid colors are: red, yellow, aqua, blue, light-blue, green, navy, teal, olive, lime, orange, fuchsia, purple, maroon, black.

ui <- dashboardPagePlus(
  header = dashboardHeaderPlus(title = "Canoe Sprint Annual Progress Report", titleWidth = 450 ,fixed = FALSE),
  sidebar = dashboardSidebar(
    sidebarMenu(style = "position: fixed; overflow: visible;",
                menuItem(
                  h1(
                    
                    textOutput("currentTime", container = span)
                  )
                )
    )
    
    
    
  ),
  #fileInput("Athletes", "Choose Athlete Data"),
  #fileInput("Benchmark", "Choose Benchmark Data"),
  #actionButton("goButton", "Go!"),
  
  
  
  body = dashboardBody(
    fluidRow(column(8,box(title = "Race Timetable", status = "success", solidHeader = TRUE,width = 12,
                          collapsible = FALSE,DT::dataTableOutput("racetable"))))
    
  )
  
  
  
  
  
  
)


#   fluidRow(
#     box(title = "Splits vs Top 10 average", status = "primary", solidHeader = TRUE,width = 12,
#         collapsible = TRUE,dataTableOutput("table3split"))
#   ),
#   fluidRow(
#     box(title = "Splits vs Top 10 average", status = "primary", solidHeader = TRUE,width = 12,
#         collapsible = TRUE,plotOutput("ggplotsplit"))
#     
#   )
#   
# )









# Create Shiny app ----
# shinyApp(ui, server)