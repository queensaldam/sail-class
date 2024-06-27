str(coviddata)
head(coviddata)

## Secoviddata## Select and group the data (if necessary) ... filter(), subset()
coviddata %>% 
  subset(states == "Kaduna") %>% 
  group_by(states, month) %>% 
  summarize(count = n()) %>% 
  as.data.frame()


coviddata %>% 
  subset(states == "Ogun") %>% 
  group_by(states, total_death) %>% 
  summarize(count = n()) %>% 
  as.data.frame()
## obtain summary statistics ... mean(), median(), and quantile()

summary(coviddata)

#univariate analysis

## visually represent the distribution of the variable/data ... bar plots, histograms, boxplots

set.seed(234)
##  Create a Q-Q plot for total_death variable
ggplot(coviddata, aes(sample = total_death)) +
  stat_qq() 

library(ggplot2)
set.seed(234)
glimpse(iris, 20)
iris$Species
# Create a Q-Q plot for the Sepal.Length variable
ggplot(iris, aes(sample = Sepal.Length)) +
  stat_qq() #
geom_abline(intercept = 0, slope = 1)

#its normally distributed

#multivariate analysis stage
## explore relationships between variables ... cor()

#covid_data

## We can use scatterplots and boxplots
str(coviddata)

par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(coviddata, states == "Ogun")$total_death, col = "green")
hist(subset(coviddata, states == "Oyo")$total_death, col = "green")


library(dplyr)

# Using special data exploration libaries in R (DataExplorer, explore, smartEDA, GGally )


install.packages("DataExplore")
library(DataExplore)

##data distribution
coviddata %>% introduce()

coviddata %>% plot_intro()

## Missing Values ----

coviddata %>% plot_missing()

coviddata %>% profile_missing()

## Continuous Features ----

coviddata %>% plot_density()

coviddata %>% plot_histogram()

## Categorical Features ----

coviddata %>% plot_bar()

## Relationships ----

coviddata %>% plot_correlation(maxcat = 15)


##explore

coviddata %>% explore() 
## if you run: This function can only be used in an interactive R session

coviddata %>% select(-states) %>% explore() 
## if you run: This function can only be used in an interactive R session

# Describe ----

library(magrittr)

describe_cat(iris, Species)

coviddata %>% describe_all()

coviddata %>% describe_cat(states)

# Explore All Variables ----

coviddata %>%
explore_all(
target = total_death,
ncol   = 3)

## Explore Bivariate Plot ----
coviddata %>%
explore(target = total_death,
     var    = total_death,
     var2   = states)

#Reporting explore
# Running this on the learning platform may take some minutes
#Faster html plotting !
coviddata %>%
report(
     target      = total_death,
     output_dir  = "reports/",
     output_file = "covid_death_nigerian_states_plots.html")

#Interactive report
coviddata %>%
  create_report(
       output_file  = "covid_data_report",
      output_dir   = "reports/",
       y            = "total_death",
       report_title = "EDA Report - Covid Death in Nigerian States")


#Manual exploration
ai_papers_sample <- read.csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/ai_sample_papers.csv")
names(ai_papers_sample)

ai_papers_sample %>% introduce()

ai_papers_sample %>% describe()

ai_papers_sample %>% plot_missing()



ai_papers_sample %>% explore() 
## if you run: This function can only be used in an interactive R session

emmyCool <- ai_papers_sample$abstract %>% 
  str_replace_all("[^A-Za-z]"," ") %>% 
  VectorSource() %>% 
  Corpus() %>% 
  tm_map(tolower) %>% 
  tm_map(removeWords, stopwords("english")) %>% 
  tm_map(stripWhitespace) 

##

#word cloud
set.seed(234)
w_cloud <- wordcloud(emmyCool, max.words = 250, 
           colors = brewer.pal(8, "Dark2"), 
           scale=c(5,1), random.order = FALSE)



dtm <- DocumentTermMatrix(emmyCool)
freq = colSums(as.matrix(dtm))
ord = order(freq, decreasing = TRUE)
plot = data.frame(words = names(freq), count = freq)
plot = subset(plot, plot$count > 150) 
plot <- plot[with(plot, order(-count)), ]

#plot
