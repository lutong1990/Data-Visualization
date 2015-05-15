library(shiny)

shinyUI(pageWithSidebar(
	headerPanel("My first Visual in R"),
	sidebarPanel(
		numericInput('x','Numeric input, labeled id1',0,min=0,max=10,step=1),
		sliderInput('mu','the mean is',70,min=60,max=75,step=0.05),
		submitButton('submit')
		),
	mainPanel(
		h3('Outputs'),
		h4('the input value is'),
		verbatimTextOutput("inputValue"),
		h4('the function gives:'),
		verbatimTextOutput("z"),
		plotOutput('newHist')
		)
))
