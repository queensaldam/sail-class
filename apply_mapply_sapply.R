#lapply
x <- list(1:10)
y <- lapply(x, function(n) n*2)
y
x

b <- lapply(list(1:5),function(n) n*2)
b

c <- lapply(c(1:5), function(n) n*2)
c

c <- lapply(c(1:5), function(anything) anything*2)
c


names <- c("priyank", "abhiraj","pawananjani", 
           "sudhanshu","devraj") 
names 
lapply(list("priyank", "abhiraj","pawananjani", 
            "sudhanshu","devraj"), toupper)

list1 <- list(a = 1:20, b = 25:30, c = 40:60)
lapply(list1, sum)
list1


#mapply
x<-list(1,2,3,4)
y<-list(10,20,30,40)


x <- c(1:10)

y <- lapply(x, function(n) n^2)

z <- mapply(function(a, b) a*b, x, y)

z
x
y

zaz <- mapply(sum, x, y)
zaz

zazu <- mapply(prod, x, y)
zazu



#sapply
x <- list(c(1:10))
y <- sapply(x, function(n) n^2) #returns a vector
y <- lapply(x, function(n) n^2) #returns a list
y


#tapply
x<-c(1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4)
x
y1 <- tapply(x, x,  function(n) n*2)
y1

y2 <- tapply(x, x, function(n) n*n)
y2

fac <- c(1, 1, 2, 2, 3, 3, 4, 4, 5) 
vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)  
tapply(vec, fac, sum)



#Solving a problem

data(state)
head(state.x77)
str(state.x77)


#2 in apply represents calculating across columns, 1 represent across rows
apply(state.x77, 2, mean) #calculated mean across the columns
mad <- data.frame(state.x77) #called out all the data
mad
c(mad$Population)
apply(state.x77, 2, median) #calculated median across columns
apply(state.x77, 2, sd) #calculated standard deviation across columns



state_df %>% 
  summarize(variance = var(Income), sd = sd(Income), IQR = IQR(Income))

state_summary <- apply(state.x77, 2, function(x) c (mean(x), (sd)))
state_summary

state_range <-  apply(state.x77, 2, function(x) c (min(x), median(x), max(x)))
state_range

confirmed_summary <- state_df %>% 
  summarize(mean_Income = mean(Income), 
        median_Income = median(Income), 
        sd_Income = sd(Income))
confirmed_summary

population <- state.x77[1:50]
population
mean(population)

area <- state.area
Ruke <- mapply(function(x, y) x/y, population, area)
Ruke

dammy <- state.x77[2,2]
dammy

region.info <- tapply(population, state.region, function(x) c(min(x), median(x), max(x)))
region.info

area

income_info <- c(state.x77$Income)
income_info

esquisse::esquisser(state.x77)

state_df <- as.data.frame()
income <- state_df$Income
income

income <- state.x77[, "Income"]
income

dam <- state.x77[5,2]
dam

state_df <- as.data.frame(state.x77)
state_df$State <- rownames(state_df)

ggplot(state_df, aes(x=Population, y=State)) + 
  geom_bar(stat = "identity") + coord_flip() +
  xlab("Population") + ylab("State") + ggtitle("Population of Each State") + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


ggplot(state_df, aes(x=State, y=Population)) + 
  geom_bar(stat = "identity") + coord_flip() +
  xlab("Population") + ylab("State") + ggtitle("Population of Each State") + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(state_df, aes(x=reorder(State, -Population), y = Population)) + 
  geom_bar(stat = "identity", fill = "blue") + coord_flip() +
  xlab("State") + ylab("Population") + ggtitle("Population of Each State") + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


dol <- val <- fal <- "Dala"
fal
val
