#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Iris Dataset Prediction"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Sepal.Length",
                        "Sepal.Length:",
                        min = min(iris$Sepal.Length),
                        max = max(iris$Sepal.Length),
                        value = 5.1
            ),
            sliderInput("Sepal.Width",
                        "Sepal.Width:",
                        min = min(iris$Sepal.Width),
                        max = max(iris$Sepal.Width),
                        value = 3.5
            ),
            sliderInput("Petal.Length",
                        "Petal.Length:",
                        min = min(iris$Petal.Length),
                        max = max(iris$Petal.Length),
                        value = 1.4
            ),          
            sliderInput("Petal.Width",
                        "Petal.Width:",
                        min = min(iris$Petal.Width),
                        max = max(iris$Petal.Width),
                        value = 0.2
            ),              
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabPanel("Predict",  
                h4('The predicted species is'),
                verbatimTextOutput("prediction")
            ),
            tabPanel("Documentation", 
                 h4("About the App"),
                 p("This App uses a Random Forest Model to predict which of the iris species is based on 4 variables(sepal length and width, petal length and width)."),
                 p("The user can select the values on the sliders in the side panel bar and check the resutls in the main panel.")
            ),       
            tabPanel("Examples", 
                     h4("Examples"),
                     p("Test for setosa: 5.1, 3.5, 1.4, 0.2"),
                     p("Test for versicolor: 5.5, 2.3, 4.0, 1.3"),
                     p("Test for virginica: 7.9, 3.8, 6.4, 2.0"),
                     
            )             
        )
                     
    )
)
)
