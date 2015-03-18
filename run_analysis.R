## Download and unzip the data file
download.file(url,temp, method="curl")
if (!file.exists("./clean/proj")){ 
        dir.create("./clean/proj")
}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
download.file(url,destfile="./clean/proj/Dataset.zip",method="curl")
path_rf <- file.path("./clean/proj" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
## Read the X, Y and Subject test files
Xtest <- read.table("./clean/proj/UCI HAR dataset-2/test/X_test.txt", header=FALSE, sep="")
Ytest <- read.table("./clean/proj/UCI HAR dataset-2/test/Y_test.txt", header=FALSE, sep="")
Subtest <- read.table("./clean/proj/UCI HAR dataset-2/test/subject_test.txt", header=FALSE, sep="")
## Read the X, Y and Subject training files
Xtrain <- read.table("./clean/proj/UCI HAR dataset-2/train/X_train.txt", header=FALSE, sep="")
Ytrain <- read.table("./clean/proj/UCI HAR dataset-2/train/Y_train.txt", header=FALSE, sep="")
Subtrain <- read.table("./clean/proj/UCI HAR dataset-2/train/subject_train.txt", header=FALSE, sep="")
## Read the Feature and Activity_labels files
ActLabels <- read.table("./clean/proj/UCI HAR dataset-2/activity_labels.txt", header=FALSE, sep="")
Features <- read.table("./clean/proj/UCI HAR dataset-2/features.txt", header=FALSE, sep="")

## Naming the Only Column in Activitys and Subjects Files
colnames(Ytest) <- "Act_ID"
colnames(Subtest) <- "Subjects"

colnames(Ytrain) <- "Act_ID"
colnames(Subtrain) <- "Subjects"

## Naming all the columns in Xtest and Xtrain files using second column of Features File
colnames(Xtest) <- Features[,2]
colnames(Xtrain) <- Features[,2]

## Naming the Activity File
colnames(ActLabels) <- c("Act_ID", "Activity")
## Combined the 3 test files.
test <- cbind(Subtest, Ytest, Xtest )
## Combined the 3 training files.
train <- cbind(Subtrain, Ytrain, Xtrain )
## Merges the training and the test sets to create one data set.
total_uci <- rbind(test, train)
## Extracts only the measurements on the mean and standard deviation for each measurement. 
total_mean_std <- total_uci[,grepl("Subjects|Act_ID|mean|std", names(total_uci))]
## Uses descriptive activity names to name the activities in the data set
total_merge <- merge(ActLabels, total_mean_std,  by.x="Act_ID", all = TRUE)
total_merge <- total_merge[ ,-1]
## Appropriately labels the data set with descriptive variable names. 
names(total_merge)<-gsub("^t", "time", names(total_merge))
names(total_merge)<-gsub("^f", "frequency", names(total_merge))
names(total_merge)<-gsub("Acc", "Acceleration", names(total_merge))
names(total_merge)<-gsub("Gyro", "AngularVelocity", names(total_merge))
names(total_merge)<-gsub("Mag", "Magnitude", names(total_merge))
names(total_merge)<-gsub("std", "stdDeviation", names(total_merge))

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
total_merge_actsub<-aggregate(. ~Subjects + Activity, total_merge, mean)
total_merge_actsub<-total_merge_actsub[order(total_merge_actsub$Subjects,total_merge_actsub$Activity),]
write.table(total_merge_actsub, file = "tidy_Data.txt",row.name=FALSE)


