library(shiny)
library(shinythemes)

# User interface of our app
ui <- fluidPage(
    
    theme = shinytheme("united"), # Theme used. We could also use bootstrap themes here.
    
    tabsetPanel( # Hit F1 on function for more info
        
        tabPanel(
            "Reactive plot",
            
            fluidRow(
                column(
                    8,
                    HTML("<h3><center>For info on specific data points</center></h3>"),
                    
                    HTML("<h3><center>Select area on plot</center></h3>"),
                    
                    HTML("<h4><center>Double click on plot to reset brushed / selected points</center></h4>"),
                    
                    plotOutput("ourPlot", 
                               width = "900px", 
                               brush = "brushID",
                               dblclick = "doubleClickID")
                )
            ),
            
            fluidRow(
                tableOutput("tableBrush")
            )
            
        ),
        
        tabPanel(
            "Regression Summary",
            fluidRow(
                
                column(
                    8,
                    HTML("<h1><center>Linear Regression</center></h1>"),
                    
                    HTML("<h3>Summary of regression</h3>"),
                    
                    verbatimTextOutput("summaryOut"),
                )
            )
        )
    )
)