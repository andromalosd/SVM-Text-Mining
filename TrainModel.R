x<- read.csv("C:/Users...csv")
Dtmatrix <- create_matrix(x$TDT_COMMENTS,language ="english",weighting = weightTfldf)
stemWords=
  Container <- craete_container(dtmatrix, x$Department, trainSize=1.8, testSize = 90:140, virgin = FALSE)
Model <- train_model(container, "SVM", kernel="linear",cost=1)
Pre<- read.csv("C..csv")
predSize = length(x$TDT_COMMENTS[90:140])
predictionContainer <- create_container(predmatrix, labels = rep(0,predSize), testSize =1: predSize, virgin=TRUE)
Results <- classify_model(predictionContainer, model)
