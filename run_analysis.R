# Run an analysis of the inertial measurement data.
# Combines the data from the training and test sets

DATA.ROOT.DIRECTORY = "UCI HAR Dataset"

# Loads the names of the various activities from the activity_labels.txt file.  Returns a character vector containing
# just the names
load.activity.names <- function() {
  activity.names.filename <- file.path(DATA.ROOT.DIRECTORY, "activity_labels.txt")
  activity.names <- read.table(activity.names.filename, stringsAsFactors = FALSE)
  activity.names[,2]
}

# Loads and returns a character vector of the names of the columns in the primary dataset from features.txt
load.data.column.names <- function() {
  data.column.names.filename = file.path(DATA.ROOT.DIRECTORY, "features.txt")
  column.names <- read.table(data.column.names.filename, sep=" ", stringsAsFactors = FALSE)
  column.names[,2]
}

# Loads and returns the actual intertial measurements.
#
# data.type: the "type" of the data, either "test" or "training".  
# ...: additional parameters to be passed to the  read.table function as additional parameters; this can be used 
#      to specify, for example, a limit on the number of rows to laod.
#
# Returns a data.frame of the measurements, with the columns given the names as returned by load.data.column.names.
load.measurement.data <- function (data.type,...) {
  measurement.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("X_", data.type, ".txt"))
  data <- read.table(measurement.filename,  col.names=load.data.column.names(), ...)
}

# Loads the rows of activity records that correspond with the measurements.  Each row is an integer index that
# corresponds to the activity labels.
#
# data.type: the "type" of the data, either "test" or "training".  
# ...: additional parameters to be passed to the  read.table function as additional parameters; this can be used 
#      to specify, for example, a limit on the number of rows to laod.
#
# Returns a vector of integers which are indices of activities that correspond with the values in the activity labels
load.activity.records <- function(data.type, ...) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("y_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, sep=" ", stringsAsFactors = FALSE, ...)
  activity.indices[,1]
}

# Loans and returns the test subject id numbers that correspond with measurement data.  There is one row in this
# file for each row in the measurement data.
#
# data.type: the "type" of the data, either "test" or "training".  
# ...: additional parameters to be passed to the  read.table function as additional parameters; this can be used 
#      to specify, for example, a limit on the number of rows to laod.
#
# Returns a vector of integers which are the subject ids.
load.subject.numbers <- function(data.type, ...) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("subject_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, ...)
  activity.indices[,1]
}

# Loads the data values for both the training and test data sets, and combines them.  The actual data are loaded
# using the function given by the loader.func parameter.
#
# loader.func: a function with an initial parameter which is the data "type" to load, either "train" or "test"
# ...: additional parameters to be passed as additional parameters to the loader function
#
# Returns the combined, or concatenated, values from the individual data types.  If the loader function returns
# a vector, then the result from both data types is returned as concatenation of the two loaded values.  If the
# loader function returns a matrix or data.frame, then the returned value is a single matrix or data.frame with the training
# data followed by the test data
load.combined.values <- function(loader.func, ...) {
  first.data.set <- loader.func("train", ...)
  second.data.set <- loader.func("test", ...)
  
  # Choose how the data sets are to be combined based on whether the data sets are matrix like or
  # vector like.
  combining.func <- if (is.null(dim(first.data.set))) append else rbind
  
  combining.func(first.data.set, second.data.set)
}

# Selects the subset of the columns in the inertial measurement data that are either means or standard deviations of the
# measured data.  Uses the name of the column to decide, looking for "-mean()" or "-std()" in the column name.
select.means.and.standard.deviations <- function(observation.data) {
  observation.data[,grep("-(mean|std)\\(\\)", load.data.column.names())]
}

add.activity.names.and.subjects <- function(observation.data) {
  activity.names <- load.activity.names()
  activity.records <- load.combined.values(load.activity.records)
  subjects <- load.combined.values(load.subject.numbers)
  cbind("Activity" = activity.names[activity.records], "Subject" = subjects, observation.data)
}

analyze.motion.data <- function() {
  data <- load.combined.values(load.measurement.data)
  means.and.standard.deviations <- select.means.and.standard.deviations(data)
  add.activity.names.and.subjects(means.and.standard.deviations)
}

produce.tidy.averages.by.activity.dataset <- function(data) {
  groups.by.activity = split(data, data$Activity)
  averages <- sapply(groups.by.activity, function(x) { colMeans(subset(x, select=-c(Activity, Subject)))})
  write.table(averages, "tidy-motion-data-by-activity.txt")
  #write(averages, "testdata.txt")
  averages
}

produce.tidy.averages.by.subject.dataset <- function(data) {
  groups.by.activity = split(data, data$Subject)
  averages <- sapply(groups.by.activity, function(x) { colMeans(subset(x, select=-c(Activity, Subject)))})
  write.table(averages, "tidy-motion-data-by-subject.txt")
  averages
}

produce.tidy.dataset <- function() {
 # data <- analyze.motion.data()
  data <- motion.data
  tidy.dataset = aggregate(data[,-c(1,2)], list(Activity=data$Activity, Subject=data$Subject), mean)
  write.table(tidy.dataset, "tidy-inertial-data.txt")
  #produce.tidy.averages.by.activity.dataset(data)
  # produce.tidy.averages.by.subject.dataset(data)
}

#print(load.data.column.names())
#data <- load.measurement.data("test", nrows = 10)
#print(class(data))
#print(load.activity.records("test"))
#print(load.subject.numbers("test"))
#data <- load.combined.values(load.measurement.data)
#print(load.combined.values(load.measurement.data, nrow=3))

#reduced <- select.means.and.standard.deviations(data)
#motion.data <- analyze.motion.data()
#print(head(add.activity.names(reduced), 500)[,c('Activity', 'Subject')])
#print(head(analyze.motion.data(), 500)[,c('Activity', 'Subject')])

#print(head(produce.tidy.averages.by.activity.dataset(),10))
print(head(produce.tidy.dataset(),10))
