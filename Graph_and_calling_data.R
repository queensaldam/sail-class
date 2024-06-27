n <- 15
n
x <- 1
X <- 10
x
X * n
x + n
x + n
name <- "Carmen"; n1 <- 10; n2 <- 100; m <- 0.5
n2 + n1
ls()
n
x
ceiling(2.3)
floor(2.9)
??ggplot2
x <- c(10,20,30,40)
pie(x)
x <- c("A", "B", "C", "D")
covid <- read.csv("C:/users/Open user.DESKTOP-IHOKR1O/Documents/data/nigeria_markets.csv")
head(covid)
head(coviddata)
coviddata <- summarize(mean = mean(total_confirmed))
coviddata <- read.csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/covid19_nigeria_states.csv") 
viz <- ggplot2(covid_data, aes(x = states, y = total_confirmed)
               
               +
  geom_bar(stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1))

confirmed_summary <- coviddata %>% summary(mean_total_confirmed = mean(total_confirmed),
            median_total_confirmed = median(total_confirmed),
            sd_total_confirmed = sd(total_confirmed))
mean(total_death)
mean = mean(total_confirmed)



#Plotting graph

head(coviddata)
library(tidyverse)
covid_data2 <- coviddata %>% filter(!(states == "Lagos")) %>% filter(!(states == "FCT"))

ggplot(covid_data2, aes(x = states, y = total_confirmed)) + geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7)) 


+ theme(axis.text.x = element_text(angle = 90, hjust = 1))

view(coviddata)     

ggplot(coviddata, aes(x = states, y = total_confirmed) + 
         geom_bar(stat = "identity") + coord_flip() 
       + theme(axis.text.x = element_text(angle = 90, hjust = 1))
       
       summarise(coviddata)
       summary(coviddata)
       summary(mean_total_confirmed = mean(total_confirmed),
               median_total_confirmed = median(total_confirmed),
               sd_total_confirmed = sd(total_confirmed))
       
       ggplot()
       library(ggplot2)
       
       ggplot(coviddata, aes(x = states, y = total_confirmed) + 
                geom_bar(stat="identity",fill="lightblue")+ theme_dark() 
              
              
              
              