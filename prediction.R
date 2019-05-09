# title: " Prediction - Comparing Trees"
# author: "Chieh-An Yang"

library(dplyr)
library(tidyr) 
library(ggplot2)
library(caret)
library(C50)

## Data
D1 <- data.frame(read.csv("drop-out.csv"))

# Separate data set into a training set and a test set
smp_size<-floor(0.75 * nrow(D1))
set.seed(123)
train_ind<-sample(seq_len(nrow(D1)), size = smp_size)

TRAIN1<-D1[train_ind, ]
TEST1<-D1[-train_ind, ]

# Visualize the relationships between chosen variables as a scatterplot matrix
pdf(file = "scatterplot_matrix.pdf")
D2<-select(D1,-student_id)
pairs(D2)
dev.off()

## CART Trees
TRAIN2 <- select(TRAIN1,-student_id)#Remove the student_id variable that we do not want to use in the model

#Define the control elements we would like to use
ctrl <- trainControl(method = "repeatedcv", #Tell caret to perform 10-fold cross validation
                     repeats = 3, #Tell caret to repeat each fold three times
                     classProbs = TRUE, #Calculate class probabilities for ROC calculation
                     summaryFunction = twoClassSummary)

#Define the model
cartFit <- train(complete ~ ., #Define which variable to predict 
                 data = TRAIN2, #Define the data set to train the model on
                 trControl = ctrl, #Tell caret the control elements
                 method = "rpart", #Define the model type
                 metric = "ROC", #Tell caret to calculate the ROC curve
                 preProc = c("center", "scale")) #Center and scale the data to minimize the 

#Check the results
cartFit

#Plot ROC against complexity 
plot(cartFit)
