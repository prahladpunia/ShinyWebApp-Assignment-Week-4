
library(shiny)
shinyUI(fluidPage(

        titlePanel("Economic Order Quantity"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("annualDemand",
                        "Entr the Annual Quantity required:", min = 1, max = 2400,value = 1),
            sliderInput("ordringCost",
                        "Enter the Ordering Cost per order:", min = 1, max = 10,value = 1),
            sliderInput("holdingCost",
                        "Enter the Holding Cost :", min = .01, max = 1,value = 0.1),
       
        submitButton('Submit') ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Economic Order Quantity is:"),
            textOutput("EOQ"),
            h3("No of orders per year:"),
            textOutput("no_Orders"),
            h3("Annual Ordering Cost :"),
            textOutput("annual_OrderingCost"),
            h3("Annual Holding Cost :"),
            textOutput("holding_Cost"),
            h3("Total Cost :"),
            textOutput("total_Cost")
            
        )
    )
))
