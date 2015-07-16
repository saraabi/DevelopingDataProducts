library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Is this number prime?"),
	sidebarPanel(
		numericInput('input1', 'Input any integer between 2 and 10,000', 0, min = 0, max = 10000, step = 1)
	),
	mainPanel(
		h2('You entered'), verbatimTextOutput("oid1"),
		h2('This number is '), verbatimTextOutput("primeorno")
	)

))

