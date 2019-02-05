# Getting-and-Cleaning-Data


#Project
library(data.table)
library(dplyr)
library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

#library("data.table")
#library("dplyr")

X_test1 <- read.table('./UCI HAR Dataset/test/X_test.txt')
Y_test1 <- read.table('./UCI HAR Dataset/test/Y_test.txt')
subject_test1 <- read.table('./UCI HAR Dataset/test/subject_test.txt')

X_train1 <- read.table('./UCI HAR Dataset/train/X_train.txt')
Y_train1 <- read.table('./UCI HAR Dataset/train/Y_train.txt')
subject_train1 <- read.table('./UCI HAR Dataset/train/subject_train.txt')


# 1) Merges the training and the test sets to create one data set.

X1 <- rbind(X_test1, X_train1)
Y1 <- rbind(Y_test1, Y_train1)
subject1 <- rbind(subject_test1, subject_train1)

X <- tbl_df(X1)
Y <- tbl_df(Y1)
subject <- tbl_df(subject1)


# 2) Extracts only the measurements 
#on the mean and standard deviation for each measurements

features <- read.table("UCI HAR Dataset/features.txt")
meanandstd <- grep("(mean|std)\\(\\)", features$V2)
meanandstd

Xmeanstd <- X[, meanandstd]
str(Xmeanstd)

# 3 Uses descriptive activity names to name
#the activities in the data set

activitiesnames <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
activitiesnames <- as.character(activitiesnames[,2])
Xmeanstd$activity <- activitiesnames[Xmeanstd$activity]

# 4 Appropriately labels the data set with descriptive variable names

eqtiqueta <- names(Xmeanstd)
etiqueta <- gsub("[(][)]", "", etiqueta)
etiqueta <- gsub("^t", "Tiempo_", etiqueta)
etiqueta <- gsub("^f", "FrequencyDomain_", etiqueta)
etiqueta <- gsub("Acc", "Accelerometer", etiqueta)
etiqueta <- gsub("Gyro", "Gyroscope", etiqueta)
etiqueta <- gsub("Mag", "Magnitude", etiqueta)
etiqueta <- gsub("-mean-", "_Mean_", etiqueta)
etiqueta <- gsub("-std-", "_StandardDeviation_", etiqueta)
etiqueta <- gsub("-", "_", etiqueta)
names(Xmeanstd) <- etiqueta

#5) From the data set in step 4, creates a second, independent tidy data
#set with the average of each variable for each activity and each subject.

cleandata <- aggregate(Xmeanstd[,2:81], by = list(activity = Xmeanstd$activity, subject = Xmeanstd$subject),FUN = mean)
write.table(x = cleandata, file = "cleandata.txt", row.names = FALSE)
