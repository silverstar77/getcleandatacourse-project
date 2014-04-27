##Create a directory, download and unzip file
if (!file.exists("~/Data")){dir.create("~/Data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="~/Data/UCI HAR Dataset.zip") ##If using a MAC PC, add the argument: method="curl"
list.files("~/Data")
dateDownloaded <- date()
unzip("~/Data/UCI HAR Dataset.zip", exdir="~/Data")


##Read the features and activity labels files, clean them up from unuseful charachters
setwd("~/Data/UCI HAR Dataset")
fraw <- readLines("features.txt")
features <-gsub("^[0-9]* ","",fraw)
features[1:10]
labelsraw <- readLines("activity_labels.txt")
aLabels <-gsub("^[0-9]* ","",labelsraw)


##Go to train directory, read and merge the files
setwd("~/Data/UCI HAR Dataset/train")
subjects <- readLines("subject_train.txt")
activity <- readLines("y_train.txt")
traindata<- read.table("X_train.txt",colClasses="numeric",col.names=features)
train <-cbind(subjects, activity, traindata)
str(train)       ##Check if 563 variables and 7352 observations are present


##Go to test directory, read and merge the files
setwd("~/Data/UCI HAR Dataset/test")
subjects <-readLines("subject_test.txt")
activity <- readLines("y_test.txt")
testdata<- read.table("X_test.txt",colClasses="numeric",col.names=features)
test <-cbind(subjects, activity, testdata)
str(test)       ##Check if 563 variables and 2947 observations are present


##Merge the test and the train data, sort it out by subject
combineSet <- rbind(train,test)
combineSet$subjects <-as.numeric(combineSet$subjects,drop(row.names))
totalSet <-combineSet[order(combineSet$subjects),]
row.names(totalSet) <- NULL
str(totalSet)


##Refactor subjects variable, add labels to the activity variable
totalSet$subjects <- as.factor(totalSet$subjects)
totalSet$activity <- factor(totalSet$activity,labels=aLabels)


##Extract only the measurements on the mean and sd for each measurement
i <- grep("mean[^a-zA-Z]|std",features)
features[i]               ##Check if all variables names include only mean or std measurement
j <- c(1,2,i+2)
subSet <- totalSet[,j]  
str(subSet)             ##Check if there are 68 variables in the final set


##Creates an independent set averaging all variables across subjects and activities
library(reshape2)
finalMelt <- melt(subSet, id=c("subjects","activity"))
finalSet <- dcast(finalMelt, subjects+activity ~ variable, mean)
str(finalSet)
head(finalSet)
setwd("~/Data")
write.table(finalSet, file = "tidydata.txt",sep=" ")
