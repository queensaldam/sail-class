library(BSDA)
install.packages("BSDA")
set.seed(234) 
#to get the same results

# Generate sample data from normal distribution (Average interaction with learning materials seconds per day)

cohort1<- rnorm(n=22, mean = 97, sd=30)
cohort1

#perform one sample z-test
z.test(cohort1, mu=100, sigma.x=30)


set.seed(234) # to get the same results


emmyCool_group<- rnorm(n=30,mean = 56, sd=3)
emmyCool_group
tope_group<- rnorm(n=30,mean = 80, sd=3)
tope_group
sd(emmyCool_group)
sd(tope_group)

# Run a Z-test to identify whether two population means are equal or different

z.test(emmyCool_group, tope_group, alternative="two.sided", mu=0, sigma.x= 3, sigma.y=3,conf.level=.95)
