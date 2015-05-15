library(shiny)

source('funt.R')


shinyServer(
	function(input,output){
		output$inputValue <- renderPrint({input$x})
		output$z <- renderPrint({haha(input$x)})
		output$newHist <- renderPlot({heihei(input$mu)})
	}
)

