#Creating a directory for the plots
dir.create("plots")
?dir.create
library(ggplot2)
gapminder <- read.csv(file = "https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")
summary(gapminder)
View(gapminder)
p <- ggplot(gapminder, aes(gdpPercap, lifeExp))

p+geom_point()
#Create object for scatter plot with 3 variables
#plus trendline

p2 <- p+geom_point(aes(colour=continent)) + geom_smooth()
p2
p3 <- p+geom_point(aes(colour = year)) + geom_smooth()
p3 
View(gapminder)
p2+scale_colour_brewer()
p2+scale_colour_brewer(palette = Set1)
??colorspace
install.packages("colorspace")
library(colorspace)
p2+scale_colour_discrete_qualitative()
