uber_data1 <- read.csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/Uber_Data (1).csv")
head(uber_data)
glimpse(uber_data)
str(uber_data)

#Finding number of missing values in each column
colSums(is.na(uber_data)) 
colSums(is.na(UberData)) 
summary(UberData)

summary(uber_data)

which(is.na(uber_data$temp)) #bring out values in temp without missing values
unique(uber_data$borough) #bring out unique occurrences/values in borough column
dim(uber_data)
length(uber_data$pickup_dt) #number of values in pickup_dt column
sample(uber_data$borough)
length(uber_data$borough)

#count number of occurrences of each value in column
table(uber_data$borough) 

#count number of occurrences of each value (including NA values) in column
table(uber_data$borough, useNA = 'always')

#count number of occurrences of specific value
length(which(uber_data$borough=="Brooklyn"))

UberData <-  na.omit(uber_data1)
any(is.na(UberData))

library(dplyr)
library(tidyverse)
library(ggplot2)
library(caTools)
library(skimr)


esquisse::esquisser(UberData)

#highest borough with pickup is Manhattan
ggplot(UberData) +
 aes(x = borough, y = pickups) +
 geom_col(fill = "#112446") +
 theme_minimal()


janitor::tabyl(UberData, month)
janitor::tabyl(UberData, day)
unique(UberData$day)
unique(UberData$month)
unique(uber_data$temp)




head(UberData)

class(pickup_dt)

skim(UberData)


pairs(uber_data[3:6])
pairs(uber_data[3:12])

all_pairs <- unique(UberData$borough)
all_pairs

par(mfrow=c(2,3))

library(lubridate)
library(tidyr)
#Replace - with /..

#separate datetime 
UberData <- separate(UberData, pickup_dt, into = c("datee", "time"),  sep = " ")


UberData$pickup_dt <- gsub("-", "/", UberData$pickup_dt)

UberData$monthsss <- gsub("06", "6", UberData$monthsss)



head(UberData)

UberData$date <- strptime(UberData$pickup_dt, format = "%m/%d/%Y %H:%M")
UberData$pickup_dt
UberData$year <- format(UberData$date, format = "%Y")
UberData$year
UberData$monthsss <- format(UberData$monthss, format = "%B")
UberData$monthsss
any(is.na(UberData$date))
which(is.na(UberData$date))

class(UberData$monthss)
class(UberData$pickup_dt)

unique(UberData$month)

UberData %>% mutate(month = month(date,  label = TRUE, abbr = FALSE))

monthss <- as.Date(UberData$monthss, "%m/%d/%Y")

#date column
UberData$date <- strptime(UberData$pickup_dt, format = "%m/%d/%Y %H:%M")

#seperate date and time
UberData$date <- as.Date (UberData$pickup_dt, "%d/%m/%Y")
UberData$time <- format(as.POSIXct(UberData$pickup_dt),format = "%H:%M")
head(UberData)

class(UberData$date)
View(UberData)

#extract month from date
UberData$month <- format(UberData$date, "%B")

#extract year from date
UberData$year <- format(UberData$date, "%Y")

#extract day
UberData$day <- format(UberData$date, "%d")

#extract weekday
UberData$weekday <- format(UberData$date, "%A")


