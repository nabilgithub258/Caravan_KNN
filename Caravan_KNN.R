library(corrgram)
library(corrplot)
library(caTools)
library(Amelia)
library(ggplot2)
library(dplyr)

#### Getting the data

head(Caravan)

#### checking the variance

var(Caravan[,1])
var(Caravan[,2])

#### standardizing the scale for the columns

View(Caravan)

standard.caravan <- scale(Caravan[1:85])

var(standard.caravan[,1])
var(standard.caravan[,2])

final.caravan <- cbind(standard.caravan,Caravan[86])

View(final.caravan)

#### Making the train and test 

sample <- sample.split(final.caravan,SplitRatio = 0.7)

train <- subset(final.caravan,sample == TRUE)

test <- subset(final.caravan,sample == FALSE)

#### Making the model

model.purchase <- knn(train[1:85],test[1:85],train$Purchase,k=1)

error.rate <- mean(test$Purchase != model.purchase)

#### Elbow method

error.rate <- NULL
model.purchase <- NULL

for (i in 1:40){
  model.purchase <- knn(train[1:85],test[1:85],train$Purchase,k=i)
  error.rate[i] <- mean(test$Purchase != model.purchase)
}

k.values <- 1:40

error.df <- data.frame(error.rate,k.values)

View(error.df)

#### ggplot using the error.rate 

ggplot(error.df,aes(k.values,error.rate)) + geom_point(position=position_jitter(w=1, h=0),aes(color=k.values),alpha=0.5) + geom_line(lty='dotted',color='red')
