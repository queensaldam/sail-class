library(usingR)

data(father.son)
??usingr

tidy(fit)

head(CO2)
boxplot(CO2$conc)
t.test(CO2$conc, mu = 550)
plot(uptake ~ Treatment, data=CO2)
str(co2)
library(lmtest)

install.packages("UsingR")
model <- lm(mpg ~ wt + cyl, data = mtcars)



model$coefficients[1]

library(ggplot2)


model <- lm(mpg ~ wt + cyl, data = mtcars)

# Create a ggplot object
ggplot(data.frame(model$residuals), aes(x = model$fitted.values, y =model$residuals)) +
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(title = "Residual Plot", x = "Fitted Values", y = "Residuals")


head(churning)
