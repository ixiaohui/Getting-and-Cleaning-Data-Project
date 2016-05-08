### setting the work directory
setwd("~/datascience/getting and cleanning data/data/UCI HAR Dataset")

## Merges the training and the test sets to create one data set
### read and merge the test data
testset <- read.table("./test/X_test.txt")
testlabel <- read.table("./test/y_test.txt")
testsubject <- read.table("./test/subject_test.txt")
testdata <- cbind(testsubject, testlabel, testset)

### read and merge the training data
trainset <- read.table("./train/X_train.txt")
trainlabel <- read.table("./train/y_train.txt")
trainsubject <- read.table("./train/subject_train.txt")
traindata <- cbind(trainsubject, trainlabel, trainset)

### merge the test data and training data
data <- rbind(testdata, traindata)


## select the measurements on the mean and standard deviation
### read the feature data
feature <- read.table("./features.txt")

### select the mean and standard deviation measurements variables
selectme <- grep("mean()[^Freq]|std()", feature[,2])

### select the first 2 columns and the mean and std data
dataselect <- subset(data, select = c(1, 2, selectme+2))


## Uses descriptive activity names to name the activities in the data set
### read the activity name file
activityname <- read.table("./activity_labels.txt")
colnames(activityname) <- c("label", "activity")

### merge the dataselect and activityname file by the same label
dataselect1 <- merge(activityname, dataselect, by.x = "label", by.y = 2)

### delete the label column 
dataselect2 <- dataselect1[,c(2:ncol(dataselect1))]


## Appropriately labels the data set with descriptive variable names
### get the mean and std measure data names
menames <- feature[,2][selectme]
menames <- as.character(menames)

### make measure varialbe names more compact
wantednames <- gsub("-mean", "Mean", menames) 
wantednames <- gsub("-std", "Std", wantednames)
wantednames <- gsub("[()-]", "", wantednames)

### name the columns of the dataselect2
allnames <- c("activity", "subject", wantednames)
colnames(dataselect2) <- allnames

## creates a second, independent tidy data set with the average of each variable for each activity and each subject
### library the reshape2 package
library(reshape2)

### melt the dataselect2
datamelt <- melt(dataselect2, id = c("activity", "subject"), measure.vars = wantednames)

### get the mean of the meltdata
datamean <- dcast(datamelt, activity + subject ~ variable, mean)

### output the tidy dataset
write.table(datamean, file = "tidy.txt", quote = FALSE, row.names = FALSE)
