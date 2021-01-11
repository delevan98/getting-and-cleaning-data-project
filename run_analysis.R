# Do preliminary setup work :^)
library(dplyr)
library(magrittr)

filename <- "UCIDataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(filename)){
  download.file(url, filename, method="curl")
} 

if(!file.exists("UCI HAR Dataset")){
  unzip("UCIDataset.zip")
}

#Load Acitivty Labels and features
activity_labels     <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
features            <- read.table("UCI HAR Dataset/features.txt")
features[,2]        <- as.character(features[,2])

# Get the features we want (mean and std) so that we can selectively load data
# Basically killing two birds with one stone
feature_list <- grep(".*mean.*|.*std.*", features[,2])
feature_list.name <- features[feature_list,2]

# Rename some of the features to be more descriptive / cleaner
feature_list.name = gsub("-mean\\(\\)", "Mean", feature_list.name)
feature_list.name = gsub("-std\\(\\)", "Std", feature_list.name)
feature_list.name = gsub("-meanFreq\\(\\)", "MeanFreq", feature_list.name)
feature_list.name = gsub("BodyBody", "Body", feature_list.name)

#Load and merge the train dataset
X_train       <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train       <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_train <- X_train[feature_list]
c_train <- cbind(subject_train, y_train, X_train)

#Load and merge the test dataset
X_test       <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test       <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

X_test <- X_test[feature_list]
c_test <- cbind(subject_test, y_test, X_test)

#Finally merge train and test sets
merged_data <- rbind(c_train, c_test)
colnames(merged_data) <- c("Subject_Number", "Activity", feature_list.name)

#Assign each activity code to its actual name (i.e. STANDING)
merged_data$Activity <- activity_labels[merged_data$Activity, 2]

#Get the average for each subject/activity and put it into a txt file
averaged_data <- merged_data %>% group_by(Subject_Number, Activity) %>% summarise_all(funs(mean))
write.table(averaged_data, "tidyData.txt", row.names = FALSE)

