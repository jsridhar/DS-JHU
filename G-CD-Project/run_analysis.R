## Develop run_analysis.R to tidy data for Human Activity Recognition Using Smartphones (UCI HAR Dataset)
## 

# Install & load dependent libraries
if (!require("dplyr")) install.packages("dplyr")
library(dplyr)

# Extract the zip file
if (dir.exists("UCI HAR Dataset")) {
    unlink("UCI HAR Dataset", recursive = TRUE, force = TRUE)
}
unzip("getdata-projectfiles-UCI HAR Dataset.zip")



## 
## 1. Merges the training and the test sets to create one data set.
## 

# Read data files
data.activity <- do.call("rbind", lapply(c("UCI HAR Dataset/train/Y_train.txt", "UCI HAR Dataset/test/Y_test.txt"), read.table))
data.subject <- do.call("rbind", lapply(c("UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/test/subject_test.txt"), read.table))
data.features <- do.call("rbind", lapply(c("UCI HAR Dataset/train/X_train.txt", "UCI HAR Dataset/test/X_test.txt"), read.table))
features.labels <- read.table("UCI HAR Dataset/features.txt")[,2]
activity.lables <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]

# Set column names
names(data.activity) <- c("Activity")
names(data.subject) <- c("Subject")
names(data.features) <- features.labels



##
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
##

# Subset only mean and standard eviation data & merge all relevant data
data.features <- data.features[, grep("mean\\(\\)|std\\(\\)", features.labels)]
data.all <- cbind(data.subject, data.activity, data.features)



## 
## 3. Uses descriptive activity names to name the activities in the data set
## 

# Replace activity code with activity labels
for (i in 1:6) {
    data.all$Activity[data.all$Activity == i] <- as.character(activity.lables[i])
}



## 
## 4. Appropriately labels the data set with descriptive variable names.
## 

names(data.all) <- gsub("Acc", "Accelerometer", names(data.all))
names(data.all) <- gsub("Gyro", "Gyroscope", names(data.all))
names(data.all) <- gsub("BodyBody", "Body", names(data.all))
names(data.all) <- gsub("Mag", "Magnitude", names(data.all))
names(data.all) <- gsub("^f", "Frequency", names(data.all))
names(data.all) <- gsub("^t", "Time", names(data.all))



## 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.
## 

data.tidy <- data.all %>%
                group_by(Subject, Activity) %>%
                summarize_each(funs(mean))

write.table(data.tidy, file = "tidy_data.txt", row.names = FALSE)
