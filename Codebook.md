
# Codebook for the Tidy Data course project

This file describes the data produced by running the run_analysis.R script on the source data.  The original source data is based on accelerator measurements of volunteers performing various physical activities while carrying (somewhere on their person) a Samsung Galaxy S II phone.  

The actual original data and description of its original feature variables can be found here:

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data produced by the analysis

### Code book
The variables in the data set are average values, groups by activity and subject, for each mean and standard deviation variable in the original data set.

Variable | Original dataset variable | Description
-------- | ------------------------- | -----------
var | tBodyAcc-mean()-X | mean of the ...
| tBodyAcc-mean()-Y |
| tBodyAcc-mean()-Z |
| tBodyAcc-std()-X |
| tBodyAcc-std()-Y |
| tBodyAcc-std()-Z |
| tGravityAcc-mean()-X |
| tGravityAcc-mean()-Y |
| tGravityAcc-mean()-Z |
| tGravityAcc-std()-X |
| tGravityAcc-std()-Y |
| tGravityAcc-std()-Z |
| tBodyAccJerk-mean()-X |
| tBodyAccJerk-mean()-Y |
| tBodyAccJerk-mean()-Z |
| tBodyAccJerk-std()-X |
| tBodyAccJerk-std()-Y |
| tBodyAccJerk-std()-Z |
| tBodyGyro-mean()-X |
| tBodyGyro-mean()-Y |
| tBodyGyro-mean()-Z |
| tBodyGyro-std()-X |
| tBodyGyro-std()-Y |
| tBodyGyro-std()-Z |
| tBodyGyroJerk-mean()-X |
| tBodyGyroJerk-mean()-Y |
| tBodyGyroJerk-mean()-Z |
| tBodyGyroJerk-std()-X |
| tBodyGyroJerk-std()-Y |
| tBodyGyroJerk-std()-Z |
| tBodyAccMag-mean() |
| tBodyAccMag-std() |
| tGravityAccMag-mean() |
| tGravityAccMag-std() |
| tBodyAccJerkMag-mean() |
| tBodyAccJerkMag-std() |
| tBodyGyroMag-mean() |
| tBodyGyroMag-std() |
| tBodyGyroJerkMag-std() |
| tBodyGyroJerkMag-mad() |
| fBodyAcc-mean()-X |
| fBodyAcc-mean()-Y |
| fBodyAcc-mean()-Z |
| fBodyAcc-std()-X |
| fBodyAcc-std()-Y |
| fBodyAcc-std()-Z |
| fBodyAccJerk-mean()-X |
| fBodyAccJerk-mean()-Y |
| fBodyAccJerk-mean()-Z |
| fBodyAccJerk-std()-X |
| fBodyAccJerk-std()-Y |
| fBodyAccJerk-std()-Z |
| fBodyGyro-mean()-X |
| fBodyGyro-mean()-Y |
| fBodyGyro-mean()-Z |
| fBodyGyro-std()-X |
| fBodyGyro-std()-Y |
| fBodyGyro-std()-Z |
| fBodyAccMag-mean() |
| fBodyAccMag-std() |
| fBodyBodyAccJerkMag-mean() |
| fBodyBodyAccJerkMag-std() |
| fBodyBodyGyroMag-mean() |
| fBodyBodyGyroMag-std() |
| fBodyBodyGyroJerkMag-std() |
| fBodyBodyGyroJerkMag-mad() |

### Summary choices that were made

The project specification called for collecting the "means" and "standard deviations" from the original data set, but did not define exactly that constituted a "mean" type variable.  The feature variables in the data set included both variables that were named "mean" but and also included variables that had "mean" in their names, but had some additional component to it, such as "meanFreq".  I elected to just include the feature variables whose feature names had `-mean()` or `-std()` (standard deviation) in them.

### Study design

For this data analysis, there wasn't much in the way of study design.  The original data were provided in a series of files 

