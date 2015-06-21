# Tidy Data Analysis Course Project

The data for this project can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Set the current directory to the directory of this project, and unzip the file.  Or, alternately, unzip it somewhere else convienient, and adjust the DATA.ROOT.DIRECTORY variable in run_analysis.R to specify where it was unzipped.

The content in the zip file contains information about the origin of the data, and describes the feature names of the data values.

The data are separated into training and test data sets.  

### Decisions

The specification called for the "mean" and "standard deviation" of each measurement.  I used a strict interpretation of this: "mean" is limited to those features that have "-mean()" in their names in the original data set, and "standard deviation" is limited to those features that have "-std()" in their names.

### Running the analysis

To run the analysis, load the "run_analysis.R" file into R.  Be sure the working directory is set to the directory that contains the run_analysis.R file and (if you are sticking with the defaults), the unzipped data set.

Invoke the XXX function.

