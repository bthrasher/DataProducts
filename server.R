library(shiny)
data(father.son)
dat <- father.son

shinyServer(function(input, output) {
     fit <- reactive({
          ht.lm <- lm(sheight~fheight,data=dat)
          newdat <- data.frame(fheight=as.numeric(input$fht))
          pred <- predict(ht.lm,newdat,interval="confidence")
     })
     output$value <- renderText({ 
          paste(round(fit()[2],2),"to",round(fit()[3],2),"inches tall") 
     })
     
})
