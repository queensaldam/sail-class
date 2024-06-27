# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/nigeria_ambulances.csv")
ambulances

#changing vectors to lower and upper
names(ambulances)
tolower(names(ambulances))

#split character vectors
splitNames = strsplit(names(ambulances), "\\_")
splitNames

splitLat = strsplit(names(ambulances), "tude")
splitLat



#vectorisation with characters
ambudata <- read.csv("C:/Users/Open user.DESKTOP-IHOKR1O/Downloads/nigeria_ambulances.csv")
splitNames = strsplit(names(ambudata), "\\_")

#bring out the 6th row first word
splitNames[[6]][1]

#function to bring out the first word for each row
firstElement <- function(x){x[1]}

#sapply to bring out first word of everything in splitNAMES
sapply(splitNames,firstElement)

#bring out 1st 4 rows
head(ambudata, 4)

#substitute space with _ #sub applies to first match but gsub applies to all
sub("_", "", names(ambudata))
gsub("_", "", names(ambudata))

# Find the rows where the 'state_name' column contains the string "Lagos"
grep("Lagos", ambulances$state_name)

# Create a table of logical values indicating the presence of "Lagos" in the 'state_name' column
table(grepl("Lagos", ambulances$state_name))

# Create a new data frame 'ambulances2' that excludes rows where the 'state_name' column contains "Lagos"
ambulances2 <- ambulances[!grepl("Lagos", ambulances$state_name), ]

# Display the new data frame 'ambulances2'
ambulances2

# Find and return the actual values in the 'state_name' column that contain the string "Lagos"
grep("Lagos", ambulances$state_name, value=TRUE)

# Find the indices of rows where the 'state_name' column contains the string "Abia"
grep("Abia", ambulances$state_name)

# Count the number of rows where the 'state_name' column contains the string "Abia"
length(grep("Abia", ambulances$state_name))

# Load the stringr package for string manipulation functions
library(stringr)

# Define a string containing a name
sa <- "Senator Adetokunbo"

# Calculate the number of characters in the string 'sa'
nchar(sa)

# Extract a substring from 'sa', starting at position 8 and ending at position 18
sa_b4 <- substr(sa, 8, 18)

# Display the extracted substring
sa_b4

# Concatenate the string "HRM" with the extracted substring
sa_ft <- paste("HRM", sa_b4)

# Display the concatenated result
sa_ft


# Concatenate two strings without any separator
paste0("Senator", "Adetokunbo")
paste("Senator Adetokunbo") # with a seperator

# Trim leading and trailing whitespace from a string
str_trim("Senator      ")

library(dplyr)

# Using dplyr pipe operator (%>%) and stringr's str_replace function to replace "Lagos" with "Oduduwa" in the 'state_name' column
ambulances2 <- ambulances %>% 
  mutate(state_name = str_replace(state_name, "Lagos", "Oduduwa"))

# Display the modified data frame with replaced values
ambulances2

library(stringr)
library(dpl)

head(ambulances, 36)

# Define a named vector for replacement where each state is associated with its region
rep_str = c('Abia'='South East','Anambra'='South East','Taraba'='North East')

# Use str_replace_all to replace state names with their respective regions in the 'state_name' column
ambulances$state_name <- str_replace_all(ambulances$state_name, rep_str)

# Display the modified data frame with replaced state names
ambulances
