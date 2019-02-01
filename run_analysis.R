# Getting-and-Cleaning-Data

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- file.path(getwd(), "Dataset.zip")
download.file(url, file)
unzip("Dataset.zip")

#remember library("data.table")
#remember library("dplyr")

X_test1 <- read.table("test/X_test.txt")
Y_test1 <- read.table("test/Y_test.txt")
subject_test1 <- read.table("test/subject_test.txt")

X_train1 <- read.table("train/X_train.txt")
Y_train1 <- read.table("train/Y_train.txt")
subject_train1 <- read.table("train/subject_train.txt")


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

Xmeanstd <- X[, mean_and_std_features]
str(Xmeanstd)

# 3 Uses descriptive activity names to name
#the activities in the data set

names(Y) <- "activityY"

# 4 Appropriately labels the data set with descriptive variable names

names(subject) <- "activity subject"

#5) From the data set in step 4, creates a second, independent tidy data
#set with the average of each variable for each activity and each subject.
allthedata <- cbind(X, Y, subject)
allthedata

data <- tbl_df(allthedata)

allmeans <- colMeans(data)
