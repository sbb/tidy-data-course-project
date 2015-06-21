
# Codebook for the Tidy Data course project

This file describes the data produced by running the run_analysis.R script on the source data.  The original source data is based on accelerator measurements of volunteers performing various physical activities while carrying (somewhere on their person) a Samsung Galaxy S II phone.  

The actual original data and description of its original feature variables can be found here:

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data produced by the analysis

### Variables in the data set

Variable | Original dataset variable | Description
-------- | ------------------------- | -----------
REMIND??? | bar | baz

### Summary choices that were made

The project specification called for collecting the "means" and "standard deviations" from the original data set, but did not define exactly that constituted a "mean" type variable.  The feature variables in the data set included both variables that were named "mean" but and also included variables that had "mean" in their names, but had some additional component to it, such as "meanFreq".  I elected to just include the feature variables whose feature names had `-mean()` or `-std()` (standard deviation) in them.

### Study design

For this data analysis, there wasn't much in the way of study design.  The original data were provided in a series of files 

