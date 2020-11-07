library(shiny)
library(datasets)

mpgDeet <- mtcars
mpgDeet$am <- factor(mpgDeet$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
  
  forate <- reactive({
    paste("mpg ~", input$variable)
  })
  
  fortep <- reactive({
    paste("mpg ~", "as.integer(", input$variable, ")")
  })
  
  fit <- reactive({
    lm(as.formula(fortep()), data=mpgDeet)
  })
  
  output$caption <- renderText({
    forate()
  })
  
  output$ExtraTab <- renderText(input$slidyslide
    
  )
  
  output$fit <- renderPrint({
    summary(fit())
  })
  
  output$mpgPlot <- renderPlot({
    with(mpgDeet, {
      plot(as.formula(fortep()))
      abline(fit(), col=2)
    })
  })
  
})