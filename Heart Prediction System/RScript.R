#Loading the libraries for reading the files and to perform random forest
library(readr)
library(randomForest)
heart <- read_csv("heart.csv")
View(heart)
#Finding the relation between the target and the Chest Pain Type
cor(heart$cp , heart$target)
plot(heart$cp , heart$target)
#Computing Linear Method 
mod <- lm(target ~ cp, data = heart)
summary(mod)
plot(mod)

#1
#2
#3
#4
#Computing Random Forest Method
mod1 <- randomForest(factor(target)~., data = heart)
table(heart$target, predict(mod1))
#Computing Linear Method again with the Predicted data of Random Forest
mod2 <- lm(target ~ predict(mod1), data = heart)
summary(mod2)
plot(mod2)
#Thank You
#Thank You
#Thank You
#Thank You