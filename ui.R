library(shiny)

shinyUI(
  navbarPage("Shiny Application",
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
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Data set details",
                      
                      h4("Regresion Model"),
                      helpText("THis is teh context.You work for Motor Trend, a magazine about the automobile industry Looking at a data set of a collection of cars, they are interested in exploring the relationship",
                               "between a set of variables and miles per gallon (MPG) (outcome). The 2 questions they are interested in are 1) Which one? an autmatic or manual transmision when it comes to  MPG. Quantify the MPG difference between automatic and manual transmissions"),
                      h4("Important"),
                      p("A data frame with 32 observations on 11 variables. Please visit this link."),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("More Deets about data",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Descrpton of daata here"),
                      helpText("This datas was extractd from the 1974 Motor Trend US magazzine,",
                               " and consists of  fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models). You can visit the link for any additional data queries."),
                      
                      
                      
             ),
             tabPanel("My Github repository",
                      a("https://github.com/sravanikaza/shiny"),
                      hr(),
                      h4("THis is my first shiny app. I hope you like it"),
                      h4("The name of the repository is shiny")
             )
  )
)