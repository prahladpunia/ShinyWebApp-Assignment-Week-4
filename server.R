library(shiny)

shinyServer(function(input, output) {

 output$EOQ<- renderText({sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost)})
  
 output$no_Orders<- renderText({input$annualDemand/(sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost))})
 output$annual_OrderingCost<- renderText({input$annualDemand/(sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost))*input$ordringCost})
 output$holding_Cost<-renderText({((sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost))/2)*input$holdingCost})
 output$total_Cost<-renderText({((input$annualDemand/sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost))*input$ordringCost) +
     ((sqrt(2*input$annualDemand * input$ordringCost/input$holdingCost))/2)*input$holdingCost})
 })
  
  



