
# Code book for the Getting and Cleaning Data course project

This file describes the data produced by running the run_analysis.R script on the source data.  The original source data is based on accelerator measurements of volunteers performing various physical activities while carrying (somewhere on their person) a Samsung Galaxy S II phone.  

The actual original data and description of its original feature variables can be found here:

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Code book
The variables in the data set are average values, groups by activity and subject, for each mean and standard deviation variable in the original data set.

Variable | Original dataset variable | Description
-------- | ------------------------- | -----------
Activity | y_{train,test}.txt  and activity_labels.txt | The human readable label for each activity
Subject | subject_{train,test}.txt | Gives the subject index for each subject participating in the study
tBodyAcc.mean...X| tBodyAcc-mean()-X | mean of the body acceleration in the X direction
tBodyAcc.mean...Y| tBodyAcc-mean()-Y | mean of the body acceleration in the Y direction
tBodyAcc.mean...Z| tBodyAcc-mean()-Z | mean of the body acceleration in the Z direction
tBodyAcc.std...X| tBodyAcc-std()-X | mean of the standard deviation of the body acceleration in the X direction
tBodyAcc.std...Y| tBodyAcc-std()-Y | mean of the standard deviation of the body acceleration in the Y direction
tBodyAcc.std...Z| tBodyAcc-std()-Z | mean of the standard deviation of the body acceleration in the Z direction
tGravityAcc.mean...X| tGravityAcc-mean()-X | mean of the acceleration due to gravity in the X direction
tGravityAcc.mean...Y| tGravityAcc-mean()-Y | mean of the acceleration due to gravity in the Y direction
tGravityAcc.mean...Z| tGravityAcc-mean()-Z | mean of the acceleration due to gravity in the Z direction
tGravityAcc.std...X| tGravityAcc-std()-X | mean of the standard deviation due to gravity in the X direction
tGravityAcc.std...Y| tGravityAcc-std()-Y | mean of the standard deviation due to gravity in the Y direction
tGravityAcc.std...Z| tGravityAcc-std()-Z | mean of the standard deviation due to gravity in the Z direction
tBodyAccJerk.mean...X| tBodyAccJerk-mean()-X | mean of the body acceleration "jerk" in the X direction
tBodyAccJerk.mean...Y| tBodyAccJerk-mean()-Y | mean of the body acceleration "jerk" in the Y direction
tBodyAccJerk.mean...Z| tBodyAccJerk-mean()-Z | mean of the body acceleration "jerk" in the Z direction
tBodyAccJerk.std...X| tBodyAccJerk-std()-X | mean of the standard deviation of the body acceleration "jerk" in the X direction
tBodyAccJerk.std...Y| tBodyAccJerk-std()-Y | mean of the standard deviation of the body acceleration "jerk" in the X direction
tBodyAccJerk.std...Z| tBodyAccJerk-std()-Z | mean of the standard deviation of the body acceleration "jerk" in the X direction
tBodyGyro.mean...X| tBodyGyro-mean()-X | mean of the body component of the X gyroscope signal
tBodyGyro.mean...Y| tBodyGyro-mean()-Y | mean of the body component of the Y gyroscope signal
tBodyGyro.mean...Z| tBodyGyro-mean()-Z | mean of the body component of the Z gyroscope signal
tBodyGyro.std...X| tBodyGyro-std()-X | mean the standard deviation of the body component of the X gyroscope signal
tBodyGyro.std...Y| tBodyGyro-std()-Y | mean the standard deviation of the body component of the Y gyroscope signal
tBodyGyro.std...Z| tBodyGyro-std()-Z | mean the standard deviation of the body component of the Z  gyroscope signal
tBodyGyroJerk.mean...X| tBodyGyroJerk-mean()-X | mean of the body component of the X gyroscope "jerk" signal
tBodyGyroJerk.mean...Y| tBodyGyroJerk-mean()-Y | mean of the body component of the Y gyroscope "jerk" signal
tBodyGyroJerk.mean...Z| tBodyGyroJerk-mean()-Z | mean of the body component of the Z gyroscope "jerk" signal
tBodyGyroJerk.std...X| tBodyGyroJerk-std()-X | mean of the standard deviation of the  body component of the X gyroscope "jerk" signal
tBodyGyroJerk.std...Y| tBodyGyroJerk-std()-Y | mean of the standard deviation of the  body component of the Y gyroscope "jerk" signal
tBodyGyroJerk.std...Z| tBodyGyroJerk-std()-Z | mean of the standard deviation of the  body component of the Z gyroscope "jerk" signal
tBodyAccMag.mean..| tBodyAccMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration signals
tBodyAccMag.std..| tBodyAccMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration signals
tGravityAccMag.mean..| tGravityAccMag-mean() | mean of the magnitude of the Euclidean norm of acceleration due to gravity signals
tGravityAccMag.std..| tGravityAccMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of acceleration due to gravity signals
tBodyAccJerkMag.mean..| tBodyAccJerkMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration "jerk" signals
tBodyAccJerkMag.std..| tBodyAccJerkMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration "jerk" signals
tBodyGyroMag.mean..| tBodyGyroMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration component of the gyroscope signals
tBodyGyroMag.std..| tBodyGyroMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration component of the gyroscope signals
tBodyGyroJerkMag.mean..| tBodyGyroJerkMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration "jerk" component of the gyroscope signals
tBodyGyroJerkMag.std..| tBodyGyroJerkMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration "jerk" component of the gyroscope signals
fBodyAcc.mean...X| fBodyAcc-mean()-X | mean of the body acceleration in the X direction in the frequency domain
fBodyAcc.mean...Y| fBodyAcc-mean()-Y | mean of the body acceleration in the Y direction in the frequency domain
fBodyAcc.mean...Z| fBodyAcc-mean()-Z | mean of the body acceleration in the Z direction in the frequency domain
fBodyAcc.std...X| fBodyAcc-std()-X | mean of the standard deviation of the body acceleration in the X direction in the frequency domain
fBodyAcc.std...Y| fBodyAcc-std()-Y | mean of the standard deviation of the body acceleration in the Y direction in the frequency domain
fBodyAcc.std...Z| fBodyAcc-std()-Z | mean of the standard deviation of the body acceleration in the Z direction in the frequency domain
fBodyAccJerk.mean...X| fBodyAccJerk-mean()-X | mean of the body acceleration "jerk" in the X direction in the frequency domain
fBodyAccJerk.mean...Y| fBodyAccJerk-mean()-Y | mean of the body acceleration "jerk" in the Y direction in the frequency domain
fBodyAccJerk.mean...Z| fBodyAccJerk-mean()-Z | mean of the body acceleration "jerk" in the Z direction in the frequency domain
fBodyAccJerk.std...X| fBodyAccJerk-std()-X | mean of the standard deviation of the body acceleration "jerk" in the X direction in the frequency domain
fBodyAccJerk.std...Y| fBodyAccJerk-std()-Y | mean of the standard deviation of the body acceleration "jerk" in the Y direction in the frequency domain
fBodyAccJerk.std...Z| fBodyAccJerk-std()-Z | mean of the standard deviation of the body acceleration "jerk" in the Z direction in the frequency domain
fBodyGyro.mean...X| fBodyGyro-mean()-X | mean of the body component of the X gyroscope signal in the frequency domain
fBodyGyro.mean...Y| fBodyGyro-mean()-Y | mean of the body component of the Y gyroscope signal in the frequency domain
fBodyGyro.mean...Z | fBodyGyro-mean()-Z | mean of the body component of the Z gyroscope signal in the frequency domain
fBodyGyro.std...X | fBodyGyro-std()-X | mean of the standard deviation of the body component of the X gyroscope signal in the frequency domain
fBodyGyro.std...Y | fBodyGyro-std()-Y | mean of the standard deviation of the body component of the Y gyroscope signal in the frequency domain
fBodyGyro.std...Z | fBodyGyro-std()-Z | mean of the standard deviation of the body component of the Z gyroscope signal in the frequency domain
fBodyAccMag.mean.. | fBodyAccMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration signals in the frequency domain
fBodyAccMag.std..| fBodyAccMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration signals in the frequncy domain 
fBodyBodyAccJerkMag.mean..| fBodyBodyAccJerkMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration "jerk" signals in the frequency domain 
fBodyBodyAccJerkMag.std..| fBodyBodyAccJerkMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration "jerk" signals in the frequency domain
fBodyBodyGyroMag.mean..| fBodyBodyGyroMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration component of the gyroscope signals in the frequency domain 
fBodyBodyGyroMag.std..| fBodyBodyGyroMag-std() | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration component of the gyroscope signals
fBodyBodyGyroJerkMag.mean..| fBodyBodyGyroJerkMag-mean() | mean of the magnitude of the Euclidean norm of the body acceleration "jerk" signals in the frequency domain
fBodyBodyGyroJerkMag.std..| fBodyBodyGyroJerkMag-std | mean of the standard deviation of the magnitude of the Euclidean norm of the body acceleration "jerk" signals in the frequency domain

### Summary choices that were made

The project specification called for collecting the "means" and "standard deviations" from the original data set, but did not define exactly that constituted a "mean" type variable.  The feature variables in the data set included both variables that were named "mean" but and also included variables that had "mean" in their names, but had some additional component to it, such as "meanFreq".  I elected to just include the feature variables whose feature names had `-mean()` or `-std()` (standard deviation) in them.

### Study design

For this data analysis, there wasn't much in the way of study design.  The original data were provided in a collection of files, separated into training and test groups.  The analysis performed by this project involved combining the data from the corresponding files in the test and training groups, selecting only the means and standard devation columns, attaching the corresponding data from the activity files and fro the subject files, and then computing the mean of each column grouped by the activity & subject.

