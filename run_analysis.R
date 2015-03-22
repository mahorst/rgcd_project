### Getting and Cleaning Data
### Project
### Mike Horst
### mahorst@lghealth.org
#
### Load in data files
#Laptop
setwd("~/statistics/R_getting_cleaning_data/assignments/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test")
subject.test <- read.table("subject_test.txt")
x.test <- read.table("X_test.txt")
y.test <- read.table("y_test.txt")
setwd("~/statistics/R_getting_cleaning_data/assignments/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
act.labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
setwd("~/statistics/R_getting_cleaning_data/assignments/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train")
subject.train <- read.table("subject_train.txt")
x.train <- read.table("X_train.txt")
y.train <- read.table("y_train.txt")
### Determine which features to keep: keep those that are means or standard deviations
colnames(features) <- c("col", "measure")
features$keep <- (grepl("mean", features$measure) | grepl("std", features$measure))
features.keep <- features[features$keep, ]
features.list <- features.keep$col
### Rename features variable names
features.keep$measure.lab <- gsub("-", ".", features.keep$measure)
features.keep$measure.lab <- gsub("\\()", "", features.keep$measure.lab)
### Select from the test and training data those that contain mean or standard deviations
### as determined by boolean value set in previous section
x.test.sel <- x.test[, features.list]
x.train.sel <- x.train[, features.list]
### Set column names based on the remaining feature columns
temp <- features.keep$measure.lab
colnames(x.test.sel) <- temp
colnames(x.train.sel) <- temp
### Merge subjects and activity label codes
colnames(subject.test) <- "subject"
colnames(subject.train) <- "subject"
colnames(y.test) <- "id"
colnames(y.train) <- "id"
colnames(act.labels) <- c("id", "a.label")
x.test.sel <- cbind(subject.test, y.test, x.test.sel)
x.train.sel <- cbind(subject.train, y.train, x.train.sel)
### Combine test and training data sets
x.combined <- rbind(x.test.sel, x.train.sel)
### Set activity labels
x.combined$id <- factor(x.combined$id, levels = c("1","2","3","4","5","6"))
levels(x.combined$id) <- act.labels$a.label
### Calculate means for each column by subject and activity
library(data.table)
xc.dt <- data.table(x.combined)
tidydata <- data.frame(xc.dt[, lapply(.SD, mean), by = 'subject,id'])
colnames(tidydata)[2] <- "activity"
### Write final tidy data txt file
setwd("~/statistics/R_getting_cleaning_data/assignments")
write.table(tidydata, file = "tidydata.txt", row.name = FALSE)
