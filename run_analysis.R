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
load.activity.records <- function(data.type, ...) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("y_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, sep=" ", stringsAsFactors = FALSE, ...)
  activity.indices[,1]
}

load.subject.numbers <- function(data.type, ...) {
  activity.indices.filename = file.path(DATA.ROOT.DIRECTORY, data.type, paste0("subject_", data.type, ".txt"))
  activity.indices <- read.table(activity.indices.filename, ...)
  activity.indices[,1]
}

load.combined.values <- function(loader.func, ...) {
  first.data.set <- loader.func("train", ...)
  second.data.set <- loader.func("test", ...)
  combining.func <- if (is.null(dim(first.data.set))) append else rbind
  
  combining.func(first.data.set, second.data.set)
}

select.means.and.standard.deviations <- function(observation.data) {
  observation.data[,grep("-(mean|std)", load.data.column.names())]
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

produce.tidy.averages.by.activity.dataset <- function() {
  groups.by.activity = split(motion.data, motion.data$Activity)
  averages <- sapply(groups.by.activity, function(x) { colMeans(subset(x, select=-c(Activity, Subject)))})
  write.table(averages, "tidy-motion-data-by-activity.txt")
}

produce.tidy.averages.by.subject.dataset <- function() {
  groups.by.activity = split(motion.data, motion.data$Subject)
  averages <- sapply(groups.by.activity, function(x) { colMeans(subset(x, select=-c(Activity, Subject)))})
  write.table(averages, "tidy-motion-data-by-subject.txt")
  averages
}
#print(class(load.activity.names()))
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

print(head(produce.tidy.averages.by.activity.dataset(),10))