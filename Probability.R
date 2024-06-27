#Probability
#x - mean/n
#generate or stimulate 10 numbers using random distribution
x <- rbinom(10,10,0.75)
x

num<- rbinom(10,10,0.5)
num
damiii(num)


n <- 10
x <- 13
set.seed(123)
number <- function(random){
  random <-  rbinom(n=10, size = 13, prob = 0.75)
  mn = mean(random)
  sd = sqrt(x-mn/n)
  return(sd)
}
number()

set.seed(123)
number <- function(random){
  random <-  rbinom(n=10, size = 13, prob = 0.75)
  mn = mean(random)
  return(mn)
}
number()

x <- 13
number <- function(random){
  random <-  rbinom(n=10, size = 13, prob = 0.75)
  mn = mean(random)
  return(mn)
}
number()


Zoe = rbinom(n = 5, size = 10, prob = 0.5)
Zion = rbinom(n = 7, size = 70, prob = 0.5)
plot(Zion, type = "h", xlab = "Number of Successes", ylab = "Probability")

x = rpois(n = 10, lambda = 1)

plot(x, type = "h", xlab = "Number of Successes", ylab = "Probability")
set.seed(234)
# Generating 100 samples from a normal distribution with mean of 10 and sd 1
x <- rnorm(100, mean = 5, sd = 1)

plot(x, type = "h", xlab = "Trials", ylab = "Values")
# Plot the samples
hist(x, main = "Normal Distribution", col = "lightblue")



set.seed(234)

sample_data <- rnorm(100)

sd(sample_data)

sd(x = sample_data)

sd(x = sample_data, na.rm = FALSE)

sd(na.rm = FALSE, x = sample_data)

sd(na.rm = FALSE, sample_data)




gen_random_num <- function(n, size, prob){
  random_var <- rbinom(10,10,0.75)
  for (i in 1:(n-1)) {
    for (j in 1:(n - i)) {
      if (random_var[j] > random_var[j+1]) {
        temp <- random_var[j]
        random_var[j] <- random_var[j+1]
        random_var[j+1] <- temp
      }
    }
  }
  return(random_var)
}

gen_random_num(10,10,0.75)


sequence<- function(num){
  seq <- c()
  while (length(num)>0){
    least <- min(num)
    seq<- c(seq, least)
    num <- num[num != least | duplicated(num)]
  }
  return(seq)
}
num <- rbinom(10,10,0.5)
num
sequence(num)
