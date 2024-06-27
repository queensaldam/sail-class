#Control Structures

#IF statement
Olu <- 25
Agift <- 26

if(Olu < Agift){
  print("Agift is Older than Olu")
}


#IF-Else Statement
Olu <- 25
Agift <- 26

if(Olu > Agift){
  print("Efraim is older than Agift")
} else{
  print("Agift is older than Efraim")
}


Dami <- 5000
Jeff <-  2000

if(Dami > Jeff){
  print ("Dami is older than Jeff")} 
else{
  print("Dami is younger than Jeff")}


a <- 76
b <- 67

if(a < b)
{c <- a - b
  print("condition a > b is TRUE")
  } else {print(paste("Difference between a and b is ", c))
}



Olu <- 25
Agift <- 26

if(Olu < Agift){print("Agift is Older than Olu")}

sch <- "Pretoriaa"

if (sch == "Pretoria" | sch == "Windhoek" |sch == "Lusaka" |sch == "Harare") {
  
  print("Candidates falls within Southern geographical zone!")
  
} else {
  
  print("I am unsure if the candidate falls within area of interest")}


x <- c(4, 2, 9, 3, 6)
x
ifelse(x == 5, "This is true", "This is false")


sch <- "Erongo"

ifelse(sch == "Erongo" | sch == "Karas" |sch == "Kavango West" |sch == "Oshana", 
       "Candidates falls within SAIL geographical zone!", 
       "I am unsure if the candidate falls within area of interest")

girl <- "boy"
ifelse(girl == "bola" | girl == "boy" | girl == "Sola", "You're a boy")


#Switch statement

city <- "Mali" 
switch(city, "Lusaka" = "Zambia", "Nairobi" = "Kenya", "Bamako" = "Mali", "Abuja" = "Nigeria", "Cairo" = "Egypt", 
       "Kampala" = "Kwara State", "Kigali" = "Rwanda", "Windhoek" = "Namibia", "Tunis" = "Tunisia", "Kingston" = "Jamaica", 
       "Pretoria" = "South Africa")

home <- "Kano"
switch(home, "Abuja" = "Lagos", "Kano" = "Jigawa")


val <- switch( 
  2, 
  "Geeks1", 
  "Geeks2", 
  "Geeks3", 
  "Geeks4", 
  "Geeks5", 
  "Geeks6"
)
val 


val1 = 6  
val2 = 7
val3 = "d"  
result = switch(   
  val3,   
  "a"= cat("Addition =", val1 + val2),   
  "d"= cat("Subtraction =", val1 - val2),   
  "r"= cat("Division = ", val1 / val2),   
  "s"= cat("Multiplication =", val1 * val2), 
  "m"= cat("Modulus =", val1 %% val2), 
  "p"= cat("Power =", val1 ^ val2) 
)   


x <- switch(
  3,           # Expression
  "Geeks1",    # case 1
  "for",       # case 2
  "Geeks2"     # case 3
)
x

x <- 2
switch(x, "Geeks1", "for", "Geeks2")
x


y <- switch(
  "GfG3",              # Expression
  "GfG0"="Geeks1",     # case 1
  "GfG1"="for",        # case 2
  "GfG3"="Geeks2"      # case 3
)
y


y <- "GfG1" 
switch(
  y,              # Expression
  "GfG0"="Geeks1",     # case 1
  "GfG1"="for",        # case 2
  "GfG3"="Geeks2"      # case 3
)

z <- switch(
  "GfG",               # Expression
  "GfG0"="Geeks1",     # case 1
  "GfG1"="for",        # case 2
  "GfG3"="Geeks2"      # case 3
)
print(z)


#for Statement
melo <- c(1:10)

for(i in melo){
  
  print(paste0("This is number ", melo[i], " of 10"))
  
}

melo <- c(1:12)
for (each in melo){
  print (each)
}

x <- letters[4:10] 

for(i in x){ 
  print(i) 
}


#while statement
x = 2
# Print even numbers up to 10 
while(x <= 10){ 
  print(paste("my eggs are", x)) 
  x = x + 2}

i <- 0
while(i < 10){
  print(paste("This is attempt number ", i))
  i <- i + 1}


#break statement
participants <- c(1:30)

for(i in participants){
  
  print(paste("This is participant number ", i))
  if(i == 22){
    print("Partcipant number 22 has been found !!")
    break
  }
}


participants <- c('Squarepants', 'Star', 'Tentacles', 'Krabs', 'Cheeks', 'Squirrel', 
                  'The Lobster', 'Snail', 'Crabs', 'Efraim', 'Krabs', 'Snail', 'Firey', 'Puff')
for(i in participants){
  print(paste("This is participant ", i, " I am still looking for Efraim"))
  if(i == "Efraim"){
    print("Efraim has been found out")
    break}
}


x <- 20
i <- 11
repeat{
  if(i == x){
    print("I've found it")
    break
  }
  print("I have not found it")
  i <- i+1
}


mutum <- c(1:22)

for (i in mutum){
  if (i==5 || i==7 ||i==9){
    #print("Baya nan")
    next
  }
  print(paste("wona mutum ni ", i))
}


mutum <- c(1 : 22)

for(i in mutum){
  if(i==5 || i==7 || i==9){
    #print("Baya nan")
    next
  }
  print(paste("Wona mutum ni ", i))
}


x <- 21
i <- 11
repeat{
  if(i == x){
    print("I have found it")
    break
    }
  print("I have not found it")
  i <- i+1
}


akeem <- c(1:100)
mean(akeem)




#write a r program that creates a for loop to print numbers from 1 to 10
for (i in 1:100)
(print (i))


Dami <- c(1:100)
for(i in Dami){
  print(paste0("This is number ", Dami[i], "times"))
}


for(Dami in c(1:100)){
  
  print(paste0("This is number ", Dami, "times"))
}



#write a R program function to find the sum of all even numbers between two given numbers using a for loop
a <- 1
b <- 10
sum_even <- function(a,b){
  sum <-0
  for(i in a:b) {
    if(i %% 2==0) {
      sum <- sum + i
    }}
return(sum)}

result <- sum_even(a,b)
cat("The sum of even numbers between", a, "and", b, "is", result)


#define a function to find the sum of even numbers between two given numbers
sum_of_even_numbers <- function(start_num, end_num) {
#initialize a variable to store the sum 
sum <-  0
#iterate through the range of numbers from start_num to end_num
for (i in start_num:end_num) {
  #check if the current number is even
  if (i %% 2 == 0) {
    #if the number is even, add it to the sum
    sum <- sum + i
  }
}
#return the sum of even numbers
return(sum)}



#sum of odd numbers between 2 given numbers
d <- 1
e <- 10
sum_odd <- function(d,e){
  sum <-0
  for(i in d:e) {
    if(i %% 2 !=0) {
      sum <- sum + i
    }}
  return(sum)}

result <- sum_odd(d,e)

cat("The sum of odd numbers between", d, "and", e, "is", result)



factorial <- function(n){
  result <- 1
  while (n>0) {
    result <- result * n
    n <- n - 1
  }
  return(result)
}

num <- 10
print(paste("The factorial of", num, "is", factorial(num)))



factoral <- function(n){
  result <- 1
  i <- 1
  while (i <= n) {
    result <- result * i
    i <- i + 1
  }
  return(result)
}
num <- 10
print(paste("The factorial of", num, "is", factoral(num)))



odd_num <- function(a,b){
sum <- 0
for(odd_num in a:b) {
  if (odd_num %% 2 != 0) {
    sum <- sum + odd_num
  }
}
print(sum)
}
odd_num(1,5)


even_num <- function(a,b){
  sum <- 0
  for(even_num in a:b) {
    if (even_num %% 2 == 0) {
      sum <- sum + even_num
    }
  }
  print(sum)
}
even_num(1,10)



n(n-1)


cal_factorial <- function(n){
  while(n==1) {
    return(1)
    }
  while(n >1){
  return(n * cal_factorial(n-1))
  }
}
cal_factorial(5)


fact_n <- function(n){
  if(n == 0){
    return(1)
  }
  else {
    return (n*fact_n(n-1))
  }
}
fact_n(5) 


leke <- function(niyi)
{return (niyi ^ 4)}

leke(100)


helloSAIL <- function()
{  # Print message
  print("You are welcome to this cohort of SAIL, Data Science for society")
}
helloSAIL()




arrange <- function(n){
  return(sort(x, decreasing = FALSE))
}

n <- arrange(x)
n

?sort


sort(x, decreasing = FALSE)


generate_random_variables <- function(n, min_value, max_value) {
  # Generate n random variables between min_value and max_value
  random_variables <- runif(n, min_value, max_value)
  
  return(random_variables)
}
random_variables <- generate_random_variables(10, 1, 100)
random_variables


generate_binomial_variables <- function(n, size, prob) {
  # Generate n binomial random variables with given size and probability
  binomial_variables <- rbinom(n, size, prob)
  
  return(binomial_variables)
}

binomial_variables <- generate_binomial_variables(10, 10, 0.5)
print(binomial_variables)

damiii<- function(num){
  seq <- c()
  while (length(num)>0){
    leastt <- min(num)
    seq <- c(seq, leastt)
    num <- num[num != leastt |duplicated(num)]
  }
  return(seq)
}
