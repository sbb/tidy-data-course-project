# Run an analysis of the inertial measurement data.
# Combines the data from the training and test sets

DATA.ROOT.DIRECTORY = "UCI HAR Dataset"

load.activity.names <- function() {
  activity.names.filename <- file.path(DATA.ROOT.DIRECTORY, "activity_labels.txt")
  activity.names <- read.table(activity.names.filename, sep=" ", stringsAsFactors = FALSE)
  activity.names[,2]
}

load.data.column.names <- function() {
  data.column.names.filename = file.path(DATA.ROOT.DIRECTORY, "features.txt")
  column.names <- read.table(data.column.names.filename, sep=" ", stringsAsFactors = FALSE)
  column.names[,2]
}

print(load.activity.names())
print(load.data.column.names())