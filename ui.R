library(shiny)

shinyUI(
  navbarPage("MPG vs Variables",
             tabPanel("Analysis of relationship with MPG",
                      fluidPage(
                        titlePanel("The relationship between MPG and vaariablees"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            helpText("The regresion model can be modelled for 10 different variables. The default is number of cylinders. It will always be modelled against mpg. Please feel free to choose any of the variables.")
                            
                            
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit"),
                                                 tabPanel("sliderTab(fhgdsrey)",sliderInput("slidyslide", "SLIDE me!!!",0,100,0), textOutput("Extratab"))
                                        )
                            )
                          )
                        )
                      )
             ),
             
            
             tabPanel("My Github repository",
                      a("https://github.com/sravanikaza/shiny"),
                      hr(),
                      h4("THis is my first shiny app. I hope you like it"),
                      h4("The name of the repository is shiny")
             )
  )
)