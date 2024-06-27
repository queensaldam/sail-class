#Vectorization

#creating a vector the c means consist or contains
vecta <- c(10, 20, 120)
vecta
c

#creating a list, it cpntains different types of data i.e heterogenous data structures
cchub_list <- list(254,  "Herbert Macaulay", "Yaba", "Kigali", "Nairobi", "Namibia", c(22, 29, 2), TRUE, 3+4i, 6L)
cchub_list
cchub_list[[5]]
cchub_list[[7]] [2]

listed <- c(5,6,10, list("jos", 5, "girl"))

listed <- c(5,6,10, list(5, 6, 7))
listed 
listed[[5]] #bring out the 5th one

girl <- list(500, "joy", list("unilag", 100, 300))
girl
girl[[3]][2]

idris_1 <- c(1,2,3,4,5,6)
sola <- c(1:6)
idris_1
sola


martha <- matrix(c(45, 67, 20, 40),c(30, 23, 67, 20, 40),c(3,6,7,4), ncol=4)
martha

mary <- matrix(c(1:20), ncol=5)
mary

yemi <- c(45, 67, 20, 40, 30, 23, 67, 20, 40)
matrix(yemi, ncol = 3)

matrix(cchub_list, ncol = 2)

rownames <- c("Sola_1", "Sola_2", "Sola_3")
colnames <- c("Bala_1", "Bala_2", "Bala_3")
maryann <- matrix(c(1:9), ncol=3, dimnames = list(rownames, colnames))
maryann

maryann <- matrix(yemi, ncol=3, dimnames = list(rownames, colnames))


id <- c(1:10)
name <- c("Olu", "Oke", "Mariam", "Ezekiel", "Abdul", "Rasheed", "Oyinyen", "Amaka", "Ngugi", "Katung")
position <- c("second", "fifth", "second", "fourth", "first", "absent", "eighth", "tenth", "absent", "sixth")
house_no <- c(1:10)
df_data <- data.frame(id , name, position, house_no)
df_data %>% arrange(name)
df_data

ida <- c(2:9)
ida



library(dplyr)
install.packages("magrittr")


arrayyo <- array(c(1:20),dim=c(2,4,4))
arrayyo


rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3", "col4")
matrix_names<- c("olu", "agift", "Ajala", "dami")
arry <- array(c(1:48) , dim=c(4,4,4) , dimnames = list(rownames, colnames, matrix_names))
arry

man
nam
man <- matrix(1:8, nrow = 2)
nam <- matrix(2:9, nrow = 2)
name <-  (man * nam)

name
una <- (ida * man)
una
ida

fac <- factor(c("a", "b", "a", "b", "b", "c", "c", "da", "d"))
fac

table(fac)

pamela <- c(1:4)
pamm <- factor(c("True", "False", "Unsure", "True"))
pamela2 <- c("True", "False", "Unsure", "True")

nkechi <- data.frame(pamela, pamm, pamela2)
nkechi
table(pamm)

levels(nkechi$pamm)
levels(nkechi$pamela)
table(nkechi$pamela2)

pamm

library(tibble)
my_data <- tibble(
  name = c("Sandeep", "Amit", "Aman"),
  age = c(25, 30, 35),
  city = c("Pune", "Jaipur", "Delhi"))
my_data


