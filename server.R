# Load the Libraries
library(shiny)
library(randomForest)

data(iris)
rfModel <- randomForest(Species ~ ., data = iris, importance = TRUE, ntrees = 10)

shinyServer(function(input, output) {
    output$prediction <- reactive({
        x <- data.frame(Sepal.Length=input$Sepal.Length, Sepal.Width=input$Sepal.Width, Petal.Length=input$Petal.Length, Petal.Width=input$Petal.Width)
        pr <- predict(rfModel, x)
        levels(pr)[pr]
    })
})
