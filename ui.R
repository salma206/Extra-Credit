library(ggplot2)

page_one <- tabPanel(
  "Page One",
  headerPanel('Occupancy Detection Dataset'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(data)),
    selectInput('ycol', 'Y Variable', names(data),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

page_two <- tabPanel(
  "Page Two",
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      titlePanel("Introduction"),
      p("This is a data set that describes the measurements of a room and the objective is to predict 
        whether or not the room is occupied. It was collected by Luis Candanedo from the University of Mons
        over the course of a few weeks in Mons, Belgium."),
      h2("Discussion"),
      p("What can be learned from this time series is that you could create the best work environment for your 
         employees by paying attention to which office rooms are occupied the most and how that relates to
         the temperature, light, humidity, CO2, and humidityRatio of that room. By doing so you find the perfect
         ratio and set all rooms to these conditions therefore creating a better environment for everyone.
         Additionally you can also see that rooms with more lighting attract more people you could use
        this information and make all the rooms brighter with more lighting."),
      h2("Reflection"),
      p("I learned about the different factors you need to predict the occupancy of a room and how each factor
        has its own purpose and adds on to the odds of if someone would be in that room or not. A question 
        that I have is why there are so many observations(9752) and if all of them were necessary. Would
        Luis have been able to create accurate research by using just 1000 observations or even less?")
    )
  )
)

page_three <- tabPanel(
  "Page Three",
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      titlePanel("Appendix"),
      p("The files I used to code are a ui file and a server file.")
    )
  )
)
ui <- navbarPage(
  "My Application",
  page_one,
  page_two,
  page_three
)
  

