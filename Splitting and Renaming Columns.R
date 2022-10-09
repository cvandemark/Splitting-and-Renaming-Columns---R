###Splitting a single column into multiple in R, then renaming the columns using rename() f'n
#Using the JohnsonJohnson data set available in the 'datasets' package

#Using the JonhsonJonhson dataset available in the "datasets" package
install.packages("datasets")
install.packages("dplyr")
library(datasets)
library(dplyr)
##Make sure to install datasets and dplyr, I have already done so. 

#Viewing the default data and realizing it comes out as one column 
JohnsonJohnsonInitial <- JohnsonJohnson
JohnsonJohnsonInitial <- data.frame(JohnsonJohnsonInitial)
JohnsonJohnsonInitial

#Creating dummy vector for column names 
Quarters <- c("Q1", "Q2", "Q3", "Q4")

#Generating the data frame 
JohnsonJohnsonNew <- data.frame(split(JohnsonJohnsonInitial, Quarters))

#Viewing current column names
View(JohnsonJohnsonNew)
colnames(JohnsonJohnsonNew)

#Renaming the columns 
JohnsonJohnsonFinal <- rename(JohnsonJohnsonNew, Q1 = JohnsonJohnsonInitial, Q2 = JohnsonJohnsonInitial.1, 
                              Q3 = JohnsonJohnsonInitial.2, Q4 = JohnsonJohnsonInitial.3)

#how the function works >> rename(your dataset, 'new column name' = 'old column name',...)

#Viewing our final manipulated dataset 
View(JohnsonJohnsonFinal)


