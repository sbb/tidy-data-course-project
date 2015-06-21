# Tidy Data Analysis Course Project

The original data that provides the basiss for the analysis performed by this project can be downloaded from 

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Set the current directory to the directory of this project, and unzip the file.  Or, alternately, unzip it somewhere else convienient, and adjust the DATA.ROOT.DIRECTORY variable after loading run_analysis.R to specify where it was unzipped.

The content in the zip file contains information about the origin of the data, and describes the feature names of the data values.

### Decisions

The specification called for the "mean" and "standard deviation" of each measurement.  I used a strict interpretation of this: "mean" is limited to those features that have "-mean()" in their names in the original data set, and "standard deviation" is limited to those features that have "-std()" in their names.

### Running the analysis

The `tidy-inertial-data-means.txt` file contains resulting from running the analysis, so it is not necessary to run the analysis again.  However, if desired it can be done using the following instructions:

To run the analysis, load the `run_analysis.R` file into R.  Make sure you have already unzipped the original data set using the URL above, preferably to the same directory that contains run_analysis.R.  If you have unzipped the file elsewhere, after loading run_analysis.R, set the `DATA.ROOT.DIRECTORY` to reference the directory where you have unzipped the data.

Invoke the produce.tidy.dataset function like so

```{R}
produce.tidy.dataset()
```


### Resulting data set

The dataset includes the following files:

* README.md: you're reading this one now

* Codebook.md: detailed description of the data in the data set

* run_analysis.R: the actual R script that processes the input inertial measurement data and produces the dataset.

* tidy-inertial-data-means.txt -- this is the result of the analysis.  It can be loaded into R via
```{R}
read.table("tidy-inertial-data-means.txt", header = TRUE)
```