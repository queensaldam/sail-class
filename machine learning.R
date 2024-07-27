library(kernlab)
data(spam)
head(spam)
library(kernlab)
data(spam)
set.seed(234)
small_spam_sub <- spam[sample(dim(spam)[1],size=10),]
spamLabel <- (small_spam_sub$type=="spam")*1 + 1
plot(small_spam_sub$capitalAve,col=spamLabel)
spamLabel
table(rule1(spam$capitalAve),spam$type)
table(rule2(spam$capitalAve),spam$type)
mean(rule1(spam$capitalAve)==spam$type)
mean(rule2(spam$capitalAve)==spam$type)
rule1 <- function(x){
  prediction <- rep(NA,length(x))
  prediction[x > 2.7] <- "spam"
  prediction[x < 2.40] <- "nonspam"
  prediction[(x >= 2.40 & x <= 2.45)] <- "spam"
  prediction[(x > 2.45 & x <= 2.70)] <- "nonspam"
  return(prediction)
}

library(kernlab); data(spam); set.seed(234)
small_spam_sub <- spam[sample(dim(spam)[1],size=10),]
spamLabel <- (small_spam_sub$type=="spam")*1 + 1

table(rule1(small_spam_sub$capitalAve),small_spam_sub$type)

rule2 <- function(x){
  prediction <- rep(NA,length(x))
  prediction[x > 2.8] <- "spam"
  prediction[x <= 2.8] <- "nonspam"
  return(prediction)
}

library(kernlab); data(spam); set.seed(234)
small_spam_sub <- spam[sample(dim(spam)[1],size=10),]
spamLabel <- (small_spam_sub$type=="spam")*1 + 1

table(rule2(small_spam_sub$capitalAve),small_spam_sub$type)

library(kernlab); data(spam); set.seed(234)
small_spam_sub <- spam[sample(dim(spam)[1],size=10),]
spamLabel <- (small_spam_sub$type=="spam")*1 + 1

table(rule1(spam$capitalAve),spam$type)
table(rule2(spam$capitalAve),spam$type)
mean(rule1(spam$capitalAve)==spam$type)
mean(rule2(spam$capitalAve)==spam$type)


library(caret); library(kernlab); data(spam)

#COMMAND TO CREATE TRAIN(75%) AND TEST(25%) CLASSIFICATION
inTrain <- createDataPartition(y=spam$type,
                               p=0.75, list=FALSE)
#SPLIT INTO TRAINING AND THOSE THAT ARE NOT IN TRAINING TO TESTING
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)
dim(testing)

set.seed(234)
library(caret); library(kernlab); data(spam)
inTrain <- createDataPartition(y=spam$type,
                               p=0.75, list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]

modelFit <- train(type ~.,data=training, method="glm")
modelFit

modelFit <- train(type ~.,data=training, method="glm")

modelFit$finalModel

modelFit <- train(type ~.,data=training, method="glm")

predictions <- predict(modelFit,newdata=testing)
predictions

confusionMatrix(predictions,testing$type)


data(Wage)
inTrain <- createDataPartition(y=Wage$wage,
                               p=0.7, list=FALSE)
training <- Wage[inTrain,]
testing <- Wage[-inTrain,]

dim(training); dim(testing)

featurePlot(x=training[,c("age","education","jobclass")],
            y = training$wage,
            plot="pairs")
qplot(age,wage,data=training)

qplot(age,wage,colour=jobclass,data=training)

qq <- qplot(age,wage,colour=education,data=training)
qq +  geom_smooth(method='lm',formula=y~x)
library(Hmisc)

#divide into intervals
cutWage <- cut2(training$wage,g=3)
table(cutWage)

p1 <- qplot(cutWage,age, data=training,fill=cutWage,
            geom=c("boxplot"))
p1

p2 <- qplot(cutWage,age, data=training,fill=cutWage,
            geom=c("boxplot","jitter"))
grid.arrange(p1,p2,ncol=2)

t1 <- table(cutWage,training$jobclass)
t1
prop.table(t1,1)

qplot(wage,colour=education,data=training,geom="density")

penguins <- penguins%>%drop_na()
penguins
penguins %>% skim()
### Data Splitting
# Split the data
inTrain <- createDataPartition(y=Wage$wage,
                               p=0.7, list=FALSE)
seper <- createDataPartition(y=penguins$species, p=0.7, list=FALSE)
dim(seper)
dim(split)
split <- initial_split(penguins, prop = 0.8, strata = species)
train_data <- training(split)
test_data <- testing(split)
dim(train_data)
dim(test_data)

rf_spec <- rand_forest() %>%
  set_engine('ranger') %>%
  set_mode('classification')
rf_spec

penguin_recipe <- recipe(species ~ ., data = train_data) %>%
  step_impute_median(all_numeric_predictors()) %>%
  step_dummy(all_nominal_predictors())
penguin_recipe

rf_workflow <- workflow() %>%
  add_model(rf_spec) %>%
  add_recipe(penguin_recipe)

rf_fit <- rf_workflow %>%
  fit(data = train_data)





penguins <- penguins%>% 
  drop_na()
### Data Splitting
# Split the data
split <- initial_split(penguins, prop = 0.8, strata = species)
train_data <- training(split)
test_data <- testing(split)

# Specify a random forest model using tidymodels.",

rf_spec <- rand_forest() %>%
  set_engine('ranger') %>%
  set_mode('classification')

#Train our model on the training data.",
# Create the recipe

penguin_recipe <- recipe(species ~ ., data = train_data) %>%
  step_impute_median(all_numeric_predictors()) %>%
  step_dummy(all_nominal_predictors())

# Create the workflow
rf_workflow <- workflow() %>%
  add_model(rf_spec) %>%
  add_recipe(penguin_recipe)

# Fit the model
rf_fit <- rf_workflow %>%
  fit(data = train_data)

# Display the fit
rf_fit

# Let's evaluate our model on the test data.",
# Make predictions

predictions <- rf_fit %>%
  predict(test_data) %>%
  bind_cols(test_data)

# Calculate accuracy
accuracy <- predictions %>%
  metrics(truth = species, estimate = .pred_class) %>%
  filter(.metric == 'accuracy')

# Display accuracy
accuracy