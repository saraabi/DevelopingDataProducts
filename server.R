library(shiny)
small_primes <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113)
primeorno <- function(n){
	if (n <= 1){
		response <- "not prime"
		return(response)
	} else if (n <= 3){
		response <- "prime"
		return(response)
	} else {
		response <- "prime"
		for(i in small_primes){
			if (i < n){
				if (n %% i == 0) {
					response <- "not prime"
				}
			}
		}
		return(response)
	}
	
}


shinyServer(
	function(input, output){
		output$oid1 <- renderPrint({input$input1})
		output$primeorno <- renderPrint({primeorno(input$input1)})
	}
)