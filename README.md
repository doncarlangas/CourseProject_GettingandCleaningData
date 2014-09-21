Course Project - Getting and Cleaning Data
==========================================

This repo is the course project's result of Getting and Cleaning Data, one of the 
Data Science Specialization's subject on Coursera.

Project's goal is to create a data frame which summarizes the info from Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


* ###What is done
  Using run_analysis.R allows us to get the new data frame. It has the following steps:
  
      + Load data into R
      + Select the measurements on the mean and standard deviation for each measurement
      + Merge all data into one dataset
      + Rename columns on the dataset
      + Rename activity with descriptive activity names
      + sumarize dataset with the average of each variable for each activity and each subject

* ###The new codebook
The new data set is an independent tidy data set with the average of each variable for each activity and each subject.

      + **subject**: A number that identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
      + **activity**: A string that identifies the activity was performend when wearing a smartphone
      + **means of the following variables:**
          + tBodyAcc-mean-XYZ
          + tGravityAcc-mean-XYZ
          + tBodyAccJerk-mean-XYZ
          + tBodyGyro-mean-XYZ
          + tBodyGyroJerk-mean-XYZ
          + tBodyAccMag-mean
          + tGravityAccMag-mean
          + tBodyAccJerkMag-mean
          + tBodyGyroMag-mean
          + tBodyGyroJerkMag-mean
          + fBodyAcc-mean-XYZ
          + fBodyAccJerk-mean-XYZ
          + fBodyGyro-mean-XYZ
          + fBodyAccMag-mean
          + fBodyAccJerkMag-mean
          + fBodyGyroMag-mean
          + fBodyGyroJerkMag-mean
          + tBodyAcc-std-XYZ
          + tGravityAcc-std-XYZ
          + tBodyAccJerk-std-XYZ
          + tBodyGyro-std-XYZ
          + tBodyGyroJerk-std-XYZ
          + tBodyAccMag-std
          + tGravityAccMag-std
          + tBodyAccJerkMag-std
          + tBodyGyroMag-std
          + tBodyGyroJerkMag-std
          + fBodyAcc-std-XYZ
          + fBodyAccJerk-std-XYZ
          + fBodyGyro-std-XYZ
          + fBodyAccMag-std
          + fBodyAccJerkMag-std
          + fBodyGyroMag-std
          + fBodyGyroJerkMag-std

