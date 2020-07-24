filedir<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setwd("C:/Users/Gerardo/Documents/tec/analisis daos/r/coursera/getting and cleaning data/Getting-and-cleaning-data-project-course")
download.file(url = filedir, destfile="Cleaningdata.zip" ,method = "curl")
unzip("Cleaningdata.zip")
list.files()
setwd("C:/Users/Gerardo/Documents/tec/analisis daos/r/coursera/getting and cleaning data/Getting-and-cleaning-data-project-course")
library(tidyverse)

features<-read.table(file="UCI HAR Dataset/features.txt", col.names = c("num", "signals"))
activity<-read.table(file = "UCI HAR Dataset/activity_labels.txt", col.names = c("activitycode", "activity"))

subject_test<-read.table(file = "UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
x_test<-read.table(file = "UCI HAR Dataset/test/x_test.txt", col.names = features$signals)
y_test<-read.table(file = "UCI HAR Dataset/test/y_test.txt", col.names = "activitycode")
subject_train<-read.table(file = "UCI HAR Dataset/train/subject_train.txt" ,col.names = "subject")
x_train<-read.table(file = "UCI HAR Dataset/train/x_train.txt", col.names = features$signals)
y_train<-read.table(file = "UCI HAR Dataset/train/y_train.txt", col.names = "activitycode")

y_test<-merge(y_test, activity, by = "activitycode")
y_train<-merge(y_train, activity, by = "activitycode")
