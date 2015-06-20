# Run an analysis of the inertial measurement data.
# Combines the data from the training and test sets

DATA.ROOT.DIRECTORY = "UCI HAR Dataset"

load.activity.labels <- function() {
  activity.labels.filename <- file.path(DATA.ROOT.DIRECTORY, "activity_labels.txt")
  activity.labels <- read.table(activity.labels.filename, sep=" ", stringsAsFactors = FALSE)
  activity.labels[,2]
}

print(load.activity.labels())