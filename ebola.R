library(readr)
if(!require(pacman)) install.packages("pacman")
  pacman::p_load(
  tidyverse, #metapackage
  inspectdf,
  plotly,
  janitor,
  visdat,
  esquisse)
  
library(readr)
ebola_sierra_leone <- read_csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/ebola_sierra_leone - ebola_sierra_leone.csv.csv")
View(ebola_sierra_leone)
head(ebola_sierra_leone)
glimpse(ebola_sierra_leone)
skim(ebola_sierra_leone)


install.packages("skimr")
library(skimr)

Sys.time()

esquisse::esquisser(ebola_sierra_leone)



library(ggplot2)

ggplot(ebola_sierra_leone) +
 aes(x = district, y = age, fill = sex) +
 geom_col() +
 scale_fill_hue(direction = 1) +
 labs(x = "Number") +
 theme_minimal()

ggplot(ebola_sierra_leone) +
 aes(x = status, fill = sex) +
 geom_bar() +
 scale_fill_hue(direction = 1) +
 theme_minimal()
library(ggplot2)

ggplot(ebola_sierra_leone) +
 aes(x = age) +
 geom_histogram(bins = 30L, fill = "#112446") +
 theme_minimal()

ggplot(ebola_sierra_leone) +
  aes(x = age, y = sex, fill = sex) +
  geom_boxplot() +
  scale_fill_hue(direction = 1) +
  theme_minimal()

library(ggplot2)
df <- data.frame(category = c("A", "B", "C", "D"), 
                 value = c(20,30,25,25))

ggplot(df, aes(x = "", y = value, fill = category)) +
  geom_bar(width = 1, color = "white") +
  theme_minimal() + coord_polar(theta = "y") +
  theme_void()

#Table and frequency
janitor::tabyl(ebola_sierra_leone, sex)
janitor::tabyl(ebola_sierra_leone, status)
janitor::tabyl(ebola_sierra_leone, district)
table(ebola_sierra_leone,ebola_sierra_leone$sex)




# Create data for the graph.
geeks<- c(23, 56, 20, 63)
labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")

# Plot the chart.
pie(geeks, labels, main = "City pie chart",
    col = rainbow(length(geeks)))
legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"),
       cex = 0.5, fill = rainbow(length(geeks)))
