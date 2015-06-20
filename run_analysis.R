# Run an analysis of the inertial measurement data.
# Combines the data from the training and test sets

DATA.ROOT.DIRECTORY = "UCI HAR Dataset"

# Loads the names of the various activities from the activity_labels.txt file.  Returns a character vector containing
# just the names
load.activity.names <- function() {
  activity.names.filename <- file.path(DATA.ROOT.DIRECTORY, "activity_labels.txt")
  activity.names <- read.table(activity.names.filename, sep=" ", stringsAsFactors = FALSE)
  activity.names[,2]
}

# Loads the names of the columns in the primary dataset from features.txt
load.data.column.names <- function() {
  data.column.names.filename = file.path(DATA.ROOT.DIRECTORY, "features.txt")
  column.names <- read.table(data.column.names.filename, sep=" ", stringsAsFactors = FALSE)
  column.names[,2]
}

load.measurement.data <- function (data.type,...) {
  measurement.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("X_", data.type, ".txt"))
  data <- read.table(measurement.filename,  col.names=load.data.column.names(), ...)
}

# Loads the rows of activity records that correspond with the measurements.  Each row is an integer index that
# corresponds to the activity labels.
#
# data.type is the "type" of the data, either "test" or "training"
# Returns a vector of integers
load.activity.records <- function(data.type) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("y_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, sep=" ", stringsAsFactors = FALSE)
  activity.indices[,1]
}

load.subject.numbers <- function(data.type, ...) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("subject_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, ...)
  activity.indices[,1]
}

load.combined.values <- function(loader.func, ...) {
  first.data.set <- loader.func("train", ...)
  print(c("first data", dim(first.data.set)))
  second.data.set <- loader.func("test", ...)
  combining.func <- if (is.null(dim(first.data.set))) append else rbind
  
  combining.func(first.data.set, second.data.set)
}

#print(class(load.activity.names()))
#print(load.data.column.names())
#data <- load.measurement.data("test", nrows = 10)
#print(class(data))
#print(load.activity.records("test"))
#print(load.subject.numbers("test"))
print(load.combined.values(load.measurement.data, nrow=3))