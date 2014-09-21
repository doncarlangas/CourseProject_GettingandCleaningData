# load train data
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")


# load test data
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")


#load metadata
features <- read.table("UCI HAR Dataset\\features.txt")
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")

# select the measurements on the mean and standard deviation for each measurement
ind <- features[(grepl('mean',features$V2) & !grepl('Freq',features$V2)) | grepl('std()',features$V2),1]

#merge all train data into one data set
train <- cbind(X_train[,ind], subject_train, y_train)

#merge all test data into one data set
test <- cbind(X_test[,ind], subject_test, y_test)

#combine train and test data set
dataset <- rbind(train,test)

#rename dataframe's columns
names(dataset) <- c(gsub("\\()","",as.character(features[ind,2])), "subject", "activity_code")

#rename activity with descriptive activity names
dataset <- merge(dataset, activity_labels, by.x = "activity_code", by.y = "V1")
dataset <- dataset[,2:ncol(dataset)]
names(dataset)[ncol(dataset)] <- "activity"

# sumarize dataset with the average of each variable for each activity and each subject
library(plyr)
dataset.summarize <- ddply(dataset, .(subject,activity), numcolwise(mean))



