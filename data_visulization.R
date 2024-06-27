library(ggplot2)
library(dplyr)


##basic plot

# Get the unique values from the 'states' column in the 'covid_data' data frame
oruko <- unique(coviddata$states)
oruko

# Filter the 'covid_data' data frame to include only rows where 'states' is in the 11th to 20th unique states
coviddata2 <- coviddata %>% 
  subset(states %in% oruko[11:20])
coviddata2
qplot(total_death, total_confirmed, data = coviddata2, facets = . ~ states, 
      geom = c("point", "smooth"))

qplot(total_death, total_confirmed, data = coviddata2, facets = . ~ states, 
      geom = c("point", "smooth"), method = "lm")

#build up layers
oruko <- unique(coviddata$states)

coviddata2 <- covid_data %>% 
  subset(states %in% oruko[11:20])

g <- ggplot(coviddata2, aes(total_death, total_confirmed))

#summary(g)

g

## Layer (point)

g + geom_point()

## Let's add more layers (smooth)
g + geom_point() + geom_smooth()

g + geom_point() + geom_smooth(method = "lm")

g + geom_point() + facet_grid(. ~ states) + geom_smooth(method = "lm") 

# Aesthetics Modification
oruko <- unique(coviddata$states)

coviddata2 <- covid_data %>% 
  subset(states %in% oruko[11:20])

g <- ggplot(coviddata2, aes(total_death, total_confirmed))
g
g + geom_point(color = "steelblue", size = 4, alpha = 1/2)

g + geom_point(aes(color = states), size = 4, alpha = 1/2)


#Labels Modification

coviddata2 <- coviddata %>% 
  subset(states %in% oruko[11:20])

g <- ggplot(coviddata2, aes(total_death, total_confirmed))

g + geom_point(aes(color = states), size = 4, alpha = 1/2) + 
  labs(title = "Selected Stated Covid Death & Cases") + 
  labs(x = expression("Number of Death"), y = "Total Confirmed Cases")

# Smooth Modification

g + geom_point(aes(color = states), size = 4, alpha = 1/2) +
  geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE) +
  labs(title = "Selected Stated Covid Death & Cases") + 
  labs(x = expression("Number of Death"), y = "Total Confirmed Cases")

# Theme Modification

g + geom_point(aes(color = states), size = 4, alpha = 1/2) +
  theme_bw(base_family = "Times") +
  geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE) +
  labs(title = "Selected Stated Covid Death & Cases") + 
  labs(x = "Number of Death", y = "Total Confirmed Cases")


#Interactive Plot
#plotly makes interactiveness easy in R. We only need to pass our ggplot object into ggplotly()
foma <- ggplot(coviddata2, aes(total_death, total_confirmed)) +
  geom_point(aes(color = states), size = 4, alpha = 1/2) +
  theme_bw(base_family = "Times") +
  geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE) +
  labs(title = "Selected Stated Covid Death & Cases") + 
  labs(x = "Number of Death", y = "Total Confirmed Cases")

ggplotly(foma)

vide2 <- ggplotly(foma)


#Saving Plots
#We will first need to specify files to save our images using a () 
#such as jpeg(), png(), svg() or pdf(). Additional argument 
#indicating the width and the height of the image can be also used.
#We then create the plot
#Necessary to close the file with dev.off()

## Opening the graphical device
pdf("images/mysample__plot.pdf")

# Creating a plot
plot(rnorm(20))

# Closing the graphical device
dev.off() 
