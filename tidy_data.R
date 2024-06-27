getwd()
setwd("../documents/data_science")

#check if the file exists and 
if(!file.exists("data_science")){
  dir.create("data_science")
  }

file.exists("data_science")

dir.create("ebdata_science") #creates a new folder
file.exists("ebdata_science") #check if the folder exists


#download online data file to a directory folder
fileUrl <- "https://ekoanalytics.net/data/covid19_nigeria_states.csv"

download.file(fileUrl, destfile = "./data_science/covid_19.csv", method = "curl")

list.files("./data_science")

dateDownloaded <- date()

dateDownloaded

fileURL <- "https://www.ekoanalytics.net/data/nigeria_schools.csv"
download.file(fileURL, destfile = "./data_science/nigeria_schools.csv", method = "curl")
list.files("./data_science")

fileURL <- "https://www.ekoanalytics.net/data/nigeria_intra_Africa_trade_connectedness.xlsx"
download.file(fileURL, destfile = "./data_science/nigeria_intra_Africa_trade_connectedness.xlsx", method = "curl")
list.files("./data_science")

nig_schools <- read.table("./data_science/nigeria_schools.csv", sep=",", header=TRUE)
head(nig_schools)

covidData <- read.csv("./data_science/covid_19.csv") [1:5, 3:4]
covidData
head(covidData)

library(readxl)
nig_intra <- read_xlsx("./data_science/nigeria_intra_Africa_trade_connectedness.xlsx") [6:9, 5:6]
head(nig_intra)
nig_intra

library(jsonlite)

ajJsonData <- fromJSON("https://api.github.com/users/bunmiaj/repos")
names(ajJsonData)
ajJsonData$owner$repos_url


DamiJsonData <- fromJSON("https://api.github.com/users/queensaldam/repos")
names(DamiJsonData)
DamiJsonData$owner$repos_url


library(jsonlite)
myjson <- toJSON(iris, pretty=TRUE)
cat(myjson)

library(jsonlite)
myjson <- toJSON(iris, pretty=TRUE)
iris2 <- fromJSON(myjson)
head(iris2)
