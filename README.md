# Tidy Data Analysis Course Project

The data for this project can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Set the current directory to the directory of this project, and unzip the file.  Or, alternately, unzip it somewhere else convienient, and adjust the DATA.ROOT.DIRECTORY variable in run_analysis.R to specify where it was unzipped.

The content in the zip file contains information about the origin of the data, and describes the feature names of the data values.

The data are separated into training and test data sets.  

### Decisions

The specification called for the "mean" and "standard deviation" of each measurement.  I used a strict interpretation of this: "mean" is limited to those features that have "-mean()" in their names in the original data set, and "standard deviation" is limited to those features that have "-std()" in their names.

### Running the analysis

The tidy-motion-data-by-*.txt files contain the two datasets resulting from running the analysis, so it is not necessary to run the analysis again.  However, if desired it can be done using the following instructions:

To run the analysis, load the "run_analysis.R" file into R.  Be sure the working directory is set to the directory that contains the run_analysis.R file and (if you are sticking with the defaults), the unzipped data set (see below for an alternative).

Invoke the XXX function.


### Resulting data set

The dataset includes the following files:

* README.md: you're reading this one now

* Codebook.md: detailed description of the data in the data set

* run_analysis.R: the actual R script that processes the input inertial measurement data and produces the dataset.

* tidy-motion-data-by-subject.txt: This contains the averages of the means and standard deviations for each subject (participant) in the study.  It can be read by read.table("tidy-motion-data-by-subject.txt", header = TRUE).  The columns are the subject identification numbers, and the rows are the means and standard deviations feature variables.

* tidy-motion-data-by-activity: This file contains the averages of the means and standard deviations for each activity type (standing, walking, etc.).  It can be read by read.table("tidy-motion-data-by-activity.txt", header = TRUE).  The colums are the various activity types, and the rows are the means and standard deviations feature variables.
